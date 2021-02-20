let replyMessage = require('../lib/replyMessage')
let pushMessage = require('../lib/pushMessage')
let {promiseDb} = require('../lib/promiseDb')
var {v4: uuidv4} = require('uuid');


async function messageHandler(event) {
    try {
        // {
        //     type: 'message',
        //         replyToken: '33589ec227c24cb79557c88bbe2fa981',
        //     source: { userId: 'U649eccc9550a94b6a4b5af38439bcf09', type: 'user' },
        //     timestamp: 1612093842094,
        //         mode: 'active',
        //     message: { type: 'text', id: '13477183146222', text: 'fwef' }
        // }

        let replyToken = event.replyToken
        let messageTime = event.timestamp
        let messageType = event.message.type
        let userId = event.source.userId

        if (messageType === 'text') {

            let text = event.message.text
            await saveMessageToDb(userId, text, messageTime, replyToken)


            switch (text) {
                case "查詢我的訂單":

                    ///Db set status of this uid
                    await replyMessage(await replyMessageTemplateForOrderQuery(event.source.userId), replyToken)


                    break
                case "購物金服務":

                    await replyMessage(replyMessageTemplateForShoppingService(), replyToken)

                    ///db set status of this uid

                    break
                case "我的購物金" :

                    await replyMessage(replyMessageTemplate("我的購物金"), replyToken)

                    break;
                case "轉送購物金" :
                    await replyMessage(replyMessageTemplate("購物金一次僅能轉送$100，\n請輸入欲贈送的Email"), replyToken)
                    break;
                case "透過機器人訂餐":
                    console.log('透過機器人訂餐')
                    try {
                        await promiseDb(`DELETE FROM lineuserstatus WHERE LineUserUid = ?`, [userId])
                        await promiseDb(`INSERT INTO lineuserstatus (Id,LineUserUid,Status,ModifyTIme) VALUES (?,?,?,?)`, [uuidv4(), userId, '正在訂餐', new Date()])
                        await replyMessage({
                            "type": "flex",
                            "altText": "this is a flex message",
                            "contents": flexMessageForOrderFIXEDthreeProductTemplate('正在訂餐', ' ', ' ', ' ')
                        }, replyToken)
                    } catch (err) {
                        console.log(err)
                    }
                    break;
                case "取消訂單":
                    try {
                        let deleteLineUserStatus = await promiseDb(`DELETE FROM lineuserstatus WHERE LineUserUid = ?`, [userId])
                        let deleteLineOrder = await promiseDb(`DELETE FROM lineorder WHERE LineOrderUserUid = ?`, [userId])
                        console.log()
                        if(deleteLineUserStatus.affectedRows==1){
                            await replyMessage(replyMessageTemplate("已取消"), replyToken)

                        }else{
                            await replyMessage(replyMessageTemplate("目前沒有進行中的訂單"), replyToken)

                        }

                    } catch (err) {
                        console.log(err)
                    }
                    break;
                case "送出訂單" :
                    try {
                        let queryStatus = await promiseDb(`SELECT status FROM lineuserstatus WHERE LineUserUid = ?`, [userId])
                        let OrderStatus = queryStatus[0]
                        console.log(OrderStatus)
                        if (OrderStatus) {

                            if(OrderStatus.status == '正在訂餐'){

                                await replyMessage(replyMessageTemplate("請輸入送餐地址"), replyToken)
                                await promiseDb(`UPDATE lineuserstatus set Status = ? WHERE LineUserUid = ?`,['輸入地址',userId])

                            }






                        } else {
                            await replyMessage(replyMessageTemplate("目前沒有任何訂單"), replyToken)

                        }
                    } catch (err) {
                        console.log(err)
                    }
                default:

                    if (text.includes('我要查詢')) {
                        let orderId = text.split('我要查詢')[1]
                        console.log('[INFO] 查詢訂單 ' + orderId)
                        let queryOrder = await promiseDb(
                            `SELECT concat(concat('訂單編號 ',o.OrderId),'\n'),concat(concat('外送地址 ',o.DeliverAddress),'\n'),concat('目前狀態 ',o.Status) FROM \`order\` as o WHERE OrderId = '${orderId}'`)
                        let a = queryOrder[0]
                        let replyOrderInfo = ``
                        console.log(queryOrder)
                        for (const [key, value] of Object.entries(a)) {
                            replyOrderInfo += value;
                        }
                        console.log(replyOrderInfo)
                        let queryOrderDetail = await promiseDb(`SELECT a.ProductNum,b.ProductName,b.Price FROM orderdetail as a ,product as b WHERE OrderId='${orderId}' AND a.ProductId = b.ProductId`)
                        console.log(queryOrder)
                        let replyOrderDetail = ``
                        let total = 0
                        for (let i in queryOrderDetail) {
                            replyOrderDetail += `${queryOrderDetail[i].ProductName}(${queryOrderDetail[i].Price}) X ${queryOrderDetail[i].ProductNum}\n`
                            total = total + parseInt(queryOrderDetail[i].Price) * parseInt(queryOrderDetail[i].ProductNum)
                        }
                        replyOrderDetail += "總金額 " + total.toString()
                        await replyMessage([{
                            type: 'text',
                            text: replyOrderInfo
                        }, {
                            type: 'text',
                            text: replyOrderDetail
                        }], replyToken)

                    } else if (text.substring(0, 2) === '訂單') {
                        let queryStatus = await promiseDb(`SELECT status FROM lineuserstatus WHERE LineUserUid = ?`, [userId])
                        let OrderStatus = queryStatus[0].status
                        if (OrderStatus == '正在訂餐') {
                            let orderAction = text.substring(2, 4)
                            if (orderAction == "新增") {
                                let number = text.substring(5, 6)
                                let productName = text.split(' ')[2]
                                let queryThisProductCount = await promiseDb('SELECT ProductCount FROM lineorder WHERE ProductName = ?', [productName])
                                console.log(queryThisProductCount)
                                if (queryThisProductCount.length == 0) {
                                    await promiseDb(`INSERT INTO lineorder (Id,LineOrderUserUid,ProductName,ProductCount) VALUES (?,?,?,1)`, [uuidv4(), userId, productName])

                                    await replyOrderInfo(userId,replyToken)

                                } else {
                                    await promiseDb(`UPDATE lineorder SET ProductCount = ? WHERE ProductName = ?`, [parseInt(queryThisProductCount[0].ProductCount) + 1, productName])

                                    await replyOrderInfo(userId,replyToken)


                                }
                            } else if (orderAction == "刪除") {
                                let number = text.substring(5, 6)
                                let productName = text.split(' ')[2]
                                let queryThisProductCount = await promiseDb('SELECT ProductCount FROM lineorder WHERE ProductName = ?', [productName])
                                if (queryThisProductCount) {
                                    if (parseInt(queryThisProductCount[0].ProductCount) > 0) {

                                        if (parseInt(queryThisProductCount[0].ProductCount) == 1) {
                                            await promiseDb(`DELETE FROM lineorder WHERE LineOrderUserUid = ? And ProductName = ?`,[userId,productName])
                                            await replyOrderInfo(userId,replyToken)


                                        } else {
                                            await promiseDb(`UPDATE lineorder SET ProductCount = ? WHERE ProductName = ?`, [parseInt(queryThisProductCount[0].ProductCount) - 1, productName])
                                            await replyOrderInfo(userId,replyToken)

                                        }
                                    } else {

                                    }
                                } else {

                                }
                            }
                        }

                    }else{

                        ////check status

                        let queryStatus = await promiseDb(`SELECT status FROM lineuserstatus WHERE LineUserUid = ?`,[userId])
                        if(queryStatus.length!=0){
                            console.log(queryStatus)
                            if(queryStatus[0].status=='輸入地址'){



                                if(text.length<7){
                                    await replyMessage(replyMessageTemplate('請輸入正確的地址'), replyToken)

                                }else{
                                    let queryAllOrderInfo = await promiseDb(`SELECT * FROM lineorder WHERE LineOrderUserUid = ?`,[userId])
                                    console.log(queryAllOrderInfo)


                                    let address = text
                                    let newOrderId = uuidv4().slice(0,5).toUpperCase()
                                    let newOrderSQL = await promiseDb(`INSERT INTO \`order\` (OrderId,OrderMemberId,Status,OrderTime,DeliverAddress) VALUES (?,(SELECT MemberId From member Where LineUid = ?),?,?,?)`,
                                        [newOrderId,userId,'進行中',new Date(),address])

                                    for(let i in queryAllOrderInfo){
                                        let productName = queryAllOrderInfo[i].ProductName
                                        let productCount = queryAllOrderInfo[i].ProductCount
                                        let newOrderDetailSQL = await promiseDb(`INSERT INTO orderdetail (OrderDetailId, OrderId, ProductId,ProductNum) VALUES (?,?,(SELECT ProductId FROM mis.product where ProductName = ?),?)`,
                                            [uuidv4(),newOrderId,productName,productCount])

                                    }
                                    await promiseDb(`DELETE FROM lineorder WHERE LineOrderUserUid = ?`,[userId])
                                    await promiseDb(`DELETE FROM lineuserstatus WHERE LineUserUid = ?`,[userId])

                                    /////show order detail

                                    let orderId = newOrderId
                                    console.log('[INFO] 查詢訂單 ' + orderId)
                                    let queryOrder = await promiseDb(
                                        `SELECT concat(concat('訂單編號 ',o.OrderId),'\n'),concat(concat('外送地址 ',o.DeliverAddress),'\n'),concat('目前狀態 ',o.Status) FROM \`order\` as o WHERE OrderId = '${orderId}'`)
                                    let a = queryOrder[0]
                                    let replyOrderInfo = ``
                                    console.log(queryOrder)
                                    for (const [key, value] of Object.entries(a)) {
                                        replyOrderInfo += value;
                                    }
                                    console.log(replyOrderInfo)
                                    let queryOrderDetail = await promiseDb(`SELECT a.ProductNum,b.ProductName,b.Price FROM orderdetail as a ,product as b WHERE OrderId='${orderId}' AND a.ProductId = b.ProductId`)
                                    console.log(queryOrder)
                                    let replyOrderDetail = ``
                                    let total = 0
                                    for (let i in queryOrderDetail) {
                                        replyOrderDetail += `${queryOrderDetail[i].ProductName}(${queryOrderDetail[i].Price}) X ${queryOrderDetail[i].ProductNum}\n`
                                        total = total + parseInt(queryOrderDetail[i].Price) * parseInt(queryOrderDetail[i].ProductNum)
                                    }
                                    replyOrderDetail += "總金額 " + total.toString()
                                    await replyMessage([{
                                        type: 'text',
                                        text: '訂單已送出 感謝您的訂購\n\n'+replyOrderInfo
                                    }, {
                                        type: 'text',
                                        text: replyOrderDetail
                                    }], replyToken)



                                }


                            }
                        }

                    }
                    ///check db status then
                    //if status == 查詢訂單

                    //else if status == 轉送購物金

                    break

            }


        } else {
            await replyMessage('僅支援文字訊息', replyToken)

        }

    } catch (err) {
        console.log(err)
    }


}

module.exports = messageHandler


function replyMessageTemplateForShoppingService() {
    return {
        "type": "template",
        "altText": "select",
        "template": {
            "type": "buttons",
            "title": "購物金服務",
            "text": "Hi, 需要下列哪一項服務嗎?",
            "actions": [
                {
                    "type": "message",
                    "label": "我的購物金",
                    "text": "我的購物金"
                },
                {
                    "type": "message",
                    "label": "轉送購物金",
                    "text": "轉送購物金"
                }

            ]
        }
    }
}

function replyMessageTemplate(text) {
    return {
        type: 'text',
        text: text
    }

}

async function replyOrderInfo(userId,replyToken){

    let queryCurrentOrderInfo = await promiseDb(`SELECT * FROM lineorder WHERE LineOrderUserUid = ?`, [userId])

    let tempFirstLineMsg = ' '
    let tempSecondLineMsg = ' '
    let thirdSecondLineMsg = ' '
    console.log(queryCurrentOrderInfo)
    for (let i in queryCurrentOrderInfo) {
        try {
            if (i == 0) {
                tempFirstLineMsg = queryCurrentOrderInfo[i].ProductName + ' X ' + queryCurrentOrderInfo[i].ProductCount
            } else if (i == 1) {
                tempSecondLineMsg = queryCurrentOrderInfo[i].ProductName + ' X ' + queryCurrentOrderInfo[i].ProductCount

            } else if (i == 2) {
                thirdSecondLineMsg = queryCurrentOrderInfo[i].ProductName + ' X ' + queryCurrentOrderInfo[i].ProductCount

            }
        } catch (err) {
            console.log(err)
        }
    }

    await replyMessage({
        "type": "flex",
        "altText": "this is a flex message",
        "contents": flexMessageForOrderFIXEDthreeProductTemplate('正在訂餐', tempFirstLineMsg, tempSecondLineMsg, thirdSecondLineMsg)
    }, replyToken)
}

async function replyMessageTemplateForOrderQuery(userId) {
    let queryOrder = await promiseDb(`SELECT OrderId FROM \`order\` WHERE OrderMemberId = (SELECT MemberId FROM member WHERE LineUid = ?) Order by OrderTime DESC`, [userId])
    let appendOrderIdFlexMsg = []
    for (let i in queryOrder) {
        let eachContent = {}
        eachContent.type = "bubble"
        eachContent.size = "micro"
        eachContent.body = {
            "type": "box",
            "layout": "vertical",
            "contents": [
                {
                    "type": "text",
                    "text": "訂單編號",
                    "color": "#757575"
                },
                {
                    "type": "text",
                    "text": queryOrder[i].OrderId,
                    "contents": [],
                    "color": "#1565c0"
                }
            ],
            "action": {
                "type": "message",
                "label": "我要查詢" + queryOrder[i].OrderId,
                "text": "我要查詢" + queryOrder[i].OrderId
            }
        }

        appendOrderIdFlexMsg.push(eachContent)
    }
    return new Promise((resolve, reject) => {
        try {

            resolve({
                "type": "flex",
                "altText": "this is a flex message",
                "contents": {
                    "type": "carousel",
                    "contents": appendOrderIdFlexMsg
                }
            })
        } catch (err) {

            reject({
                type: 'text',
                text: '伺服器維修中'
            })


        }

    })

}

async function saveMessageToDb(userId, text, messageTime, replyToken) {
    try {
        let InsertMessage = await promiseDb(`INSERT INTO linemessage (LineMessageId,LineFriendUid,LineMessageContent,LineReplyToken,LineMessageTime) 
                                                    VALUES (?,?,?,?,?)`, [uuidv4(), userId, text, replyToken, new Date(messageTime)])
    } catch (err) {
        console.log(err)
    }
}


async function startOrder(who, replyToken) {
    try {
        //set order status = '開始訂餐'


        //then reply product list flex message without complete bubble
        let flexMessageForProductListWithoutOrderDetail = {
            "type": "carousel",
            "contents": [
                {
                    "type": "bubble",
                    "size": "kilo",
                    "header": {
                        "type": "box",
                        "layout": "vertical",
                        "contents": [
                            {
                                "type": "text",
                                "text": "${ProductName}",
                                "color": "#ffffff",
                                "align": "start",
                                "size": "md",
                                "gravity": "center"
                            },
                            {
                                "type": "text",
                                "text": "$70",
                                "color": "#ffffff",
                                "align": "start",
                                "size": "md",
                                "gravity": "center",
                                "margin": "lg"
                            }
                        ],
                        "backgroundColor": "#27ACB2",
                        "paddingTop": "19px",
                        "paddingAll": "12px",
                        "paddingBottom": "16px"
                    },
                    "body": {
                        "type": "box",
                        "layout": "vertical",
                        "contents": [
                            {
                                "type": "box",
                                "layout": "horizontal",
                                "contents": [
                                    {
                                        "type": "text",
                                        "text": "${ProductDescription}",
                                        "color": "#8C8C8C",
                                        "size": "sm",
                                        "wrap": true
                                    }
                                ],
                                "flex": 1
                            }
                        ],
                        "spacing": "md",
                        "paddingAll": "12px"
                    },
                    "footer": {
                        "type": "box",
                        "layout": "horizontal",
                        "contents": [
                            {
                                "type": "box",
                                "layout": "vertical",
                                "contents": [
                                    {
                                        "type": "button",
                                        "action": {
                                            "type": "message",
                                            "label": "+1",
                                            "text": "新增1個-雞腿便當"
                                        }
                                    }
                                ]
                            },
                            {
                                "type": "box",
                                "layout": "vertical",
                                "contents": [
                                    {
                                        "type": "button",
                                        "action": {
                                            "type": "message",
                                            "label": "-1",
                                            "text": "減少一個-雞腿便當"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    "styles": {
                        "footer": {
                            "separator": false
                        }
                    }
                }
            ]
        }

        let flexMessageForProductList = {
            "type": "carousel",
            "contents": [
                {
                    "type": "bubble",
                    "size": "kilo",
                    "header": {
                        "type": "box",
                        "layout": "vertical",
                        "contents": [
                            {
                                "type": "text",
                                "text": "目前訂單",
                                "color": "#ffffff",
                                "align": "start",
                                "size": "md",
                                "gravity": "center"
                            },
                            {
                                "type": "text",
                                "text": "$70",
                                "color": "#ffffff",
                                "align": "start",
                                "size": "md",
                                "gravity": "center",
                                "margin": "lg"
                            }
                        ],
                        "backgroundColor": "#27ACB2",
                        "paddingTop": "19px",
                        "paddingAll": "12px",
                        "paddingBottom": "16px"
                    },
                    "body": {
                        "type": "box",
                        "layout": "vertical",
                        "contents": [
                            {
                                "type": "box",
                                "layout": "vertical",
                                "contents": [
                                    {
                                        "type": "text",
                                        "text": "hello, world"
                                    }
                                ]
                            },
                            {
                                "type": "box",
                                "layout": "vertical",
                                "contents": [
                                    {
                                        "type": "text",
                                        "text": "hello, world"
                                    }
                                ]
                            },
                            {
                                "type": "box",
                                "layout": "vertical",
                                "contents": [
                                    {
                                        "type": "text",
                                        "text": "hello, world"
                                    }
                                ]
                            }
                        ]
                    },
                    "footer": {
                        "type": "box",
                        "layout": "horizontal",
                        "contents": [
                            {
                                "type": "button",
                                "action": {
                                    "type": "message",
                                    "label": "送出訂單",
                                    "text": "送出訂單"
                                }
                            },
                            {
                                "type": "button",
                                "action": {
                                    "type": "message",
                                    "label": "取消訂單",
                                    "text": "取消訂單"
                                }
                            }
                        ]
                    },
                    "styles": {
                        "footer": {
                            "separator": false
                        }
                    }
                },
                {
                    "type": "bubble",
                    "size": "kilo",
                    "header": {
                        "type": "box",
                        "layout": "vertical",
                        "contents": [
                            {
                                "type": "text",
                                "text": "${ProductName}",
                                "color": "#ffffff",
                                "align": "start",
                                "size": "md",
                                "gravity": "center"
                            },
                            {
                                "type": "text",
                                "text": "$70",
                                "color": "#ffffff",
                                "align": "start",
                                "size": "md",
                                "gravity": "center",
                                "margin": "lg"
                            }
                        ],
                        "backgroundColor": "#27ACB2",
                        "paddingTop": "19px",
                        "paddingAll": "12px",
                        "paddingBottom": "16px"
                    },
                    "body": {
                        "type": "box",
                        "layout": "vertical",
                        "contents": [
                            {
                                "type": "box",
                                "layout": "horizontal",
                                "contents": [
                                    {
                                        "type": "text",
                                        "text": "${ProductDescription}",
                                        "color": "#8C8C8C",
                                        "size": "sm",
                                        "wrap": true
                                    }
                                ],
                                "flex": 1
                            }
                        ],
                        "spacing": "md",
                        "paddingAll": "12px"
                    },
                    "footer": {
                        "type": "box",
                        "layout": "horizontal",
                        "contents": [
                            {
                                "type": "box",
                                "layout": "vertical",
                                "contents": [
                                    {
                                        "type": "button",
                                        "action": {
                                            "type": "message",
                                            "label": "+1",
                                            "text": "新增1個-雞腿便當"
                                        }
                                    }
                                ]
                            },
                            {
                                "type": "box",
                                "layout": "vertical",
                                "contents": [
                                    {
                                        "type": "button",
                                        "action": {
                                            "type": "message",
                                            "label": "-1",
                                            "text": "減少一個-雞腿便當"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    "styles": {
                        "footer": {
                            "separator": false
                        }
                    }
                }
            ]
        }


    } catch (err) {
        console.log(err)
    }


}


function flexMessageForOrderFIXEDthreeProductTemplate(totalMoney, fistLineMsg, secondLineMsg, thirdLineMsg) {
    return {
        "type": "carousel",
        "contents": [
            {
                "type": "bubble",
                "size": "micro",
                "header": {
                    "type": "box",
                    "layout": "vertical",
                    "contents": [
                        {
                            "type": "text",
                            "text": "目前訂單",
                            "color": "#ffffff",
                            "align": "start",
                            "size": "md",
                            "gravity": "center"
                        },
                        {
                            "type": "text",
                            "text": totalMoney,
                            "color": "#ffffff",
                            "align": "start",
                            "size": "md",
                            "gravity": "center",
                            "margin": "lg"
                        }
                    ],
                    "backgroundColor": "#ff75a0",
                    "paddingTop": "19px",
                    "paddingAll": "12px",
                    "paddingBottom": "16px"
                },
                "body": {
                    "type": "box",
                    "layout": "vertical",
                    "contents": [
                        {
                            "type": "box",
                            "layout": "vertical",
                            "contents": [
                                {
                                    "type": "text",
                                    "text": fistLineMsg
                                }
                            ]
                        },
                        {
                            "type": "box",
                            "layout": "vertical",
                            "contents": [
                                {
                                    "type": "text",
                                    "text": secondLineMsg
                                }
                            ]
                        },
                        {
                            "type": "box",
                            "layout": "vertical",
                            "contents": [
                                {
                                    "type": "text",
                                    "text": thirdLineMsg
                                }
                            ]
                        }
                    ]
                },
                "footer": {
                    "type": "box",
                    "layout": "vertical",
                    "contents": [
                        {
                            "type": "button",
                            "action": {
                                "type": "message",
                                "label": "送出訂單",
                                "text": "送出訂單"
                            }
                        },
                        {
                            "type": "button",
                            "action": {
                                "type": "message",
                                "label": "取消訂單",
                                "text": "取消訂單"
                            }
                        }
                    ]
                },
                "styles": {
                    "footer": {
                        "separator": false
                    }
                }
            },
            {
                "type": "bubble",
                "size": "micro",
                "header": {
                    "type": "box",
                    "layout": "vertical",
                    "contents": [
                        {
                            "type": "text",
                            "color": "#ffffff",
                            "align": "start",
                            "size": "md",
                            "gravity": "center",
                            "text": "雞腿便當"
                        },
                        {
                            "type": "text",
                            "text": "$80",
                            "color": "#ffffff",
                            "align": "start",
                            "size": "md",
                            "gravity": "center",
                            "margin": "lg"
                        }
                    ],
                    "backgroundColor": "#27ACB2",
                    "paddingTop": "19px",
                    "paddingAll": "12px",
                    "paddingBottom": "16px"
                },
                "body": {
                    "type": "box",
                    "layout": "vertical",
                    "contents": [
                        {
                            "type": "box",
                            "layout": "horizontal",
                            "contents": [
                                {
                                    "type": "text",
                                    "text": "大雞腿",
                                    "color": "#8C8C8C",
                                    "size": "sm",
                                    "wrap": true
                                }
                            ],
                            "flex": 1
                        }
                    ],
                    "spacing": "md",
                    "paddingAll": "12px"
                },
                "footer": {
                    "type": "box",
                    "layout": "vertical",
                    "contents": [
                        {
                            "type": "box",
                            "layout": "vertical",
                            "contents": [
                                {
                                    "type": "button",
                                    "action": {
                                        "type": "message",
                                        "label": "+1",
                                        "text": "訂單新增 1個 雞腿便當"
                                    }
                                }
                            ]
                        },
                        {
                            "type": "box",
                            "layout": "vertical",
                            "contents": [
                                {
                                    "type": "button",
                                    "action": {
                                        "type": "message",
                                        "label": "-1",
                                        "text": "訂單刪除 1個 雞腿便當"
                                    }
                                }
                            ]
                        }
                    ]
                },
                "styles": {
                    "footer": {
                        "separator": false
                    }
                }
            },
            {
                "type": "bubble",
                "size": "micro",
                "header": {
                    "type": "box",
                    "layout": "vertical",
                    "contents": [
                        {
                            "type": "text",
                            "text": "招牌便當",
                            "color": "#ffffff",
                            "align": "start",
                            "size": "md",
                            "gravity": "center"
                        },
                        {
                            "type": "text",
                            "text": "$70",
                            "color": "#ffffff",
                            "align": "start",
                            "size": "md",
                            "gravity": "center",
                            "margin": "lg"
                        }
                    ],
                    "backgroundColor": "#27ACB2",
                    "paddingTop": "19px",
                    "paddingAll": "12px",
                    "paddingBottom": "16px"
                },
                "body": {
                    "type": "box",
                    "layout": "vertical",
                    "contents": [
                        {
                            "type": "box",
                            "layout": "horizontal",
                            "contents": [
                                {
                                    "type": "text",
                                    "text": "讚",
                                    "color": "#8C8C8C",
                                    "size": "sm",
                                    "wrap": true
                                }
                            ],
                            "flex": 1
                        }
                    ],
                    "spacing": "md",
                    "paddingAll": "12px"
                },
                "footer": {
                    "type": "box",
                    "layout": "vertical",
                    "contents": [
                        {
                            "type": "box",
                            "layout": "vertical",
                            "contents": [
                                {
                                    "type": "button",
                                    "action": {
                                        "type": "message",
                                        "label": "+1",
                                        "text": "訂單新增 1個 招牌便當"
                                    }
                                }
                            ]
                        },
                        {
                            "type": "box",
                            "layout": "vertical",
                            "contents": [
                                {
                                    "type": "button",
                                    "action": {
                                        "type": "message",
                                        "label": "-1",
                                        "text": "訂單刪除 1個 招牌便當"
                                    }
                                }
                            ]
                        }
                    ]
                },
                "styles": {
                    "footer": {
                        "separator": false
                    }
                }
            },
            {
                "type": "bubble",
                "size": "micro",
                "header": {
                    "type": "box",
                    "layout": "vertical",
                    "contents": [
                        {
                            "type": "text",
                            "text": "排骨便當",
                            "color": "#ffffff",
                            "align": "start",
                            "size": "md",
                            "gravity": "center"
                        },
                        {
                            "type": "text",
                            "text": "$75",
                            "color": "#ffffff",
                            "align": "start",
                            "size": "md",
                            "gravity": "center",
                            "margin": "lg"
                        }
                    ],
                    "backgroundColor": "#27ACB2",
                    "paddingTop": "19px",
                    "paddingAll": "12px",
                    "paddingBottom": "16px"
                },
                "body": {
                    "type": "box",
                    "layout": "vertical",
                    "contents": [
                        {
                            "type": "box",
                            "layout": "horizontal",
                            "contents": [
                                {
                                    "type": "text",
                                    "text": "好吃排骨",
                                    "color": "#8C8C8C",
                                    "size": "sm",
                                    "wrap": true
                                }
                            ],
                            "flex": 1
                        }
                    ],
                    "spacing": "md",
                    "paddingAll": "12px"
                },
                "footer": {
                    "type": "box",
                    "layout": "vertical",
                    "contents": [
                        {
                            "type": "box",
                            "layout": "vertical",
                            "contents": [
                                {
                                    "type": "button",
                                    "action": {
                                        "type": "message",
                                        "label": "+1",
                                        "text": "訂單新增 1個 排骨便當"
                                    }
                                }
                            ]
                        },
                        {
                            "type": "box",
                            "layout": "vertical",
                            "contents": [
                                {
                                    "type": "button",
                                    "action": {
                                        "type": "message",
                                        "label": "-1",
                                        "text": "訂單刪除 1個 排骨便當"
                                    }
                                }
                            ]
                        }
                    ]
                },
                "styles": {
                    "footer": {
                        "separator": false
                    }
                }
            }
        ]
    }
}
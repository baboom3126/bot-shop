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
            await saveMessageToDb(userId,text,messageTime,replyToken)


            switch (text) {
                case "查詢訂單":

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
                default:

                    if(text.includes('我要查詢')){
                        let orderId = text.split('我要查詢')[1]
                        console.log('[INFO] 查詢訂單 '+orderId)
                        let queryOrder = await promiseDb(`SELECT * FROM \`order\` WHERE OrderId = '${orderId}'`)
                        let replyOrderInfo = `訂單編號 ${orderId}\n外送地址 ${queryOrder[0].DeliverAddress}\n目前狀態 ${queryOrder[0].Status=='1'?"進行中":"已完成"}`
                        let queryOrderDetail = await promiseDb(`SELECT a.*,b.ProductName,b.Price FROM orderdetail as a ,product as b WHERE OrderId='${orderId}' AND a.ProductId = b.ProductId`)
                        console.log(queryOrderDetail)
                        let replyOrderDetail = ``
                        let total = 0
                        for(let i in queryOrderDetail){
                            replyOrderDetail+=`${queryOrderDetail[i].ProductName} X ${queryOrderDetail[i].Price}\n`
                            total = total + parseInt(queryOrderDetail[i].Price)*parseInt(queryOrderDetail[i].ProductNum)
                        }
                        replyOrderDetail += "總金額 "+total.toString()
                        await replyMessage([{
                            type: 'text',
                            text: replyOrderInfo
                        },{
                            type: 'text',
                            text: replyOrderDetail
                        }],replyToken)

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

async function replyMessageTemplateForOrderQuery(userId) {
    let queryOrder = await promiseDb(`SELECT OrderId FROM \`order\` WHERE OrderMemberId = (SELECT OrderMemberId FROM member WHERE LineUid = ?) Order by OrderTime`,[userId])
    let appendOrderIdFlexMsg = []
    for(let i in queryOrder){
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
                "label": "我要查詢"+queryOrder[i].OrderId,
                "text": "我要查詢"+queryOrder[i].OrderId
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

async function saveMessageToDb(userId,text,messageTime,replyToken) {
    try {
        let InsertMessage = await promiseDb(`INSERT INTO linemessage (LineMessageId,LineFriendUid,LineMessageContent,LineReplyToken,LineMessageTime) 
                                                    VALUES (?,?,?,?,?)`,[uuidv4(),userId,text,replyToken,new Date(messageTime)])
    } catch (err) {
        console.log(err)
    }
}
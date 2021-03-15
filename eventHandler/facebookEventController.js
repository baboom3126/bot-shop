const {promiseDb} = require('../lib/promiseDb')
const request = require('request')

async function facebookEventController(event) {
    try {
        let senderId = event.sender.id
        let recipientId = event.recipient.id
        let msgTimestamp = event.timestamp
        let messageText = event.message.text
        let mid = event.message.mid

        if (messageText.includes("查詢訂單")) {
            let orderId = messageText.split('查詢訂單')[1].trim()

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

            sendMsg(senderId, replyOrderInfo + '\n-----\n' + replyOrderDetail)

        // } else if (messageText.split(' ')[0] == "查詢訂單") {
        //     // let userEmail = messageText.split(' ')[1]
        //     // queryOrder(senderId,userEmail)
        } else if (messageText == "線上訂餐") {
            sendMsg(senderId, '請加入會員 即可訂餐\nhttp://bit.ly/3rSaROn')
        } else {
            sendMsg(senderId, '請輸入關鍵字服務\n1. 線上訂餐\n2. 查詢訂單{訂單編號}')
        }


    } catch (err) {
        console.log(err)
    }

}

let replySchema = function (to, text) {
    return {
        messaging_type: 'RESPONSE',
        recipient: {id: to},
        message: {text: text}
    }
}

let sendMsg = function (to, text) {
    var options = {
        method: 'POST',
        url: 'https://graph.facebook.com/v10.0/me/messages',
        qs: {access_token: process.env.FACEBOOK_PAGE_ACCESS_TOKEN},
        headers:
            {
                'cache-control': 'no-cache',
                'content-type': 'application/json'
            },
        body: replySchema(to, text)
        ,
        json: true
    };

    request(options, function (error, response, body) {
        if (error) throw new Error(error);

        console.log(body);
    });
}


let queryOrder = async function(to, userEmail)
{
    let queryOrder = await promiseDb(`SELECT OrderId FROM \`order\` WHERE OrderMemberId = (SELECT MemberId FROM member WHERE Email = ?) Order by OrderTime DESC LIMIT 3`, [userEmail])
    let template = []
    for(let i in queryOrder){
        console.log(queryOrder[i].OrderId)
        template.push({
            type: 'postback',
            title: queryOrder[i].OrderId,
            payload: 'DEVELOPER_DEFINED_PAYLOAD'
        })
    }

    var options = {
        method: 'POST',
        url: 'https://graph.facebook.com/v2.6/me/messages',
        qs: {access_token: process.env.FACEBOOK_PAGE_ACCESS_TOKEN},
        headers:
            {
                'postman-token': 'f3382ab0-7357-b39d-043e-80008178368e',
                'cache-control': 'no-cache',
                'content-type': 'application/json'
            },
        body:
            {
                recipient: {id: '3751428124974037'},
                message:
                    {
                        attachment:
                            {
                                type: 'template',
                                payload:
                                    {
                                        template_type: 'button',
                                        text: '查詢訂單',
                                        buttons:template

                                    }
                            }
                    }
            },
        json: true
    };

    request(options, function (error, response, body) {
        if (error) throw new Error(error);

        console.log(body);
    });

}

module.exports = facebookEventController

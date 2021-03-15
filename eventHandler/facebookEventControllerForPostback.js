const {promiseDb} = require('../lib/promiseDb')
const request = require('request')

async function facebookEventControllerForPostback(event) {
    let senderId = event.sender.id
    let recipientId = event.recipient.id
    let msgTimestamp = event.timestamp
    let postbackTitle = event.postback.title
    console.log(postbackTitle)

    let orderId = postbackTitle

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

let replySchema = function (to, text) {
    return {
        messaging_type: 'RESPONSE',
        recipient: {id: to},
        message: {text: text}
    }
}


module.exports = facebookEventControllerForPostback
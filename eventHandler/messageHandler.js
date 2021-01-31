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

                    // await replyMessage(replyMessageTemplate("請問要查詢哪一個訂單"), replyToken)
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

async function replyMessageTemplateForOrderQuery(uid) {
    return new Promise((resolve, reject) => {
        try {


            resolve({
                "type": "flex",
                "altText": "this is a flex message",
                "contents": {
                    "type": "carousel",
                    "contents": [
                        {
                            "type": "bubble",
                            "size": "micro",
                            "body": {
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
                                        "text": "123123123123",
                                        "contents": [],
                                        "color": "#1565c0"
                                    }
                                ],
                                "action": {
                                    "type": "message",
                                    "label": "hello1",
                                    "text": "hello1"
                                }
                            }
                        },
                        {
                            "type": "bubble",
                            "size": "micro",
                            "body": {
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
                                        "text": "123123123123",
                                        "contents": [],
                                        "color": "#1565c0"
                                    }
                                ],
                                "action": {
                                    "type": "message",
                                    "label": "hello1",
                                    "text": "hello1"
                                }
                            }
                        },
                        {
                            "type": "bubble",
                            "size": "micro",
                            "body": {
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
                                        "text": "123123123123",
                                        "contents": [],
                                        "color": "#1565c0"
                                    }
                                ],
                                "action": {
                                    "type": "message",
                                    "label": "hello1",
                                    "text": "hello1"
                                }
                            }
                        }
                    ]
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
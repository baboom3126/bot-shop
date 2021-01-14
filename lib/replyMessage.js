const line = require('@line/bot-sdk');


async function replyMessage(message,replyToken) {

    return new Promise((resolve,reject)=>{

        const client = new line.Client({
            channelAccessToken: process.env.LINE_ACCESS_TOKEN
        });


        client.replyMessage(replyToken, message)
            .then(() => {
                resolve('ok')
            })
            .catch((err) => {
                reject(err)
            });

    })


}

module.exports = replyMessage
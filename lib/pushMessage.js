const line = require('@line/bot-sdk');

async function pushMessage(text,to){

    return new Promise((resolve,reject)=>{
        const client = new line.Client({
            channelAccessToken: process.env.LINE_ACCESS_TOKEN
        });

        const message = {
            type: 'text',
            text: text
        };

        client.pushMessage(to, message)
            .then(() => {
                resolve('ok')
            })
            .catch((err) => {
                reject(err)
            });



    })

}

module.exports = pushMessage
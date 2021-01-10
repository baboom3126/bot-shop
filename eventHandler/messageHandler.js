let replyMessage = require('../lib/replyMessage')
let pushMessage = require('../lib/pushMessage')

async function messageHandler(event){
    try{
        let replyToken = event.replyToken
        let messageTime = event.messageTime
        let messageType = event.message.type
        if(messageType === 'text'){

            let text = event.message.text

            await replyMessage(text,replyToken)

        }else{
            await replyMessage('僅支援文字訊息',replyToken)

        }

    }catch(err){
        console.log(err)
    }



}

module.exports = messageHandler
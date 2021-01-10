
async function followHandler(event){
    console.log('[INFO] followHandler')
    let replyToken = event.replyToken
    let userId = event.source.userId
    let messageTime = event.timestamp
}

module.exports = followHandler
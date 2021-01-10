
async function unfollowHandler(event){
    console.log('[INFO] unfollowHandler')
    let replyToken = event.replyToken
    let userId = event.source.userId
    let messageTime = event.timestamp


}

module.exports = unfollowHandler
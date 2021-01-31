const line = require('@line/bot-sdk');
const {promiseDb} = require('../lib/promiseDb')
async function followHandler(event){
    console.log('[INFO] followHandler')
    let replyToken = event.replyToken
    let userId = event.source.userId
    let messageTime = event.timestamp
    const client = new line.Client({
        channelAccessToken: process.env.LINE_ACCESS_TOKEN
    });

    client.getProfile(userId)
        .then((profile) => {
            ////check is existed this uid
            let queryLineFriendUid = promiseDb(`SELECT LineFriendUid FROM linefriend WHERE LineFriendUid = ?`,[userId])
                .then(result=>{
                    console.log(result)
                    if(result.length == 0){
                        promiseDb(`INSERT INTO linefriend (LineFriendUid,LineFriendName,LineFriendPicture,LineFriendDescription) 
                                        VALUES (?,?,?,?)`,[profile.userId,profile.displayName,profile.pictureUrl,profile.statusMessage])
                    }
                }).catch((error)=>{
                console.log('[ERROR] '+error)
            })

        })
        .catch((err) => {
            console.log('[ERROR] '+err)
        });
}

module.exports = followHandler
// let requestTemplate = {
//     "events": [{
//         "type": "message",
//         "replyToken": "acde9b5c3f9b45e0a7133b5cabf51bba",
//         "source": {"userId": "U649eccc9550a94b6a4b5af38439bcf09", "type": "user"},
//         "timestamp": 1613836628109,
//         "mode": "active",
//         "message": {"type": "text", "id": "13591700075859", "text": "1"}
//     }
//     ], "destination": "U8da88f42234c4c869600083f47f4b033"
// }

var requestTemplate = function(text){
    return {
        "events": [{
            "type": "message",
            "replyToken": "acde9b5c3f9b45e0a7133b5cabf51bba",
            "source": {"userId": "U649eccc9550a94b6a4b5af38439bcf09", "type": "user"},
            "timestamp": 1613836628109,
            "mode": "active",
            "message": {"type": "text", "id": "13591700075859", "text": text}
        }
        ], "destination": "U8da88f42234c4c869600083f47f4b033"
    }
}
//透過機器人訂餐
//訂單新增 1個 雞腿便當
//送出訂單
//地址:台中市南區興大路140號
//
//
//
const webhookUrl = "https://nchu-bot-shop.herokuapp.com/webhook"
var axios = require('axios');
// var data = JSON.stringify(requestTemplate("透過機器人訂餐"));
// var data = JSON.stringify(requestTemplate("訂單新增 1個 雞腿便當"));
// var data = JSON.stringify(requestTemplate("送出訂單"));
var data = JSON.stringify(requestTemplate("地址:台中市南區興大路140號"));

var config = {
    method: 'post',
    url: webhookUrl,
    headers: {
        'Content-Type': 'application/json'
    },
    data : data
};

axios(config)
    .then(function (response) {
        console.log(JSON.stringify(response.data));
    })
    .catch(function (error) {
        console.log(error);
    });

var express = require('express');
var router = express.Router();
var {promiseDb} = require('../../lib/promiseDb')
var {v4: uuidv4} = require('uuid');
var pushMessage = require('../../lib/pushMessage')
var axios = require('axios');

router.get('/demo', function (req, res, next) {
    res.render('demo', {title: 'Express'});
});

router.post('/product/getProductCommentByPid', async function (req, res, next) {
    try {
        let pid = req.body.pid
        console.log(pid)
        let queryProductComment = await promiseDb(`SELECT * FROM productcomment WHERE ProductId = ? AND Status = '1'`, [pid])
        res.json(queryProductComment)
    } catch (e) {
        console.log(e)
        res.send(e)
    }
})


router.get('/member/getAllMember', async function (req, res, next) {
    try {
        let queryAllMember = await promiseDb('SELECT * FROM member')
        res.json(queryAllMember);
    } catch (e) {
        console.log(e)
        res.send(e)

    }
});


router.get('/product/getAllProduct', async function (req, res, next) {
    try {
        let queryAllMember = await promiseDb('SELECT * FROM product')
        res.json(queryAllMember);
    } catch (e) {
        console.log(e)
        res.send(e)

    }
});

router.post('/product/delProductCommentById', async function (req, res, next) {
    try {
        let p_comment_id = req.body.p_comment_id
        console.log(p_comment_id)
        let delProductCommentSQL = await promiseDb(`UPDATE productcomment SET status = '0' WHERE ProductCommentId = ?`, [p_comment_id])
        res.json(delProductCommentSQL)
    } catch (e) {
        console.log(e)
        res.send(e)
    }
})

router.get('/order/getAllOrder', async function (req, res, next) {
    try {

    } catch (err) {
        console.log(err)
        res.send(err)
    }
})

router.get('/order/getAllOrderWithDetail', async function (req, res, next) {
    try {
        let queryAllOrder = await promiseDb(`SELECT a.*,b.MemberName FROM \`order\` as a,mis.member as b 
                                                    where a.OrderMemberId = b.MemberId 
                                                    Order by a.OrderTime desc
                                                    `)

        for (let i in queryAllOrder) {
            let eachOrderId = queryAllOrder[i].OrderId
            let queryOrderDetailById = await promiseDb(`SELECT a.*,b.ProductName,b.Price FROM orderdetail as a ,product as b WHERE OrderId=? AND a.ProductId = b.ProductId `, eachOrderId)
            queryAllOrder[i].OrderDetail = queryOrderDetailById
        }


        res.json(queryAllOrder)
    } catch (err) {
        console.log(err)
        res.send(err)
    }
})

router.post('/order/getOrderDetailById', async function (req, res, next) {
    try {
        let orderId = req.body.orderId
        let result = {}
        let queryOrder = await promiseDb(`SELECT * FROM \`order\` WHERE OrderId = ?`, orderId)
        result.order = queryOrder[0]
        let queryOrderDetail = await promiseDb(`SELECT * FROM orderdetail WHERE OrderId=?`, orderId)
        result.orderDetail = queryOrderDetail
        res.json(result)
    } catch (err) {
        console.log(err)
        res.send(err)
    }
})

// sql inject api
router.post('/order/getAllOrderByMemberId', async function (req, res, next) {
    try {

    } catch (err) {
        console.log(err)
        res.send(err)
    }
})

//

router.post('/lineMsg/getALLLineMessage', async function (req, res, next) {
    try {
        let queryLineMsg = await promiseDb(`SELECT msg.LineMessageContent ,msg.LineMessageTime ,l.LineFriendName FROM linemessage as msg, linefriend l where l.LineFriendUid = msg.LineFriendUid ORDER BY msg.LineMessageTime desc `)
        res.json(queryLineMsg)
    } catch (err) {
        console.log(err)
        res.send(err)
    }
})

router.post('/getLineFriend', async function (rqe, res, next) {
    try {
        let queryLineFriend = await promiseDb(`SELECT * FROM linefriend`)
        res.json(queryLineFriend)
    } catch (err) {
        console.log(err)
        res.send(err)
    }
})


router.post('/message/pushMessage', async function (req, res, next) {
    try {
        let msg = req.body.msg
        let queryLineFriendUid = await promiseDb(`SELECT LineFriendUid FROM linefriend`)
        for(let i in queryLineFriendUid){
            console.log(queryLineFriendUid[i].LineFriendUid)
            await pushMessage(msg,queryLineFriendUid[i].LineFriendUid)
        }
        res.send('ok')
    } catch (err) {
        console.log(err)
        res.send(err)
    }
})

router.post('/setWebhookUrl',async function(req,res,next){

    let newUrl = req.body.newUrl
    let data = JSON.stringify({"endpoint":newUrl});

    let config = {
        method: 'put',
        url: 'https://api.line.me/v2/bot/channel/webhook/endpoint',
        headers: {
            'Authorization': 'Bearer '+process.env.LINE_ACCESS_TOKEN,
            'Content-Type': 'application/json'
        },
        data : data
    };

    axios(config)
        .then(function (response) {
            console.log(JSON.stringify(response.data));
            res.send(response)

        })
        .catch(function (error) {
            console.log(error)
            res.send(error)
        });

})

module.exports = router;

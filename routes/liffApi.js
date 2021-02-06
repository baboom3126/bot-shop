var express = require('express');
var router = express.Router();
const {promiseDb} = require('../lib/promiseDb')
const {v4: uuidv4} = require('uuid');

router.post('/registerMember', async function(req, res, next) {
    try{
        let name = req.body.name
        let email = req.body.email
        let password = req.body.password
        let birthday = req.body.birthday
        let lineUid = req.body.LineUid
        let checkMemberExistByLineUid = await promiseDb(`SELECT * FROM member WHERE LineUid = ?`,[lineUid])
        console.log(checkMemberExistByLineUid)

        if(checkMemberExistByLineUid.length==0){
            let InsertMember = await promiseDb(`INSERT INTO member 
                                (MemberId, MemberName, Email, Password, Birthday, LineUid,FacebookUid) 
                                VALUES (?,?,?,?,?,?,?)`,[uuidv4(),name,email,password,birthday,lineUid,''])

        }else{
            //update
        }

        res.send('ok');

    }catch(err){
        console.log(err)
        res.send('fail')
    }

});

router.post('/getMemberExistByLineUid',async function(req,res,next){
    try{
        let LineUid = req.body.LineUid
        let queryMemberByEmail = await promiseDb(`SELECT * FROM member WHERE LineUid = ?`,[LineUid])
        if(queryMemberByEmail.length==1){
            res.json(queryMemberByEmail)
        }else if(queryMemberByEmail.length == 0){
            res.send('not exist')
        }
    }catch(err){
        console.log(err)
        res.send(err)
    }
})

router.post('/getAllProduct',async function(req,res,next){
    try {
        let queryAllMember = await promiseDb('SELECT * FROM product')
        res.json(queryAllMember);
    } catch (e) {
        console.log(e)
        res.send(e)

    }
})

router.post('/getProductCommentByPid',async function(req,res,next){
    try {
        let pid = req.body.pid
        console.log(pid)
        let queryProductComment = await promiseDb(`SELECT * FROM productcomment WHERE ProductId = ? AND Status = '1' ORDER BY CreateTime`, [pid])
        res.json(queryProductComment)
    } catch (e) {
        console.log(e)
        res.send(e)
    }
})


router.post('/getOrderAndOrderDetailByLineId',async function (req,res,next) {
    try{
        let lineUid = req.body.lineUid
        let queryOrder = await promiseDb(`select * from \`order\` as a where OrderMemberId = (SELECT MemberId FROM \`member\` where LineUid = ?) Order by a.OrderTime desc`,[lineUid])
        for(let i in queryOrder){
            let OrderId = queryOrder[i].OrderId
            let queryOrderDetailById = await promiseDb(`SELECT a.*,b.ProductName,b.Price FROM orderdetail as a ,product as b WHERE OrderId=? AND a.ProductId = b.ProductId `,OrderId)
            queryOrder[i].OrderDetail = queryOrderDetailById
        }
        res.json(queryOrder)
    } catch (e) {
        console.log(e)
        res.send(e)
    }
})



router.post('/newCommentForProduct',async function(req,res,next){
    try{
        let productId = req.body.productId
        let comment = req.body.comment
        let commentUserName = req.body.commentUserName
        let insertProductCommentSQL = await promiseDb(
            `INSERT INTO productcomment (ProductCommentId,ProductId,Comment,CreateTime,CommentUserName,Status) VALUES (?,?,?,?,?,?)`,
            [uuidv4(),productId,comment,new Date(),commentUserName,'進行中'])

        console.log(insertProductCommentSQL)
        res.send('success')

    }catch(e){
        console.log(e)
        res.send('fail')
    }



})


router.post('/newOrder',async function(req,res,next){
    try{
        let deliverAddress = req.body.deliverAddress
        let orderDetail = req.body.orderDetail
        let memberId = req.body.memberId
        let lineUid = req.body.lineUid
        let newOrderId = uuidv4().slice(0,5).toUpperCase()
        let newOrderSQL = await promiseDb(`INSERT INTO \`order\` (OrderId,OrderMemberId,Status,OrderTime,DeliverAddress) VALUES (?,(SELECT MemberId From member Where LineUid = ?),?,?,?)`,
            [newOrderId,lineUid,'進行中',new Date(),deliverAddress])

        for(let i in orderDetail){
            let productId = orderDetail[i].productId
            let number = orderDetail[i].number
            let newOrderDetailSQL = await promiseDb(`INSERT INTO orderdetail (OrderDetailId, OrderId, ProductId,ProductNum) VALUES (?,?,?,?)`,
                [uuidv4(),newOrderId,productId,number])

        }

        res.send('success')
    }catch(err){

        console.log(err)
        res.send('fail')
    }


})


module.exports = router;
var express = require('express');
var router = express.Router();
var {promiseDb} = require('../../lib/promiseDb')
var {v4: uuidv4} = require('uuid');


router.get('/demo', function (req, res, next) {
    res.render('demo', {title: 'Express'});
});

router.post('/product/getProductCommentByPid', async function (req, res, next) {
    try {
        let pid = req.body.pid
        console.log(pid)
        let queryProductComment = await promiseDb(`SELECT * FROM productcomment WHERE ProductId = ?`, [pid])
        res.json(queryProductComment)
    } catch (e) {
        console.log(e)
    }
})


router.get('/member/getAllMember', async function (req, res, next) {
    try {
        let queryAllMember = await promiseDb('SELECT * FROM member')
        res.json(queryAllMember);
    } catch (e) {
        console.log(e)
    }
});


router.get('/product/getAllProduct', async function (req, res, next) {
    try {
        let queryAllMember = await promiseDb('SELECT * FROM product')
        res.json(queryAllMember);
    } catch (e) {
        console.log(e)
    }
});


module.exports = router;

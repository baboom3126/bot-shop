var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/demo', function(req, res, next) {
  res.render('demo', { title: 'Express' });
});

router.get('/member', function(req, res, next) {
  res.render('member', { title: 'Express' });
});

router.get('/product', function(req, res, next) {
  res.render('product', { title: 'Express' });
});

router.get('/productDetail', function(req, res, next) {
  res.render('productDetail', { title: 'Express' });
});

router.get('/order', function(req, res, next) {
  res.render('order', { title: 'Express' });
});

router.get('/LineFriend', function(req, res, next) {
  res.render('LineFriend', { title: 'Express' });
});

router.get('/LineSendMsg', function(req, res, next) {
  res.render('LineSendMsg', { title: 'Express' });
});

router.get('/LineMsgHistory', function(req, res, next) {
  res.render('LineMsgHistory', { title: 'Express' });
});

router.get('/LineBotSetting', function(req, res, next) {
  res.render('LineBotSetting', { title: 'Express' });
});

router.get('/liff/liffFull_login', function(req, res, next) {
  res.render('liff/liffFull_login', { title: 'Express' });
});

router.get('/liff/liffFull_index', function(req, res, next) {
  res.render('liff/liffFull_index', { title: 'Express' });
});



module.exports = router;

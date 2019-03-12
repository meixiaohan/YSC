var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index');
});

router.get('/tologin',(req,res)=>{
  res.render('login')
})

router.get('/toregister',(req,res)=>{
  res.render('register')
})

router.get('/layout',(req,res)=>{
  delete req.session.user;
  return  res.redirect('tologin')
})


module.exports = router;

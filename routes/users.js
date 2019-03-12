var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var dbconfig = require('../db/DBconfig');
var userSql = require('../db/UserSql');

var connection = mysql.createConnection(dbconfig.mysql);
connection.connect();




/* GET user listing. */
router.get('/', function (req, res, next) {
  res.send('respond with a resource');
});




//找所有用户
router.get('/getall', (req, res) => {
  connection.query(userSql.queryAll, (err, result) => {
    if (err) {
      console.log('[SELECT ERROR] - ', err.message);
      res.json({
        msg:err.message
      });
    }
    res.json(result)
  });
})



//用户登录
router.post('/login', (req, res) => {
  var email = req.body.email;
  var pwd = req.body.password;
  console.log('pwd:' + pwd)
  connection.query(userSql.getUserByEmail, [email], (err, result) => {
    if (result != '') {
      var password = result[0].Password;
      console.log(result)
      if (err) {
        console.log('[SELECT ERROR] - ', err.message);
        res.json({
          msg:err.message
        });
      } else {
        if (password == pwd) {
          console.log(result)
          req.session.user = {
            'nickname':result[0].NickName,
            'email':result[0].Cemail
          }
          res.json({
            msg: 'login success!',
            data: result[0]
          })
        } else {
          res.json({
            msg: 'login fail!'
          })
        }
      }
    }else{
      res.json({
        msg:'用户名不存在！'
      })
    }
  });
})


//用户注册
router.post('/register',(req,res)=>{
   var email = req.body.email;
   var password = req.body.password;
   var nickname = req.body.nickname;
   var add = req.body.add;
   var sex = req.body.sex;
   var tel = req.body.tel;
   var name = req.body.name;
   connection.query(userSql.insert,[nickname,password,tel,email,sex,name,add],(err,result)=>{
      if (err) {
        console.log('[SELECT ERROR] - ', err.message);
        res.json({
          msg:err.message
        });
      }else{
        res.json({
          msg:'success',
          result:result
        })
      }
   })


});




module.exports = router;
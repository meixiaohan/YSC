var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var dbconfig = require('../db/DBconfig');
var orderSql = require('../db/OrderSql');
var bookSql = require('../db/BookSql')
var connection = mysql.createConnection(dbconfig.mysql);
connection.connect();


router.get('/getByEmail',(req,res)=>{ 
    if(req.session.user){
        var email = req.session.user.email;
        connection.query(orderSql.getOrderDetail,[email],(err, result) => {
            if (err) {
              console.log('[SELECT ERROR] - ', err.message);
              res.json({
                msg:err.message
              });
            }
            console.log(result);
            res.render('OrderList',{Order: result});
          });
    }else{
        res.redirect('/tologin');
    }

   
});



module.exports = router;
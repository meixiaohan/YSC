var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var dbconfig = require('../db/DBconfig');
var bookSql = require('../db/BookSql');

var connection = mysql.createConnection(dbconfig.mysql);
connection.connect();

router.get('/getallBooks',(req,res)=>{
    connection.query(bookSql.queryAll,(err,result)=>{
        if (err) {
            console.log('[SELECT ERROR] - ', err.message);
            res.json({
              msg:err.message
            });
          }
        if(result!=[]){
            res.render('bookList',{
                data: result,
                msg:'有数据'
            })
        }else{
            res.render('bookList',{
                msg:'没数据'                
            })
        }
    });
});

router.get('/getBookByName',(req,res)=>{
    var name = req.query.name;
    console.log(name)
    if(name !='' && name){
        connection.query(`SELECT * FROM book_info where Bname like '%${name}%'`,(err,result)=>{
            if (err) {
                console.log('[SELECT ERROR] - ', err.message);
                res.json({
                  msg:err.message
                });
              }
              if(result!=[]){
                res.render('bookList',{
                    data: result,
                    msg:'有数据'
                })
            }else{
                res.render('bookList',{
                    msg:'没数据'                
                })
            }
        })
    }
   
});


router.get('/getBookById',(req,res)=>{
    var id = req.query.id;
    if(id !='' && id){
        connection.query(bookSql.getBookByBookid,[id],(err,result)=>{
            if (err) {
                console.log('[SELECT ERROR] - ', err.message);
                res.json({
                  msg:err.message
                });
              }
              console.log(result)
              if(result !=[]){
                res.render('book',{
                  book_info:result,
                  msg:'有数据' 
                })
              }else{
                  res.json({
                      msg:'没数据'
                  })
              }
            
        })
    }  
});


router.get('/getBooksByTypeID',(req,res)=>{
    var id = req.query.id;
    connection.query(bookSql.getBooksByTypeId,[id],(err,result)=>{
        if (err) {
            console.log('[SELECT ERROR] - ', err.message);
            res.json({
              msg:err.message
            });
          }
          res.render('bookList',{
            data: result,
            msg:'有数据'
        })
    });
})



module.exports = router;
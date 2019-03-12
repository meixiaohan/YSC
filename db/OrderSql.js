var OrderSQL = {  
    getOrderByEmail:'SELECT * FROM order_info WHERE Cemail = ? ',
    getOrderDetail: 'SELECT * FROM orderdetail_info,book_info,order_info WHERE orderdetail_info.Bid=book_info.Bid AND orderdetail_info.Oid = order_info.Oid AND order_info.Cemail = ?'
  };
module.exports = OrderSQL;
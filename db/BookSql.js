var BookSql = {  
    queryAll:'SELECT * FROM book_info',  
    getBookByName:'SELECT * FROM book_info WHERE Bname LIKE "%${?}%" ',
    getBookByBookid:'SELECT * FROM book_info WHERE Bid = ? ',
    getBooksByTypeId:'SELECT * FROM book_info,category_info WHERE book_info.Cateid = category_info.Cateid AND book_info.Cateid = ?'
  };
module.exports = BookSql;
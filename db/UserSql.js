var UserSQL = {  
    insert:'INSERT INTO menber_info(NickName,Password,Ctel,Cemail,Csex,Cname,Cadd) VALUES (?,?,?,?,?,?,?) ', 
    queryAll:'SELECT * FROM menber_info',  
    getUserByEmail:'SELECT * FROM menber_info WHERE Cemail = ? ',
  };
module.exports = UserSQL;
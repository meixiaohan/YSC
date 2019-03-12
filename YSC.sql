-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: liangran
-- ------------------------------------------------------
-- Server version	5.7.21-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book_info`
--

DROP TABLE IF EXISTS `book_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_info` (
  `Bid` bigint(20) NOT NULL COMMENT '图书编号',
  `Bname` varchar(40) CHARACTER SET utf8 NOT NULL COMMENT '书名',
  `Cateid` bigint(20) NOT NULL COMMENT '图书类别编号',
  `Author` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '作者',
  `Publish` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '出版社',
  `Content` text CHARACTER SET utf8 NOT NULL COMMENT '简介',
  `Price` float(8,2) NOT NULL COMMENT '价格',
  `Bstock` int(20) NOT NULL COMMENT '库存',
  `imgsrc` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '图片位置',
  PRIMARY KEY (`Bid`),
  KEY `Bname` (`Bname`),
  KEY `Cateid` (`Cateid`),
  CONSTRAINT `book_info_ibfk_1` FOREIGN KEY (`Cateid`) REFERENCES `category_info` (`Cateid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_info`
--

LOCK TABLES `book_info` WRITE;
/*!40000 ALTER TABLE `book_info` DISABLE KEYS */;
INSERT INTO `book_info` VALUES (1352678537972,'道德经',34238676767,'老子','中国人民出版社','道德经道德经道德经全套，详细译文解释',199.00,200,'/images/道德经.jpg'),(2394893928420,'python数据分析与数据运营',98763829274,'宋天龙','机械工业出版社','Python作为数据科学家的首选程序语言，在数据分析市场有很大的市场份额。该书从数据运营出发，横向打通数据价值周期，包括数据整理、清洗、建模、分析、反馈等',99.00,500,'/images/pyhon数据化运营.jpg'),(2394893987402,'python机器学习实践指南',98763829274,'AlexanderT.Combs','人民邮电出版社','了解python机器学习的生态系统，了解如何执行线性回归，机器视觉概念的介绍，如何使用第三方API，部署机器学习模型',69.00,500,'/images/python机器学习指南.jpg'),(3467683468542,'白夜行',34234234232,'东野圭吾','南海出版公司','万千东野迷心中的无冕之王，周刊文春推理榜年度榜首作品，我一直走在白夜里，从来就没有太阳，所以不怕失去',41.10,1000,'/images/白夜行.jpg'),(4552667545355,'新东方 考研英语词汇词根+联想记忆法：乱序版(新版)',28222498231,'俞敏洪','群言出版社','俞敏洪考研词汇绿宝书全新升级，上册核心词夯实基础，词根+联想高效助记，同、反、搭、派增加学习深度，下册拓展词汇学习广度。',46.50,1500,'/images/考研英语词汇.jpg'),(7345235793521,'高敏感是种天赋',29807635762,'伊尔斯·桑德','北京联合出版有限公司','拯救全球15亿人的心灵之书！横扫欧美、韩日18国排行榜的超级心理学经典，肯定自己的独特·感受更多·想象更多·创造更多。敏感不是缺陷，而是上天赐给你的ZUI特别的礼物。著名歌手伊能静感动并鼓舞推荐！',31.00,1000,'/images/高敏感是种天赋.jpg'),(9787513918930,'谈判：如何在博弈中获得更多',28222495685,'盖温·肯尼迪',' 民主与建设出版社','全球十余种版本累计销售超200万册，中国入世首席谈判官龙永图作序推荐，世界著名谈判专家盖温•肯尼迪畅销35年的谈判宝典全新增订，亿万富翁的枕边书，四两拨千斤，寓教于乐的谈判学权威《谈判是什么》四版',30.00,1000,'/images/谈判.jpg'),(9787523423798,'蓝金阴谋',86589696757,'约瑟夫·查尔斯','北京联合出版社','在不远的未来，全球石油储量逐渐枯竭，海平面逐渐上升，各大石油公司一如既往的否认全球变暖的事实',39.80,200,'/images/蓝色阴谋.jpg');
/*!40000 ALTER TABLE `book_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_info`
--

DROP TABLE IF EXISTS `category_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_info` (
  `Cateid` bigint(20) NOT NULL COMMENT '图书类别编号',
  `Catename` char(10) CHARACTER SET utf8 NOT NULL COMMENT '类别名称',
  PRIMARY KEY (`Cateid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_info`
--

LOCK TABLES `category_info` WRITE;
/*!40000 ALTER TABLE `category_info` DISABLE KEYS */;
INSERT INTO `category_info` VALUES (28222495685,'经管励志'),(28222498231,'考试用书'),(29807635762,'心灵励志'),(34234234232,'悬疑小说'),(34238676767,'经典名著'),(86589696757,'科幻小说'),(98763829274,'计算机科学');
/*!40000 ALTER TABLE `category_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menber_info`
--

DROP TABLE IF EXISTS `menber_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menber_info` (
  `NickName` varchar(50) NOT NULL COMMENT '昵称，用户自己取，不可重复',
  `Password` varchar(50) NOT NULL COMMENT '密码',
  `Ctel` bigint(12) NOT NULL COMMENT '会员的电话',
  `Cemail` varchar(50) NOT NULL COMMENT '会员的联系邮件',
  `Csex` varchar(10) NOT NULL COMMENT '会员的性别',
  `Cname` varchar(20) NOT NULL COMMENT '会员的名字',
  `Cadd` varchar(50) NOT NULL COMMENT '会员的地址',
  PRIMARY KEY (`Cemail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menber_info`
--

LOCK TABLES `menber_info` WRITE;
/*!40000 ALTER TABLE `menber_info` DISABLE KEYS */;
INSERT INTO `menber_info` VALUES ('wait','cxkcxk',17865390976,'CXK@163.com','男','蔡徐坤','北京'),('DUIT','hrhrhr',15984582345,'HR@qq.com','女','胡蕊','四川攀枝花'),('脸大全靠苹果肌','lrlr070794rl',18218581261,'LR@qq.com','女','梁然','四川省绵阳市'),('弯大神','123123',13343133533,'mxh@163.com','男','梅笑寒','四川成都'),('时间都去哪了','lrlr070794r',18976542345,'RR@qq.com','男','刘航','四川成都'),('树读','wjkwjk',12938746290,'WJQ@163.com','男','王俊凯','重庆'),('泥泥','ynyn666',15723498765,'zyn@qq.com','女','张雅妮','四川成都');
/*!40000 ALTER TABLE `menber_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_info`
--

DROP TABLE IF EXISTS `order_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_info` (
  `Oid` bigint(15) NOT NULL COMMENT '订单号',
  `Date` datetime NOT NULL COMMENT '订单日期',
  `Opay` char(19) CHARACTER SET utf8 NOT NULL COMMENT '付款方式',
  `Oconvey` char(19) CHARACTER SET utf8 NOT NULL COMMENT '发货方式',
  `Ostatus` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '订单状态',
  `Cemail` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`Oid`),
  KEY `order_info_menber_info_FK` (`Cemail`),
  CONSTRAINT `order_info_menber_info_FK` FOREIGN KEY (`Cemail`) REFERENCES `menber_info` (`Cemail`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_info`
--

LOCK TABLES `order_info` WRITE;
/*!40000 ALTER TABLE `order_info` DISABLE KEYS */;
INSERT INTO `order_info` VALUES (441081256124,'2018-12-28 10:02:09','线上支付','EMS','未完成','zyn@qq.com'),(441082029449,'2018-12-22 18:41:18','线上支付','顺丰快递','完成','LR@qq.com'),(441082384923,'2019-01-01 22:13:28','线上支付','顺丰快递','未完成','LR@qq.com'),(441082388774,'2019-01-01 22:15:03','线上支付','圆通快递','完成','LR@qq.com'),(441082456122,'2018-12-28 22:06:55','线上支付','申通快递','完成','zyn@qq.com'),(441082456123,'2018-12-28 22:06:55','线上支付','韵达快递','完成','zyn@qq.com'),(441082456124,'2018-12-28 22:06:55','线上支付','顺丰快递','完成','zyn@qq.com'),(441082456331,'2018-12-28 10:02:09','线上支付','申通快递','未完成','LR@qq.com'),(441082456332,'2018-12-28 22:06:55','线上支付','圆通快递','完成','LR@qq.com');
/*!40000 ALTER TABLE `order_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail_info`
--

DROP TABLE IF EXISTS `orderdetail_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetail_info` (
  `Oid` bigint(15) NOT NULL DEFAULT '0' COMMENT '订单号',
  `Bid` bigint(15) NOT NULL DEFAULT '0' COMMENT '图书编号',
  `Quantity` bigint(15) NOT NULL COMMENT '数量',
  PRIMARY KEY (`Oid`,`Bid`),
  KEY `Bid` (`Bid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail_info`
--

LOCK TABLES `orderdetail_info` WRITE;
/*!40000 ALTER TABLE `orderdetail_info` DISABLE KEYS */;
INSERT INTO `orderdetail_info` VALUES (441081256124,3467683468542,1),(441082029449,7345235793521,1),(441082029449,9787513918930,1),(441082029449,9787523423798,1),(441082384923,1352678537972,1),(441082384923,4552667545355,1),(441082388774,3467683468542,1),(441082456122,9787523423798,1),(441082456123,2394893928420,2),(441082456124,9787513918930,1),(441082456331,1352678537972,1),(441082456332,2394893928420,2),(441082456332,2394893987402,2);
/*!40000 ALTER TABLE `orderdetail_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'liangran'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-12 15:36:11

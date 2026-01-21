-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootq7e7o
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springbootq7e7o`
--

/*!40000 DROP DATABASE IF EXISTS `springbootq7e7o`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootq7e7o` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootq7e7o`;

--
-- Table structure for table `chongzhixinxi`
--

DROP TABLE IF EXISTS `chongzhixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chongzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yikatonghao` varchar(200) DEFAULT NULL COMMENT '一卡通号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jine` int(11) NOT NULL COMMENT '金额',
  `chongzhishijian` datetime DEFAULT NULL COMMENT '充值时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1683533377645 DEFAULT CHARSET=utf8 COMMENT='充值信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chongzhixinxi`
--

LOCK TABLES `chongzhixinxi` WRITE;
/*!40000 ALTER TABLE `chongzhixinxi` DISABLE KEYS */;
INSERT INTO `chongzhixinxi` VALUES (31,'2023-05-08 07:46:10','一卡通号1','学号1','姓名1',1,'2023-05-08 15:46:10','未支付'),(32,'2023-05-08 07:46:10','一卡通号2','学号2','姓名2',2,'2023-05-08 15:46:10','未支付'),(33,'2023-05-08 07:46:10','一卡通号3','学号3','姓名3',3,'2023-05-08 15:46:10','未支付'),(34,'2023-05-08 07:46:10','一卡通号4','学号4','姓名4',4,'2023-05-08 15:46:10','未支付'),(35,'2023-05-08 07:46:10','一卡通号5','学号5','姓名5',5,'2023-05-08 15:46:10','未支付'),(36,'2023-05-08 07:46:10','一卡通号6','学号6','姓名6',6,'2023-05-08 15:46:10','未支付'),(37,'2023-05-08 07:46:10','一卡通号7','学号7','姓名7',7,'2023-05-08 15:46:10','未支付'),(38,'2023-05-08 07:46:10','一卡通号8','学号8','姓名8',8,'2023-05-08 15:46:10','未支付'),(1683533377644,'2023-05-08 08:09:37','1683532873079','2','王丽',1000,'2023-05-08 16:09:36','已支付');
/*!40000 ALTER TABLE `chongzhixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/1683533006917.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanxinxi`
--

DROP TABLE IF EXISTS `dingdanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  `jiage` varchar(200) NOT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `goumaishijian` datetime DEFAULT NULL COMMENT '购买时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1683533092144 DEFAULT CHARSET=utf8 COMMENT='订单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanxinxi`
--

LOCK TABLES `dingdanxinxi` WRITE;
/*!40000 ALTER TABLE `dingdanxinxi` DISABLE KEYS */;
INSERT INTO `dingdanxinxi` VALUES (81,'2023-05-08 07:46:10','1111111111','商品名称1','商品类型1','价格1',1,'总价格1','2023-05-08 15:46:10','学号1','姓名1','13823888881'),(82,'2023-05-08 07:46:10','2222222222','商品名称2','商品类型2','价格2',2,'总价格2','2023-05-08 15:46:10','学号2','姓名2','13823888882'),(83,'2023-05-08 07:46:10','3333333333','商品名称3','商品类型3','价格3',3,'总价格3','2023-05-08 15:46:10','学号3','姓名3','13823888883'),(84,'2023-05-08 07:46:10','4444444444','商品名称4','商品类型4','价格4',4,'总价格4','2023-05-08 15:46:10','学号4','姓名4','13823888884'),(85,'2023-05-08 07:46:10','5555555555','商品名称5','商品类型5','价格5',5,'总价格5','2023-05-08 15:46:10','学号5','姓名5','13823888885'),(86,'2023-05-08 07:46:10','6666666666','商品名称6','商品类型6','价格6',6,'总价格6','2023-05-08 15:46:10','学号6','姓名6','13823888886'),(87,'2023-05-08 07:46:10','7777777777','商品名称7','商品类型7','价格7',7,'总价格7','2023-05-08 15:46:10','学号7','姓名7','13823888887'),(88,'2023-05-08 07:46:10','8888888888','商品名称8','商品类型8','价格8',8,'总价格8','2023-05-08 15:46:10','学号8','姓名8','13823888888'),(1683533092143,'2023-05-08 08:04:52','1683533091239','商品名称2','商品类型2','2',1,'2','2023-05-08 16:04:51','2','王丽','15214121411');
/*!40000 ALTER TABLE `dingdanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussmeishixinxi`
--

DROP TABLE IF EXISTS `discussmeishixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussmeishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='美食信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussmeishixinxi`
--

LOCK TABLES `discussmeishixinxi` WRITE;
/*!40000 ALTER TABLE `discussmeishixinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussmeishixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstiyuqicai`
--

DROP TABLE IF EXISTS `discusstiyuqicai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstiyuqicai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='体育器材评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstiyuqicai`
--

LOCK TABLES `discusstiyuqicai` WRITE;
/*!40000 ALTER TABLE `discusstiyuqicai` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusstiyuqicai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1683533066899 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (222,'2023-05-08 07:46:10','帖子标题2','帖子内容2',0,2,'用户名2','upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg','开放'),(223,'2023-05-08 07:46:10','帖子标题3','帖子内容3',0,3,'用户名3','upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg','开放'),(224,'2023-05-08 07:46:10','帖子标题4','帖子内容4',0,4,'用户名4','upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg','开放'),(225,'2023-05-08 07:46:10','帖子标题5','帖子内容5',0,5,'用户名5','upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg','开放'),(226,'2023-05-08 07:46:10','帖子标题6','帖子内容6',0,6,'用户名6','upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg','开放'),(227,'2023-05-08 07:46:10','帖子标题7','帖子内容7',0,7,'用户名7','upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg','开放'),(228,'2023-05-08 07:46:10','帖子标题8','帖子内容8',0,8,'用户名8','upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg,upload/forum_avatarurl10.jpg','开放'),(1683533052468,'2023-05-08 08:04:11','大家好啊','<p>用户可以在这里发布信息进行交流讨论风险的。。。21</p>',0,1683532817260,'2',NULL,'开放'),(1683533057646,'2023-05-08 08:04:17',NULL,'66666',1683533052468,1683532817260,'2','',NULL),(1683533066219,'2023-05-08 08:04:25',NULL,'HELLO',1683533052468,1683532817260,'2','',NULL),(1683533066898,'2023-05-08 08:04:25',NULL,'HELLO',1683533052468,1683532817260,'2','',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guashishenqing`
--

DROP TABLE IF EXISTS `guashishenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guashishenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yikatonghao` varchar(200) DEFAULT NULL COMMENT '一卡通号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `guashineirong` longtext NOT NULL COMMENT '挂失内容',
  `guashishijian` datetime DEFAULT NULL COMMENT '挂失时间',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1683533436585 DEFAULT CHARSET=utf8 COMMENT='挂失申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guashishenqing`
--

LOCK TABLES `guashishenqing` WRITE;
/*!40000 ALTER TABLE `guashishenqing` DISABLE KEYS */;
INSERT INTO `guashishenqing` VALUES (51,'2023-05-08 07:46:10','一卡通号1','学号1','姓名1','挂失内容1','2023-05-08 15:46:10','是',''),(52,'2023-05-08 07:46:10','一卡通号2','学号2','姓名2','挂失内容2','2023-05-08 15:46:10','是',''),(53,'2023-05-08 07:46:10','一卡通号3','学号3','姓名3','挂失内容3','2023-05-08 15:46:10','是',''),(54,'2023-05-08 07:46:10','一卡通号4','学号4','姓名4','挂失内容4','2023-05-08 15:46:10','是',''),(55,'2023-05-08 07:46:10','一卡通号5','学号5','姓名5','挂失内容5','2023-05-08 15:46:10','是',''),(56,'2023-05-08 07:46:10','一卡通号6','学号6','姓名6','挂失内容6','2023-05-08 15:46:10','是',''),(57,'2023-05-08 07:46:10','一卡通号7','学号7','姓名7','挂失内容7','2023-05-08 15:46:10','是',''),(58,'2023-05-08 07:46:10','一卡通号8','学号8','姓名8','挂失内容8','2023-05-08 15:46:10','是',''),(1683533436584,'2023-05-08 08:10:35','1683532873079','2','王丽','我要申请挂失，申请之后管理员可以审核不通过说明状态，用户就不能进行充值扣分等操作','2023-05-08 16:10:13','待审核','');
/*!40000 ALTER TABLE `guashishenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyiqiandao`
--

DROP TABLE IF EXISTS `huiyiqiandao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyiqiandao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyimingcheng` varchar(200) NOT NULL COMMENT '会议名称',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `qiandaoshuoming` varchar(200) NOT NULL COMMENT '签到说明',
  `qiandaoshijian` datetime DEFAULT NULL COMMENT '签到时间',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1683533237173 DEFAULT CHARSET=utf8 COMMENT='会议签到';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyiqiandao`
--

LOCK TABLES `huiyiqiandao` WRITE;
/*!40000 ALTER TABLE `huiyiqiandao` DISABLE KEYS */;
INSERT INTO `huiyiqiandao` VALUES (191,'2023-05-08 07:46:10','会议名称1','学号1','姓名1','签到说明1','2023-05-08 15:46:10',1,1,'宇宙银河系地球1号'),(192,'2023-05-08 07:46:10','会议名称2','学号2','姓名2','签到说明2','2023-05-08 15:46:10',2,2,'宇宙银河系地球2号'),(193,'2023-05-08 07:46:10','会议名称3','学号3','姓名3','签到说明3','2023-05-08 15:46:10',3,3,'宇宙银河系地球3号'),(194,'2023-05-08 07:46:10','会议名称4','学号4','姓名4','签到说明4','2023-05-08 15:46:10',4,4,'宇宙银河系地球4号'),(195,'2023-05-08 07:46:10','会议名称5','学号5','姓名5','签到说明5','2023-05-08 15:46:10',5,5,'宇宙银河系地球5号'),(196,'2023-05-08 07:46:10','会议名称6','学号6','姓名6','签到说明6','2023-05-08 15:46:10',6,6,'宇宙银河系地球6号'),(197,'2023-05-08 07:46:10','会议名称7','学号7','姓名7','签到说明7','2023-05-08 15:46:10',7,7,'宇宙银河系地球7号'),(198,'2023-05-08 07:46:10','会议名称8','学号8','姓名8','签到说明8','2023-05-08 15:46:10',8,8,'宇宙银河系地球8号'),(1683533237172,'2023-05-08 08:07:16','xx会议','2','王丽','会议签到','2023-05-08 16:06:51',116.357,39.9484,'北京市海淀区北太平庄街道南长河西晴公寓');
/*!40000 ALTER TABLE `huiyiqiandao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaofeixinxi`
--

DROP TABLE IF EXISTS `jiaofeixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaofeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `jiaofeixiangmu` varchar(200) DEFAULT NULL COMMENT '缴费项目',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jiaofeijine` float NOT NULL COMMENT '缴费金额',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `jiaofeishuoming` varchar(200) NOT NULL COMMENT '缴费说明',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1683533363859 DEFAULT CHARSET=utf8 COMMENT='缴费信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaofeixinxi`
--

LOCK TABLES `jiaofeixinxi` WRITE;
/*!40000 ALTER TABLE `jiaofeixinxi` DISABLE KEYS */;
INSERT INTO `jiaofeixinxi` VALUES (201,'2023-05-08 07:46:10','1111111111','缴费项目1','学号1','姓名1',1,'2023-05-08 15:46:10','缴费说明1'),(202,'2023-05-08 07:46:10','2222222222','缴费项目2','学号2','姓名2',2,'2023-05-08 15:46:10','缴费说明2'),(203,'2023-05-08 07:46:10','3333333333','缴费项目3','学号3','姓名3',3,'2023-05-08 15:46:10','缴费说明3'),(204,'2023-05-08 07:46:10','4444444444','缴费项目4','学号4','姓名4',4,'2023-05-08 15:46:10','缴费说明4'),(205,'2023-05-08 07:46:10','5555555555','缴费项目5','学号5','姓名5',5,'2023-05-08 15:46:10','缴费说明5'),(206,'2023-05-08 07:46:10','6666666666','缴费项目6','学号6','姓名6',6,'2023-05-08 15:46:10','缴费说明6'),(207,'2023-05-08 07:46:10','7777777777','缴费项目7','学号7','姓名7',7,'2023-05-08 15:46:10','缴费说明7'),(208,'2023-05-08 07:46:10','8888888888','缴费项目8','学号8','姓名8',8,'2023-05-08 15:46:10','缴费说明8'),(1683533352672,'2023-05-08 08:09:11','1683533342277','水费','2','王丽',58,'2023-05-08 16:09:02','需要缴纳水费。。'),(1683533363858,'2023-05-08 08:09:23','1683533355733','需要缴费什么都可以这里发布','2','王丽',85,'2023-05-08 16:09:15','221');
/*!40000 ALTER TABLE `jiaofeixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koufeixinxi`
--

DROP TABLE IF EXISTS `koufeixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koufeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yikatonghao` varchar(200) DEFAULT NULL COMMENT '一卡通号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jine` int(11) NOT NULL COMMENT '金额',
  `koufeishuoming` longtext NOT NULL COMMENT '扣费说明',
  `koufeishijian` datetime DEFAULT NULL COMMENT '扣费时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1683533408637 DEFAULT CHARSET=utf8 COMMENT='扣费信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koufeixinxi`
--

LOCK TABLES `koufeixinxi` WRITE;
/*!40000 ALTER TABLE `koufeixinxi` DISABLE KEYS */;
INSERT INTO `koufeixinxi` VALUES (41,'2023-05-08 07:46:10','一卡通号1','学号1','姓名1',1,'扣费说明1','2023-05-08 15:46:10'),(42,'2023-05-08 07:46:10','一卡通号2','学号2','姓名2',2,'扣费说明2','2023-05-08 15:46:10'),(43,'2023-05-08 07:46:10','一卡通号3','学号3','姓名3',3,'扣费说明3','2023-05-08 15:46:10'),(44,'2023-05-08 07:46:10','一卡通号4','学号4','姓名4',4,'扣费说明4','2023-05-08 15:46:10'),(45,'2023-05-08 07:46:10','一卡通号5','学号5','姓名5',5,'扣费说明5','2023-05-08 15:46:10'),(46,'2023-05-08 07:46:10','一卡通号6','学号6','姓名6',6,'扣费说明6','2023-05-08 15:46:10'),(47,'2023-05-08 07:46:10','一卡通号7','学号7','姓名7',7,'扣费说明7','2023-05-08 15:46:10'),(48,'2023-05-08 07:46:10','一卡通号8','学号8','姓名8',8,'扣费说明8','2023-05-08 15:46:10'),(1683533408636,'2023-05-08 08:10:08','1683532873079','2','王丽',150,'交水费 所有费用这里进行扣费比如食堂费用啊什么费用的都在这里进行扣费','2023-05-08 16:09:48');
/*!40000 ALTER TABLE `koufeixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishixinxi`
--

DROP TABLE IF EXISTS `meishixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shitangmingcheng` varchar(200) DEFAULT NULL COMMENT '食堂名称',
  `caipinmingcheng` varchar(200) NOT NULL COMMENT '菜品名称',
  `caipinleixing` varchar(200) NOT NULL COMMENT '菜品类型',
  `tupian` longtext COMMENT '图片',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `jiage` float NOT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `caipinjieshao` longtext COMMENT '菜品介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COMMENT='美食信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishixinxi`
--

LOCK TABLES `meishixinxi` WRITE;
/*!40000 ALTER TABLE `meishixinxi` DISABLE KEYS */;
INSERT INTO `meishixinxi` VALUES (141,'2023-05-08 07:46:10','食堂名称1','菜品名称1','菜品类型1','upload/meishixinxi_tupian1.jpg,upload/meishixinxi_tupian2.jpg,upload/meishixinxi_tupian3.jpg','口味1',1,1,'菜品介绍1'),(142,'2023-05-08 07:46:10','食堂名称2','菜品名称2','菜品类型2','upload/meishixinxi_tupian2.jpg,upload/meishixinxi_tupian3.jpg,upload/meishixinxi_tupian4.jpg','口味2',2,2,'菜品介绍2'),(143,'2023-05-08 07:46:10','食堂名称3','菜品名称3','菜品类型3','upload/meishixinxi_tupian3.jpg,upload/meishixinxi_tupian4.jpg,upload/meishixinxi_tupian5.jpg','口味3',3,3,'菜品介绍3'),(144,'2023-05-08 07:46:10','食堂名称4','菜品名称4','菜品类型4','upload/meishixinxi_tupian4.jpg,upload/meishixinxi_tupian5.jpg,upload/meishixinxi_tupian6.jpg','口味4',4,4,'菜品介绍4'),(145,'2023-05-08 07:46:10','食堂名称5','菜品名称5','菜品类型5','upload/meishixinxi_tupian5.jpg,upload/meishixinxi_tupian6.jpg,upload/meishixinxi_tupian7.jpg','口味5',5,5,'菜品介绍5'),(146,'2023-05-08 07:46:10','食堂名称6','菜品名称6','菜品类型6','upload/meishixinxi_tupian6.jpg,upload/meishixinxi_tupian7.jpg,upload/meishixinxi_tupian8.jpg','口味6',6,6,'菜品介绍6'),(147,'2023-05-08 07:46:10','食堂名称7','菜品名称7','菜品类型7','upload/meishixinxi_tupian7.jpg,upload/meishixinxi_tupian8.jpg,upload/meishixinxi_tupian9.jpg','口味7',7,7,'菜品介绍7'),(148,'2023-05-08 07:46:10','一号食堂','菜品名称8','菜品类型8','upload/meishixinxi_tupian8.jpg,upload/meishixinxi_tupian9.jpg,upload/meishixinxi_tupian10.jpg','口味8',80,78,'<p>菜品介绍8测试</p>');
/*!40000 ALTER TABLE `meishixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8 COMMENT='校园资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (241,'2023-05-08 07:46:10','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(242,'2023-05-08 07:46:10','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(243,'2023-05-08 07:46:10','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(244,'2023-05-08 07:46:10','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(245,'2023-05-08 07:46:10','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(246,'2023-05-08 07:46:10','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(247,'2023-05-08 07:46:10','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(248,'2023-05-08 07:46:10','公告资讯','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。这里可以发布一些相关公告或者资讯内容的。。。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qicaiguihai`
--

DROP TABLE IF EXISTS `qicaiguihai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qicaiguihai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaimingcheng` varchar(200) DEFAULT NULL COMMENT '器材名称',
  `qicaileixing` varchar(200) DEFAULT NULL COMMENT '器材类型',
  `guihaishuliang` int(11) DEFAULT NULL COMMENT '归还数量',
  `guihaishuoming` varchar(200) NOT NULL COMMENT '归还说明',
  `guihaishijian` datetime DEFAULT NULL COMMENT '归还时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1683533483341 DEFAULT CHARSET=utf8 COMMENT='器材归还';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qicaiguihai`
--

LOCK TABLES `qicaiguihai` WRITE;
/*!40000 ALTER TABLE `qicaiguihai` DISABLE KEYS */;
INSERT INTO `qicaiguihai` VALUES (181,'2023-05-08 07:46:10','器材名称1','器材类型1',1,'归还说明1','2023-05-08 15:46:10','学号1','姓名1','手机1','是',''),(182,'2023-05-08 07:46:10','器材名称2','器材类型2',2,'归还说明2','2023-05-08 15:46:10','学号2','姓名2','手机2','是',''),(183,'2023-05-08 07:46:10','器材名称3','器材类型3',3,'归还说明3','2023-05-08 15:46:10','学号3','姓名3','手机3','是',''),(184,'2023-05-08 07:46:10','器材名称4','器材类型4',4,'归还说明4','2023-05-08 15:46:10','学号4','姓名4','手机4','是',''),(185,'2023-05-08 07:46:10','器材名称5','器材类型5',5,'归还说明5','2023-05-08 15:46:10','学号5','姓名5','手机5','是',''),(186,'2023-05-08 07:46:10','器材名称6','器材类型6',6,'归还说明6','2023-05-08 15:46:10','学号6','姓名6','手机6','是',''),(187,'2023-05-08 07:46:10','器材名称7','器材类型7',7,'归还说明7','2023-05-08 15:46:10','学号7','姓名7','手机7','是',''),(188,'2023-05-08 07:46:10','器材名称8','器材类型8',8,'归还说明8','2023-05-08 15:46:10','学号8','姓名8','手机8','是',''),(1683533483340,'2023-05-08 08:11:23','器材名称3','器材类型3',1,'已进行归还一个','2023-05-08 16:11:16','2','王丽','15214121411','待审核','');
/*!40000 ALTER TABLE `qicaiguihai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qicaijieyong`
--

DROP TABLE IF EXISTS `qicaijieyong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qicaijieyong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaimingcheng` varchar(200) DEFAULT NULL COMMENT '器材名称',
  `qicaileixing` varchar(200) DEFAULT NULL COMMENT '器材类型',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `jieyongshizhang` varchar(200) NOT NULL COMMENT '借用时长',
  `jieyongshijian` datetime DEFAULT NULL COMMENT '借用时间',
  `jieyongshuoming` varchar(200) DEFAULT NULL COMMENT '借用说明',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1683533139395 DEFAULT CHARSET=utf8 COMMENT='器材借用';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qicaijieyong`
--

LOCK TABLES `qicaijieyong` WRITE;
/*!40000 ALTER TABLE `qicaijieyong` DISABLE KEYS */;
INSERT INTO `qicaijieyong` VALUES (171,'2023-05-08 07:46:10','器材名称1','器材类型1',1,'借用时长1','2023-05-08 15:46:10','借用说明1','学号1','姓名1','13823888881','是',''),(172,'2023-05-08 07:46:10','器材名称2','器材类型2',2,'借用时长2','2023-05-08 15:46:10','借用说明2','学号2','姓名2','13823888882','是',''),(173,'2023-05-08 07:46:10','器材名称3','器材类型3',3,'借用时长3','2023-05-08 15:46:10','借用说明3','学号3','姓名3','13823888883','是',''),(174,'2023-05-08 07:46:10','器材名称4','器材类型4',4,'借用时长4','2023-05-08 15:46:10','借用说明4','学号4','姓名4','13823888884','是',''),(175,'2023-05-08 07:46:10','器材名称5','器材类型5',5,'借用时长5','2023-05-08 15:46:10','借用说明5','学号5','姓名5','13823888885','是',''),(176,'2023-05-08 07:46:10','器材名称6','器材类型6',6,'借用时长6','2023-05-08 15:46:10','借用说明6','学号6','姓名6','13823888886','是',''),(177,'2023-05-08 07:46:10','器材名称7','器材类型7',7,'借用时长7','2023-05-08 15:46:10','借用说明7','学号7','姓名7','13823888887','是',''),(178,'2023-05-08 07:46:10','器材名称8','器材类型8',8,'借用时长8','2023-05-08 15:46:10','借用说明8','学号8','姓名8','13823888888','是',''),(1683533139394,'2023-05-08 08:05:38','器材名称3','器材类型3',1,'2小时','2023-05-08 16:05:32','我要借用。。','2','王丽','15214121411','是','同意借用');
/*!40000 ALTER TABLE `qicaijieyong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjijilu`
--

DROP TABLE IF EXISTS `shangjijilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangjijilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `shangjiriqi` date DEFAULT NULL COMMENT '上机日期',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shangjishizhang` varchar(200) NOT NULL COMMENT '上机时长',
  `shangjifeiyong` float NOT NULL COMMENT '上机费用',
  `shangjishuoming` longtext NOT NULL COMMENT '上机说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1683532990550 DEFAULT CHARSET=utf8 COMMENT='上机记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjijilu`
--

LOCK TABLES `shangjijilu` WRITE;
/*!40000 ALTER TABLE `shangjijilu` DISABLE KEYS */;
INSERT INTO `shangjijilu` VALUES (211,'2023-05-08 07:46:10','名称1','2023-05-08','学号1','姓名1','上机时长1',1,'上机说明1'),(212,'2023-05-08 07:46:10','名称2','2023-05-08','学号2','姓名2','上机时长2',2,'上机说明2'),(213,'2023-05-08 07:46:10','名称3','2023-05-08','学号3','姓名3','上机时长3',3,'上机说明3'),(214,'2023-05-08 07:46:10','名称4','2023-05-08','学号4','姓名4','上机时长4',4,'上机说明4'),(215,'2023-05-08 07:46:10','名称5','2023-05-08','学号5','姓名5','上机时长5',5,'上机说明5'),(216,'2023-05-08 07:46:10','名称6','2023-05-08','学号6','姓名6','上机时长6',6,'上机说明6'),(217,'2023-05-08 07:46:10','名称7','2023-05-08','学号7','姓名7','上机时长7',7,'上机说明7'),(218,'2023-05-08 07:46:10','名称8','2023-05-08','学号8','姓名8','上机时长8',8,'上机说明8'),(1683532990549,'2023-05-08 08:03:10','一号上机','2023-05-08','2','王丽','2小时',20,'测试');
/*!40000 ALTER TABLE `shangjijilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinleixing`
--

DROP TABLE IF EXISTS `shangpinleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='商品类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinleixing`
--

LOCK TABLES `shangpinleixing` WRITE;
/*!40000 ALTER TABLE `shangpinleixing` DISABLE KEYS */;
INSERT INTO `shangpinleixing` VALUES (61,'2023-05-08 07:46:10','商品类型1'),(62,'2023-05-08 07:46:10','商品类型2'),(63,'2023-05-08 07:46:10','商品类型3'),(64,'2023-05-08 07:46:10','商品类型4'),(65,'2023-05-08 07:46:10','商品类型5'),(66,'2023-05-08 07:46:10','商品类型6'),(67,'2023-05-08 07:46:10','商品类型7'),(68,'2023-05-08 07:46:10','x商品');
/*!40000 ALTER TABLE `shangpinleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `tupian` longtext COMMENT '图片',
  `jiage` float NOT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (71,'2023-05-08 07:46:10','1111111111','商品名称1','商品类型1','upload/shangpinxinxi_tupian1.jpg,upload/shangpinxinxi_tupian2.jpg,upload/shangpinxinxi_tupian3.jpg',1,1,'2023-05-08 15:46:10','商品详情1'),(72,'2023-05-08 07:46:10','2222222222','商品名称2','商品类型2','upload/shangpinxinxi_tupian2.jpg,upload/shangpinxinxi_tupian3.jpg,upload/shangpinxinxi_tupian4.jpg',2,1,'2023-05-08 15:46:10','商品详情2'),(73,'2023-05-08 07:46:10','3333333333','商品名称3','商品类型3','upload/shangpinxinxi_tupian3.jpg,upload/shangpinxinxi_tupian4.jpg,upload/shangpinxinxi_tupian5.jpg',3,3,'2023-05-08 15:46:10','商品详情3'),(74,'2023-05-08 07:46:10','4444444444','商品名称4','商品类型4','upload/shangpinxinxi_tupian4.jpg,upload/shangpinxinxi_tupian5.jpg,upload/shangpinxinxi_tupian6.jpg',4,4,'2023-05-08 15:46:10','商品详情4'),(75,'2023-05-08 07:46:10','5555555555','商品名称5','商品类型5','upload/shangpinxinxi_tupian5.jpg,upload/shangpinxinxi_tupian6.jpg,upload/shangpinxinxi_tupian7.jpg',5,5,'2023-05-08 15:46:10','商品详情5'),(76,'2023-05-08 07:46:10','6666666666','商品名称6','商品类型6','upload/shangpinxinxi_tupian6.jpg,upload/shangpinxinxi_tupian7.jpg,upload/shangpinxinxi_tupian8.jpg',6,6,'2023-05-08 15:46:10','商品详情6'),(77,'2023-05-08 07:46:10','7777777777','商品名称7','商品类型7','upload/shangpinxinxi_tupian7.jpg,upload/shangpinxinxi_tupian8.jpg,upload/shangpinxinxi_tupian9.jpg',7,7,'2023-05-08 15:46:10','商品详情7'),(78,'2023-05-08 07:46:10','8888888888','xx书籍','x商品','upload/shangpinxinxi_tupian8.jpg,upload/1683532932351.jpg',180,80,'2023-05-08 15:46:10','<p>商品详情8</p><p><img src=\"http://localhost:8080/springbootq7e7o/upload/1683532937653.jpg\"></p><p>这里可以发布一些相关介绍。。。</p>');
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shitangjiucan`
--

DROP TABLE IF EXISTS `shitangjiucan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shitangjiucan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) NOT NULL COMMENT '菜品名称',
  `caipinleixing` varchar(200) NOT NULL COMMENT '菜品类型',
  `jiage` float NOT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjiage` float DEFAULT NULL COMMENT '总价格',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `xiadanshijian` date DEFAULT NULL COMMENT '下单时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1683533181532 DEFAULT CHARSET=utf8 COMMENT='食堂就餐';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shitangjiucan`
--

LOCK TABLES `shitangjiucan` WRITE;
/*!40000 ALTER TABLE `shitangjiucan` DISABLE KEYS */;
INSERT INTO `shitangjiucan` VALUES (151,'2023-05-08 07:46:10','1111111111','菜品名称1','菜品类型1',1,1,1,'备注1','2023-05-08','学号1','姓名1','13823888881'),(152,'2023-05-08 07:46:10','2222222222','菜品名称2','菜品类型2',2,2,2,'备注2','2023-05-08','学号2','姓名2','13823888882'),(153,'2023-05-08 07:46:10','3333333333','菜品名称3','菜品类型3',3,3,3,'备注3','2023-05-08','学号3','姓名3','13823888883'),(154,'2023-05-08 07:46:10','4444444444','菜品名称4','菜品类型4',4,4,4,'备注4','2023-05-08','学号4','姓名4','13823888884'),(155,'2023-05-08 07:46:10','5555555555','菜品名称5','菜品类型5',5,5,5,'备注5','2023-05-08','学号5','姓名5','13823888885'),(156,'2023-05-08 07:46:10','6666666666','菜品名称6','菜品类型6',6,6,6,'备注6','2023-05-08','学号6','姓名6','13823888886'),(157,'2023-05-08 07:46:10','7777777777','菜品名称7','菜品类型7',7,7,7,'备注7','2023-05-08','学号7','姓名7','13823888887'),(158,'2023-05-08 07:46:10','8888888888','菜品名称8','菜品类型8',8,8,8,'备注8','2023-05-08','学号8','姓名8','13823888888'),(1683533181531,'2023-05-08 08:06:20','1683533175840','菜品名称8','菜品类型8',80,2,160,'我要微辣。。','2023-05-08','2','王丽','15214121411');
/*!40000 ALTER TABLE `shitangjiucan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1683533163057 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiyuqicai`
--

DROP TABLE IF EXISTS `tiyuqicai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiyuqicai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaimingcheng` varchar(200) NOT NULL COMMENT '器材名称',
  `qicaileixing` varchar(200) NOT NULL COMMENT '器材类型',
  `tupian` longtext COMMENT '图片',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `qicaijieshao` longtext COMMENT '器材介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COMMENT='体育器材';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiyuqicai`
--

LOCK TABLES `tiyuqicai` WRITE;
/*!40000 ALTER TABLE `tiyuqicai` DISABLE KEYS */;
INSERT INTO `tiyuqicai` VALUES (161,'2023-05-08 07:46:10','器材名称1','器材类型1','upload/tiyuqicai_tupian1.jpg,upload/tiyuqicai_tupian2.jpg,upload/tiyuqicai_tupian3.jpg',1,'器材介绍1'),(162,'2023-05-08 07:46:10','器材名称2','器材类型2','upload/tiyuqicai_tupian2.jpg,upload/tiyuqicai_tupian3.jpg,upload/tiyuqicai_tupian4.jpg',2,'器材介绍2'),(163,'2023-05-08 07:46:10','器材名称3','器材类型3','upload/tiyuqicai_tupian3.jpg,upload/tiyuqicai_tupian4.jpg,upload/tiyuqicai_tupian5.jpg',2,'器材介绍3'),(164,'2023-05-08 07:46:10','器材名称4','器材类型4','upload/tiyuqicai_tupian4.jpg,upload/tiyuqicai_tupian5.jpg,upload/tiyuqicai_tupian6.jpg',4,'器材介绍4'),(165,'2023-05-08 07:46:10','器材名称5','器材类型5','upload/tiyuqicai_tupian5.jpg,upload/tiyuqicai_tupian6.jpg,upload/tiyuqicai_tupian7.jpg',5,'器材介绍5'),(166,'2023-05-08 07:46:10','器材名称6','器材类型6','upload/tiyuqicai_tupian6.jpg,upload/tiyuqicai_tupian7.jpg,upload/tiyuqicai_tupian8.jpg',6,'器材介绍6'),(167,'2023-05-08 07:46:10','器材名称7','器材类型7','upload/tiyuqicai_tupian7.jpg,upload/tiyuqicai_tupian8.jpg,upload/tiyuqicai_tupian9.jpg',7,'器材介绍7'),(168,'2023-05-08 07:46:10','xx器材','xx器材','upload/tiyuqicai_tupian8.jpg,upload/tiyuqicai_tupian9.jpg,upload/tiyuqicai_tupian10.jpg',8,'<p>器材介绍8测试</p>');
/*!40000 ALTER TABLE `tiyuqicai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','tawovpusx24m0p16v4uuj8en2mkun594','2023-05-08 07:59:19','2023-05-08 09:11:32'),(2,1683532817260,'2','xuesheng','学生','igmmfh1ntqs83r7g2qi3u04la8qccjht','2023-05-08 08:03:45','2023-05-08 09:09:30');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tongzhixinxi`
--

DROP TABLE IF EXISTS `tongzhixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tongzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tongzhineirong` longtext COMMENT '通知内容',
  `tongzhishijian` datetime DEFAULT NULL COMMENT '通知时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1683533306575 DEFAULT CHARSET=utf8 COMMENT='通知信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tongzhixinxi`
--

LOCK TABLES `tongzhixinxi` WRITE;
/*!40000 ALTER TABLE `tongzhixinxi` DISABLE KEYS */;
INSERT INTO `tongzhixinxi` VALUES (131,'2023-05-08 07:46:10','标题1','学号1','姓名1','通知内容1','2023-05-08 15:46:10'),(132,'2023-05-08 07:46:10','标题2','学号2','姓名2','通知内容2','2023-05-08 15:46:10'),(133,'2023-05-08 07:46:10','标题3','学号3','姓名3','通知内容3','2023-05-08 15:46:10'),(134,'2023-05-08 07:46:10','标题4','学号4','姓名4','通知内容4','2023-05-08 15:46:10'),(135,'2023-05-08 07:46:10','标题5','学号5','姓名5','通知内容5','2023-05-08 15:46:10'),(136,'2023-05-08 07:46:10','标题6','学号6','姓名6','通知内容6','2023-05-08 15:46:10'),(137,'2023-05-08 07:46:10','标题7','学号7','姓名7','通知内容7','2023-05-08 15:46:10'),(138,'2023-05-08 07:46:10','标题8','学号8','姓名8','通知内容8','2023-05-08 15:46:10'),(1683533306574,'2023-05-08 08:08:26','通知消息','2','王丽','有什么通知内容可以发布给用户查看。。。。','2023-05-08 16:08:16');
/*!40000 ALTER TABLE `tongzhixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuguihai`
--

DROP TABLE IF EXISTS `tushuguihai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuguihai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushuleixing` varchar(200) DEFAULT NULL COMMENT '图书类型',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `guihaishijian` date DEFAULT NULL COMMENT '归还时间',
  `guihaishuoming` longtext COMMENT '归还说明',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1683533467577 DEFAULT CHARSET=utf8 COMMENT='图书归还';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuguihai`
--

LOCK TABLES `tushuguihai` WRITE;
/*!40000 ALTER TABLE `tushuguihai` DISABLE KEYS */;
INSERT INTO `tushuguihai` VALUES (121,'2023-05-08 07:46:10','图书名称1','图书类型1',1,'2023-05-08','归还说明1','学号1','姓名1','13823888881',1,1,'是',''),(122,'2023-05-08 07:46:10','图书名称2','图书类型2',2,'2023-05-08','归还说明2','学号2','姓名2','13823888882',2,2,'是',''),(123,'2023-05-08 07:46:10','图书名称3','图书类型3',3,'2023-05-08','归还说明3','学号3','姓名3','13823888883',3,3,'是',''),(124,'2023-05-08 07:46:10','图书名称4','图书类型4',4,'2023-05-08','归还说明4','学号4','姓名4','13823888884',4,4,'是',''),(125,'2023-05-08 07:46:10','图书名称5','图书类型5',5,'2023-05-08','归还说明5','学号5','姓名5','13823888885',5,5,'是',''),(126,'2023-05-08 07:46:10','图书名称6','图书类型6',6,'2023-05-08','归还说明6','学号6','姓名6','13823888886',6,6,'是',''),(127,'2023-05-08 07:46:10','图书名称7','图书类型7',7,'2023-05-08','归还说明7','学号7','姓名7','13823888887',7,7,'是',''),(128,'2023-05-08 07:46:10','图书名称8','图书类型8',8,'2023-05-08','归还说明8','学号8','姓名8','13823888888',8,8,'是',''),(1683533467576,'2023-05-08 08:11:07','图书名称8','图书类型8',1,'2023-05-08','已进行归还，归还之后管理员审核是否核实归还。。。','2','王丽','15214121411',1683532817260,1683533125931,'是','核实已归还。。');
/*!40000 ALTER TABLE `tushuguihai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushujieyue`
--

DROP TABLE IF EXISTS `tushujieyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushujieyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushuleixing` varchar(200) DEFAULT NULL COMMENT '图书类型',
  `kejieshuliang` int(11) DEFAULT NULL COMMENT '可借数量',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `jieyueriqi` date DEFAULT NULL COMMENT '借阅日期',
  `guihairiqi` date NOT NULL COMMENT '归还日期',
  `jieyueshuoming` longtext COMMENT '借阅说明',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1683533125932 DEFAULT CHARSET=utf8 COMMENT='图书借阅';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushujieyue`
--

LOCK TABLES `tushujieyue` WRITE;
/*!40000 ALTER TABLE `tushujieyue` DISABLE KEYS */;
INSERT INTO `tushujieyue` VALUES (111,'2023-05-08 07:46:10','图书名称1','图书类型1',1,1,'2023-05-08','2023-05-08','借阅说明1','学号1','姓名1','13823888881','是',''),(112,'2023-05-08 07:46:10','图书名称2','图书类型2',2,2,'2023-05-08','2023-05-08','借阅说明2','学号2','姓名2','13823888882','是',''),(113,'2023-05-08 07:46:10','图书名称3','图书类型3',3,3,'2023-05-08','2023-05-08','借阅说明3','学号3','姓名3','13823888883','是',''),(114,'2023-05-08 07:46:10','图书名称4','图书类型4',4,4,'2023-05-08','2023-05-08','借阅说明4','学号4','姓名4','13823888884','是',''),(115,'2023-05-08 07:46:10','图书名称5','图书类型5',5,5,'2023-05-08','2023-05-08','借阅说明5','学号5','姓名5','13823888885','是',''),(116,'2023-05-08 07:46:10','图书名称6','图书类型6',6,6,'2023-05-08','2023-05-08','借阅说明6','学号6','姓名6','13823888886','是',''),(117,'2023-05-08 07:46:10','图书名称7','图书类型7',7,7,'2023-05-08','2023-05-08','借阅说明7','学号7','姓名7','13823888887','是',''),(118,'2023-05-08 07:46:10','图书名称8','图书类型8',8,8,'2023-05-08','2023-05-08','借阅说明8','学号8','姓名8','13823888888','是',''),(1683533118392,'2023-05-08 08:05:17','图书名称8','图书类型8',8,1,'2023-05-08','2023-05-27','1212','2','王丽','15214121411','待审核',NULL),(1683533125931,'2023-05-08 08:05:25','图书名称8','图书类型8',8,1,'2023-05-08','2023-05-11','1221','2','王丽','15214121411','是','同意借阅。。');
/*!40000 ALTER TABLE `tushujieyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuleixing`
--

DROP TABLE IF EXISTS `tushuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushuleixing` varchar(200) NOT NULL COMMENT '图书类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='图书类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuleixing`
--

LOCK TABLES `tushuleixing` WRITE;
/*!40000 ALTER TABLE `tushuleixing` DISABLE KEYS */;
INSERT INTO `tushuleixing` VALUES (91,'2023-05-08 07:46:10','图书类型1'),(92,'2023-05-08 07:46:10','图书类型2'),(93,'2023-05-08 07:46:10','图书类型3'),(94,'2023-05-08 07:46:10','图书类型4'),(95,'2023-05-08 07:46:10','图书类型5'),(96,'2023-05-08 07:46:10','图书类型6'),(97,'2023-05-08 07:46:10','图书类型7'),(98,'2023-05-08 07:46:10','xx图书');
/*!40000 ALTER TABLE `tushuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuxinxi`
--

DROP TABLE IF EXISTS `tushuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushubianhao` varchar(200) NOT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) NOT NULL COMMENT '图书名称',
  `tushuleixing` varchar(200) NOT NULL COMMENT '图书类型',
  `tupian` longtext COMMENT '图片',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `kejieshuliang` int(11) NOT NULL COMMENT '可借数量',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `jieyuexuzhi` longtext COMMENT '借阅须知',
  `tushujieshao` longtext COMMENT '图书介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushubianhao` (`tushubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='图书信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuxinxi`
--

LOCK TABLES `tushuxinxi` WRITE;
/*!40000 ALTER TABLE `tushuxinxi` DISABLE KEYS */;
INSERT INTO `tushuxinxi` VALUES (101,'2023-05-08 07:46:10','1111111111','图书名称1','图书类型1','upload/tushuxinxi_tupian1.jpg,upload/tushuxinxi_tupian2.jpg,upload/tushuxinxi_tupian3.jpg',1,1,'作者1','出版社1','借阅须知1','图书介绍1'),(102,'2023-05-08 07:46:10','2222222222','图书名称2','图书类型2','upload/tushuxinxi_tupian2.jpg,upload/tushuxinxi_tupian3.jpg,upload/tushuxinxi_tupian4.jpg',2,2,'作者2','出版社2','借阅须知2','图书介绍2'),(103,'2023-05-08 07:46:10','3333333333','图书名称3','图书类型3','upload/tushuxinxi_tupian3.jpg,upload/tushuxinxi_tupian4.jpg,upload/tushuxinxi_tupian5.jpg',3,3,'作者3','出版社3','借阅须知3','图书介绍3'),(104,'2023-05-08 07:46:10','4444444444','图书名称4','图书类型4','upload/tushuxinxi_tupian4.jpg,upload/tushuxinxi_tupian5.jpg,upload/tushuxinxi_tupian6.jpg',4,4,'作者4','出版社4','借阅须知4','图书介绍4'),(105,'2023-05-08 07:46:10','5555555555','图书名称5','图书类型5','upload/tushuxinxi_tupian5.jpg,upload/tushuxinxi_tupian6.jpg,upload/tushuxinxi_tupian7.jpg',5,5,'作者5','出版社5','借阅须知5','图书介绍5'),(106,'2023-05-08 07:46:10','6666666666','图书名称6','图书类型6','upload/tushuxinxi_tupian6.jpg,upload/tushuxinxi_tupian7.jpg,upload/tushuxinxi_tupian8.jpg',6,6,'作者6','出版社6','借阅须知6','图书介绍6'),(107,'2023-05-08 07:46:10','7777777777','图书名称7','图书类型7','upload/tushuxinxi_tupian7.jpg,upload/tushuxinxi_tupian8.jpg,upload/tushuxinxi_tupian9.jpg',7,7,'作者7','出版社7','借阅须知7','图书介绍7'),(108,'2023-05-08 07:46:10','8888888888','图书名称8','图书类型8','upload/tushuxinxi_tupian8.jpg,upload/tushuxinxi_tupian9.jpg,upload/tushuxinxi_tupian10.jpg',7,8,'作者8','出版社8','借阅须知8','<p>图书介绍8</p>');
/*!40000 ALTER TABLE `tushuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-05-08 07:46:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xuexiao` varchar(200) DEFAULT NULL COMMENT '学校',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1683532817261 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2023-05-08 07:46:10','学号1','123456','姓名1','男','学校1','班级1','13823888881','是',''),(12,'2023-05-08 07:46:10','学号2','123456','姓名2','男','学校2','班级2','13823888882','是',''),(13,'2023-05-08 07:46:10','学号3','123456','姓名3','男','学校3','班级3','13823888883','是',''),(14,'2023-05-08 07:46:10','学号4','123456','姓名4','男','学校4','班级4','13823888884','是',''),(15,'2023-05-08 07:46:10','学号5','123456','姓名5','男','学校5','班级5','13823888885','是',''),(16,'2023-05-08 07:46:10','学号6','123456','姓名6','男','学校6','班级6','13823888886','是',''),(17,'2023-05-08 07:46:10','学号7','123456','姓名7','男','学校7','班级7','13823888887','是',''),(18,'2023-05-08 07:46:10','1','1','姓名8','男','学校8','班级8','13823888888','是',''),(1683532817260,'2023-05-08 08:00:17','2','1','王丽','女','上海大学','计算机一班','15214121411','是','核实');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yikatong`
--

DROP TABLE IF EXISTS `yikatong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yikatong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yikatonghao` varchar(200) NOT NULL COMMENT '一卡通号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jine` float NOT NULL COMMENT '金额',
  `banlishijian` datetime DEFAULT NULL COMMENT '办理时间',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yikatonghao` (`yikatonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1683532874723 DEFAULT CHARSET=utf8 COMMENT='一卡通';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yikatong`
--

LOCK TABLES `yikatong` WRITE;
/*!40000 ALTER TABLE `yikatong` DISABLE KEYS */;
INSERT INTO `yikatong` VALUES (21,'2023-05-08 07:46:10','1111111111','123456','学号1','姓名1',1,'2023-05-08 15:46:10',1,1,'是',''),(22,'2023-05-08 07:46:10','2222222222','123456','学号2','姓名2',2,'2023-05-08 15:46:10',2,2,'是',''),(23,'2023-05-08 07:46:10','3333333333','123456','学号3','姓名3',3,'2023-05-08 15:46:10',3,3,'是',''),(24,'2023-05-08 07:46:10','4444444444','123456','学号4','姓名4',4,'2023-05-08 15:46:10',4,4,'是',''),(25,'2023-05-08 07:46:10','5555555555','123456','学号5','姓名5',5,'2023-05-08 15:46:10',5,5,'是',''),(26,'2023-05-08 07:46:10','6666666666','123456','学号6','姓名6',6,'2023-05-08 15:46:10',6,6,'是',''),(27,'2023-05-08 07:46:10','7777777777','123456','学号7','姓名7',7,'2023-05-08 15:46:10',7,7,'是',''),(28,'2023-05-08 07:46:10','8888888888','123456','学号8','姓名8',8,'2023-05-08 15:46:10',8,8,'否','挂失'),(1683532874722,'2023-05-08 08:01:14','1683532873079','123456','2','王丽',850,'2023-05-08 16:01:13',1,1683532817260,'是','正常');
/*!40000 ALTER TABLE `yikatong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16 13:12:14

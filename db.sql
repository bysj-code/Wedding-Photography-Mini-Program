-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm48yhg
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
-- Current Database: `ssm48yhg`
--

/*!40000 DROP DATABASE IF EXISTS `ssm48yhg`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm48yhg` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm48yhg`;

--
-- Table structure for table `cehuashi`
--

DROP TABLE IF EXISTS `cehuashi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cehuashi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cehuazhanghao` varchar(200) NOT NULL COMMENT '策划账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `cehuaxingming` varchar(200) NOT NULL COMMENT '策划姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cehuazhanghao` (`cehuazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1646552853837 DEFAULT CHARSET=utf8 COMMENT='策划师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cehuashi`
--

LOCK TABLES `cehuashi` WRITE;
/*!40000 ALTER TABLE `cehuashi` DISABLE KEYS */;
INSERT INTO `cehuashi` VALUES (21,'2022-03-06 07:30:54','策划账号1','123456','策划姓名1','男','773890001@qq.com','13823888881','upload/cehuashi_xiangpian1.jpg'),(22,'2022-03-06 07:30:54','策划账号2','123456','策划姓名2','男','773890002@qq.com','13823888882','upload/cehuashi_xiangpian2.jpg'),(23,'2022-03-06 07:30:54','策划账号3','123456','策划姓名3','男','773890003@qq.com','13823888883','upload/cehuashi_xiangpian3.jpg'),(24,'2022-03-06 07:30:54','策划账号4','123456','策划姓名4','男','773890004@qq.com','13823888884','upload/cehuashi_xiangpian4.jpg'),(25,'2022-03-06 07:30:54','策划账号5','123456','策划姓名5','男','773890005@qq.com','13823888885','upload/cehuashi_xiangpian5.jpg'),(26,'2022-03-06 07:30:54','策划账号6','123456','策划姓名6','男','773890006@qq.com','13823888886','upload/cehuashi_xiangpian6.jpg'),(1646552853836,'2022-03-06 07:47:33','22','22','李四','女','133@163.com','13333333333','upload/1646552853287.png');
/*!40000 ALTER TABLE `cehuashi` ENABLE KEYS */;
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
INSERT INTO `config` VALUES (1,'picture1','upload/1646552887380.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingzhixinxi`
--

DROP TABLE IF EXISTS `dingzhixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingzhimingcheng` varchar(200) NOT NULL COMMENT '定制名称',
  `dingzhixiaoguo` varchar(200) DEFAULT NULL COMMENT '定制效果',
  `dingzhileixing` varchar(200) DEFAULT NULL COMMENT '定制类型',
  `dingzhijiage` int(11) DEFAULT NULL COMMENT '定制价格',
  `dingzhixiangqing` longtext COMMENT '定制详情',
  `cehuazhanghao` varchar(200) DEFAULT NULL COMMENT '策划账号',
  `cehuaxingming` varchar(200) DEFAULT NULL COMMENT '策划姓名',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646553127127 DEFAULT CHARSET=utf8 COMMENT='定制信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingzhixinxi`
--

LOCK TABLES `dingzhixinxi` WRITE;
/*!40000 ALTER TABLE `dingzhixinxi` DISABLE KEYS */;
INSERT INTO `dingzhixinxi` VALUES (61,'2022-03-06 07:30:54','定制名称1','upload/dingzhixinxi_dingzhixiaoguo1.jpg','婚纱礼服',1,'定制详情1','策划账号1','策划姓名1','联系手机1','2022-03-06','2022-03-06 15:30:54',1),(62,'2022-03-06 07:30:54','定制名称2','upload/dingzhixinxi_dingzhixiaoguo2.jpg','婚纱礼服',2,'定制详情2','策划账号2','策划姓名2','联系手机2','2022-03-06','2022-03-06 15:45:15',4),(63,'2022-03-06 07:30:54','定制名称3','upload/dingzhixinxi_dingzhixiaoguo3.jpg','婚纱礼服',3,'定制详情3','策划账号3','策划姓名3','联系手机3','2022-03-06','2022-03-06 15:30:54',3),(64,'2022-03-06 07:30:54','定制名称4','upload/dingzhixinxi_dingzhixiaoguo4.jpg','婚纱礼服',4,'定制详情4','策划账号4','策划姓名4','联系手机4','2022-03-06','2022-03-06 15:44:04',5),(65,'2022-03-06 07:30:54','定制名称5','upload/dingzhixinxi_dingzhixiaoguo5.jpg','婚纱礼服',5,'定制详情5','策划账号5','策划姓名5','联系手机5','2022-03-06','2022-03-06 15:30:54',5),(66,'2022-03-06 07:30:54','定制名称6','upload/dingzhixinxi_dingzhixiaoguo6.jpg','婚纱礼服',6,'定制详情6','策划账号6','策划姓名6','联系手机6','2022-03-06','2022-03-06 15:30:54',6),(1646553127126,'2022-03-06 07:52:06','这里是发布定制衣服的地方','upload/1646553102284.jpg','西服',188,'<p>这里输入衣服的具体详情跟其它参数</p><p><img src=\"http://localhost:8080/ssm48yhg/upload/1646553125107.jpg\"></p>','22','李四','13333333333','2022-03-06',NULL,0);
/*!40000 ALTER TABLE `dingzhixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussdingzhixinxi`
--

DROP TABLE IF EXISTS `discussdingzhixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussdingzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='定制信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussdingzhixinxi`
--

LOCK TABLES `discussdingzhixinxi` WRITE;
/*!40000 ALTER TABLE `discussdingzhixinxi` DISABLE KEYS */;
INSERT INTO `discussdingzhixinxi` VALUES (141,'2022-03-06 07:30:54',1,1,'用户名1','评论内容1','回复内容1'),(142,'2022-03-06 07:30:54',2,2,'用户名2','评论内容2','回复内容2'),(143,'2022-03-06 07:30:54',3,3,'用户名3','评论内容3','回复内容3'),(144,'2022-03-06 07:30:54',4,4,'用户名4','评论内容4','回复内容4'),(145,'2022-03-06 07:30:54',5,5,'用户名5','评论内容5','回复内容5'),(146,'2022-03-06 07:30:54',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussdingzhixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusshunqingcehua`
--

DROP TABLE IF EXISTS `discusshunqingcehua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusshunqingcehua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646552636455 DEFAULT CHARSET=utf8 COMMENT='婚庆策划评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusshunqingcehua`
--

LOCK TABLES `discusshunqingcehua` WRITE;
/*!40000 ALTER TABLE `discusshunqingcehua` DISABLE KEYS */;
INSERT INTO `discusshunqingcehua` VALUES (121,'2022-03-06 07:30:54',1,1,'用户名1','评论内容1','回复内容1'),(122,'2022-03-06 07:30:54',2,2,'用户名2','评论内容2','回复内容2'),(123,'2022-03-06 07:30:54',3,3,'用户名3','评论内容3','回复内容3'),(124,'2022-03-06 07:30:54',4,4,'用户名4','评论内容4','回复内容4'),(125,'2022-03-06 07:30:54',5,5,'用户名5','评论内容5','回复内容5'),(126,'2022-03-06 07:30:54',6,6,'用户名6','评论内容6','回复内容6'),(1646552636454,'2022-03-06 07:43:55',35,1646552442340,'11','这里的推荐都是根据用户的点击次数决定的，点击次数越高，推荐就越靠前','');
/*!40000 ALTER TABLE `discusshunqingcehua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusshunshazhao`
--

DROP TABLE IF EXISTS `discusshunshazhao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusshunshazhao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='婚纱照评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusshunshazhao`
--

LOCK TABLES `discusshunshazhao` WRITE;
/*!40000 ALTER TABLE `discusshunshazhao` DISABLE KEYS */;
INSERT INTO `discusshunshazhao` VALUES (131,'2022-03-06 07:30:54',1,1,'用户名1','评论内容1','回复内容1'),(132,'2022-03-06 07:30:54',2,2,'用户名2','评论内容2','回复内容2'),(133,'2022-03-06 07:30:54',3,3,'用户名3','评论内容3','回复内容3'),(134,'2022-03-06 07:30:54',4,4,'用户名4','评论内容4','回复内容4'),(135,'2022-03-06 07:30:54',5,5,'用户名5','评论内容5','回复内容5'),(136,'2022-03-06 07:30:54',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusshunshazhao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hunqingcehua`
--

DROP TABLE IF EXISTS `hunqingcehua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hunqingcehua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hunqingbiaoti` varchar(200) NOT NULL COMMENT '婚庆标题',
  `hunqingfengmian` varchar(200) DEFAULT NULL COMMENT '婚庆封面',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `feiyong` int(11) DEFAULT NULL COMMENT '费用',
  `liuchengjianjie` longtext COMMENT '流程简介',
  `hunqingxiangqing` longtext COMMENT '婚庆详情',
  `cehuazhanghao` varchar(200) DEFAULT NULL COMMENT '策划账号',
  `cehuaxingming` varchar(200) DEFAULT NULL COMMENT '策划姓名',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646553029230 DEFAULT CHARSET=utf8 COMMENT='婚庆策划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hunqingcehua`
--

LOCK TABLES `hunqingcehua` WRITE;
/*!40000 ALTER TABLE `hunqingcehua` DISABLE KEYS */;
INSERT INTO `hunqingcehua` VALUES (31,'2022-03-06 07:30:54','婚庆标题1','upload/hunqingcehua_hunqingfengmian1.jpg','类型1','地址1',1,'流程简介1','婚庆详情1','策划账号1','策划姓名1','联系手机1','2022-03-06','2022-03-06 15:30:54',1),(32,'2022-03-06 07:30:54','婚庆标题2','upload/hunqingcehua_hunqingfengmian2.jpg','类型2','地址2',2,'管理员可以修改这些内容','<p>婚庆详情2</p>','策划账号2','策划姓名2','联系手机2','2022-03-06','2022-03-06 15:48:47',5),(33,'2022-03-06 07:30:54','婚庆标题3','upload/hunqingcehua_hunqingfengmian3.jpg','类型3','地址3',3,'流程简介3','婚庆详情3','策划账号3','策划姓名3','联系手机3','2022-03-06','2022-03-06 15:30:54',3),(34,'2022-03-06 07:30:54','婚庆标题4','upload/hunqingcehua_hunqingfengmian4.jpg','类型4','地址4',4,'流程简介4','婚庆详情4','策划账号4','策划姓名4','联系手机4','2022-03-06','2022-03-06 15:30:54',4),(35,'2022-03-06 07:30:54','婚庆标题5','upload/hunqingcehua_hunqingfengmian5.jpg','类型5','地址5',5,'流程简介5','婚庆详情5','策划账号5','策划姓名5','联系手机5','2022-03-06','2022-03-06 15:45:41',8),(36,'2022-03-06 07:30:54','婚庆标题6','upload/hunqingcehua_hunqingfengmian6.jpg','类型6','地址6',6,'流程简介6','婚庆详情6','策划账号6','策划姓名6','联系手机6','2022-03-06','2022-03-06 15:30:54',6),(1646553029229,'2022-03-06 07:50:28','这里发布婚庆的策划','upload/1646552991503.jpg','现代类','某某酒店',1000,'这里输入具体的流程','<p>这里输入配置的设施之类的，还可以适当的插入图片</p><p><img src=\"http://localhost:8080/ssm48yhg/upload/1646553027116.jpg\"></p>','22','李四','13333333333','2022-03-06',NULL,0);
/*!40000 ALTER TABLE `hunqingcehua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hunqingyuyue`
--

DROP TABLE IF EXISTS `hunqingyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hunqingyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hunqingbiaoti` varchar(200) DEFAULT NULL COMMENT '婚庆标题',
  `hunqingfengmian` varchar(200) DEFAULT NULL COMMENT '婚庆封面',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `feiyong` varchar(200) DEFAULT NULL COMMENT '费用',
  `cehuazhanghao` varchar(200) DEFAULT NULL COMMENT '策划账号',
  `cehuaxingming` varchar(200) DEFAULT NULL COMMENT '策划姓名',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `yuyueriqi` date DEFAULT NULL COMMENT '预约日期',
  `beizhu` longtext COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646552666136 DEFAULT CHARSET=utf8 COMMENT='婚庆预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hunqingyuyue`
--

LOCK TABLES `hunqingyuyue` WRITE;
/*!40000 ALTER TABLE `hunqingyuyue` DISABLE KEYS */;
INSERT INTO `hunqingyuyue` VALUES (71,'2022-03-06 07:30:54','婚庆标题1','upload/hunqingyuyue_hunqingfengmian1.jpg','类型1','地址1','费用1','策划账号1','策划姓名1','联系手机1','2022-03-06','备注1','账号1','姓名1','手机号码1','是','','未支付',1),(72,'2022-03-06 07:30:54','婚庆标题2','upload/hunqingyuyue_hunqingfengmian2.jpg','类型2','地址2','费用2','策划账号2','策划姓名2','联系手机2','2022-03-06','备注2','账号2','姓名2','手机号码2','是','','未支付',2),(73,'2022-03-06 07:30:54','婚庆标题3','upload/hunqingyuyue_hunqingfengmian3.jpg','类型3','地址3','费用3','策划账号3','策划姓名3','联系手机3','2022-03-06','备注3','账号3','姓名3','手机号码3','是','','未支付',3),(74,'2022-03-06 07:30:54','婚庆标题4','upload/hunqingyuyue_hunqingfengmian4.jpg','类型4','地址4','费用4','策划账号4','策划姓名4','联系手机4','2022-03-06','备注4','账号4','姓名4','手机号码4','是','','未支付',4),(75,'2022-03-06 07:30:54','婚庆标题5','upload/hunqingyuyue_hunqingfengmian5.jpg','类型5','地址5','费用5','策划账号5','策划姓名5','联系手机5','2022-03-06','备注5','账号5','姓名5','手机号码5','是','','未支付',5),(76,'2022-03-06 07:30:54','婚庆标题6','upload/hunqingyuyue_hunqingfengmian6.jpg','类型6','地址6','费用6','策划账号6','策划姓名6','联系手机6','2022-03-06','备注6','账号6','姓名6','手机号码6','是','','未支付',6),(1646552666135,'2022-03-06 07:44:25','婚庆标题2','upload/hunqingcehua_hunqingfengmian2.jpg','类型2','地址2','2','策划账号2','策划姓名2','联系手机2','2022-04-06','这里是预约婚庆的地方','11','张三','13111111111','是','这里是审核用户的婚庆预约的地方','已支付',1646552442340);
/*!40000 ALTER TABLE `hunqingyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hunshazhao`
--

DROP TABLE IF EXISTS `hunshazhao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hunshazhao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `taocanmingcheng` varchar(200) NOT NULL COMMENT '套餐名称',
  `taocanfengmian` varchar(200) DEFAULT NULL COMMENT '套餐封面',
  `sheyingdidian` varchar(200) DEFAULT NULL COMMENT '摄影地点',
  `taocanjiage` int(11) DEFAULT NULL COMMENT '套餐价格',
  `taocanjianjie` longtext COMMENT '套餐简介',
  `taocanxiangqing` longtext COMMENT '套餐详情',
  `cehuazhanghao` varchar(200) DEFAULT NULL COMMENT '策划账号',
  `cehuaxingming` varchar(200) DEFAULT NULL COMMENT '策划姓名',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646553081317 DEFAULT CHARSET=utf8 COMMENT='婚纱照';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hunshazhao`
--

LOCK TABLES `hunshazhao` WRITE;
/*!40000 ALTER TABLE `hunshazhao` DISABLE KEYS */;
INSERT INTO `hunshazhao` VALUES (51,'2022-03-06 07:30:54','套餐名称1','upload/hunshazhao_taocanfengmian1.jpg','摄影地点1',1,'套餐简介1','套餐详情1','策划账号1','策划姓名1','联系手机1','2022-03-06','2022-03-06 15:30:54',1),(52,'2022-03-06 07:30:54','套餐名称2','upload/hunshazhao_taocanfengmian2.jpg','摄影地点2',2,'套餐简介2','套餐详情2','策划账号2','策划姓名2','联系手机2','2022-03-06','2022-03-06 15:44:48',4),(53,'2022-03-06 07:30:54','套餐名称3','upload/hunshazhao_taocanfengmian3.jpg','摄影地点3',3,'套餐简介3','套餐详情3','策划账号3','策划姓名3','联系手机3','2022-03-06','2022-03-06 15:30:54',3),(54,'2022-03-06 07:30:54','套餐名称4','upload/hunshazhao_taocanfengmian4.jpg','摄影地点4',4,'套餐简介4','套餐详情4','策划账号4','策划姓名4','联系手机4','2022-03-06','2022-03-06 15:30:54',4),(55,'2022-03-06 07:30:54','套餐名称5','upload/hunshazhao_taocanfengmian5.jpg','摄影地点5',5,'套餐简介5','套餐详情5','策划账号5','策划姓名5','联系手机5','2022-03-06','2022-03-06 15:30:54',5),(56,'2022-03-06 07:30:54','套餐名称6','upload/hunshazhao_taocanfengmian6.jpg','摄影地点6',6,'套餐简介6','套餐详情6','策划账号6','策划姓名6','联系手机6','2022-03-06','2022-03-06 15:30:54',6),(1646553081316,'2022-03-06 07:51:20','这里是发布婚纱套餐的地方','upload/1646553051338.jpg','某某海滩',888,'这里输入套餐的简介','<p>这里输入套餐的详情，</p><p><img src=\"http://localhost:8080/ssm48yhg/upload/1646553079626.jpg\"></p>','22','李四','13333333333','2022-03-06',NULL,0);
/*!40000 ALTER TABLE `hunshazhao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leixing`
--

DROP TABLE IF EXISTS `leixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646552863160 DEFAULT CHARSET=utf8 COMMENT='类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leixing`
--

LOCK TABLES `leixing` WRITE;
/*!40000 ALTER TABLE `leixing` DISABLE KEYS */;
INSERT INTO `leixing` VALUES (41,'2022-03-06 07:30:54','类型1'),(42,'2022-03-06 07:30:54','类型2'),(43,'2022-03-06 07:30:54','类型3'),(44,'2022-03-06 07:30:54','类型4'),(45,'2022-03-06 07:30:54','类型5'),(46,'2022-03-06 07:30:54','类型6'),(1646552863159,'2022-03-06 07:47:43','现代类');
/*!40000 ALTER TABLE `leixing` ENABLE KEYS */;
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
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646552919004 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (113,'2022-03-06 07:30:54','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(114,'2022-03-06 07:30:54','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(115,'2022-03-06 07:30:54','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(116,'2022-03-06 07:30:54','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(1646552919003,'2022-03-06 07:48:38','这里是发布公告信息的地方','公告的简介','upload/1646552906306.jpg','<p>公告的内容</p><p><img src=\"http://localhost:8080/ssm48yhg/upload/1646552917680.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paisheyuyue`
--

DROP TABLE IF EXISTS `paisheyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paisheyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `taocanmingcheng` varchar(200) NOT NULL COMMENT '套餐名称',
  `taocanfengmian` varchar(200) DEFAULT NULL COMMENT '套餐封面',
  `sheyingdidian` varchar(200) DEFAULT NULL COMMENT '摄影地点',
  `taocanjiage` int(11) DEFAULT NULL COMMENT '套餐价格',
  `cehuazhanghao` varchar(200) DEFAULT NULL COMMENT '策划账号',
  `cehuaxingming` varchar(200) DEFAULT NULL COMMENT '策划姓名',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `xiadanshijian` date DEFAULT NULL COMMENT '下单时间',
  `beizhu` longtext COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646552687174 DEFAULT CHARSET=utf8 COMMENT='拍摄预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paisheyuyue`
--

LOCK TABLES `paisheyuyue` WRITE;
/*!40000 ALTER TABLE `paisheyuyue` DISABLE KEYS */;
INSERT INTO `paisheyuyue` VALUES (81,'2022-03-06 07:30:54','套餐名称1','upload/paisheyuyue_taocanfengmian1.jpg','摄影地点1',1,'策划账号1','策划姓名1','联系手机1','2022-03-06','备注1','账号1','姓名1','手机号码1','是','','未支付',1),(82,'2022-03-06 07:30:54','套餐名称2','upload/paisheyuyue_taocanfengmian2.jpg','摄影地点2',2,'策划账号2','策划姓名2','联系手机2','2022-03-06','备注2','账号2','姓名2','手机号码2','是','','未支付',2),(83,'2022-03-06 07:30:54','套餐名称3','upload/paisheyuyue_taocanfengmian3.jpg','摄影地点3',3,'策划账号3','策划姓名3','联系手机3','2022-03-06','备注3','账号3','姓名3','手机号码3','是','','未支付',3),(84,'2022-03-06 07:30:54','套餐名称4','upload/paisheyuyue_taocanfengmian4.jpg','摄影地点4',4,'策划账号4','策划姓名4','联系手机4','2022-03-06','备注4','账号4','姓名4','手机号码4','是','','未支付',4),(85,'2022-03-06 07:30:54','套餐名称5','upload/paisheyuyue_taocanfengmian5.jpg','摄影地点5',5,'策划账号5','策划姓名5','联系手机5','2022-03-06','备注5','账号5','姓名5','手机号码5','是','','未支付',5),(86,'2022-03-06 07:30:54','套餐名称6','upload/paisheyuyue_taocanfengmian6.jpg','摄影地点6',6,'策划账号6','策划姓名6','联系手机6','2022-03-06','备注6','账号6','姓名6','手机号码6','是','','未支付',6),(1646552687173,'2022-03-06 07:44:46','套餐名称2','upload/hunshazhao_taocanfengmian2.jpg','摄影地点2',2,'策划账号2','策划姓名2','联系手机2','2022-03-06','这里是预约拍婚纱的地方','11','张三','13111111111','是','这里是审核拍摄预约的地方','已支付',1646552442340);
/*!40000 ALTER TABLE `paisheyuyue` ENABLE KEYS */;
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
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646552607709 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1646552607708,'2022-03-06 07:43:26',1646552442340,35,'hunqingcehua','婚庆标题5','upload/hunqingcehua_hunqingfengmian5.jpg','1',NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','alusp3q94kvzm0noy6lz8ibo3xe82qox','2022-03-06 07:40:59','2022-03-06 08:46:45'),(2,1646552442340,'11','yonghu','用户','51v6cjov9pn7xinwalry8nqmno7v0mpj','2022-03-06 07:43:00','2022-03-06 08:43:01'),(3,1646552853836,'22','cehuashi','策划师','ojjo5aliapqirsx7j4bdet6jy9cr96dq','2022-03-06 07:49:06','2022-03-06 08:49:06'),(4,22,'策划账号2','cehuashi','策划师','r0n3w2rem4s391dt2cz0tr8o9qenwtb1','2022-03-06 07:52:29','2022-03-06 08:52:30');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-06 07:30:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yifudingzhi`
--

DROP TABLE IF EXISTS `yifudingzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yifudingzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingzhimingcheng` varchar(200) NOT NULL COMMENT '定制名称',
  `dingzhixiaoguo` varchar(200) DEFAULT NULL COMMENT '定制效果',
  `dingzhileixing` varchar(200) DEFAULT NULL COMMENT '定制类型',
  `dingzhijiage` int(11) DEFAULT NULL COMMENT '定制价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jine` int(11) DEFAULT NULL COMMENT '金额',
  `cehuazhanghao` varchar(200) DEFAULT NULL COMMENT '策划账号',
  `cehuaxingming` varchar(200) DEFAULT NULL COMMENT '策划姓名',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `xiadanriqi` date DEFAULT NULL COMMENT '下单日期',
  `beizhu` longtext COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646552714204 DEFAULT CHARSET=utf8 COMMENT='衣服定制';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yifudingzhi`
--

LOCK TABLES `yifudingzhi` WRITE;
/*!40000 ALTER TABLE `yifudingzhi` DISABLE KEYS */;
INSERT INTO `yifudingzhi` VALUES (91,'2022-03-06 07:30:54','定制名称1','upload/yifudingzhi_dingzhixiaoguo1.jpg','定制类型1',1,1,1,'策划账号1','策划姓名1','联系手机1','2022-03-06','备注1','账号1','姓名1','手机号码1','是','','未支付',1),(92,'2022-03-06 07:30:54','定制名称2','upload/yifudingzhi_dingzhixiaoguo2.jpg','定制类型2',2,2,2,'策划账号2','策划姓名2','联系手机2','2022-03-06','备注2','账号2','姓名2','手机号码2','是','','未支付',2),(93,'2022-03-06 07:30:54','定制名称3','upload/yifudingzhi_dingzhixiaoguo3.jpg','定制类型3',3,3,3,'策划账号3','策划姓名3','联系手机3','2022-03-06','备注3','账号3','姓名3','手机号码3','是','','未支付',3),(94,'2022-03-06 07:30:54','定制名称4','upload/yifudingzhi_dingzhixiaoguo4.jpg','定制类型4',4,4,4,'策划账号4','策划姓名4','联系手机4','2022-03-06','备注4','账号4','姓名4','手机号码4','是','','未支付',4),(95,'2022-03-06 07:30:54','定制名称5','upload/yifudingzhi_dingzhixiaoguo5.jpg','定制类型5',5,5,5,'策划账号5','策划姓名5','联系手机5','2022-03-06','备注5','账号5','姓名5','手机号码5','是','','未支付',5),(96,'2022-03-06 07:30:54','定制名称6','upload/yifudingzhi_dingzhixiaoguo6.jpg','定制类型6',6,6,6,'策划账号6','策划姓名6','联系手机6','2022-03-06','备注6','账号6','姓名6','手机号码6','是','','未支付',6),(1646552714203,'2022-03-06 07:45:13','定制名称2','upload/dingzhixinxi_dingzhixiaoguo2.jpg','婚纱礼服',2,3,6,'策划账号2','策划姓名2','联系手机2','2022-03-06','这里是定制衣服的地方','11','张三','13111111111','是','这里则是审核衣服定制的地方','已支付',1646552442340);
/*!40000 ALTER TABLE `yifudingzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1646552442341 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-03-06 07:30:54','账号1','123456','姓名1','男','773890001@qq.com','13823888881','upload/yonghu_xiangpian1.jpg','是','用户注册后都要管理员审核通过后才能进行登陆操作'),(12,'2022-03-06 07:30:54','账号2','123456','姓名2','男','773890002@qq.com','13823888882','upload/yonghu_xiangpian2.jpg','是',''),(13,'2022-03-06 07:30:54','账号3','123456','姓名3','男','773890003@qq.com','13823888883','upload/yonghu_xiangpian3.jpg','是',''),(14,'2022-03-06 07:30:54','账号4','123456','姓名4','男','773890004@qq.com','13823888884','upload/yonghu_xiangpian4.jpg','是',''),(15,'2022-03-06 07:30:54','账号5','123456','姓名5','男','773890005@qq.com','13823888885','upload/yonghu_xiangpian5.jpg','是',''),(16,'2022-03-06 07:30:54','账号6','123456','姓名6','男','773890006@qq.com','13823888886','upload/yonghu_xiangpian6.jpg','是',''),(1646552442340,'2022-03-06 07:40:42','11','11','张三','男','131@163.com','13111111111','upload/1646552594171.png','是','审核通过');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-09 20:41:11

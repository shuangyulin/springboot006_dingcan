/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot547vl
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot547vl` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot547vl`;

/*Table structure for table `caipinfenlei` */

DROP TABLE IF EXISTS `caipinfenlei`;

CREATE TABLE `caipinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='菜品分类';

/*Data for the table `caipinfenlei` */

insert  into `caipinfenlei`(`id`,`addtime`,`caipinfenlei`) values (21,'2021-04-01 20:09:38','客家菜'),(22,'2021-04-01 20:09:38','菜品分类2'),(23,'2021-04-01 20:09:38','菜品分类3'),(24,'2021-04-01 20:09:38','菜品分类4'),(25,'2021-04-01 20:09:38','菜品分类5'),(26,'2021-04-01 20:09:38','菜品分类6');

/*Table structure for table `caipinxinxi` */

DROP TABLE IF EXISTS `caipinxinxi`;

CREATE TABLE `caipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  `tuijianzhishu` varchar(200) DEFAULT NULL COMMENT '推荐指数',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `shicai` varchar(200) DEFAULT NULL COMMENT '食材',
  `caipinxiangqing` longtext COMMENT '菜品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='菜品信息';

/*Data for the table `caipinxinxi` */

insert  into `caipinxinxi`(`id`,`addtime`,`caipinmingcheng`,`tupian`,`caipinfenlei`,`tuijianzhishu`,`jiage`,`kouwei`,`shicai`,`caipinxiangqing`,`clicktime`,`clicknum`) values (31,'2021-04-01 20:09:38','菜品名称1','http://localhost:8080/springboot547vl/upload/caipinxinxi_tupian1.jpg','客家菜','五星','46','清淡','食材1','<p>菜品详情1</p>','2021-04-01 20:35:49',9),(32,'2021-04-01 20:09:38','菜品名称2','http://localhost:8080/springboot547vl/upload/caipinxinxi_tupian2.jpg','菜品分类2','五星','38','口味2','食材2','<p>菜品详情2</p>','2021-04-01 20:24:39',3),(33,'2021-04-01 20:09:38','菜品名称3','http://localhost:8080/springboot547vl/upload/caipinxinxi_tupian3.jpg','菜品分类3','四星','22','口味3','食材3','<p>菜品详情3</p>','2021-04-01 20:24:54',4),(34,'2021-04-01 20:09:38','菜品名称4','http://localhost:8080/springboot547vl/upload/caipinxinxi_tupian4.jpg','菜品分类4','五星','28','口味4','食材4','<p>菜品详情4</p>','2021-04-01 20:25:06',5),(35,'2021-04-01 20:09:38','菜品名称5','http://localhost:8080/springboot547vl/upload/caipinxinxi_tupian5.jpg','菜品分类5','四星','78','口味5','食材5','<p>菜品详情5</p>','2021-04-01 20:25:21',6),(36,'2021-04-01 20:09:38','菜品名称6','http://localhost:8080/springboot547vl/upload/caipinxinxi_tupian6.jpg','菜品分类6','四星','28','口味6','食材6','<p>菜品详情6</p>','2021-04-01 20:27:10',9);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot547vl/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot547vl/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot547vl/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingdanpeisong` */

DROP TABLE IF EXISTS `dingdanpeisong`;

CREATE TABLE `dingdanpeisong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `peisongshijian` datetime DEFAULT NULL COMMENT '配送时间',
  `huiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '会员账号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `huiyuanzhekou` varchar(200) DEFAULT NULL COMMENT '会员折扣',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617280480799 DEFAULT CHARSET=utf8 COMMENT='订单配送';

/*Data for the table `dingdanpeisong` */

insert  into `dingdanpeisong`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caipinfenlei`,`jiage`,`shuliang`,`zongjine`,`peisongshijian`,`huiyuanzhanghao`,`huiyuanxingming`,`shoujihaoma`,`dizhi`,`huiyuanzhekou`) values (51,'2021-04-01 20:09:38','订单编号1','菜品名称1','菜品分类1','价格1','数量1','总金额1','2021-04-01 20:09:38','会员账号1','会员姓名1','手机号码1','地址1','会员折扣1'),(52,'2021-04-01 20:09:38','订单编号2','菜品名称2','菜品分类2','价格2','数量2','总金额2','2021-04-01 20:09:38','会员账号2','会员姓名2','手机号码2','地址2','会员折扣2'),(53,'2021-04-01 20:09:38','订单编号3','菜品名称3','菜品分类3','价格3','数量3','总金额3','2021-04-01 20:09:38','会员账号3','会员姓名3','手机号码3','地址3','会员折扣3'),(54,'2021-04-01 20:09:38','订单编号4','菜品名称4','菜品分类4','价格4','数量4','总金额4','2021-04-01 20:09:38','会员账号4','会员姓名4','手机号码4','地址4','会员折扣4'),(55,'2021-04-01 20:09:38','订单编号5','菜品名称5','菜品分类5','价格5','数量5','总金额5','2021-04-01 20:09:38','会员账号5','会员姓名5','手机号码5','地址5','会员折扣5'),(56,'2021-04-01 20:09:38','订单编号6','菜品名称6','菜品分类6','价格6','数量6','总金额6','2021-04-01 20:09:38','会员账号6','会员姓名6','手机号码6','地址6','会员折扣6'),(1617280480798,'2021-04-01 20:34:39','20214120324034556917','菜品名称1','菜品分类1','46','2','88.32','2021-04-01 12:05:00','11','王小姐','13823899999','广州市广州路8号','0.96');

/*Table structure for table `dingdanxinxi` */

DROP TABLE IF EXISTS `dingdanxinxi`;

CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `zongjine` float DEFAULT NULL COMMENT '总金额',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `huiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '会员账号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `huiyuanzhekou` varchar(200) DEFAULT NULL COMMENT '会员折扣',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617280401167 DEFAULT CHARSET=utf8 COMMENT='订单信息';

/*Data for the table `dingdanxinxi` */

insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caipinfenlei`,`jiage`,`shuliang`,`zongjine`,`xiadanshijian`,`beizhu`,`huiyuanzhanghao`,`huiyuanxingming`,`shoujihaoma`,`dizhi`,`huiyuanzhekou`,`ispay`) values (41,'2021-04-01 20:09:38','订单编号1','菜品名称1','菜品分类1','价格1','数量1',1,'2021-04-01 20:09:38','备注1','会员账号1','会员姓名1','手机号码1','地址1','会员折扣1','未支付'),(42,'2021-04-01 20:09:38','订单编号2','菜品名称2','菜品分类2','价格2','数量2',2,'2021-04-01 20:09:38','备注2','会员账号2','会员姓名2','手机号码2','地址2','会员折扣2','未支付'),(43,'2021-04-01 20:09:38','订单编号3','菜品名称3','菜品分类3','价格3','数量3',3,'2021-04-01 20:09:38','备注3','会员账号3','会员姓名3','手机号码3','地址3','会员折扣3','未支付'),(44,'2021-04-01 20:09:38','订单编号4','菜品名称4','菜品分类4','价格4','数量4',4,'2021-04-01 20:09:38','备注4','会员账号4','会员姓名4','手机号码4','地址4','会员折扣4','未支付'),(45,'2021-04-01 20:09:38','订单编号5','菜品名称5','菜品分类5','价格5','数量5',5,'2021-04-01 20:09:38','备注5','会员账号5','会员姓名5','手机号码5','地址5','会员折扣5','未支付'),(46,'2021-04-01 20:09:38','订单编号6','菜品名称6','菜品分类6','价格6','数量6',6,'2021-04-01 20:09:38','备注6','会员账号6','会员姓名6','手机号码6','地址6','会员折扣6','未支付'),(1617280401166,'2021-04-01 20:33:20','20214120324034556917','菜品名称1','菜品分类1','46','2',88.32,'2021-04-01 12:00:00','不要加辣','11','王小姐','13823899999','广州市广州路8号','0.96','已支付');

/*Table structure for table `huiyuan` */

DROP TABLE IF EXISTS `huiyuan`;

CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanzhanghao` varchar(200) NOT NULL COMMENT '会员账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `huiyuanxingming` varchar(200) NOT NULL COMMENT '会员姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `huiyuandengji` varchar(200) DEFAULT NULL COMMENT '会员等级',
  `huiyuanzhekou` varchar(200) DEFAULT NULL COMMENT '会员折扣',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huiyuanzhanghao` (`huiyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617280250418 DEFAULT CHARSET=utf8 COMMENT='会员';

/*Data for the table `huiyuan` */

insert  into `huiyuan`(`id`,`addtime`,`huiyuanzhanghao`,`mima`,`huiyuanxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`dizhi`,`huiyuandengji`,`huiyuanzhekou`) values (11,'2021-04-01 20:09:38','会员1','123456','会员姓名1','http://localhost:8080/springboot547vl/upload/huiyuan_touxiang1.jpg','男','年龄1','13823888881','地址1','会员等级1','0.96'),(12,'2021-04-01 20:09:38','会员2','123456','会员姓名2','http://localhost:8080/springboot547vl/upload/huiyuan_touxiang2.jpg','男','年龄2','13823888882','地址2','会员等级2','会员折扣2'),(13,'2021-04-01 20:09:38','会员3','123456','会员姓名3','http://localhost:8080/springboot547vl/upload/huiyuan_touxiang3.jpg','男','年龄3','13823888883','地址3','会员等级3','会员折扣3'),(14,'2021-04-01 20:09:38','会员4','123456','会员姓名4','http://localhost:8080/springboot547vl/upload/huiyuan_touxiang4.jpg','男','年龄4','13823888884','地址4','会员等级4','会员折扣4'),(15,'2021-04-01 20:09:38','会员5','123456','会员姓名5','http://localhost:8080/springboot547vl/upload/huiyuan_touxiang5.jpg','男','年龄5','13823888885','地址5','会员等级5','会员折扣5'),(16,'2021-04-01 20:09:38','会员6','123456','会员姓名6','http://localhost:8080/springboot547vl/upload/huiyuan_touxiang6.jpg','男','年龄6','13823888886','地址6','会员等级6','会员折扣6'),(1617280250417,'2021-04-01 20:30:50','11','123456','王小姐','http://localhost:8080/springboot547vl/upload/1617280268637.jpg','女','30','13823899999','广州市广州路8号','会员等级1','0.96');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'会员1','huiyuan','会员','q56jvjec85t6dir5q2w77y0xroh1kj0c','2021-04-01 20:11:16','2021-04-01 21:12:34'),(2,1,'abo','users','管理员','tyix5m4i5mqu3rld2j5i21tevahdkatz','2021-04-01 20:11:50','2021-04-01 21:35:15'),(3,1617280019559,'11','huiyuan','会员','p5g06pdzca5xsn4a4bmp448wr4byro4l','2021-04-01 20:27:09','2021-04-01 21:28:13'),(4,1617280250417,'11','huiyuan','会员','dxfg5v1r1gf81umkrsvhkz0qp1owe0ax','2021-04-01 20:31:01','2021-04-01 21:34:58');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-01 20:09:38');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.18-nt : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `city` varchar(50) default NULL,
  `price` int(11) default NULL,
  `number` int(11) default NULL,
  `picture` varchar(500) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `items` */

insert  into `items`(`id`,`name`,`city`,`price`,`number`,`picture`) values (1,'广州花饼','鲜花饼广州特产正宗玫瑰花饼礼盒装手工现烤传统糕点休闲零食小吃浩浩爱吃',24,299,'a1.png'),(2,'卡卡西','先行预定 Threezero 3A FigZero 火影忍者 旗木卡卡西 可动手办',5027,77,'a2.png'),(3,'苹果14promax','Apple/苹果 iPhone 14 Pro Max国行十四plus正品新款promax手机14',8888,99,'a3.png'),(4,'韩版眼睛','韩版超轻眼镜近视女可配有度数散光防蓝光素颜显脸小眼镜框眼睛架',99,299,'a4.png'),(5,'短款t恤','美式甜辣短款t恤酒红色爱心短袖女夏季韩系纯欲y2k千禧少女上衣潮',79,299,'a5.png'),(6,'JK制服','JK制服套装原创正版温柔一刀女格短裙百褶春夏季a字纯欲半身裙子',139,299,'a6.png'),(7,'撒野','【新华书店正版】撒野全三册 撒野1+2+3(完结篇) 巫哲人气代表作 晋江人气青春小说 青春文学校园',77,299,'a7.png'),(8,'卡西欧','Casio卡西欧BabyG白昼黑夜小魔女运动防水手表女BA-110TM',800,299,'a8.png'),(9,'迪迦奥特曼头套','迪迦奥特曼神光棒套装服装大人版赛罗成人儿童男孩皮套发光头套',100,299,'a9.png'),(10,'草莓熊','迪士尼正版草莓熊 公仔代购娃娃女友生日礼物毛绒玩偶六一儿童节',299,299,'a10.png'),(11,'至尊宝t','王者荣耀t恤孙悟空至尊宝地狱火马超神威衣服3D印花时尚高街短袖',15,299,'a11.png'),(12,'李宁天迹女鞋','李宁天迹女鞋2023夏季新款小白鞋轻便运动鞋减震厚底学生百搭鞋子',200,299,'a12.png'),(13,'YSL圣罗兰','YSL圣罗兰小金条口红 皮革哑光1966红棕色21',400,299,'a13.png'),(14,'黑巧克力','俄罗斯风味100%每日纯黑巧克力减低0o无糖精可可脂卡健身小零食品',55,299,'a14.png'),(15,'老鼠药','老鼠药家用药超强力灭老鼠高效药室外死特效耗子药老鼠神药三步到',11,299,'a15.png'),(16,'丝袜','涞觅「丝滑0.01」性感长筒丝袜女夏季薄款复古蕾丝防滑高筒过膝袜',88,299,'a16.png');

/*Table structure for table `useraa` */

DROP TABLE IF EXISTS `useraa`;

CREATE TABLE `useraa` (
  `Uid` int(11) NOT NULL auto_increment,
  `Uname` varchar(20) NOT NULL,
  `Upasswd` varchar(20) default NULL,
  `Uaddress` varchar(20) default NULL,
  `Uphone` varchar(20) default NULL,
  `Usex` varchar(20) default NULL,
  PRIMARY KEY  (`Uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `useraa` */

insert  into `useraa`(`Uid`,`Uname`,`Upasswd`,`Uaddress`,`Uphone`,`Usex`) values (1,'cat01','123','地址Test011','17745678910','男'),(2,'cat02','321','地址Test02','15545678910','女'),(3,'cat03','333','地址Test03','13345678910','男'),(4,'55','1','1','13242333736','男'),(5,'1231','123','1','13128470729','男'),(6,'777','456','我爱77','13128470729','男');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.0.67-community-log : Database - db_restaurantmanage
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_restaurantmanage` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_restaurantmanage`;

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `menuId` int(11) NOT NULL auto_increment,
  `menuName` varchar(20) NOT NULL,
  `menuPrise` float default NULL,
  PRIMARY KEY  (`menuName`),
  KEY `menuId` (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`menuId`,`menuName`,`menuPrise`) values (7,'佛跳墙',48),(8,'土豆片',7),(4,'小炒肉',10),(2,'水煮鱼',15),(3,'油泼面',8),(6,'白灼菜心',7),(5,'鲜榨小鱼',20),(1,'黄焖鸡',8);

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` int(11) NOT NULL auto_increment,
  `menuNo` varchar(20) default NULL,
  `menuName` varchar(20) default NULL,
  `prise` float default NULL,
  `tableNo` int(11) default NULL,
  `rental` float default NULL,
  `time` date default NULL,
  PRIMARY KEY  (`id`),
  KEY `menuId` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `order` */

insert  into `order`(`id`,`menuNo`,`menuName`,`prise`,`tableNo`,`rental`,`time`) values (1,'1','黄焖鸡',8,8,8,'2018-06-21'),(2,'2','黄焖鸡',8,2,8,'2018-06-21');

/*Table structure for table `table` */

DROP TABLE IF EXISTS `table`;

CREATE TABLE `table` (
  `tableId` int(11) NOT NULL auto_increment,
  `tableNo` varchar(20) default NULL,
  `tableType` varchar(20) default NULL,
  PRIMARY KEY  (`tableId`),
  KEY `tableId` (`tableId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `table` */

insert  into `table`(`tableId`,`tableNo`,`tableType`) values (1,'1','小'),(2,'2','小'),(3,'3','小'),(4,'4','小'),(5,'5','小'),(6,'6','中'),(7,'7','中'),(8,'8','中'),(9,'9','中'),(10,'10','大'),(11,'11','大'),(12,'12','大'),(13,'13','大'),(14,'14','大');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) NOT NULL auto_increment,
  `userName` varchar(20) default NULL,
  `passWord` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`userName`,`passWord`) values (1,'java','123456'),(2,'jsp','123'),(3,'c','12');

/*Table structure for table `waitress` */

DROP TABLE IF EXISTS `waitress`;

CREATE TABLE `waitress` (
  `id` int(11) NOT NULL auto_increment,
  `no` varchar(20) default NULL,
  `name` varchar(20) default NULL,
  `sex` varchar(20) default NULL,
  `age` int(10) default NULL,
  `phone` int(11) default NULL,
  `basepay` float default NULL,
  `performance` int(11) default NULL,
  `income` float default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `waitress` */

insert  into `waitress`(`id`,`no`,`name`,`sex`,`age`,`phone`,`basepay`,`performance`,`income`) values (2,'2','小红','女',25,2222543,2000,190,3800),(3,'3','小明','男',33,345655,2300,200,4300),(4,'4','小王','男',24,365435,2455,200,4455),(5,'5','王晓','女',34,345334,2600,120,4000),(6,'6','张三','男',23,657688,2000,200,4000),(7,'7','李四','男',35,787697,1900,200,3900),(8,'8','王五','男',45,768979,2000,200,4000),(9,'9','王薇','女',23,6586778,2000,200,4000),(10,'10','张星','女',37,768688,2000,180,3600),(12,'13','韩亚楠','女',21,43543346,2000,200,4000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

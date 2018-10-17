/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.23-log : Database - invitationmanage
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`invitationmanage` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `invitationmanage`;

/*Table structure for table `invitation` */

DROP TABLE IF EXISTS `invitation`;

CREATE TABLE `invitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `invitation` */

insert  into `invitation`(`id`,`title`,`summary`,`author`,`createdate`) values (1,'哈哈','啊啊啊','aa','2018-10-15 14:39:35'),(7,'噫噫','嗯嗯','cc','2018-10-16 14:40:44'),(8,'噫噫','嗯嗯','cc','2018-10-16 14:40:44'),(9,'啦啦啦','嗯嗯','cc','2018-10-16 14:40:44'),(10,'哈哈','啊啊啊','aa','2018-10-15 14:39:35'),(12,'哈哈','啊啊啊','aa','2018-10-15 14:39:35'),(13,'噫噫','嗯嗯','cc','2018-10-16 14:40:44'),(14,'噫噫','嗯嗯','cc','2018-10-16 14:40:44'),(15,'啦啦啦','嗯嗯','cc','2018-10-16 14:40:44'),(16,'哈哈','啊啊啊','aa','2018-10-15 14:39:35');

/*Table structure for table `reply_detail` */

DROP TABLE IF EXISTS `reply_detail`;

CREATE TABLE `reply_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invid` int(11) NOT NULL COMMENT '帖子编号,对应帖子表的主键',
  `content` varchar(255) NOT NULL,
  `author` varchar(50) DEFAULT '匿名用户',
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `reply_detail` */

insert  into `reply_detail`(`id`,`invid`,`content`,`author`,`createdate`) values (1,1,'啦啦啦','Jack','2018-10-16 14:42:04'),(4,7,'啦啦啦','Jack','2018-10-16 14:42:04'),(6,8,'呵呵','匿名用户','2018-10-15 14:43:29'),(7,9,'呵呵','匿名用户','2018-10-15 14:43:29'),(8,8,'cool','奥古斯丁','2018-10-17 10:57:39'),(9,8,'cool','1111','2018-10-17 10:58:04'),(10,7,'2222','奥古斯丁','2018-10-17 11:05:36'),(11,8,'nice','金庸','2018-10-17 11:08:24'),(12,7,'good','1111','2018-10-17 11:09:19'),(13,13,'cool','Tom','2018-10-17 11:09:51'),(14,16,'good','Jack','2018-10-17 11:22:14'),(15,8,'鹅鹅鹅','金庸','2018-10-17 11:35:18'),(16,13,'cool','Jack','2018-10-17 11:51:26'),(17,7,'good','1111','2018-10-17 11:56:37'),(18,7,'222','金庸','2018-10-17 12:07:27'),(19,14,'cool','奥古斯丁','2018-10-17 12:09:09'),(20,14,'cook','Tom','2018-10-17 12:11:19'),(21,13,'Hi~ o(*￣▽￣*)ブ','金庸','2018-10-17 12:12:18'),(22,13,'[]~(￣▽￣)~*','','2018-10-17 12:14:03'),(23,7,'d\'d\'d','金庸','2018-10-17 12:20:09'),(24,7,'[]~(￣▽￣)~*','匿名用户','2018-10-17 12:34:39');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

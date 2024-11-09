/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - fangwuzusougaunli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fangwuzusougaunli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fangwuzusougaunli`;

/*Table structure for table `chushou` */

DROP TABLE IF EXISTS `chushou`;

CREATE TABLE `chushou` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chushou_name` varchar(200) DEFAULT NULL COMMENT '房屋名称 Search111',
  `huixing_types` int(255) DEFAULT NULL COMMENT '户型 Search111',
  `chushou_mianji` decimal(10,4) DEFAULT NULL COMMENT '面积',
  `chushou_money` decimal(10,4) DEFAULT NULL COMMENT '价格',
  `chushou_sum_money` decimal(10,4) DEFAULT NULL COMMENT '总价',
  `chushou_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `chushou_weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `fangdong_id` int(200) DEFAULT NULL COMMENT '发布房东',
  `chushou_content` text COMMENT '详细信息',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  `chushou_types` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='房屋出售';

/*Data for the table `chushou` */

insert  into `chushou`(`id`,`chushou_name`,`huixing_types`,`chushou_mianji`,`chushou_money`,`chushou_sum_money`,`chushou_photo`,`chushou_weizhi`,`fangdong_id`,`chushou_content`,`insert_time`,`create_time`,`chushou_types`) values (2,'房屋名称1',1,'100.0000','100.0000','10000.0000','http://localhost:8080/fangwuzusougaunli/file/download?fileName=1619694940486.jpg','位置1',1,'详细信息1\r\n','2021-04-29 16:50:31','2021-04-29 16:50:31',2),(3,'房屋名称2',2,'200.0000','200.0000','40000.0000','http://localhost:8080/fangwuzusougaunli/file/download?fileName=1619686274878.jpg','位置2',2,'详细信息2\r\n','2021-04-29 16:51:19','2021-04-29 16:51:19',2);

/*Table structure for table `chushou_liuyan` */

DROP TABLE IF EXISTS `chushou_liuyan`;

CREATE TABLE `chushou_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chushou_id` int(11) DEFAULT NULL COMMENT '房屋出售id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `chushou_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='房屋出售留言';

/*Data for the table `chushou_liuyan` */

/*Table structure for table `chushou_order` */

DROP TABLE IF EXISTS `chushou_order`;

CREATE TABLE `chushou_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chushou_id` int(11) DEFAULT NULL COMMENT '房屋出售id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `chushou_order_money` decimal(10,4) DEFAULT NULL COMMENT '总价',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='房屋出售订单';

/*Data for the table `chushou_order` */

insert  into `chushou_order`(`id`,`chushou_id`,`yonghu_id`,`chushou_order_money`,`insert_time`,`create_time`) values (2,3,1,'40000.0000','2021-04-29 20:00:45','2021-04-29 20:00:45'),(3,2,1,'10000.0000','2021-04-29 20:38:46','2021-04-29 20:38:46');

/*Table structure for table `chuzu` */

DROP TABLE IF EXISTS `chuzu`;

CREATE TABLE `chuzu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuzu_name` varchar(200) DEFAULT NULL COMMENT '房屋名称 Search111',
  `huixing_types` int(255) DEFAULT NULL COMMENT '户型 Search111',
  `chuzu_mianji` decimal(10,4) DEFAULT NULL COMMENT '面积',
  `chuzu_money` decimal(10,4) DEFAULT NULL COMMENT '价格/月',
  `chuzu_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `chuzu_weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `fangdong_id` int(200) DEFAULT NULL COMMENT '发布房东',
  `chuzu_content` text COMMENT '详细信息',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  `chuzu_types` int(111) DEFAULT NULL COMMENT '出租状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='房屋出租';

/*Data for the table `chuzu` */

insert  into `chuzu`(`id`,`chuzu_name`,`huixing_types`,`chuzu_mianji`,`chuzu_money`,`chuzu_photo`,`chuzu_weizhi`,`fangdong_id`,`chuzu_content`,`insert_time`,`create_time`,`chuzu_types`) values (1,'房屋名称1',1,'100.0000','1000.0000','http://localhost:8080/fangwuzusougaunli/file/download?fileName=1619686511203.jpg','位置1',2,'详细信息1\r\n','2021-04-29 16:55:17','2021-04-29 16:55:17',1),(2,'房屋名称2',2,'200.0000','2000.0000','http://localhost:8080/fangwuzusougaunli/file/download?fileName=1619686532168.jpg','位置2',1,'详细信息2\r\n','2021-04-29 16:55:40','2021-04-29 16:55:40',1);

/*Table structure for table `chuzu_liuyan` */

DROP TABLE IF EXISTS `chuzu_liuyan`;

CREATE TABLE `chuzu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuzu_id` int(11) DEFAULT NULL COMMENT '房屋出租id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `chuzu_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='房屋出租留言';

/*Data for the table `chuzu_liuyan` */

insert  into `chuzu_liuyan`(`id`,`chuzu_id`,`yonghu_id`,`chuzu_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,1,1,'1111',NULL,'2021-04-29 20:40:00','2021-04-29 20:40:00');

/*Table structure for table `chuzu_order` */

DROP TABLE IF EXISTS `chuzu_order`;

CREATE TABLE `chuzu_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuzu_id` int(11) DEFAULT NULL COMMENT '房屋出租id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `chuzu_order_day` int(255) DEFAULT NULL COMMENT '租房时间/天 Search111',
  `chuzu_order_money` decimal(10,4) DEFAULT NULL COMMENT '总价',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='房屋出租订单';

/*Data for the table `chuzu_order` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/fangwuzusougaunli/upload/1619686903374.jpg'),(2,'picture2','http://localhost:8080/fangwuzusougaunli/upload/1619686916936.jpg'),(3,'picture3','http://localhost:8080/fangwuzusougaunli/upload/1619686926617.jpg'),(6,'homepage','http://localhost:8080/fangwuzusougaunli/upload/1619686939031.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-29 16:23:50'),(2,'sex_types','性别',2,'女',NULL,'2021-04-29 16:23:50'),(3,'news_types','公告类型名称',1,'公告类型1',NULL,'2021-04-29 16:23:50'),(4,'news_types','公告类型名称',2,'公告类型2',NULL,'2021-04-29 16:23:50'),(5,'huixing_types','户型类型名称',1,'户型1',NULL,'2021-04-29 16:23:50'),(6,'huixing_types','户型类型名称',2,'户型2',NULL,'2021-04-29 16:23:50'),(7,'huixing_types','户型类型名称',3,'户型3',NULL,'2021-04-29 16:23:50');

/*Table structure for table `fangdong` */

DROP TABLE IF EXISTS `fangdong`;

CREATE TABLE `fangdong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `fangdong_name` varchar(200) DEFAULT NULL COMMENT '房东姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `fangdong_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `fangdong_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `fangdong_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='房东';

/*Data for the table `fangdong` */

insert  into `fangdong`(`id`,`username`,`password`,`fangdong_name`,`sex_types`,`fangdong_id_number`,`fangdong_phone`,`fangdong_photo`,`create_time`) values (1,'333','123456','房东1',2,'410882188912111211','17785566491','http://localhost:8080/fangwuzusougaunli/file/download?fileName=1619684945003.jpg','2021-04-29 16:29:06'),(2,'444','123456','房东2',1,'410882188912111212','17785566492','http://localhost:8080/fangwuzusougaunli/file/download?fileName=1619684961620.jpg','2021-04-29 16:29:22');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619700213691 DEFAULT CHARSET=utf8 COMMENT='论坛信息';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (101,'2021-03-18 17:31:37','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(102,'2021-03-18 17:31:37','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(103,'2021-03-18 17:31:37','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(104,'2021-03-18 17:31:37','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(105,'2021-03-18 17:31:37','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(106,'2021-03-18 17:31:37','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1619689316308,'2021-04-29 17:41:56',NULL,'请输入评论11',101,1,'111',NULL),(1619700206651,'2021-04-29 20:43:25','1111','<p>请输入内容1111</p>',0,1,'111','开放'),(1619700213690,'2021-04-29 20:43:33',NULL,'请输入评论113123123',1619700206651,1,'111',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告1',2,'http://localhost:8080/fangwuzusougaunli/file/download?fileName=1619686966567.jpg','2021-04-29 17:02:50','公告详情1\r\n','2021-04-29 17:02:50'),(2,'公告2',2,'http://localhost:8080/fangwuzusougaunli/file/download?fileName=1619686979968.jpg','2021-04-29 17:03:03','公告详情2\r\n','2021-04-29 17:03:03');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','uw6y3uwa3i1tz2m9qwnu29gtgcajpurm','2021-04-29 16:20:21','2021-04-29 21:44:46'),(2,1,'111','yonghu','用户','bsz0e5gyx4lz9s5ss45gbl09zn389vp9','2021-04-29 17:05:14','2021-04-29 21:43:49'),(3,1,'333','fangdong','房东','u94eabo9fvmw4e8x9cxbkty3l80onmqp','2021-04-29 20:35:16','2021-04-29 21:35:16');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',1,'410882200111111111','17711111111','http://localhost:8080/fangwuzusougaunli/file/download?fileName=1619684979047.jpg','2021-04-29 16:29:40'),(2,'222','123456','用户2',2,'410882200111112222','17711111112','http://localhost:8080/fangwuzusougaunli/file/download?fileName=1619684995590.jpg','2021-04-29 16:29:56');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*
 Navicat Premium Data Transfer

 Source Server         : mac
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost
 Source Database       : blog

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : utf-8

 Date: 03/23/2018 22:01:19 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `blog_admin`
-- ----------------------------
DROP TABLE IF EXISTS `blog_admin`;
CREATE TABLE `blog_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `email` varchar(50) not null default '',
  `level` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` datetime NOT NULL,
  `lastlogin_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `username` (`username`,`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT into `blog_admin`(`name`,`username`,`password`,`create_time`,`lastlogin_time`) values('管理员','admin',md5('admin'),now(),now());

-- ----------------------------
--  Table structure for `blog_article`
-- ----------------------------
DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL DEFAULT 'wzy',
  `content` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `blog_comment`
-- ----------------------------
DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `content` varchar(140) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `article_id` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `blog_img`
-- ----------------------------
DROP TABLE IF EXISTS `blog_img`;
CREATE TABLE `blog_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `manga` varchar(50) NOT NULL COMMENT '动漫',
  `tool` varchar(50) NOT NULL COMMENT '工具',
  `info` varchar(50) DEFAULT NULL COMMENT '说明',
  `thumb` varchar(255) NOT NULL,
  `finish_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `blog_img`
-- ----------------------------
BEGIN;
INSERT INTO `blog_img` VALUES ('1', '桐乃', '我的妹妹不可能这么可爱', '彩铅', '暂无', 'tongnai', '2017-12-10 21:18:51', '1', '2018-03-23 21:19:24'), ('2', '雷姆', 're从零开始的异世界生活', '彩铅', null, 'rem', '2017-12-16 21:22:52', '1', '2018-03-23 21:23:02'), ('3', '黑猫', '我的妹妹不可能这么可爱', '马克笔', null, 'blackcat', '2017-12-17 21:25:33', '1', '2018-03-23 21:25:41'), ('4', '纱雾', '埃罗芒阿老师', '马克笔', null, 'shawu', '2017-12-23 21:29:17', '1', '2018-03-23 21:29:28'), ('5', '礼弥', '散华礼弥', '马克笔+彩铅', null, 'limi', '2017-12-24 21:30:21', '1', '2018-03-23 21:30:34'), ('6', '桐人亚丝娜', '刀剑神域', '马克笔', null, 'asuna', '2018-01-06 21:32:43', '1', '2018-03-23 21:32:51'), ('7', '柯朵莉', '末日时在做什么', '马克笔', null, 'keduoli', '2018-01-07 21:34:03', '1', '2018-03-23 21:34:18'), ('8', '薇尔莉特', '紫罗兰永恒花园', '马克笔', null, 'violet', '2018-01-21 21:36:30', '1', '2018-03-23 21:36:39'), ('9', 'saber', 'Fate', '马克笔+彩铅', null, 'saber', '2018-01-28 21:37:44', '1', '2018-03-23 21:37:51'), ('10', 'ac娘', 'acfun', '马克笔', null, 'acfun', '2018-02-03 21:38:47', '1', '2018-03-23 21:38:55'), ('11', '赤瞳', '斩赤红之瞳', '马克笔', null, 'chitong', '2018-02-06 21:39:31', '1', '2018-03-23 21:39:37'), ('12', '艾斯德斯', '斩赤红之瞳', '马克笔', null, 'aisidesi', '2018-02-12 21:40:49', '1', '2018-03-23 21:40:58'), ('13', '犬夜叉桔梗', '犬夜叉', '马克笔', null, 'quanyecha', '2018-02-14 21:41:45', '1', '2018-03-23 21:41:51'), ('14', '惠惠', '为美好世界献上祝福', '马克笔', null, 'huihui', '2018-02-15 21:42:44', '1', '2018-03-23 21:42:54'), ('15', '赫萝', '狼与香辛料', '马克笔', null, 'heluo', '2018-02-21 21:43:48', '1', '2018-03-23 21:43:57'), ('16', '小樱', '百变小樱', '马克笔', null, 'xiaoying', '2018-02-28 21:44:35', '1', '2018-03-23 21:44:46'), ('17', '知世', '百变小樱', '马克笔+彩铅', null, 'zhishi', '2018-03-04 21:46:08', '1', '2018-03-23 21:46:13');
COMMIT;

-- ----------------------------
--  Table structure for `blog_menu`
-- ----------------------------
DROP TABLE IF EXISTS `blog_menu`;
CREATE TABLE `blog_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `blog_position`
-- ----------------------------
DROP TABLE IF EXISTS `blog_position`;
CREATE TABLE `blog_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `blog_position_content`
-- ----------------------------
DROP TABLE IF EXISTS `blog_position_content`;
CREATE TABLE `blog_position_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position_id` int(11) NOT NULL,
  `orderlist` smallint(6) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `position_id` (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `blog_tab`
-- ----------------------------
DROP TABLE IF EXISTS `blog_tab`;
CREATE TABLE `blog_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `blog_tab_content`
-- ----------------------------
DROP TABLE IF EXISTS `blog_tab_content`;
CREATE TABLE `blog_tab_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tab_id` int(11) NOT NULL COMMENT '标签id',
  `table_id` int(11) NOT NULL COMMENT '类别  文章 1  图片 2  归档 3',
  `content_id` int(11) NOT NULL COMMENT '内容id',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tab_id` (`tab_id`),
  KEY `table_id` (`table_id`),
  KEY `content_id` (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `blog_timeline`
-- ----------------------------
DROP TABLE IF EXISTS `blog_timeline`;
CREATE TABLE `blog_timeline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timeline_class_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `timeline_class_id` (`timeline_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `blog_timeline_class`
-- ----------------------------
DROP TABLE IF EXISTS `blog_timeline_class`;
CREATE TABLE `blog_timeline_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;

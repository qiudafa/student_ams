/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : student_ams

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2017-09-01 22:25:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `pwd` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `time` varchar(20) NOT NULL DEFAULT '',
  `credit` int(11) NOT NULL,
  `belong` varchar(100) NOT NULL DEFAULT '',
  `place` varchar(30) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL,
  `detail` varchar(200) NOT NULL DEFAULT '',
  `selected` int(11) NOT NULL,
  `imgurl` varchar(200) DEFAULT NULL COMMENT '课程形象图',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('2', 'java从入门到放弃', '2017/2018(2)', '4', '77jubao', '醉仙楼B305', '21', '主要讲java基础、java常用框架等，精彩不容错误哦', '20', '/upload/imgurl/201709/1504260194548.jpg');
INSERT INTO `course` VALUES ('3', 'mysql从入门到删库跑路', '2017/2018(2)', '2', '77jubao', '图书馆二楼', '20', '非常好的课程，精彩不容错过', '15', '/upload/imgurl/201709/1504261207678.jpg');
INSERT INTO `course` VALUES ('7', 'php从入门到出轨', '2017/2018(2)', '4', '77jubao', '醉仙楼B402', '30', '非常好的课程，精彩不容错过', '0', '/upload/imgurl/201709/1504261371041.jpg');
INSERT INTO `course` VALUES ('8', 'android从入门到改行', '2017/2018(2)', '3', '77jubao', '醉仙楼B401', '35', '基础简单，内容丰富，精彩不容错过', '0', '/upload/imgurl/201709/1504261525908.jpg');
INSERT INTO `course` VALUES ('9', '函数式编程从入门到懵逼', '2017/2018(2)', '6', '77jubao', '醉仙楼B305', '40', '内容丰富多彩，不容错过', '0', '/upload/imgurl/201709/1504261769469.jpg');
INSERT INTO `course` VALUES ('10', '机器学习从学渣到学神', '2017/2018(2)', '7', '77jubao', '醉仙楼B101', '26', '精彩不容错过', '0', '/upload/imgurl/201709/1504261949698.jpg');
INSERT INTO `course` VALUES ('11', 'UI设计从第一稿到最后一稿', '2017/2018(2)', '8', '77jubao', '醉仙楼B303', '40', '非常好的课程，精彩不容错过', '0', '/upload/imgurl/201709/1504262075399.jpg');
INSERT INTO `course` VALUES ('12', 'python从入门到完全放弃', '2017/2018(2)', '5', '77jubao', '醉仙楼B603', '60', '非常好的课程，精彩不容错过', '0', '/upload/imgurl/201709/1504262242883.jpg');
INSERT INTO `course` VALUES ('13', 'HTML从入门到腰椎病康复', '2017/2018(2)', '4', '77jubao', '醉仙楼B306', '30', '非常好的课程，精彩不容错过', '0', '/upload/imgurl/201709/1504262384962.jpg');
INSERT INTO `course` VALUES ('14', 'javascript从入门到吐血', '2017/2018(2)', '3', '77jubao', '醉仙楼B404', '30', '非常好的课程，精彩不容错过', '0', '/upload/imgurl/201709/1504262500587.jpg');
INSERT INTO `course` VALUES ('15', '大数据从被忽悠到会忽悠', '2017/2018(2)', '4', '77jubao', '醉仙楼B405', '40', '非常好的课程，精彩不容错过', '0', '/upload/imgurl/201709/1504262666242.jpg');
INSERT INTO `course` VALUES ('16', '微信公众号开发从入门到抑郁治愈', '2017/2018(2)', '4', '77jubao', '醉仙楼B555', '35', '非常好的课程，精彩不容错过', '0', '/upload/imgurl/201709/1504262794350.jpg');
INSERT INTO `course` VALUES ('17', '小程序开发从入门到入院', '2017/2018(2)', '4', '77jubao', '醉仙楼B102', '35', '非常好的课程，精彩不容错过', '0', '/upload/imgurl/201709/1504262868977.jpg');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `pwd` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `sex` varchar(2) NOT NULL DEFAULT '',
  `year` varchar(4) NOT NULL DEFAULT '',
  `major` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('201309550103', '123456', '天山童姥1', '女', '2013', '软件工程');
INSERT INTO `student` VALUES ('201309550104', '123456', '陈冠希', '男', '2013', '软件工程');

-- ----------------------------
-- Table structure for study
-- ----------------------------
DROP TABLE IF EXISTS `study`;
CREATE TABLE `study` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `s_id` varchar(20) NOT NULL DEFAULT '',
  `s_name` varchar(20) NOT NULL DEFAULT '',
  `s_major` varchar(100) NOT NULL DEFAULT '',
  `c_id` int(11) NOT NULL,
  `c_name` varchar(100) NOT NULL DEFAULT '',
  `c_belong` varchar(100) NOT NULL DEFAULT '',
  `c_credit` int(11) NOT NULL,
  `c_time` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of study
-- ----------------------------

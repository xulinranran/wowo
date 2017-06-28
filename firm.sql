/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : firm

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2017-06-23 18:17:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(15) NOT NULL,
  `content` longtext NOT NULL,
  `img` varchar(20) NOT NULL,
  `atime` varchar(10) NOT NULL COMMENT '创建时间',
  `etime` varchar(10) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES ('1', '关于我们', '<p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; text-indent: 32px;\"> 上海窝窝智能科技有限公司成立于2013年10月，2014年3月入驻张江集团国家级科技企业孵化器，位于上海张江自贸区蔡伦路1690号2号楼413室。公司致力于移动互联网、物联网、传感器等相关领域的产品研发，加工制造。</span></p>', '', '', '');

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `firm_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  `type` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', 'http://x.com/wowo/Public/Uploads/Banner/2017-04-24/58fd6bf97d53b.jpg', '1');
INSERT INTO `banner` VALUES ('2', 'http://x.com/wowo/Public/Uploads/Banner/2017-04-24/58fd6acfdb124.jpg', '1');
INSERT INTO `banner` VALUES ('3', 'http://x.com/wowo/Public/Uploads/Banner/2017-04-24/58fd7128e35bf.jpg', '1');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `icon` varchar(20) NOT NULL,
  `en` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', '后台首页', '0', 'icon-home', 'Index/index');
INSERT INTO `menus` VALUES ('2', '菜单管理', '0', 'icon-th-list', 'Menus');
INSERT INTO `menus` VALUES ('3', '菜单添加', '2', '', 'Menus/add');
INSERT INTO `menus` VALUES ('4', '菜单列表', '2', '', 'Menus/index');
INSERT INTO `menus` VALUES ('5', '产品管理', '0', 'icon-shopping-cart', 'Product');
INSERT INTO `menus` VALUES ('6', '产品添加', '5', '', 'Product/add');
INSERT INTO `menus` VALUES ('7', '产品列表', '5', '', 'Product/index');
INSERT INTO `menus` VALUES ('8', '关于我们', '0', 'icon-user', 'About/index');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `descript` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `wsid` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '路由器', '路由器是所有产品接入互联网的管理终端，兼容Wi-Fi蓝牙', 'http://x.com/wowo/Public/Uploads/Product/2017-04-24/58fd6bf97d53b.jpg', '1232');
INSERT INTO `product` VALUES ('4', '小卡', '路由器是所有产品接入互联网的管理终端，兼容Wi-Fi蓝牙', 'http://x.com/wowo/Public/Uploads/Product/2017-04-24/58fd7128e35bf.jpg', '1232');
INSERT INTO `product` VALUES ('5', '环境检测仪', '路由器是所有产品接入互联网的管理终端，兼容Wi-Fi蓝牙', 'http://x.com/wowo/Public/Uploads/Product/2017-04-24/590b0c65b368a.jpg', '1232');
INSERT INTO `product` VALUES ('3', '网关', '路由器是所有产品接入互联网的管理终端，兼容Wi-Fi蓝牙', 'http://x.com/wowo/Public/Uploads/Product/2017-04-24/58fd6acfdb124.jpg', '1232');

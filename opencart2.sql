/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : opencart2

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-04-17 02:04:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `oc_address`
-- ----------------------------
DROP TABLE IF EXISTS `oc_address`;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_address
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_affiliate`
-- ----------------------------
DROP TABLE IF EXISTS `oc_affiliate`;
CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_affiliate
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_affiliate_activity`
-- ----------------------------
DROP TABLE IF EXISTS `oc_affiliate_activity`;
CREATE TABLE `oc_affiliate_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_affiliate_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_affiliate_login`
-- ----------------------------
DROP TABLE IF EXISTS `oc_affiliate_login`;
CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_affiliate_login
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_affiliate_transaction`
-- ----------------------------
DROP TABLE IF EXISTS `oc_affiliate_transaction`;
CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_affiliate_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_api`
-- ----------------------------
DROP TABLE IF EXISTS `oc_api`;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_api
-- ----------------------------
INSERT INTO `oc_api` VALUES ('1', 'kxVavXDw1q0M4MYMZ7Yi3AE3BX4qHgz3swcENlHtCBAAiUyf9L8IlTUBk5RKqCrD', '', '', 'FzIslQBrwAQOrxpAatBImFAeVT17rJ19F6pu8iigvvhcxggU7GQjEOmAVqcxMCDvzHP2fG4yXclka6R7fyXxNLEHRL0qWZZNAb6CiJsAoQIuXBSGma1Zd6pHdCn6gfd9C7wfmb9ROZwaiQUvgjNSbAJF8cZIKFLb8ypxVOJkeHAUBrfvF1vnzao2ZtnK7b4xdIYtjVCsXrOcB2Yoz6w2iuqJHHoJrZZA6GqYPG3LkaxG658x6hcuoGMUE8vhVW0y', '1', '2015-04-06 22:11:09', '2015-04-06 22:11:09');

-- ----------------------------
-- Table structure for `oc_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute`;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute
-- ----------------------------
INSERT INTO `oc_attribute` VALUES ('1', '6', '1');
INSERT INTO `oc_attribute` VALUES ('2', '6', '5');
INSERT INTO `oc_attribute` VALUES ('3', '6', '3');
INSERT INTO `oc_attribute` VALUES ('4', '3', '1');
INSERT INTO `oc_attribute` VALUES ('5', '3', '2');
INSERT INTO `oc_attribute` VALUES ('6', '3', '3');
INSERT INTO `oc_attribute` VALUES ('7', '3', '4');
INSERT INTO `oc_attribute` VALUES ('8', '3', '5');
INSERT INTO `oc_attribute` VALUES ('9', '3', '6');
INSERT INTO `oc_attribute` VALUES ('10', '3', '7');
INSERT INTO `oc_attribute` VALUES ('11', '3', '8');

-- ----------------------------
-- Table structure for `oc_attribute_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute_description`;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute_description
-- ----------------------------
INSERT INTO `oc_attribute_description` VALUES ('1', '1', 'Description');
INSERT INTO `oc_attribute_description` VALUES ('2', '1', 'No. of Cores');
INSERT INTO `oc_attribute_description` VALUES ('4', '1', 'test 1');
INSERT INTO `oc_attribute_description` VALUES ('5', '1', 'test 2');
INSERT INTO `oc_attribute_description` VALUES ('6', '1', 'test 3');
INSERT INTO `oc_attribute_description` VALUES ('7', '1', 'test 4');
INSERT INTO `oc_attribute_description` VALUES ('8', '1', 'test 5');
INSERT INTO `oc_attribute_description` VALUES ('9', '1', 'test 6');
INSERT INTO `oc_attribute_description` VALUES ('10', '1', 'test 7');
INSERT INTO `oc_attribute_description` VALUES ('11', '1', 'test 8');
INSERT INTO `oc_attribute_description` VALUES ('3', '1', 'Clockspeed');

-- ----------------------------
-- Table structure for `oc_attribute_group`
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute_group`;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute_group
-- ----------------------------
INSERT INTO `oc_attribute_group` VALUES ('3', '2');
INSERT INTO `oc_attribute_group` VALUES ('4', '1');
INSERT INTO `oc_attribute_group` VALUES ('5', '3');
INSERT INTO `oc_attribute_group` VALUES ('6', '4');

-- ----------------------------
-- Table structure for `oc_attribute_group_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute_group_description`;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute_group_description
-- ----------------------------
INSERT INTO `oc_attribute_group_description` VALUES ('3', '1', 'Memory');
INSERT INTO `oc_attribute_group_description` VALUES ('4', '1', 'Technical');
INSERT INTO `oc_attribute_group_description` VALUES ('5', '1', 'Motherboard');
INSERT INTO `oc_attribute_group_description` VALUES ('6', '1', 'Processor');

-- ----------------------------
-- Table structure for `oc_banner`
-- ----------------------------
DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_banner
-- ----------------------------
INSERT INTO `oc_banner` VALUES ('6', 'HP Products', '1');
INSERT INTO `oc_banner` VALUES ('7', 'Home Page Slideshow', '1');
INSERT INTO `oc_banner` VALUES ('8', 'Manufacturers', '1');
INSERT INTO `oc_banner` VALUES ('9', 'Банер sales', '1');
INSERT INTO `oc_banner` VALUES ('10', 'банер на главной справа', '1');
INSERT INTO `oc_banner` VALUES ('11', 'банер на главной справа2', '1');

-- ----------------------------
-- Table structure for `oc_banner_image`
-- ----------------------------
DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_banner_image
-- ----------------------------
INSERT INTO `oc_banner_image` VALUES ('79', '7', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', '0');
INSERT INTO `oc_banner_image` VALUES ('87', '6', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', '0');
INSERT INTO `oc_banner_image` VALUES ('94', '8', '', 'catalog/demo/manufacturer/nfl.png', '0');
INSERT INTO `oc_banner_image` VALUES ('95', '8', '', 'catalog/demo/manufacturer/redbull.png', '0');
INSERT INTO `oc_banner_image` VALUES ('96', '8', '', 'catalog/demo/manufacturer/sony.png', '0');
INSERT INTO `oc_banner_image` VALUES ('91', '8', '', 'catalog/demo/manufacturer/cocacola.png', '0');
INSERT INTO `oc_banner_image` VALUES ('92', '8', '', 'catalog/demo/manufacturer/burgerking.png', '0');
INSERT INTO `oc_banner_image` VALUES ('93', '8', '', 'catalog/demo/manufacturer/canon.png', '0');
INSERT INTO `oc_banner_image` VALUES ('88', '8', '', 'catalog/demo/manufacturer/harley.png', '0');
INSERT INTO `oc_banner_image` VALUES ('89', '8', '', 'catalog/demo/manufacturer/dell.png', '0');
INSERT INTO `oc_banner_image` VALUES ('90', '8', '', 'catalog/demo/manufacturer/disney.png', '0');
INSERT INTO `oc_banner_image` VALUES ('80', '7', '', 'catalog/demo/banners/MacBookAir.jpg', '0');
INSERT INTO `oc_banner_image` VALUES ('97', '8', '', 'catalog/demo/manufacturer/starbucks.png', '0');
INSERT INTO `oc_banner_image` VALUES ('98', '8', '', 'catalog/demo/manufacturer/nintendo.png', '0');
INSERT INTO `oc_banner_image` VALUES ('99', '9', '/index.php?route=information/information&amp;information_id=6', 'catalog/banner-4-670x130.jpg', '0');
INSERT INTO `oc_banner_image` VALUES ('109', '11', '', 'catalog/banner-3-354x130.jpg', '0');
INSERT INTO `oc_banner_image` VALUES ('111', '10', '', 'catalog/banner-2-354x185.jpg', '2');
INSERT INTO `oc_banner_image` VALUES ('110', '10', '', 'catalog/banner-1-354x185.jpg', '1');

-- ----------------------------
-- Table structure for `oc_banner_image_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_banner_image_description
-- ----------------------------
INSERT INTO `oc_banner_image_description` VALUES ('79', '1', '7', 'iPhone 6');
INSERT INTO `oc_banner_image_description` VALUES ('87', '1', '6', 'HP Banner');
INSERT INTO `oc_banner_image_description` VALUES ('93', '1', '8', 'Canon');
INSERT INTO `oc_banner_image_description` VALUES ('92', '1', '8', 'Burger King');
INSERT INTO `oc_banner_image_description` VALUES ('91', '1', '8', 'Coca Cola');
INSERT INTO `oc_banner_image_description` VALUES ('90', '1', '8', 'Disney');
INSERT INTO `oc_banner_image_description` VALUES ('89', '1', '8', 'Dell');
INSERT INTO `oc_banner_image_description` VALUES ('80', '1', '7', 'MacBookAir');
INSERT INTO `oc_banner_image_description` VALUES ('88', '1', '8', 'Harley Davidson');
INSERT INTO `oc_banner_image_description` VALUES ('94', '1', '8', 'NFL');
INSERT INTO `oc_banner_image_description` VALUES ('95', '1', '8', 'RedBull');
INSERT INTO `oc_banner_image_description` VALUES ('96', '1', '8', 'Sony');
INSERT INTO `oc_banner_image_description` VALUES ('97', '1', '8', 'Starbucks');
INSERT INTO `oc_banner_image_description` VALUES ('98', '1', '8', 'Nintendo');
INSERT INTO `oc_banner_image_description` VALUES ('99', '1', '9', 'Sale70%');
INSERT INTO `oc_banner_image_description` VALUES ('110', '1', '10', 'Diesel');
INSERT INTO `oc_banner_image_description` VALUES ('111', '1', '10', 'CK');
INSERT INTO `oc_banner_image_description` VALUES ('109', '1', '11', 'free shipping');

-- ----------------------------
-- Table structure for `oc_category`
-- ----------------------------
DROP TABLE IF EXISTS `oc_category`;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category
-- ----------------------------
INSERT INTO `oc_category` VALUES ('25', '', '0', '1', '1', '3', '1', '2009-01-31 01:04:25', '2011-05-30 12:14:55');
INSERT INTO `oc_category` VALUES ('27', '', '20', '0', '0', '2', '1', '2009-01-31 01:55:34', '2010-08-22 06:32:15');
INSERT INTO `oc_category` VALUES ('20', 'catalog/demo/compaq_presario.jpg', '0', '1', '1', '1', '1', '2009-01-05 21:49:43', '2011-07-16 02:14:42');
INSERT INTO `oc_category` VALUES ('24', '', '0', '1', '1', '5', '1', '2009-01-20 02:36:26', '2011-05-30 12:15:18');
INSERT INTO `oc_category` VALUES ('18', 'catalog/demo/hp_2.jpg', '0', '1', '0', '2', '1', '2009-01-05 21:49:15', '2011-05-30 12:13:55');
INSERT INTO `oc_category` VALUES ('17', '', '0', '1', '1', '4', '1', '2009-01-03 21:08:57', '2011-05-30 12:15:11');
INSERT INTO `oc_category` VALUES ('28', '', '25', '0', '0', '1', '1', '2009-02-02 13:11:12', '2010-08-22 06:32:46');
INSERT INTO `oc_category` VALUES ('26', '', '20', '0', '0', '1', '1', '2009-01-31 01:55:14', '2010-08-22 06:31:45');
INSERT INTO `oc_category` VALUES ('29', '', '25', '0', '0', '1', '1', '2009-02-02 13:11:37', '2010-08-22 06:32:39');
INSERT INTO `oc_category` VALUES ('30', '', '25', '0', '0', '1', '1', '2009-02-02 13:11:59', '2010-08-22 06:33:00');
INSERT INTO `oc_category` VALUES ('31', '', '25', '0', '0', '1', '1', '2009-02-03 14:17:24', '2010-08-22 06:33:06');
INSERT INTO `oc_category` VALUES ('32', '', '25', '0', '0', '1', '1', '2009-02-03 14:17:34', '2010-08-22 06:33:12');
INSERT INTO `oc_category` VALUES ('33', '', '0', '1', '1', '6', '1', '2009-02-03 14:17:55', '2011-05-30 12:15:25');
INSERT INTO `oc_category` VALUES ('34', 'catalog/demo/ipod_touch_4.jpg', '0', '1', '4', '7', '1', '2009-02-03 14:18:11', '2011-05-30 12:15:31');
INSERT INTO `oc_category` VALUES ('35', '', '28', '0', '0', '0', '1', '2010-09-17 10:06:48', '2010-09-18 14:02:42');
INSERT INTO `oc_category` VALUES ('36', '', '28', '0', '0', '0', '1', '2010-09-17 10:07:13', '2010-09-18 14:02:55');
INSERT INTO `oc_category` VALUES ('37', '', '34', '0', '0', '0', '1', '2010-09-18 14:03:39', '2011-04-22 01:55:08');
INSERT INTO `oc_category` VALUES ('38', '', '34', '0', '0', '0', '1', '2010-09-18 14:03:51', '2010-09-18 14:03:51');
INSERT INTO `oc_category` VALUES ('39', '', '34', '0', '0', '0', '1', '2010-09-18 14:04:17', '2011-04-22 01:55:20');
INSERT INTO `oc_category` VALUES ('40', '', '34', '0', '0', '0', '1', '2010-09-18 14:05:36', '2010-09-18 14:05:36');
INSERT INTO `oc_category` VALUES ('41', '', '34', '0', '0', '0', '1', '2010-09-18 14:05:49', '2011-04-22 01:55:30');
INSERT INTO `oc_category` VALUES ('42', '', '34', '0', '0', '0', '1', '2010-09-18 14:06:34', '2010-11-07 20:31:04');
INSERT INTO `oc_category` VALUES ('43', '', '34', '0', '0', '0', '1', '2010-09-18 14:06:49', '2011-04-22 01:55:40');
INSERT INTO `oc_category` VALUES ('44', '', '34', '0', '0', '0', '1', '2010-09-21 15:39:21', '2010-11-07 20:30:55');
INSERT INTO `oc_category` VALUES ('45', '', '18', '0', '0', '0', '1', '2010-09-24 18:29:16', '2011-04-26 08:52:11');
INSERT INTO `oc_category` VALUES ('46', '', '18', '0', '0', '0', '1', '2010-09-24 18:29:31', '2011-04-26 08:52:23');
INSERT INTO `oc_category` VALUES ('47', '', '34', '0', '0', '0', '1', '2010-11-07 11:13:16', '2010-11-07 11:13:16');
INSERT INTO `oc_category` VALUES ('48', '', '34', '0', '0', '0', '1', '2010-11-07 11:13:33', '2010-11-07 11:13:33');
INSERT INTO `oc_category` VALUES ('49', '', '34', '0', '0', '0', '1', '2010-11-07 11:14:04', '2010-11-07 11:14:04');
INSERT INTO `oc_category` VALUES ('50', '', '34', '0', '0', '0', '1', '2010-11-07 11:14:23', '2011-04-22 01:16:01');
INSERT INTO `oc_category` VALUES ('51', '', '34', '0', '0', '0', '1', '2010-11-07 11:14:38', '2011-04-22 01:16:13');
INSERT INTO `oc_category` VALUES ('52', '', '34', '0', '0', '0', '1', '2010-11-07 11:16:09', '2011-04-22 01:54:57');
INSERT INTO `oc_category` VALUES ('53', '', '34', '0', '0', '0', '1', '2010-11-07 11:28:53', '2011-04-22 01:14:36');
INSERT INTO `oc_category` VALUES ('54', '', '34', '0', '0', '0', '1', '2010-11-07 11:29:16', '2011-04-22 01:16:50');
INSERT INTO `oc_category` VALUES ('55', '', '34', '0', '0', '0', '1', '2010-11-08 10:31:32', '2010-11-08 10:31:32');
INSERT INTO `oc_category` VALUES ('56', '', '34', '0', '0', '0', '1', '2010-11-08 10:31:50', '2011-04-22 01:16:37');
INSERT INTO `oc_category` VALUES ('57', '', '0', '1', '1', '3', '1', '2011-04-26 08:53:16', '2011-05-30 12:15:05');
INSERT INTO `oc_category` VALUES ('58', '', '52', '0', '0', '0', '1', '2011-05-08 13:44:16', '2011-05-08 13:44:16');

-- ----------------------------
-- Table structure for `oc_category_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_description`;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_description
-- ----------------------------
INSERT INTO `oc_category_description` VALUES ('27', '1', 'Mac', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('26', '1', 'PC', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('35', '1', 'test 1', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('36', '1', 'test 2', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('37', '1', 'test 5', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('38', '1', 'test 4', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('39', '1', 'test 6', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('40', '1', 'test 7', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('41', '1', 'test 8', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('42', '1', 'test 9', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('43', '1', 'test 11', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('44', '1', 'test 12', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('45', '1', 'Windows', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('46', '1', 'Macs', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('47', '1', 'test 15', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('48', '1', 'test 16', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('49', '1', 'test 17', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('50', '1', 'test 18', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('51', '1', 'test 19', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('52', '1', 'test 20', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('53', '1', 'test 21', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('54', '1', 'test 22', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('55', '1', 'test 23', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('56', '1', 'test 24', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('58', '1', 'test 25', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('28', '1', 'Мониторы', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Мониторы', '', '');
INSERT INTO `oc_category_description` VALUES ('33', '1', 'Камеры', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Камеры', '', '');
INSERT INTO `oc_category_description` VALUES ('32', '1', 'Веб камеры', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Веб камеры', '', '');
INSERT INTO `oc_category_description` VALUES ('31', '1', 'Сканеры', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Сканеры', '', '');
INSERT INTO `oc_category_description` VALUES ('30', '1', 'Принтеры', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Принтеры', '', '');
INSERT INTO `oc_category_description` VALUES ('29', '1', 'Манипуляторы мышь', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Манипуляторы мышь', '', '');
INSERT INTO `oc_category_description` VALUES ('27', '2', 'Mac', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('26', '2', 'PC', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('17', '1', 'Софт', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Софт', '', '');
INSERT INTO `oc_category_description` VALUES ('25', '1', 'Комплектующие', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Комплектующие', '', '');
INSERT INTO `oc_category_description` VALUES ('24', '1', 'Телефоны и PDA', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Телефоны и PDA', '', '');
INSERT INTO `oc_category_description` VALUES ('20', '1', 'Компьютеры', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;', 'Компьютеры', 'Example of category description', '');
INSERT INTO `oc_category_description` VALUES ('35', '2', 'test 1', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('36', '2', 'test 2', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('37', '2', 'test 5', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('38', '2', 'test 4', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('39', '2', 'test 6', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('40', '2', 'test 7', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('41', '2', 'test 8', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('42', '2', 'test 9', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('43', '2', 'test 11', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('34', '1', 'MP3 плееры', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;', 'MP3 плееры', '', '');
INSERT INTO `oc_category_description` VALUES ('18', '1', 'Ноутбуки', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;', 'Ноутбуки', '', '');
INSERT INTO `oc_category_description` VALUES ('44', '2', 'test 12', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('45', '2', 'Windows', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('46', '2', 'Macs', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('47', '2', 'test 15', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('48', '2', 'test 16', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('49', '2', 'test 17', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('50', '2', 'test 18', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('51', '2', 'test 19', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('52', '2', 'test 20', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('53', '2', 'test 21', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('54', '2', 'test 22', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('55', '2', 'test 23', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('56', '2', 'test 24', '', '', '', '');
INSERT INTO `oc_category_description` VALUES ('57', '1', 'Планшеты', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Планшеты', '', '');
INSERT INTO `oc_category_description` VALUES ('58', '2', 'test 25', '', '', '', '');

-- ----------------------------
-- Table structure for `oc_category_filter`
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_filter`;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_filter
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_category_path`
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_path`;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_path
-- ----------------------------
INSERT INTO `oc_category_path` VALUES ('25', '25', '0');
INSERT INTO `oc_category_path` VALUES ('28', '25', '0');
INSERT INTO `oc_category_path` VALUES ('28', '28', '1');
INSERT INTO `oc_category_path` VALUES ('35', '25', '0');
INSERT INTO `oc_category_path` VALUES ('35', '28', '1');
INSERT INTO `oc_category_path` VALUES ('35', '35', '2');
INSERT INTO `oc_category_path` VALUES ('36', '25', '0');
INSERT INTO `oc_category_path` VALUES ('36', '28', '1');
INSERT INTO `oc_category_path` VALUES ('36', '36', '2');
INSERT INTO `oc_category_path` VALUES ('29', '25', '0');
INSERT INTO `oc_category_path` VALUES ('29', '29', '1');
INSERT INTO `oc_category_path` VALUES ('30', '25', '0');
INSERT INTO `oc_category_path` VALUES ('30', '30', '1');
INSERT INTO `oc_category_path` VALUES ('31', '25', '0');
INSERT INTO `oc_category_path` VALUES ('31', '31', '1');
INSERT INTO `oc_category_path` VALUES ('32', '25', '0');
INSERT INTO `oc_category_path` VALUES ('32', '32', '1');
INSERT INTO `oc_category_path` VALUES ('20', '20', '0');
INSERT INTO `oc_category_path` VALUES ('27', '20', '0');
INSERT INTO `oc_category_path` VALUES ('27', '27', '1');
INSERT INTO `oc_category_path` VALUES ('26', '20', '0');
INSERT INTO `oc_category_path` VALUES ('26', '26', '1');
INSERT INTO `oc_category_path` VALUES ('24', '24', '0');
INSERT INTO `oc_category_path` VALUES ('18', '18', '0');
INSERT INTO `oc_category_path` VALUES ('45', '18', '0');
INSERT INTO `oc_category_path` VALUES ('45', '45', '1');
INSERT INTO `oc_category_path` VALUES ('46', '18', '0');
INSERT INTO `oc_category_path` VALUES ('46', '46', '1');
INSERT INTO `oc_category_path` VALUES ('17', '17', '0');
INSERT INTO `oc_category_path` VALUES ('33', '33', '0');
INSERT INTO `oc_category_path` VALUES ('34', '34', '0');
INSERT INTO `oc_category_path` VALUES ('37', '34', '0');
INSERT INTO `oc_category_path` VALUES ('37', '37', '1');
INSERT INTO `oc_category_path` VALUES ('38', '34', '0');
INSERT INTO `oc_category_path` VALUES ('38', '38', '1');
INSERT INTO `oc_category_path` VALUES ('39', '34', '0');
INSERT INTO `oc_category_path` VALUES ('39', '39', '1');
INSERT INTO `oc_category_path` VALUES ('40', '34', '0');
INSERT INTO `oc_category_path` VALUES ('40', '40', '1');
INSERT INTO `oc_category_path` VALUES ('41', '34', '0');
INSERT INTO `oc_category_path` VALUES ('41', '41', '1');
INSERT INTO `oc_category_path` VALUES ('42', '34', '0');
INSERT INTO `oc_category_path` VALUES ('42', '42', '1');
INSERT INTO `oc_category_path` VALUES ('43', '34', '0');
INSERT INTO `oc_category_path` VALUES ('43', '43', '1');
INSERT INTO `oc_category_path` VALUES ('44', '34', '0');
INSERT INTO `oc_category_path` VALUES ('44', '44', '1');
INSERT INTO `oc_category_path` VALUES ('47', '34', '0');
INSERT INTO `oc_category_path` VALUES ('47', '47', '1');
INSERT INTO `oc_category_path` VALUES ('48', '34', '0');
INSERT INTO `oc_category_path` VALUES ('48', '48', '1');
INSERT INTO `oc_category_path` VALUES ('49', '34', '0');
INSERT INTO `oc_category_path` VALUES ('49', '49', '1');
INSERT INTO `oc_category_path` VALUES ('50', '34', '0');
INSERT INTO `oc_category_path` VALUES ('50', '50', '1');
INSERT INTO `oc_category_path` VALUES ('51', '34', '0');
INSERT INTO `oc_category_path` VALUES ('51', '51', '1');
INSERT INTO `oc_category_path` VALUES ('52', '34', '0');
INSERT INTO `oc_category_path` VALUES ('52', '52', '1');
INSERT INTO `oc_category_path` VALUES ('58', '34', '0');
INSERT INTO `oc_category_path` VALUES ('58', '52', '1');
INSERT INTO `oc_category_path` VALUES ('58', '58', '2');
INSERT INTO `oc_category_path` VALUES ('53', '34', '0');
INSERT INTO `oc_category_path` VALUES ('53', '53', '1');
INSERT INTO `oc_category_path` VALUES ('54', '34', '0');
INSERT INTO `oc_category_path` VALUES ('54', '54', '1');
INSERT INTO `oc_category_path` VALUES ('55', '34', '0');
INSERT INTO `oc_category_path` VALUES ('55', '55', '1');
INSERT INTO `oc_category_path` VALUES ('56', '34', '0');
INSERT INTO `oc_category_path` VALUES ('56', '56', '1');
INSERT INTO `oc_category_path` VALUES ('57', '57', '0');

-- ----------------------------
-- Table structure for `oc_category_to_layout`
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_to_layout`;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_to_layout
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_category_to_store`
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_to_store`;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_to_store
-- ----------------------------
INSERT INTO `oc_category_to_store` VALUES ('17', '0');
INSERT INTO `oc_category_to_store` VALUES ('18', '0');
INSERT INTO `oc_category_to_store` VALUES ('20', '0');
INSERT INTO `oc_category_to_store` VALUES ('24', '0');
INSERT INTO `oc_category_to_store` VALUES ('25', '0');
INSERT INTO `oc_category_to_store` VALUES ('26', '0');
INSERT INTO `oc_category_to_store` VALUES ('27', '0');
INSERT INTO `oc_category_to_store` VALUES ('28', '0');
INSERT INTO `oc_category_to_store` VALUES ('29', '0');
INSERT INTO `oc_category_to_store` VALUES ('30', '0');
INSERT INTO `oc_category_to_store` VALUES ('31', '0');
INSERT INTO `oc_category_to_store` VALUES ('32', '0');
INSERT INTO `oc_category_to_store` VALUES ('33', '0');
INSERT INTO `oc_category_to_store` VALUES ('34', '0');
INSERT INTO `oc_category_to_store` VALUES ('35', '0');
INSERT INTO `oc_category_to_store` VALUES ('36', '0');
INSERT INTO `oc_category_to_store` VALUES ('37', '0');
INSERT INTO `oc_category_to_store` VALUES ('38', '0');
INSERT INTO `oc_category_to_store` VALUES ('39', '0');
INSERT INTO `oc_category_to_store` VALUES ('40', '0');
INSERT INTO `oc_category_to_store` VALUES ('41', '0');
INSERT INTO `oc_category_to_store` VALUES ('42', '0');
INSERT INTO `oc_category_to_store` VALUES ('43', '0');
INSERT INTO `oc_category_to_store` VALUES ('44', '0');
INSERT INTO `oc_category_to_store` VALUES ('45', '0');
INSERT INTO `oc_category_to_store` VALUES ('46', '0');
INSERT INTO `oc_category_to_store` VALUES ('47', '0');
INSERT INTO `oc_category_to_store` VALUES ('48', '0');
INSERT INTO `oc_category_to_store` VALUES ('49', '0');
INSERT INTO `oc_category_to_store` VALUES ('50', '0');
INSERT INTO `oc_category_to_store` VALUES ('51', '0');
INSERT INTO `oc_category_to_store` VALUES ('52', '0');
INSERT INTO `oc_category_to_store` VALUES ('53', '0');
INSERT INTO `oc_category_to_store` VALUES ('54', '0');
INSERT INTO `oc_category_to_store` VALUES ('55', '0');
INSERT INTO `oc_category_to_store` VALUES ('56', '0');
INSERT INTO `oc_category_to_store` VALUES ('57', '0');
INSERT INTO `oc_category_to_store` VALUES ('58', '0');

-- ----------------------------
-- Table structure for `oc_country`
-- ----------------------------
DROP TABLE IF EXISTS `oc_country`;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_country
-- ----------------------------
INSERT INTO `oc_country` VALUES ('20', 'Белоруссия (Беларусь)', 'BY', 'BLR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('80', 'Грузия', 'GE', 'GEO', '', '0', '1');
INSERT INTO `oc_country` VALUES ('109', 'Казахстан', 'KZ', 'KAZ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('115', 'Киргизия (Кыргызстан)', 'KG', 'KGZ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('176', 'Российская Федерация', 'RU', 'RUS', '', '0', '1');
INSERT INTO `oc_country` VALUES ('220', 'Украина', 'UA', 'UKR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('226', 'Узбекистан', 'UZ', 'UZB', '', '0', '1');

-- ----------------------------
-- Table structure for `oc_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon`;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon
-- ----------------------------
INSERT INTO `oc_coupon` VALUES ('4', '-10% Discount', '2222', 'P', '10.0000', '0', '0', '0.0000', '2014-01-01', '2020-01-01', '10', '10', '0', '2009-01-27 13:55:03');
INSERT INTO `oc_coupon` VALUES ('5', 'Free Shipping', '3333', 'P', '0.0000', '0', '1', '100.0000', '2014-01-01', '2014-02-01', '10', '10', '0', '2009-03-14 21:13:53');
INSERT INTO `oc_coupon` VALUES ('6', '-10.00 Discount', '1111', 'F', '10.0000', '0', '0', '10.0000', '2014-01-01', '2020-01-01', '100000', '10000', '0', '2009-03-14 21:15:18');

-- ----------------------------
-- Table structure for `oc_coupon_category`
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon_category`;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon_category
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_coupon_history`
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon_history`;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon_history
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_coupon_product`
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon_product`;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon_product
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_currency`
-- ----------------------------
DROP TABLE IF EXISTS `oc_currency`;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_currency
-- ----------------------------
INSERT INTO `oc_currency` VALUES ('1', 'Рубль', 'RUB', '', 'р.', '0', '1.00000000', '1', '2015-04-17 01:33:11');

-- ----------------------------
-- Table structure for `oc_customer`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer`;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_customer_activity`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_activity`;
CREATE TABLE `oc_customer_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_customer_ban_ip`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_ban_ip`;
CREATE TABLE `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_ban_ip
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_customer_group`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_group`;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_group
-- ----------------------------
INSERT INTO `oc_customer_group` VALUES ('1', '0', '1');

-- ----------------------------
-- Table structure for `oc_customer_group_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_group_description`;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_group_description
-- ----------------------------
INSERT INTO `oc_customer_group_description` VALUES ('1', '1', 'Default', 'test');

-- ----------------------------
-- Table structure for `oc_customer_history`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_history`;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_history
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_customer_ip`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_ip`;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_ip
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_customer_login`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_login`;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_login
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_customer_online`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_online`;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_online
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_customer_reward`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_reward`;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_reward
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_customer_transaction`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_transaction`;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_custom_field`
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field`;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_custom_field_customer_group`
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_customer_group
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_custom_field_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_description`;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_description
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_custom_field_value`
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_value`;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_value
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_custom_field_value_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_value_description`;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_value_description
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_download`
-- ----------------------------
DROP TABLE IF EXISTS `oc_download`;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_download
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_download_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_download_description`;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_download_description
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_event`
-- ----------------------------
DROP TABLE IF EXISTS `oc_event`;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_event
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_extension`
-- ----------------------------
DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=428 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_extension
-- ----------------------------
INSERT INTO `oc_extension` VALUES ('23', 'payment', 'cod');
INSERT INTO `oc_extension` VALUES ('22', 'total', 'shipping');
INSERT INTO `oc_extension` VALUES ('57', 'total', 'sub_total');
INSERT INTO `oc_extension` VALUES ('58', 'total', 'tax');
INSERT INTO `oc_extension` VALUES ('59', 'total', 'total');
INSERT INTO `oc_extension` VALUES ('410', 'module', 'banner');
INSERT INTO `oc_extension` VALUES ('426', 'module', 'carousel');
INSERT INTO `oc_extension` VALUES ('390', 'total', 'credit');
INSERT INTO `oc_extension` VALUES ('387', 'shipping', 'flat');
INSERT INTO `oc_extension` VALUES ('349', 'total', 'handling');
INSERT INTO `oc_extension` VALUES ('350', 'total', 'low_order_fee');
INSERT INTO `oc_extension` VALUES ('389', 'total', 'coupon');
INSERT INTO `oc_extension` VALUES ('413', 'module', 'category');
INSERT INTO `oc_extension` VALUES ('408', 'module', 'account');
INSERT INTO `oc_extension` VALUES ('393', 'total', 'reward');
INSERT INTO `oc_extension` VALUES ('398', 'total', 'voucher');
INSERT INTO `oc_extension` VALUES ('407', 'payment', 'free_checkout');
INSERT INTO `oc_extension` VALUES ('427', 'module', 'featured');
INSERT INTO `oc_extension` VALUES ('419', 'module', 'slideshow');

-- ----------------------------
-- Table structure for `oc_filter`
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter`;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_filter_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter_description`;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter_description
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_filter_group`
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter_group`;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter_group
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_filter_group_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter_group_description`;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter_group_description
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_geo_zone`
-- ----------------------------
DROP TABLE IF EXISTS `oc_geo_zone`;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_geo_zone
-- ----------------------------
INSERT INTO `oc_geo_zone` VALUES ('3', 'Зона НДС', 'Облагаемые НДС', '2014-09-09 11:48:13', '2014-05-21 22:30:20');

-- ----------------------------
-- Table structure for `oc_information`
-- ----------------------------
DROP TABLE IF EXISTS `oc_information`;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information
-- ----------------------------
INSERT INTO `oc_information` VALUES ('3', '1', '3', '1');
INSERT INTO `oc_information` VALUES ('4', '1', '1', '1');
INSERT INTO `oc_information` VALUES ('5', '1', '4', '1');
INSERT INTO `oc_information` VALUES ('6', '1', '2', '1');

-- ----------------------------
-- Table structure for `oc_information_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_information_description`;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information_description
-- ----------------------------
INSERT INTO `oc_information_description` VALUES ('4', '1', 'О нас', '&lt;p&gt;\r\n	About Us&lt;/p&gt;', 'О нас', '', '');
INSERT INTO `oc_information_description` VALUES ('5', '1', 'Условия соглашения', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;', 'Условия соглашения', '', '');
INSERT INTO `oc_information_description` VALUES ('3', '1', 'Политика Безопасности', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;', 'Политика Безопасности', '', '');
INSERT INTO `oc_information_description` VALUES ('6', '1', 'Доставка', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;', 'Доставка', '', '');

-- ----------------------------
-- Table structure for `oc_information_to_layout`
-- ----------------------------
DROP TABLE IF EXISTS `oc_information_to_layout`;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information_to_layout
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_information_to_store`
-- ----------------------------
DROP TABLE IF EXISTS `oc_information_to_store`;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information_to_store
-- ----------------------------
INSERT INTO `oc_information_to_store` VALUES ('3', '0');
INSERT INTO `oc_information_to_store` VALUES ('4', '0');
INSERT INTO `oc_information_to_store` VALUES ('5', '0');
INSERT INTO `oc_information_to_store` VALUES ('6', '0');

-- ----------------------------
-- Table structure for `oc_language`
-- ----------------------------
DROP TABLE IF EXISTS `oc_language`;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_language
-- ----------------------------
INSERT INTO `oc_language` VALUES ('1', 'Russian', 'ru', 'ru_RU.UTF-8,ru_RU,russian', 'ru.png', 'russian', '1', '1');

-- ----------------------------
-- Table structure for `oc_layout`
-- ----------------------------
DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_layout
-- ----------------------------
INSERT INTO `oc_layout` VALUES ('1', 'Главная страница');
INSERT INTO `oc_layout` VALUES ('2', 'Product');
INSERT INTO `oc_layout` VALUES ('3', 'Category');
INSERT INTO `oc_layout` VALUES ('4', 'Default');
INSERT INTO `oc_layout` VALUES ('5', 'Manufacturer');
INSERT INTO `oc_layout` VALUES ('6', 'Account');
INSERT INTO `oc_layout` VALUES ('7', 'Checkout');
INSERT INTO `oc_layout` VALUES ('8', 'Contact');
INSERT INTO `oc_layout` VALUES ('9', 'Sitemap');
INSERT INTO `oc_layout` VALUES ('10', 'Affiliate');
INSERT INTO `oc_layout` VALUES ('11', 'Information');
INSERT INTO `oc_layout` VALUES ('12', 'Compare');
INSERT INTO `oc_layout` VALUES ('13', 'Search');

-- ----------------------------
-- Table structure for `oc_layout_module`
-- ----------------------------
DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_layout_module
-- ----------------------------
INSERT INTO `oc_layout_module` VALUES ('2', '4', '0', 'content_top', '0');
INSERT INTO `oc_layout_module` VALUES ('3', '4', '0', 'content_top', '1');
INSERT INTO `oc_layout_module` VALUES ('20', '5', '0', 'column_left', '2');
INSERT INTO `oc_layout_module` VALUES ('69', '10', 'affiliate', 'column_right', '1');
INSERT INTO `oc_layout_module` VALUES ('68', '6', 'account', 'column_right', '1');
INSERT INTO `oc_layout_module` VALUES ('99', '1', 'banner.33', 'column_right', '2');
INSERT INTO `oc_layout_module` VALUES ('100', '1', 'banner.34', 'content_top', '3');
INSERT INTO `oc_layout_module` VALUES ('72', '3', 'category', 'column_left', '1');
INSERT INTO `oc_layout_module` VALUES ('73', '3', 'banner.30', 'column_left', '2');
INSERT INTO `oc_layout_module` VALUES ('101', '1', 'banner.35', 'column_right', '3');
INSERT INTO `oc_layout_module` VALUES ('98', '1', 'featured.28', 'content_top', '4');
INSERT INTO `oc_layout_module` VALUES ('97', '1', 'slideshow.27', 'content_top', '1');

-- ----------------------------
-- Table structure for `oc_layout_route`
-- ----------------------------
DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_layout_route
-- ----------------------------
INSERT INTO `oc_layout_route` VALUES ('38', '6', '0', 'account/%');
INSERT INTO `oc_layout_route` VALUES ('17', '10', '0', 'affiliate/%');
INSERT INTO `oc_layout_route` VALUES ('44', '3', '0', 'product/category');
INSERT INTO `oc_layout_route` VALUES ('61', '1', '0', 'common/home');
INSERT INTO `oc_layout_route` VALUES ('20', '2', '0', 'product/product');
INSERT INTO `oc_layout_route` VALUES ('24', '11', '0', 'information/information');
INSERT INTO `oc_layout_route` VALUES ('23', '7', '0', 'checkout/%');
INSERT INTO `oc_layout_route` VALUES ('31', '8', '0', 'information/contact');
INSERT INTO `oc_layout_route` VALUES ('32', '9', '0', 'information/sitemap');
INSERT INTO `oc_layout_route` VALUES ('34', '4', '0', '');
INSERT INTO `oc_layout_route` VALUES ('45', '5', '0', 'product/manufacturer');
INSERT INTO `oc_layout_route` VALUES ('52', '12', '0', 'product/compare');
INSERT INTO `oc_layout_route` VALUES ('53', '13', '0', 'product/search');

-- ----------------------------
-- Table structure for `oc_length_class`
-- ----------------------------
DROP TABLE IF EXISTS `oc_length_class`;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_length_class
-- ----------------------------
INSERT INTO `oc_length_class` VALUES ('1', '1.00000000');
INSERT INTO `oc_length_class` VALUES ('2', '10.00000000');
INSERT INTO `oc_length_class` VALUES ('3', '0.39370000');

-- ----------------------------
-- Table structure for `oc_length_class_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_length_class_description`;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_length_class_description
-- ----------------------------
INSERT INTO `oc_length_class_description` VALUES ('1', '1', 'Сантиметр', 'см');
INSERT INTO `oc_length_class_description` VALUES ('2', '1', 'Миллиметр', 'мм');

-- ----------------------------
-- Table structure for `oc_location`
-- ----------------------------
DROP TABLE IF EXISTS `oc_location`;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_location
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_manufacturer`
-- ----------------------------
DROP TABLE IF EXISTS `oc_manufacturer`;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_manufacturer
-- ----------------------------
INSERT INTO `oc_manufacturer` VALUES ('5', 'HTC', 'catalog/demo/htc_logo.jpg', '0');
INSERT INTO `oc_manufacturer` VALUES ('6', 'Palm', 'catalog/demo/palm_logo.jpg', '0');
INSERT INTO `oc_manufacturer` VALUES ('7', 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', '0');
INSERT INTO `oc_manufacturer` VALUES ('8', 'Apple', 'catalog/demo/apple_logo.jpg', '0');
INSERT INTO `oc_manufacturer` VALUES ('9', 'Canon', 'catalog/demo/canon_logo.jpg', '0');
INSERT INTO `oc_manufacturer` VALUES ('10', 'Sony', 'catalog/demo/sony_logo.jpg', '0');

-- ----------------------------
-- Table structure for `oc_manufacturer_to_store`
-- ----------------------------
DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_manufacturer_to_store
-- ----------------------------
INSERT INTO `oc_manufacturer_to_store` VALUES ('5', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('6', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('7', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('8', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('9', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('10', '0');

-- ----------------------------
-- Table structure for `oc_marketing`
-- ----------------------------
DROP TABLE IF EXISTS `oc_marketing`;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_marketing
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_modification`
-- ----------------------------
DROP TABLE IF EXISTS `oc_modification`;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_modification
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_module`
-- ----------------------------
DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_module
-- ----------------------------
INSERT INTO `oc_module` VALUES ('30', 'Category', 'banner', 'a:5:{s:4:\"name\";s:17:\"Banner - Category\";s:9:\"banner_id\";s:1:\"6\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:6:\"status\";s:1:\"1\";}');
INSERT INTO `oc_module` VALUES ('29', 'Home Page', 'carousel', 'a:5:{s:4:\"name\";s:20:\"Carousel - Home Page\";s:9:\"banner_id\";s:1:\"8\";s:5:\"width\";s:3:\"130\";s:6:\"height\";s:3:\"100\";s:6:\"status\";s:1:\"1\";}');
INSERT INTO `oc_module` VALUES ('28', 'Featured - Home Page', 'featured', 'a:6:{s:4:\"name\";s:20:\"Featured - Home Page\";s:7:\"product\";a:4:{i:0;s:2:\"43\";i:1;s:2:\"40\";i:2;s:2:\"42\";i:3;s:2:\"30\";}s:5:\"limit\";s:1:\"3\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:6:\"status\";s:1:\"1\";}');
INSERT INTO `oc_module` VALUES ('27', 'Slideshow - Home Page', 'slideshow', 'a:5:{s:4:\"name\";s:21:\"Slideshow - Home Page\";s:9:\"banner_id\";s:1:\"7\";s:5:\"width\";s:3:\"670\";s:6:\"height\";s:3:\"370\";s:6:\"status\";s:1:\"1\";}');
INSERT INTO `oc_module` VALUES ('31', 'Baner', 'banner', 'a:5:{s:4:\"name\";s:5:\"Baner\";s:9:\"banner_id\";s:1:\"7\";s:5:\"width\";s:3:\"354\";s:6:\"height\";s:3:\"185\";s:6:\"status\";s:1:\"1\";}');
INSERT INTO `oc_module` VALUES ('32', 'Slideshow - Main Page', 'slideshow', 'a:5:{s:4:\"name\";s:21:\"Slideshow - Main Page\";s:9:\"banner_id\";s:1:\"7\";s:5:\"width\";s:3:\"670\";s:6:\"height\";s:3:\"370\";s:6:\"status\";s:1:\"0\";}');
INSERT INTO `oc_module` VALUES ('33', 'Банер на главной1', 'banner', 'a:5:{s:4:\"name\";s:31:\"Банер на главной1\";s:9:\"banner_id\";s:2:\"10\";s:5:\"width\";s:3:\"354\";s:6:\"height\";s:3:\"185\";s:6:\"status\";s:1:\"1\";}');
INSERT INTO `oc_module` VALUES ('34', 'Баннер на главной под слайдшоу', 'banner', 'a:5:{s:4:\"name\";s:56:\"Баннер на главной под слайдшоу\";s:9:\"banner_id\";s:1:\"9\";s:5:\"width\";s:3:\"670\";s:6:\"height\";s:3:\"130\";s:6:\"status\";s:1:\"1\";}');
INSERT INTO `oc_module` VALUES ('35', 'банер на главной справа2', 'banner', 'a:5:{s:4:\"name\";s:44:\"банер на главной справа2\";s:9:\"banner_id\";s:2:\"11\";s:5:\"width\";s:3:\"354\";s:6:\"height\";s:3:\"130\";s:6:\"status\";s:1:\"1\";}');

-- ----------------------------
-- Table structure for `oc_option`
-- ----------------------------
DROP TABLE IF EXISTS `oc_option`;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option
-- ----------------------------
INSERT INTO `oc_option` VALUES ('1', 'radio', '1');
INSERT INTO `oc_option` VALUES ('2', 'checkbox', '2');
INSERT INTO `oc_option` VALUES ('4', 'text', '3');
INSERT INTO `oc_option` VALUES ('5', 'select', '4');
INSERT INTO `oc_option` VALUES ('6', 'textarea', '5');
INSERT INTO `oc_option` VALUES ('7', 'file', '6');
INSERT INTO `oc_option` VALUES ('8', 'date', '7');
INSERT INTO `oc_option` VALUES ('9', 'time', '8');
INSERT INTO `oc_option` VALUES ('10', 'datetime', '9');
INSERT INTO `oc_option` VALUES ('11', 'select', '10');
INSERT INTO `oc_option` VALUES ('12', 'date', '11');

-- ----------------------------
-- Table structure for `oc_option_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_option_description`;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option_description
-- ----------------------------
INSERT INTO `oc_option_description` VALUES ('1', '1', 'Radio');
INSERT INTO `oc_option_description` VALUES ('2', '1', 'Checkbox');
INSERT INTO `oc_option_description` VALUES ('4', '1', 'Text');
INSERT INTO `oc_option_description` VALUES ('6', '1', 'Textarea');
INSERT INTO `oc_option_description` VALUES ('8', '1', 'Date');
INSERT INTO `oc_option_description` VALUES ('7', '1', 'File');
INSERT INTO `oc_option_description` VALUES ('5', '1', 'Select');
INSERT INTO `oc_option_description` VALUES ('9', '1', 'Time');
INSERT INTO `oc_option_description` VALUES ('10', '1', 'Date &amp; Time');
INSERT INTO `oc_option_description` VALUES ('12', '1', 'Delivery Date');
INSERT INTO `oc_option_description` VALUES ('11', '1', 'Size');

-- ----------------------------
-- Table structure for `oc_option_value`
-- ----------------------------
DROP TABLE IF EXISTS `oc_option_value`;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option_value
-- ----------------------------
INSERT INTO `oc_option_value` VALUES ('43', '1', '', '3');
INSERT INTO `oc_option_value` VALUES ('32', '1', '', '1');
INSERT INTO `oc_option_value` VALUES ('45', '2', '', '4');
INSERT INTO `oc_option_value` VALUES ('44', '2', '', '3');
INSERT INTO `oc_option_value` VALUES ('42', '5', '', '4');
INSERT INTO `oc_option_value` VALUES ('41', '5', '', '3');
INSERT INTO `oc_option_value` VALUES ('39', '5', '', '1');
INSERT INTO `oc_option_value` VALUES ('40', '5', '', '2');
INSERT INTO `oc_option_value` VALUES ('31', '1', '', '2');
INSERT INTO `oc_option_value` VALUES ('23', '2', '', '1');
INSERT INTO `oc_option_value` VALUES ('24', '2', '', '2');
INSERT INTO `oc_option_value` VALUES ('46', '11', '', '1');
INSERT INTO `oc_option_value` VALUES ('47', '11', '', '2');
INSERT INTO `oc_option_value` VALUES ('48', '11', '', '3');

-- ----------------------------
-- Table structure for `oc_option_value_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_option_value_description`;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option_value_description
-- ----------------------------
INSERT INTO `oc_option_value_description` VALUES ('43', '1', '1', 'Large');
INSERT INTO `oc_option_value_description` VALUES ('32', '1', '1', 'Small');
INSERT INTO `oc_option_value_description` VALUES ('45', '1', '2', 'Checkbox 4');
INSERT INTO `oc_option_value_description` VALUES ('44', '1', '2', 'Checkbox 3');
INSERT INTO `oc_option_value_description` VALUES ('31', '1', '1', 'Medium');
INSERT INTO `oc_option_value_description` VALUES ('42', '1', '5', 'Yellow');
INSERT INTO `oc_option_value_description` VALUES ('41', '1', '5', 'Green');
INSERT INTO `oc_option_value_description` VALUES ('39', '1', '5', 'Red');
INSERT INTO `oc_option_value_description` VALUES ('40', '1', '5', 'Blue');
INSERT INTO `oc_option_value_description` VALUES ('23', '1', '2', 'Checkbox 1');
INSERT INTO `oc_option_value_description` VALUES ('24', '1', '2', 'Checkbox 2');
INSERT INTO `oc_option_value_description` VALUES ('48', '1', '11', 'Large');
INSERT INTO `oc_option_value_description` VALUES ('47', '1', '11', 'Medium');
INSERT INTO `oc_option_value_description` VALUES ('46', '1', '11', 'Small');

-- ----------------------------
-- Table structure for `oc_order`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order`;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_order_custom_field`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_custom_field`;
CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_custom_field
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_order_fraud`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_fraud`;
CREATE TABLE `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_fraud
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_order_history`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_history`;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_history
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_order_option`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_option`;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_option
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_order_product`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_product`;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_product
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_order_recurring`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_recurring`;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_recurring
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_order_recurring_transaction`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_recurring_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_order_status`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_status`;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_status
-- ----------------------------
INSERT INTO `oc_order_status` VALUES ('1', '1', 'Ожидание');
INSERT INTO `oc_order_status` VALUES ('2', '1', 'В обработке');
INSERT INTO `oc_order_status` VALUES ('3', '1', 'Доставлено');
INSERT INTO `oc_order_status` VALUES ('7', '1', 'Отменено');
INSERT INTO `oc_order_status` VALUES ('5', '1', 'Сделка завершена');
INSERT INTO `oc_order_status` VALUES ('8', '1', 'Возврат');
INSERT INTO `oc_order_status` VALUES ('9', '1', 'Отмена и аннулирование');
INSERT INTO `oc_order_status` VALUES ('10', '1', 'Неудавшийся');
INSERT INTO `oc_order_status` VALUES ('11', '1', 'Возмещенный');
INSERT INTO `oc_order_status` VALUES ('12', '1', 'Полностью измененный');
INSERT INTO `oc_order_status` VALUES ('13', '1', 'Полный возврат');

-- ----------------------------
-- Table structure for `oc_order_total`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_total`;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_total
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_order_voucher`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_voucher`;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_product`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product`;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product
-- ----------------------------
INSERT INTO `oc_product` VALUES ('28', 'Product 1', '', '', '', '', '', '', '', '939', '7', 'catalog/demo/htc_touch_hd_1.jpg', '5', '1', '100.0000', '200', '9', '2009-02-03', '146.40000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '0', '2009-02-03 16:06:50', '2011-09-30 01:05:39');
INSERT INTO `oc_product` VALUES ('29', 'Product 2', '', '', '', '', '', '', '', '999', '6', 'catalog/demo/palm_treo_pro_1.jpg', '6', '1', '279.9900', '0', '9', '2009-02-03', '133.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '3', '1', '1', '0', '1', '0', '2009-02-03 16:42:17', '2011-09-30 01:06:08');
INSERT INTO `oc_product` VALUES ('30', 'Product 3', '', '', '', '', '', '', '', '7', '6', 'catalog/demo/canon_eos_5d_1.jpg', '9', '1', '100.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '0', '2009-02-03 16:59:00', '2011-09-30 01:05:23');
INSERT INTO `oc_product` VALUES ('31', 'Product 4', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/nikon_d300_1.jpg', '0', '1', '80.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '3', '1', '1', '0', '1', '0', '2009-02-03 17:00:10', '2011-09-30 01:06:00');
INSERT INTO `oc_product` VALUES ('32', 'Product 5', '', '', '', '', '', '', '', '999', '6', 'catalog/demo/ipod_touch_1.jpg', '8', '1', '100.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '0', '2009-02-03 17:07:26', '2011-09-30 01:07:22');
INSERT INTO `oc_product` VALUES ('33', 'Product 6', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/samsung_syncmaster_941bw.jpg', '0', '1', '200.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 17:08:31', '2011-09-30 01:06:29');
INSERT INTO `oc_product` VALUES ('34', 'Product 7', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/ipod_shuffle_1.jpg', '8', '1', '100.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 18:07:54', '2011-09-30 01:07:17');
INSERT INTO `oc_product` VALUES ('35', 'Product 8', '', '', '', '', '', '', '', '1000', '5', '', '0', '0', '100.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '0', '2009-02-03 18:08:31', '2011-09-30 01:06:17');
INSERT INTO `oc_product` VALUES ('36', 'Product 9', '', '', '', '', '', '', '', '994', '6', 'catalog/demo/ipod_nano_1.jpg', '8', '0', '100.0000', '100', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 18:09:19', '2011-09-30 01:07:12');
INSERT INTO `oc_product` VALUES ('40', 'product 11', '', '', '', '', '', '', '', '970', '5', 'catalog/demo/iphone_1.jpg', '8', '1', '101.0000', '0', '9', '2009-02-03', '10.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '1', '2009-02-03 21:07:12', '2011-09-30 01:06:53');
INSERT INTO `oc_product` VALUES ('41', 'Product 14', '', '', '', '', '', '', '', '977', '5', 'catalog/demo/imac_1.jpg', '8', '1', '100.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '0', '2009-02-03 21:07:26', '2011-09-30 01:06:44');
INSERT INTO `oc_product` VALUES ('42', 'Product 15', '', '', '', '', '', '', '', '990', '5', 'catalog/demo/apple_cinema_30.jpg', '8', '1', '100.0000', '400', '9', '2009-02-04', '12.50000000', '1', '1.00000000', '2.00000000', '3.00000000', '1', '1', '2', '0', '1', '0', '2009-02-03 21:07:37', '2011-09-30 00:46:19');
INSERT INTO `oc_product` VALUES ('43', 'Product 16', '', '', '', '', '', '', '', '929', '5', 'catalog/demo/macbook_1.jpg', '8', '0', '500.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 21:07:49', '2011-09-30 01:05:46');
INSERT INTO `oc_product` VALUES ('44', 'Product 17', '', '', '', '', '', '', '', '1000', '5', 'catalog/demo/macbook_air_1.jpg', '8', '1', '1000.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 21:08:00', '2011-09-30 01:05:53');
INSERT INTO `oc_product` VALUES ('45', 'Product 18', '', '', '', '', '', '', '', '998', '5', 'catalog/demo/macbook_pro_1.jpg', '8', '1', '2000.0000', '0', '100', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 21:08:17', '2011-09-15 22:22:01');
INSERT INTO `oc_product` VALUES ('46', 'Product 19', '', '', '', '', '', '', '', '1000', '5', 'catalog/demo/sony_vaio_1.jpg', '10', '1', '1000.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 21:08:29', '2011-09-30 01:06:39');
INSERT INTO `oc_product` VALUES ('47', 'Product 21', '', '', '', '', '', '', '', '1000', '5', 'catalog/demo/hp_1.jpg', '7', '1', '100.0000', '400', '9', '2009-02-03', '1.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '0', '1', '0', '1', '0', '2009-02-03 21:08:40', '2011-09-30 01:05:28');
INSERT INTO `oc_product` VALUES ('48', 'product 20', 'test 1', '', '', '', '', '', 'test 2', '995', '5', 'catalog/demo/ipod_classic_1.jpg', '8', '1', '100.0000', '0', '9', '2009-02-08', '1.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-08 17:21:51', '2011-09-30 01:07:06');
INSERT INTO `oc_product` VALUES ('49', 'SAM1', '', '', '', '', '', '', '', '0', '8', 'catalog/demo/samsung_tab_1.jpg', '0', '1', '199.9900', '0', '9', '2011-04-25', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2011-04-26 08:57:34', '2011-09-30 01:06:23');

-- ----------------------------
-- Table structure for `oc_product_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_attribute`;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_attribute
-- ----------------------------
INSERT INTO `oc_product_attribute` VALUES ('43', '2', '1', '1');
INSERT INTO `oc_product_attribute` VALUES ('47', '4', '1', '16GB');
INSERT INTO `oc_product_attribute` VALUES ('43', '4', '1', '8gb');
INSERT INTO `oc_product_attribute` VALUES ('42', '3', '1', '100mhz');
INSERT INTO `oc_product_attribute` VALUES ('47', '2', '1', '4');

-- ----------------------------
-- Table structure for `oc_product_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_description`;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_description
-- ----------------------------
INSERT INTO `oc_product_description` VALUES ('35', '1', 'Product 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('48', '1', 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('40', '1', 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('28', '1', 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('44', '1', 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('45', '1', 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('29', '1', 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('36', '1', 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('46', '1', 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('47', '1', 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('32', '1', 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('41', '1', 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('33', '1', 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('34', '1', 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('43', '1', 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('31', '1', 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('49', '1', 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('42', '1', 'Apple Cinema 30&quot;', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there&amp;#39;s no limit to what you can achieve. &lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it&amp;#39;s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple&amp;#39;s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br /&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170&amp;deg; horizontal; 170&amp;deg; vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br /&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br /&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50&amp;deg; to 95&amp;deg; F (10&amp;deg; to 35&amp;deg; C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40&amp;deg; to 116&amp;deg; F (-40&amp;deg; to 47&amp;deg; C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO &amp;#39;03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br /&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('30', '1', 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', '', '', '');

-- ----------------------------
-- Table structure for `oc_product_discount`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_discount`;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=441 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_discount
-- ----------------------------
INSERT INTO `oc_product_discount` VALUES ('440', '42', '1', '30', '1', '66.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_discount` VALUES ('439', '42', '1', '20', '1', '77.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_discount` VALUES ('438', '42', '1', '10', '1', '88.0000', '0000-00-00', '0000-00-00');

-- ----------------------------
-- Table structure for `oc_product_filter`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_filter`;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_filter
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_product_image`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_image`;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2352 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_image
-- ----------------------------
INSERT INTO `oc_product_image` VALUES ('2345', '30', 'catalog/demo/canon_eos_5d_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2321', '47', 'catalog/demo/hp_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2035', '28', 'catalog/demo/htc_touch_hd_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2351', '41', 'catalog/demo/imac_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1982', '40', 'catalog/demo/iphone_6.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2001', '36', 'catalog/demo/ipod_nano_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2000', '36', 'catalog/demo/ipod_nano_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2005', '34', 'catalog/demo/ipod_shuffle_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2004', '34', 'catalog/demo/ipod_shuffle_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2011', '32', 'catalog/demo/ipod_touch_7.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2010', '32', 'catalog/demo/ipod_touch_6.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2009', '32', 'catalog/demo/ipod_touch_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1971', '43', 'catalog/demo/macbook_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1970', '43', 'catalog/demo/macbook_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1974', '44', 'catalog/demo/macbook_air_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1973', '44', 'catalog/demo/macbook_air_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1977', '45', 'catalog/demo/macbook_pro_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1976', '45', 'catalog/demo/macbook_pro_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1986', '31', 'catalog/demo/nikon_d300_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1985', '31', 'catalog/demo/nikon_d300_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1988', '29', 'catalog/demo/palm_treo_pro_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1995', '46', 'catalog/demo/sony_vaio_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1994', '46', 'catalog/demo/sony_vaio_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1991', '48', 'catalog/demo/ipod_classic_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1990', '48', 'catalog/demo/ipod_classic_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1981', '40', 'catalog/demo/iphone_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1980', '40', 'catalog/demo/iphone_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2344', '30', 'catalog/demo/canon_eos_5d_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2320', '47', 'catalog/demo/hp_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2034', '28', 'catalog/demo/htc_touch_hd_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2350', '41', 'catalog/demo/imac_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1979', '40', 'catalog/demo/iphone_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1978', '40', 'catalog/demo/iphone_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1989', '48', 'catalog/demo/ipod_classic_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1999', '36', 'catalog/demo/ipod_nano_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1998', '36', 'catalog/demo/ipod_nano_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2003', '34', 'catalog/demo/ipod_shuffle_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2002', '34', 'catalog/demo/ipod_shuffle_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2008', '32', 'catalog/demo/ipod_touch_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2007', '32', 'catalog/demo/ipod_touch_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2006', '32', 'catalog/demo/ipod_touch_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1969', '43', 'catalog/demo/macbook_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1968', '43', 'catalog/demo/macbook_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1972', '44', 'catalog/demo/macbook_air_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1975', '45', 'catalog/demo/macbook_pro_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1984', '31', 'catalog/demo/nikon_d300_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1983', '31', 'catalog/demo/nikon_d300_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1987', '29', 'catalog/demo/palm_treo_pro_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1993', '46', 'catalog/demo/sony_vaio_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1992', '46', 'catalog/demo/sony_vaio_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2327', '49', 'catalog/demo/samsung_tab_7.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2326', '49', 'catalog/demo/samsung_tab_6.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2325', '49', 'catalog/demo/samsung_tab_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2324', '49', 'catalog/demo/samsung_tab_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2323', '49', 'catalog/demo/samsung_tab_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2322', '49', 'catalog/demo/samsung_tab_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2317', '42', 'catalog/demo/canon_logo.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2316', '42', 'catalog/demo/hp_1.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2315', '42', 'catalog/demo/compaq_presario.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2314', '42', 'catalog/demo/canon_eos_5d_1.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2313', '42', 'catalog/demo/canon_eos_5d_2.jpg', '0');

-- ----------------------------
-- Table structure for `oc_product_option`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_option`;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_option
-- ----------------------------
INSERT INTO `oc_product_option` VALUES ('224', '35', '11', '', '1');
INSERT INTO `oc_product_option` VALUES ('225', '47', '12', '2011-04-22', '1');
INSERT INTO `oc_product_option` VALUES ('223', '42', '2', '', '1');
INSERT INTO `oc_product_option` VALUES ('217', '42', '5', '', '1');
INSERT INTO `oc_product_option` VALUES ('209', '42', '6', '', '1');
INSERT INTO `oc_product_option` VALUES ('218', '42', '1', '', '1');
INSERT INTO `oc_product_option` VALUES ('208', '42', '4', 'test', '1');
INSERT INTO `oc_product_option` VALUES ('219', '42', '8', '2011-02-20', '1');
INSERT INTO `oc_product_option` VALUES ('222', '42', '7', '', '1');
INSERT INTO `oc_product_option` VALUES ('221', '42', '9', '22:25', '1');
INSERT INTO `oc_product_option` VALUES ('220', '42', '10', '2011-02-20 22:25', '1');
INSERT INTO `oc_product_option` VALUES ('226', '30', '5', '', '1');

-- ----------------------------
-- Table structure for `oc_product_option_value`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_option_value`;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_option_value
-- ----------------------------
INSERT INTO `oc_product_option_value` VALUES ('1', '217', '42', '5', '41', '100', '0', '1.0000', '+', '0', '+', '1.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('6', '218', '42', '1', '31', '146', '1', '20.0000', '+', '2', '-', '20.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('7', '218', '42', '1', '43', '300', '1', '30.0000', '+', '3', '+', '30.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('5', '218', '42', '1', '32', '96', '1', '10.0000', '+', '1', '+', '10.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('4', '217', '42', '5', '39', '92', '1', '4.0000', '+', '0', '+', '4.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('2', '217', '42', '5', '42', '200', '1', '2.0000', '+', '0', '+', '2.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('3', '217', '42', '5', '40', '300', '0', '3.0000', '+', '0', '+', '3.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('8', '223', '42', '2', '23', '48', '1', '10.0000', '+', '0', '+', '10.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('10', '223', '42', '2', '44', '2696', '1', '30.0000', '+', '0', '+', '30.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('9', '223', '42', '2', '24', '194', '1', '20.0000', '+', '0', '+', '20.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('11', '223', '42', '2', '45', '3998', '1', '40.0000', '+', '0', '+', '40.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('12', '224', '35', '11', '46', '0', '1', '5.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('13', '224', '35', '11', '47', '10', '1', '10.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('14', '224', '35', '11', '48', '15', '1', '15.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('16', '226', '30', '5', '40', '5', '1', '0.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('15', '226', '30', '5', '39', '2', '1', '0.0000', '+', '0', '+', '0.00000000', '+');

-- ----------------------------
-- Table structure for `oc_product_recurring`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_recurring`;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_recurring
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_product_related`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_related`;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_related
-- ----------------------------
INSERT INTO `oc_product_related` VALUES ('40', '42');
INSERT INTO `oc_product_related` VALUES ('41', '42');
INSERT INTO `oc_product_related` VALUES ('42', '40');
INSERT INTO `oc_product_related` VALUES ('42', '41');

-- ----------------------------
-- Table structure for `oc_product_reward`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_reward`;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_reward
-- ----------------------------
INSERT INTO `oc_product_reward` VALUES ('515', '42', '1', '100');
INSERT INTO `oc_product_reward` VALUES ('519', '47', '1', '300');
INSERT INTO `oc_product_reward` VALUES ('379', '28', '1', '400');
INSERT INTO `oc_product_reward` VALUES ('329', '43', '1', '600');
INSERT INTO `oc_product_reward` VALUES ('339', '29', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('343', '48', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('335', '40', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('539', '30', '1', '200');
INSERT INTO `oc_product_reward` VALUES ('331', '44', '1', '700');
INSERT INTO `oc_product_reward` VALUES ('333', '45', '1', '800');
INSERT INTO `oc_product_reward` VALUES ('337', '31', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('425', '35', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('345', '33', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('347', '46', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('545', '41', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('351', '36', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('353', '34', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('355', '32', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('521', '49', '1', '1000');

-- ----------------------------
-- Table structure for `oc_product_special`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_special`;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=440 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_special
-- ----------------------------
INSERT INTO `oc_product_special` VALUES ('419', '42', '1', '1', '90.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_special` VALUES ('439', '30', '1', '2', '90.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_special` VALUES ('438', '30', '1', '1', '80.0000', '0000-00-00', '0000-00-00');

-- ----------------------------
-- Table structure for `oc_product_to_category`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_category`;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_category
-- ----------------------------
INSERT INTO `oc_product_to_category` VALUES ('28', '20');
INSERT INTO `oc_product_to_category` VALUES ('28', '24');
INSERT INTO `oc_product_to_category` VALUES ('29', '20');
INSERT INTO `oc_product_to_category` VALUES ('29', '24');
INSERT INTO `oc_product_to_category` VALUES ('30', '20');
INSERT INTO `oc_product_to_category` VALUES ('30', '33');
INSERT INTO `oc_product_to_category` VALUES ('31', '33');
INSERT INTO `oc_product_to_category` VALUES ('32', '34');
INSERT INTO `oc_product_to_category` VALUES ('33', '20');
INSERT INTO `oc_product_to_category` VALUES ('33', '28');
INSERT INTO `oc_product_to_category` VALUES ('34', '34');
INSERT INTO `oc_product_to_category` VALUES ('35', '20');
INSERT INTO `oc_product_to_category` VALUES ('36', '34');
INSERT INTO `oc_product_to_category` VALUES ('40', '20');
INSERT INTO `oc_product_to_category` VALUES ('40', '24');
INSERT INTO `oc_product_to_category` VALUES ('41', '27');
INSERT INTO `oc_product_to_category` VALUES ('42', '20');
INSERT INTO `oc_product_to_category` VALUES ('42', '28');
INSERT INTO `oc_product_to_category` VALUES ('43', '18');
INSERT INTO `oc_product_to_category` VALUES ('43', '20');
INSERT INTO `oc_product_to_category` VALUES ('44', '18');
INSERT INTO `oc_product_to_category` VALUES ('44', '20');
INSERT INTO `oc_product_to_category` VALUES ('45', '18');
INSERT INTO `oc_product_to_category` VALUES ('46', '18');
INSERT INTO `oc_product_to_category` VALUES ('46', '20');
INSERT INTO `oc_product_to_category` VALUES ('47', '18');
INSERT INTO `oc_product_to_category` VALUES ('47', '20');
INSERT INTO `oc_product_to_category` VALUES ('48', '20');
INSERT INTO `oc_product_to_category` VALUES ('48', '34');
INSERT INTO `oc_product_to_category` VALUES ('49', '57');

-- ----------------------------
-- Table structure for `oc_product_to_download`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_download`;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_download
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_product_to_layout`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_layout`;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_layout
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_product_to_store`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_store`;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_store
-- ----------------------------
INSERT INTO `oc_product_to_store` VALUES ('28', '0');
INSERT INTO `oc_product_to_store` VALUES ('29', '0');
INSERT INTO `oc_product_to_store` VALUES ('30', '0');
INSERT INTO `oc_product_to_store` VALUES ('31', '0');
INSERT INTO `oc_product_to_store` VALUES ('32', '0');
INSERT INTO `oc_product_to_store` VALUES ('33', '0');
INSERT INTO `oc_product_to_store` VALUES ('34', '0');
INSERT INTO `oc_product_to_store` VALUES ('35', '0');
INSERT INTO `oc_product_to_store` VALUES ('36', '0');
INSERT INTO `oc_product_to_store` VALUES ('40', '0');
INSERT INTO `oc_product_to_store` VALUES ('41', '0');
INSERT INTO `oc_product_to_store` VALUES ('42', '0');
INSERT INTO `oc_product_to_store` VALUES ('43', '0');
INSERT INTO `oc_product_to_store` VALUES ('44', '0');
INSERT INTO `oc_product_to_store` VALUES ('45', '0');
INSERT INTO `oc_product_to_store` VALUES ('46', '0');
INSERT INTO `oc_product_to_store` VALUES ('47', '0');
INSERT INTO `oc_product_to_store` VALUES ('48', '0');
INSERT INTO `oc_product_to_store` VALUES ('49', '0');

-- ----------------------------
-- Table structure for `oc_recurring`
-- ----------------------------
DROP TABLE IF EXISTS `oc_recurring`;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_recurring
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_recurring_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_recurring_description`;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_recurring_description
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_return`
-- ----------------------------
DROP TABLE IF EXISTS `oc_return`;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_return_action`
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_action`;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_action
-- ----------------------------
INSERT INTO `oc_return_action` VALUES ('1', '1', 'Возвращены средства');
INSERT INTO `oc_return_action` VALUES ('2', '1', 'Выдан в кредит');
INSERT INTO `oc_return_action` VALUES ('3', '1', 'Отправлен другой товар для замены');

-- ----------------------------
-- Table structure for `oc_return_history`
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_history`;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_history
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_return_reason`
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_reason`;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_reason
-- ----------------------------
INSERT INTO `oc_return_reason` VALUES ('1', '1', 'Получен/доставлен неисправным (сломан)');
INSERT INTO `oc_return_reason` VALUES ('2', '1', 'Получен не тот (ошибочный) товар');
INSERT INTO `oc_return_reason` VALUES ('4', '1', 'Ошибка, пожалуйста укажите/приложите подробности');
INSERT INTO `oc_return_reason` VALUES ('5', '1', 'Другое (другая причина), пожалуйста укажите/приложите подробности');

-- ----------------------------
-- Table structure for `oc_return_status`
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_status`;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_status
-- ----------------------------
INSERT INTO `oc_return_status` VALUES ('1', '1', 'Рассматриваемый ');
INSERT INTO `oc_return_status` VALUES ('3', '1', 'Готов (к отправке) ');
INSERT INTO `oc_return_status` VALUES ('2', '1', 'Заказ в ожидании ');

-- ----------------------------
-- Table structure for `oc_review`
-- ----------------------------
DROP TABLE IF EXISTS `oc_review`;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_review
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_setting`
-- ----------------------------
DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=404 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_setting
-- ----------------------------
INSERT INTO `oc_setting` VALUES ('1', '0', 'shipping', 'shipping_sort_order', '3', '0');
INSERT INTO `oc_setting` VALUES ('2', '0', 'sub_total', 'sub_total_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('3', '0', 'sub_total', 'sub_total_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('5', '0', 'total', 'total_sort_order', '9', '0');
INSERT INTO `oc_setting` VALUES ('6', '0', 'total', 'total_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('8', '0', 'free_checkout', 'free_checkout_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('9', '0', 'cod', 'cod_sort_order', '5', '0');
INSERT INTO `oc_setting` VALUES ('10', '0', 'cod', 'cod_total', '0.01', '0');
INSERT INTO `oc_setting` VALUES ('11', '0', 'cod', 'cod_order_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('12', '0', 'cod', 'cod_geo_zone_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('13', '0', 'cod', 'cod_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('14', '0', 'shipping', 'shipping_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('15', '0', 'shipping', 'shipping_estimator', '1', '0');
INSERT INTO `oc_setting` VALUES ('27', '0', 'coupon', 'coupon_sort_order', '4', '0');
INSERT INTO `oc_setting` VALUES ('28', '0', 'coupon', 'coupon_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('34', '0', 'flat', 'flat_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('35', '0', 'flat', 'flat_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('36', '0', 'flat', 'flat_geo_zone_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('37', '0', 'flat', 'flat_tax_class_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('41', '0', 'flat', 'flat_cost', '5.00', '0');
INSERT INTO `oc_setting` VALUES ('42', '0', 'credit', 'credit_sort_order', '7', '0');
INSERT INTO `oc_setting` VALUES ('43', '0', 'credit', 'credit_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('53', '0', 'reward', 'reward_sort_order', '2', '0');
INSERT INTO `oc_setting` VALUES ('54', '0', 'reward', 'reward_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('146', '0', 'category', 'category_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('158', '0', 'account', 'account_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('159', '0', 'affiliate', 'affiliate_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('376', '0', 'config', 'config_mail_smtp_username', '', '0');
INSERT INTO `oc_setting` VALUES ('377', '0', 'config', 'config_mail_smtp_password', '', '0');
INSERT INTO `oc_setting` VALUES ('378', '0', 'config', 'config_mail_smtp_port', '25', '0');
INSERT INTO `oc_setting` VALUES ('379', '0', 'config', 'config_mail_smtp_timeout', '5', '0');
INSERT INTO `oc_setting` VALUES ('380', '0', 'config', 'config_mail_alert', '', '0');
INSERT INTO `oc_setting` VALUES ('381', '0', 'config', 'config_fraud_detection', '0', '0');
INSERT INTO `oc_setting` VALUES ('382', '0', 'config', 'config_fraud_key', '', '0');
INSERT INTO `oc_setting` VALUES ('383', '0', 'config', 'config_fraud_score', '', '0');
INSERT INTO `oc_setting` VALUES ('384', '0', 'config', 'config_fraud_status_id', '7', '0');
INSERT INTO `oc_setting` VALUES ('385', '0', 'config', 'config_secure', '0', '0');
INSERT INTO `oc_setting` VALUES ('386', '0', 'config', 'config_shared', '0', '0');
INSERT INTO `oc_setting` VALUES ('387', '0', 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', '0');
INSERT INTO `oc_setting` VALUES ('375', '0', 'config', 'config_mail_smtp_hostname', '', '0');
INSERT INTO `oc_setting` VALUES ('374', '0', 'config', 'config_mail_parameter', '', '0');
INSERT INTO `oc_setting` VALUES ('373', '0', 'config', 'config_mail_protocol', 'mail', '0');
INSERT INTO `oc_setting` VALUES ('94', '0', 'voucher', 'voucher_sort_order', '8', '0');
INSERT INTO `oc_setting` VALUES ('95', '0', 'voucher', 'voucher_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('372', '0', 'config', 'config_ftp_status', '0', '0');
INSERT INTO `oc_setting` VALUES ('371', '0', 'config', 'config_ftp_root', '', '0');
INSERT INTO `oc_setting` VALUES ('103', '0', 'free_checkout', 'free_checkout_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('104', '0', 'free_checkout', 'free_checkout_order_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('367', '0', 'config', 'config_ftp_hostname', 'opencart-rus.my', '0');
INSERT INTO `oc_setting` VALUES ('368', '0', 'config', 'config_ftp_port', '21', '0');
INSERT INTO `oc_setting` VALUES ('369', '0', 'config', 'config_ftp_username', '', '0');
INSERT INTO `oc_setting` VALUES ('370', '0', 'config', 'config_ftp_password', '', '0');
INSERT INTO `oc_setting` VALUES ('366', '0', 'config', 'config_image_location_height', '50', '0');
INSERT INTO `oc_setting` VALUES ('365', '0', 'config', 'config_image_location_width', '268', '0');
INSERT INTO `oc_setting` VALUES ('364', '0', 'config', 'config_image_cart_height', '47', '0');
INSERT INTO `oc_setting` VALUES ('363', '0', 'config', 'config_image_cart_width', '47', '0');
INSERT INTO `oc_setting` VALUES ('362', '0', 'config', 'config_image_wishlist_height', '47', '0');
INSERT INTO `oc_setting` VALUES ('361', '0', 'config', 'config_image_wishlist_width', '47', '0');
INSERT INTO `oc_setting` VALUES ('360', '0', 'config', 'config_image_compare_height', '90', '0');
INSERT INTO `oc_setting` VALUES ('358', '0', 'config', 'config_image_related_height', '80', '0');
INSERT INTO `oc_setting` VALUES ('359', '0', 'config', 'config_image_compare_width', '90', '0');
INSERT INTO `oc_setting` VALUES ('357', '0', 'config', 'config_image_related_width', '80', '0');
INSERT INTO `oc_setting` VALUES ('356', '0', 'config', 'config_image_additional_height', '74', '0');
INSERT INTO `oc_setting` VALUES ('355', '0', 'config', 'config_image_additional_width', '74', '0');
INSERT INTO `oc_setting` VALUES ('354', '0', 'config', 'config_image_product_height', '228', '0');
INSERT INTO `oc_setting` VALUES ('353', '0', 'config', 'config_image_product_width', '228', '0');
INSERT INTO `oc_setting` VALUES ('352', '0', 'config', 'config_image_popup_height', '500', '0');
INSERT INTO `oc_setting` VALUES ('351', '0', 'config', 'config_image_popup_width', '500', '0');
INSERT INTO `oc_setting` VALUES ('350', '0', 'config', 'config_image_thumb_height', '228', '0');
INSERT INTO `oc_setting` VALUES ('349', '0', 'config', 'config_image_thumb_width', '228', '0');
INSERT INTO `oc_setting` VALUES ('348', '0', 'config', 'config_image_category_height', '80', '0');
INSERT INTO `oc_setting` VALUES ('347', '0', 'config', 'config_image_category_width', '80', '0');
INSERT INTO `oc_setting` VALUES ('346', '0', 'config', 'config_icon', 'catalog/cart.png', '0');
INSERT INTO `oc_setting` VALUES ('345', '0', 'config', 'config_logo', 'catalog/logo.png', '0');
INSERT INTO `oc_setting` VALUES ('344', '0', 'config', 'config_return_status_id', '2', '0');
INSERT INTO `oc_setting` VALUES ('343', '0', 'config', 'config_return_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('342', '0', 'config', 'config_affiliate_mail', '0', '0');
INSERT INTO `oc_setting` VALUES ('341', '0', 'config', 'config_affiliate_id', '4', '0');
INSERT INTO `oc_setting` VALUES ('340', '0', 'config', 'config_affiliate_commission', '5', '0');
INSERT INTO `oc_setting` VALUES ('339', '0', 'config', 'config_affiliate_auto', '0', '0');
INSERT INTO `oc_setting` VALUES ('338', '0', 'config', 'config_affiliate_approval', '0', '0');
INSERT INTO `oc_setting` VALUES ('337', '0', 'config', 'config_stock_checkout', '0', '0');
INSERT INTO `oc_setting` VALUES ('336', '0', 'config', 'config_stock_warning', '0', '0');
INSERT INTO `oc_setting` VALUES ('335', '0', 'config', 'config_stock_display', '0', '0');
INSERT INTO `oc_setting` VALUES ('334', '0', 'config', 'config_order_mail', '1', '0');
INSERT INTO `oc_setting` VALUES ('333', '0', 'config', 'config_complete_status', 'a:1:{i:0;s:1:\"5\";}', '1');
INSERT INTO `oc_setting` VALUES ('332', '0', 'config', 'config_processing_status', 'a:1:{i:0;s:1:\"2\";}', '1');
INSERT INTO `oc_setting` VALUES ('331', '0', 'config', 'config_order_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('330', '0', 'config', 'config_checkout_id', '5', '0');
INSERT INTO `oc_setting` VALUES ('329', '0', 'config', 'config_checkout_guest', '1', '0');
INSERT INTO `oc_setting` VALUES ('328', '0', 'config', 'config_cart_weight', '1', '0');
INSERT INTO `oc_setting` VALUES ('327', '0', 'config', 'config_api_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('326', '0', 'config', 'config_invoice_prefix', 'INV-2015-00', '0');
INSERT INTO `oc_setting` VALUES ('325', '0', 'config', 'config_account_mail', '0', '0');
INSERT INTO `oc_setting` VALUES ('324', '0', 'config', 'config_account_id', '3', '0');
INSERT INTO `oc_setting` VALUES ('323', '0', 'config', 'config_login_attempts', '5', '0');
INSERT INTO `oc_setting` VALUES ('322', '0', 'config', 'config_customer_price', '0', '0');
INSERT INTO `oc_setting` VALUES ('321', '0', 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:\"1\";}', '1');
INSERT INTO `oc_setting` VALUES ('320', '0', 'config', 'config_customer_group_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('319', '0', 'config', 'config_customer_online', '0', '0');
INSERT INTO `oc_setting` VALUES ('318', '0', 'config', 'config_tax_customer', 'shipping', '0');
INSERT INTO `oc_setting` VALUES ('317', '0', 'config', 'config_tax_default', 'shipping', '0');
INSERT INTO `oc_setting` VALUES ('316', '0', 'config', 'config_tax', '0', '0');
INSERT INTO `oc_setting` VALUES ('315', '0', 'config', 'config_voucher_max', '1000', '0');
INSERT INTO `oc_setting` VALUES ('314', '0', 'config', 'config_voucher_min', '1', '0');
INSERT INTO `oc_setting` VALUES ('313', '0', 'config', 'config_review_mail', '0', '0');
INSERT INTO `oc_setting` VALUES ('312', '0', 'config', 'config_review_guest', '1', '0');
INSERT INTO `oc_setting` VALUES ('311', '0', 'config', 'config_review_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('310', '0', 'config', 'config_limit_admin', '20', '0');
INSERT INTO `oc_setting` VALUES ('309', '0', 'config', 'config_product_description_length', '100', '0');
INSERT INTO `oc_setting` VALUES ('308', '0', 'config', 'config_product_limit', '15', '0');
INSERT INTO `oc_setting` VALUES ('307', '0', 'config', 'config_product_count', '1', '0');
INSERT INTO `oc_setting` VALUES ('306', '0', 'config', 'config_weight_class_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('305', '0', 'config', 'config_length_class_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('304', '0', 'config', 'config_currency_auto', '1', '0');
INSERT INTO `oc_setting` VALUES ('302', '0', 'config', 'config_admin_language', 'ru', '0');
INSERT INTO `oc_setting` VALUES ('303', '0', 'config', 'config_currency', 'RUB', '0');
INSERT INTO `oc_setting` VALUES ('301', '0', 'config', 'config_language', 'ru', '0');
INSERT INTO `oc_setting` VALUES ('300', '0', 'config', 'config_zone_id', '', '0');
INSERT INTO `oc_setting` VALUES ('297', '0', 'config', 'config_template', 'themesly', '0');
INSERT INTO `oc_setting` VALUES ('298', '0', 'config', 'config_layout_id', '4', '0');
INSERT INTO `oc_setting` VALUES ('299', '0', 'config', 'config_country_id', '176', '0');
INSERT INTO `oc_setting` VALUES ('289', '0', 'config', 'config_telephone', '495 999-99-99', '0');
INSERT INTO `oc_setting` VALUES ('290', '0', 'config', 'config_fax', '495 888-88-88', '0');
INSERT INTO `oc_setting` VALUES ('291', '0', 'config', 'config_image', '', '0');
INSERT INTO `oc_setting` VALUES ('292', '0', 'config', 'config_open', '', '0');
INSERT INTO `oc_setting` VALUES ('293', '0', 'config', 'config_comment', '', '0');
INSERT INTO `oc_setting` VALUES ('294', '0', 'config', 'config_meta_title', 'Интернет магазин Opencart &quot;Русская сборка&quot;', '0');
INSERT INTO `oc_setting` VALUES ('295', '0', 'config', 'config_meta_description', 'Мой магазин', '0');
INSERT INTO `oc_setting` VALUES ('296', '0', 'config', 'config_meta_keyword', '', '0');
INSERT INTO `oc_setting` VALUES ('288', '0', 'config', 'config_email', 'sashsem@mail.ru', '0');
INSERT INTO `oc_setting` VALUES ('287', '0', 'config', 'config_geocode', '', '0');
INSERT INTO `oc_setting` VALUES ('286', '0', 'config', 'config_address', 'г. Москва, ул. Ленина 10 оф. 32', '0');
INSERT INTO `oc_setting` VALUES ('285', '0', 'config', 'config_owner', 'Иванов Иван', '0');
INSERT INTO `oc_setting` VALUES ('284', '0', 'config', 'config_name', 'Интернет магазин Opencart &quot;Русская сборка&quot;', '0');
INSERT INTO `oc_setting` VALUES ('388', '0', 'config', 'config_seo_url', '0', '0');
INSERT INTO `oc_setting` VALUES ('389', '0', 'config', 'config_file_max_size', '300000', '0');
INSERT INTO `oc_setting` VALUES ('390', '0', 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', '0');
INSERT INTO `oc_setting` VALUES ('391', '0', 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', '0');
INSERT INTO `oc_setting` VALUES ('392', '0', 'config', 'config_maintenance', '0', '0');
INSERT INTO `oc_setting` VALUES ('393', '0', 'config', 'config_password', '1', '0');
INSERT INTO `oc_setting` VALUES ('394', '0', 'config', 'config_encryption', '45f08b35fb15aa992ef05fbfb3f597c0', '0');
INSERT INTO `oc_setting` VALUES ('395', '0', 'config', 'config_compression', '0', '0');
INSERT INTO `oc_setting` VALUES ('396', '0', 'config', 'config_error_display', '1', '0');
INSERT INTO `oc_setting` VALUES ('397', '0', 'config', 'config_error_log', '1', '0');
INSERT INTO `oc_setting` VALUES ('398', '0', 'config', 'config_error_filename', 'error.log', '0');
INSERT INTO `oc_setting` VALUES ('399', '0', 'config', 'config_google_analytics', '', '0');
INSERT INTO `oc_setting` VALUES ('400', '0', 'config', 'config_google_analytics_status', '0', '0');
INSERT INTO `oc_setting` VALUES ('401', '0', 'config', 'config_google_captcha_public', '', '0');
INSERT INTO `oc_setting` VALUES ('402', '0', 'config', 'config_google_captcha_secret', '', '0');
INSERT INTO `oc_setting` VALUES ('403', '0', 'config', 'config_google_captcha_status', '0', '0');

-- ----------------------------
-- Table structure for `oc_stock_status`
-- ----------------------------
DROP TABLE IF EXISTS `oc_stock_status`;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_stock_status
-- ----------------------------
INSERT INTO `oc_stock_status` VALUES ('7', '1', 'В наличии');
INSERT INTO `oc_stock_status` VALUES ('8', '1', 'Предзаказ');
INSERT INTO `oc_stock_status` VALUES ('5', '1', 'Нет в наличии');
INSERT INTO `oc_stock_status` VALUES ('6', '1', 'Ожидание 2-3 дня');

-- ----------------------------
-- Table structure for `oc_store`
-- ----------------------------
DROP TABLE IF EXISTS `oc_store`;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_store
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_tax_class`
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_class`;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_class
-- ----------------------------
INSERT INTO `oc_tax_class` VALUES ('9', 'Налоги', 'Облагаемые налогом', '2014-06-06 23:00:00', '2014-09-09 11:50:31');

-- ----------------------------
-- Table structure for `oc_tax_rate`
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_rate`;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_rate
-- ----------------------------
INSERT INTO `oc_tax_rate` VALUES ('87', '3', 'НДС', '18.0000', 'F', '2011-09-21 21:49:23', '2014-09-09 11:49:32');

-- ----------------------------
-- Table structure for `oc_tax_rate_to_customer_group`
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_rate_to_customer_group
-- ----------------------------
INSERT INTO `oc_tax_rate_to_customer_group` VALUES ('86', '1');
INSERT INTO `oc_tax_rate_to_customer_group` VALUES ('87', '1');

-- ----------------------------
-- Table structure for `oc_tax_rule`
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_rule`;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_rule
-- ----------------------------
INSERT INTO `oc_tax_rule` VALUES ('121', '10', '86', 'payment', '1');
INSERT INTO `oc_tax_rule` VALUES ('120', '10', '87', 'store', '0');
INSERT INTO `oc_tax_rule` VALUES ('127', '9', '87', 'shipping', '2');

-- ----------------------------
-- Table structure for `oc_upload`
-- ----------------------------
DROP TABLE IF EXISTS `oc_upload`;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_upload
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_url_alias`
-- ----------------------------
DROP TABLE IF EXISTS `oc_url_alias`;
CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=874 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_url_alias
-- ----------------------------
INSERT INTO `oc_url_alias` VALUES ('824', 'product_id=48', 'ipod-classic');
INSERT INTO `oc_url_alias` VALUES ('836', 'category_id=20', 'desktops');
INSERT INTO `oc_url_alias` VALUES ('834', 'category_id=26', 'pc');
INSERT INTO `oc_url_alias` VALUES ('835', 'category_id=27', 'mac');
INSERT INTO `oc_url_alias` VALUES ('730', 'manufacturer_id=8', 'apple');
INSERT INTO `oc_url_alias` VALUES ('772', 'information_id=4', 'about_us');
INSERT INTO `oc_url_alias` VALUES ('768', 'product_id=42', 'test');
INSERT INTO `oc_url_alias` VALUES ('789', 'category_id=34', 'mp3-players');
INSERT INTO `oc_url_alias` VALUES ('781', 'category_id=36', 'test2');
INSERT INTO `oc_url_alias` VALUES ('774', 'category_id=18', 'laptop-notebook');
INSERT INTO `oc_url_alias` VALUES ('775', 'category_id=46', 'macs');
INSERT INTO `oc_url_alias` VALUES ('776', 'category_id=45', 'windows');
INSERT INTO `oc_url_alias` VALUES ('777', 'category_id=25', 'component');
INSERT INTO `oc_url_alias` VALUES ('778', 'category_id=29', 'mouse');
INSERT INTO `oc_url_alias` VALUES ('779', 'category_id=28', 'monitor');
INSERT INTO `oc_url_alias` VALUES ('780', 'category_id=35', 'test1');
INSERT INTO `oc_url_alias` VALUES ('782', 'category_id=30', 'printer');
INSERT INTO `oc_url_alias` VALUES ('783', 'category_id=31', 'scanner');
INSERT INTO `oc_url_alias` VALUES ('784', 'category_id=32', 'web-camera');
INSERT INTO `oc_url_alias` VALUES ('785', 'category_id=57', 'tablet');
INSERT INTO `oc_url_alias` VALUES ('786', 'category_id=17', 'software');
INSERT INTO `oc_url_alias` VALUES ('787', 'category_id=24', 'smartphone');
INSERT INTO `oc_url_alias` VALUES ('788', 'category_id=33', 'camera');
INSERT INTO `oc_url_alias` VALUES ('790', 'category_id=43', 'test11');
INSERT INTO `oc_url_alias` VALUES ('791', 'category_id=44', 'test12');
INSERT INTO `oc_url_alias` VALUES ('792', 'category_id=47', 'test15');
INSERT INTO `oc_url_alias` VALUES ('793', 'category_id=48', 'test16');
INSERT INTO `oc_url_alias` VALUES ('794', 'category_id=49', 'test17');
INSERT INTO `oc_url_alias` VALUES ('795', 'category_id=50', 'test18');
INSERT INTO `oc_url_alias` VALUES ('796', 'category_id=51', 'test19');
INSERT INTO `oc_url_alias` VALUES ('797', 'category_id=52', 'test20');
INSERT INTO `oc_url_alias` VALUES ('798', 'category_id=58', 'test25');
INSERT INTO `oc_url_alias` VALUES ('799', 'category_id=53', 'test21');
INSERT INTO `oc_url_alias` VALUES ('800', 'category_id=54', 'test22');
INSERT INTO `oc_url_alias` VALUES ('801', 'category_id=55', 'test23');
INSERT INTO `oc_url_alias` VALUES ('802', 'category_id=56', 'test24');
INSERT INTO `oc_url_alias` VALUES ('803', 'category_id=38', 'test4');
INSERT INTO `oc_url_alias` VALUES ('804', 'category_id=37', 'test5');
INSERT INTO `oc_url_alias` VALUES ('805', 'category_id=39', 'test6');
INSERT INTO `oc_url_alias` VALUES ('806', 'category_id=40', 'test7');
INSERT INTO `oc_url_alias` VALUES ('807', 'category_id=41', 'test8');
INSERT INTO `oc_url_alias` VALUES ('808', 'category_id=42', 'test9');
INSERT INTO `oc_url_alias` VALUES ('809', 'product_id=30', 'canon-eos-5d');
INSERT INTO `oc_url_alias` VALUES ('840', 'product_id=47', 'hp-lp3065');
INSERT INTO `oc_url_alias` VALUES ('811', 'product_id=28', 'htc-touch-hd');
INSERT INTO `oc_url_alias` VALUES ('812', 'product_id=43', 'macbook');
INSERT INTO `oc_url_alias` VALUES ('813', 'product_id=44', 'macbook-air');
INSERT INTO `oc_url_alias` VALUES ('814', 'product_id=45', 'macbook-pro');
INSERT INTO `oc_url_alias` VALUES ('816', 'product_id=31', 'nikon-d300');
INSERT INTO `oc_url_alias` VALUES ('817', 'product_id=29', 'palm-treo-pro');
INSERT INTO `oc_url_alias` VALUES ('818', 'product_id=35', 'product-8');
INSERT INTO `oc_url_alias` VALUES ('819', 'product_id=49', 'samsung-galaxy-tab-10-1');
INSERT INTO `oc_url_alias` VALUES ('820', 'product_id=33', 'samsung-syncmaster-941bw');
INSERT INTO `oc_url_alias` VALUES ('821', 'product_id=46', 'sony-vaio');
INSERT INTO `oc_url_alias` VALUES ('837', 'product_id=41', 'imac');
INSERT INTO `oc_url_alias` VALUES ('823', 'product_id=40', 'iphone');
INSERT INTO `oc_url_alias` VALUES ('825', 'product_id=36', 'ipod-nano');
INSERT INTO `oc_url_alias` VALUES ('826', 'product_id=34', 'ipod-shuffle');
INSERT INTO `oc_url_alias` VALUES ('827', 'product_id=32', 'ipod-touch');
INSERT INTO `oc_url_alias` VALUES ('828', 'manufacturer_id=9', 'canon');
INSERT INTO `oc_url_alias` VALUES ('829', 'manufacturer_id=5', 'htc');
INSERT INTO `oc_url_alias` VALUES ('830', 'manufacturer_id=7', 'hewlett-packard');
INSERT INTO `oc_url_alias` VALUES ('831', 'manufacturer_id=6', 'palm');
INSERT INTO `oc_url_alias` VALUES ('832', 'manufacturer_id=10', 'sony');
INSERT INTO `oc_url_alias` VALUES ('841', 'information_id=6', 'delivery');
INSERT INTO `oc_url_alias` VALUES ('842', 'information_id=3', 'privacy');
INSERT INTO `oc_url_alias` VALUES ('843', 'information_id=5', 'terms');
INSERT INTO `oc_url_alias` VALUES ('845', 'common/home', '');
INSERT INTO `oc_url_alias` VALUES ('846', 'information/contact', 'contact-us');
INSERT INTO `oc_url_alias` VALUES ('847', 'information/sitemap', 'sitemap');
INSERT INTO `oc_url_alias` VALUES ('848', 'product/special', 'specials');
INSERT INTO `oc_url_alias` VALUES ('849', 'product/manufacturer', 'brands');
INSERT INTO `oc_url_alias` VALUES ('850', 'product/compare', 'compare-products');
INSERT INTO `oc_url_alias` VALUES ('851', 'product/search', 'search');
INSERT INTO `oc_url_alias` VALUES ('852', 'checkout/cart', 'cart');
INSERT INTO `oc_url_alias` VALUES ('853', 'checkout/checkout', 'checkout');
INSERT INTO `oc_url_alias` VALUES ('854', 'account/login', 'login');
INSERT INTO `oc_url_alias` VALUES ('855', 'account/logout', 'logout');
INSERT INTO `oc_url_alias` VALUES ('856', 'account/voucher', 'vouchers');
INSERT INTO `oc_url_alias` VALUES ('857', 'account/wishlist', 'wishlist');
INSERT INTO `oc_url_alias` VALUES ('858', 'account/account', 'my-account');
INSERT INTO `oc_url_alias` VALUES ('859', 'account/order', 'order-history');
INSERT INTO `oc_url_alias` VALUES ('860', 'account/newsletter', 'newsletter');
INSERT INTO `oc_url_alias` VALUES ('861', 'account/return/add', 'return-add');
INSERT INTO `oc_url_alias` VALUES ('862', 'account/forgotten', 'forgot-password');
INSERT INTO `oc_url_alias` VALUES ('863', 'account/download', 'downloads');
INSERT INTO `oc_url_alias` VALUES ('864', 'account/return', 'returns');
INSERT INTO `oc_url_alias` VALUES ('865', 'account/transaction', 'transactions');
INSERT INTO `oc_url_alias` VALUES ('866', 'account/register', 'create-account');
INSERT INTO `oc_url_alias` VALUES ('867', 'account/recurring', 'recurring');
INSERT INTO `oc_url_alias` VALUES ('868', 'account/address', 'address-book');
INSERT INTO `oc_url_alias` VALUES ('869', 'account/reward', 'reward-points');
INSERT INTO `oc_url_alias` VALUES ('870', 'affiliate/forgotten', 'affiliate-forgot-password');
INSERT INTO `oc_url_alias` VALUES ('871', 'affiliate/register', 'create-affiliate-account');
INSERT INTO `oc_url_alias` VALUES ('872', 'affiliate/login', 'affiliate-login');
INSERT INTO `oc_url_alias` VALUES ('873', 'affiliate/account', 'affiliates');

-- ----------------------------
-- Table structure for `oc_user`
-- ----------------------------
DROP TABLE IF EXISTS `oc_user`;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_user
-- ----------------------------
INSERT INTO `oc_user` VALUES ('1', '1', 'admin', '7e19377aaa62a502a6849407f17bff9642f35f88', '1fea27c3f', 'John', 'Doe', 'sashsem@mail.ru', '', '', '192.168.1.138', '1', '2015-04-06 22:11:09');

-- ----------------------------
-- Table structure for `oc_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `oc_user_group`;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_user_group
-- ----------------------------
INSERT INTO `oc_user_group` VALUES ('1', 'Administrator', 'a:2:{s:6:\"access\";a:181:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:17:\"catalog/recurring\";i:10;s:14:\"catalog/review\";i:11;s:18:\"common/column_left\";i:12;s:18:\"common/filemanager\";i:13;s:11:\"common/menu\";i:14;s:14:\"common/profile\";i:15;s:12:\"common/stats\";i:16;s:18:\"dashboard/activity\";i:17;s:15:\"dashboard/chart\";i:18;s:18:\"dashboard/customer\";i:19;s:13:\"dashboard/map\";i:20;s:16:\"dashboard/online\";i:21;s:15:\"dashboard/order\";i:22;s:16:\"dashboard/recent\";i:23;s:14:\"dashboard/sale\";i:24;s:13:\"design/banner\";i:25;s:13:\"design/layout\";i:26;s:14:\"extension/feed\";i:27;s:19:\"extension/installer\";i:28;s:22:\"extension/modification\";i:29;s:16:\"extension/module\";i:30;s:17:\"extension/openbay\";i:31;s:17:\"extension/payment\";i:32;s:18:\"extension/shipping\";i:33;s:15:\"extension/total\";i:34;s:16:\"feed/google_base\";i:35;s:19:\"feed/google_sitemap\";i:36;s:15:\"feed/openbaypro\";i:37;s:20:\"localisation/country\";i:38;s:21:\"localisation/currency\";i:39;s:21:\"localisation/geo_zone\";i:40;s:21:\"localisation/language\";i:41;s:25:\"localisation/length_class\";i:42;s:21:\"localisation/location\";i:43;s:25:\"localisation/order_status\";i:44;s:26:\"localisation/return_action\";i:45;s:26:\"localisation/return_reason\";i:46;s:26:\"localisation/return_status\";i:47;s:25:\"localisation/stock_status\";i:48;s:22:\"localisation/tax_class\";i:49;s:21:\"localisation/tax_rate\";i:50;s:25:\"localisation/weight_class\";i:51;s:17:\"localisation/zone\";i:52;s:19:\"marketing/affiliate\";i:53;s:17:\"marketing/contact\";i:54;s:16:\"marketing/coupon\";i:55;s:19:\"marketing/marketing\";i:56;s:14:\"module/account\";i:57;s:16:\"module/affiliate\";i:58;s:20:\"module/amazon_button\";i:59;s:13:\"module/banner\";i:60;s:17:\"module/bestseller\";i:61;s:15:\"module/carousel\";i:62;s:15:\"module/category\";i:63;s:11:\"module/ebay\";i:64;s:15:\"module/featured\";i:65;s:13:\"module/filter\";i:66;s:22:\"module/google_hangouts\";i:67;s:11:\"module/html\";i:68;s:18:\"module/information\";i:69;s:13:\"module/latest\";i:70;s:16:\"module/pp_button\";i:71;s:15:\"module/pp_login\";i:72;s:16:\"module/slideshow\";i:73;s:14:\"module/special\";i:74;s:12:\"module/store\";i:75;s:14:\"openbay/amazon\";i:76;s:22:\"openbay/amazon_listing\";i:77;s:22:\"openbay/amazon_product\";i:78;s:16:\"openbay/amazonus\";i:79;s:24:\"openbay/amazonus_listing\";i:80;s:24:\"openbay/amazonus_product\";i:81;s:12:\"openbay/ebay\";i:82;s:20:\"openbay/ebay_profile\";i:83;s:21:\"openbay/ebay_template\";i:84;s:12:\"openbay/etsy\";i:85;s:20:\"openbay/etsy_product\";i:86;s:21:\"openbay/etsy_shipping\";i:87;s:17:\"openbay/etsy_shop\";i:88;s:23:\"payment/amazon_checkout\";i:89;s:24:\"payment/authorizenet_aim\";i:90;s:24:\"payment/authorizenet_sim\";i:91;s:21:\"payment/bank_transfer\";i:92;s:22:\"payment/bluepay_hosted\";i:93;s:24:\"payment/bluepay_redirect\";i:94;s:14:\"payment/cheque\";i:95;s:11:\"payment/cod\";i:96;s:17:\"payment/firstdata\";i:97;s:24:\"payment/firstdata_remote\";i:98;s:21:\"payment/free_checkout\";i:99;s:22:\"payment/klarna_account\";i:100;s:22:\"payment/klarna_invoice\";i:101;s:14:\"payment/liqpay\";i:102;s:14:\"payment/nochex\";i:103;s:15:\"payment/paymate\";i:104;s:16:\"payment/paypoint\";i:105;s:13:\"payment/payza\";i:106;s:26:\"payment/perpetual_payments\";i:107;s:18:\"payment/pp_express\";i:108;s:18:\"payment/pp_payflow\";i:109;s:25:\"payment/pp_payflow_iframe\";i:110;s:14:\"payment/pp_pro\";i:111;s:21:\"payment/pp_pro_iframe\";i:112;s:19:\"payment/pp_standard\";i:113;s:14:\"payment/realex\";i:114;s:21:\"payment/realex_remote\";i:115;s:22:\"payment/sagepay_direct\";i:116;s:22:\"payment/sagepay_server\";i:117;s:18:\"payment/sagepay_us\";i:118;s:24:\"payment/securetrading_pp\";i:119;s:24:\"payment/securetrading_ws\";i:120;s:14:\"payment/skrill\";i:121;s:19:\"payment/twocheckout\";i:122;s:28:\"payment/web_payment_software\";i:123;s:16:\"payment/worldpay\";i:124;s:16:\"report/affiliate\";i:125;s:25:\"report/affiliate_activity\";i:126;s:22:\"report/affiliate_login\";i:127;s:24:\"report/customer_activity\";i:128;s:22:\"report/customer_credit\";i:129;s:21:\"report/customer_login\";i:130;s:22:\"report/customer_online\";i:131;s:21:\"report/customer_order\";i:132;s:22:\"report/customer_reward\";i:133;s:16:\"report/marketing\";i:134;s:24:\"report/product_purchased\";i:135;s:21:\"report/product_viewed\";i:136;s:18:\"report/sale_coupon\";i:137;s:17:\"report/sale_order\";i:138;s:18:\"report/sale_return\";i:139;s:20:\"report/sale_shipping\";i:140;s:15:\"report/sale_tax\";i:141;s:17:\"sale/custom_field\";i:142;s:13:\"sale/customer\";i:143;s:20:\"sale/customer_ban_ip\";i:144;s:19:\"sale/customer_group\";i:145;s:10:\"sale/order\";i:146;s:14:\"sale/recurring\";i:147;s:11:\"sale/return\";i:148;s:12:\"sale/voucher\";i:149;s:18:\"sale/voucher_theme\";i:150;s:15:\"setting/setting\";i:151;s:13:\"setting/store\";i:152;s:16:\"shipping/auspost\";i:153;s:17:\"shipping/citylink\";i:154;s:14:\"shipping/fedex\";i:155;s:13:\"shipping/flat\";i:156;s:13:\"shipping/free\";i:157;s:13:\"shipping/item\";i:158;s:23:\"shipping/parcelforce_48\";i:159;s:15:\"shipping/pickup\";i:160;s:19:\"shipping/royal_mail\";i:161;s:12:\"shipping/ups\";i:162;s:13:\"shipping/usps\";i:163;s:15:\"shipping/weight\";i:164;s:11:\"tool/backup\";i:165;s:14:\"tool/error_log\";i:166;s:11:\"tool/upload\";i:167;s:12:\"total/coupon\";i:168;s:12:\"total/credit\";i:169;s:14:\"total/handling\";i:170;s:16:\"total/klarna_fee\";i:171;s:19:\"total/low_order_fee\";i:172;s:12:\"total/reward\";i:173;s:14:\"total/shipping\";i:174;s:15:\"total/sub_total\";i:175;s:9:\"total/tax\";i:176;s:11:\"total/total\";i:177;s:13:\"total/voucher\";i:178;s:8:\"user/api\";i:179;s:9:\"user/user\";i:180;s:20:\"user/user_permission\";}s:6:\"modify\";a:181:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:17:\"catalog/recurring\";i:10;s:14:\"catalog/review\";i:11;s:18:\"common/column_left\";i:12;s:18:\"common/filemanager\";i:13;s:11:\"common/menu\";i:14;s:14:\"common/profile\";i:15;s:12:\"common/stats\";i:16;s:18:\"dashboard/activity\";i:17;s:15:\"dashboard/chart\";i:18;s:18:\"dashboard/customer\";i:19;s:13:\"dashboard/map\";i:20;s:16:\"dashboard/online\";i:21;s:15:\"dashboard/order\";i:22;s:16:\"dashboard/recent\";i:23;s:14:\"dashboard/sale\";i:24;s:13:\"design/banner\";i:25;s:13:\"design/layout\";i:26;s:14:\"extension/feed\";i:27;s:19:\"extension/installer\";i:28;s:22:\"extension/modification\";i:29;s:16:\"extension/module\";i:30;s:17:\"extension/openbay\";i:31;s:17:\"extension/payment\";i:32;s:18:\"extension/shipping\";i:33;s:15:\"extension/total\";i:34;s:16:\"feed/google_base\";i:35;s:19:\"feed/google_sitemap\";i:36;s:15:\"feed/openbaypro\";i:37;s:20:\"localisation/country\";i:38;s:21:\"localisation/currency\";i:39;s:21:\"localisation/geo_zone\";i:40;s:21:\"localisation/language\";i:41;s:25:\"localisation/length_class\";i:42;s:21:\"localisation/location\";i:43;s:25:\"localisation/order_status\";i:44;s:26:\"localisation/return_action\";i:45;s:26:\"localisation/return_reason\";i:46;s:26:\"localisation/return_status\";i:47;s:25:\"localisation/stock_status\";i:48;s:22:\"localisation/tax_class\";i:49;s:21:\"localisation/tax_rate\";i:50;s:25:\"localisation/weight_class\";i:51;s:17:\"localisation/zone\";i:52;s:19:\"marketing/affiliate\";i:53;s:17:\"marketing/contact\";i:54;s:16:\"marketing/coupon\";i:55;s:19:\"marketing/marketing\";i:56;s:14:\"module/account\";i:57;s:16:\"module/affiliate\";i:58;s:20:\"module/amazon_button\";i:59;s:13:\"module/banner\";i:60;s:17:\"module/bestseller\";i:61;s:15:\"module/carousel\";i:62;s:15:\"module/category\";i:63;s:11:\"module/ebay\";i:64;s:15:\"module/featured\";i:65;s:13:\"module/filter\";i:66;s:22:\"module/google_hangouts\";i:67;s:11:\"module/html\";i:68;s:18:\"module/information\";i:69;s:13:\"module/latest\";i:70;s:16:\"module/pp_button\";i:71;s:15:\"module/pp_login\";i:72;s:16:\"module/slideshow\";i:73;s:14:\"module/special\";i:74;s:12:\"module/store\";i:75;s:14:\"openbay/amazon\";i:76;s:22:\"openbay/amazon_listing\";i:77;s:22:\"openbay/amazon_product\";i:78;s:16:\"openbay/amazonus\";i:79;s:24:\"openbay/amazonus_listing\";i:80;s:24:\"openbay/amazonus_product\";i:81;s:12:\"openbay/ebay\";i:82;s:20:\"openbay/ebay_profile\";i:83;s:21:\"openbay/ebay_template\";i:84;s:12:\"openbay/etsy\";i:85;s:20:\"openbay/etsy_product\";i:86;s:21:\"openbay/etsy_shipping\";i:87;s:17:\"openbay/etsy_shop\";i:88;s:23:\"payment/amazon_checkout\";i:89;s:24:\"payment/authorizenet_aim\";i:90;s:24:\"payment/authorizenet_sim\";i:91;s:21:\"payment/bank_transfer\";i:92;s:22:\"payment/bluepay_hosted\";i:93;s:24:\"payment/bluepay_redirect\";i:94;s:14:\"payment/cheque\";i:95;s:11:\"payment/cod\";i:96;s:17:\"payment/firstdata\";i:97;s:24:\"payment/firstdata_remote\";i:98;s:21:\"payment/free_checkout\";i:99;s:22:\"payment/klarna_account\";i:100;s:22:\"payment/klarna_invoice\";i:101;s:14:\"payment/liqpay\";i:102;s:14:\"payment/nochex\";i:103;s:15:\"payment/paymate\";i:104;s:16:\"payment/paypoint\";i:105;s:13:\"payment/payza\";i:106;s:26:\"payment/perpetual_payments\";i:107;s:18:\"payment/pp_express\";i:108;s:18:\"payment/pp_payflow\";i:109;s:25:\"payment/pp_payflow_iframe\";i:110;s:14:\"payment/pp_pro\";i:111;s:21:\"payment/pp_pro_iframe\";i:112;s:19:\"payment/pp_standard\";i:113;s:14:\"payment/realex\";i:114;s:21:\"payment/realex_remote\";i:115;s:22:\"payment/sagepay_direct\";i:116;s:22:\"payment/sagepay_server\";i:117;s:18:\"payment/sagepay_us\";i:118;s:24:\"payment/securetrading_pp\";i:119;s:24:\"payment/securetrading_ws\";i:120;s:14:\"payment/skrill\";i:121;s:19:\"payment/twocheckout\";i:122;s:28:\"payment/web_payment_software\";i:123;s:16:\"payment/worldpay\";i:124;s:16:\"report/affiliate\";i:125;s:25:\"report/affiliate_activity\";i:126;s:22:\"report/affiliate_login\";i:127;s:24:\"report/customer_activity\";i:128;s:22:\"report/customer_credit\";i:129;s:21:\"report/customer_login\";i:130;s:22:\"report/customer_online\";i:131;s:21:\"report/customer_order\";i:132;s:22:\"report/customer_reward\";i:133;s:16:\"report/marketing\";i:134;s:24:\"report/product_purchased\";i:135;s:21:\"report/product_viewed\";i:136;s:18:\"report/sale_coupon\";i:137;s:17:\"report/sale_order\";i:138;s:18:\"report/sale_return\";i:139;s:20:\"report/sale_shipping\";i:140;s:15:\"report/sale_tax\";i:141;s:17:\"sale/custom_field\";i:142;s:13:\"sale/customer\";i:143;s:20:\"sale/customer_ban_ip\";i:144;s:19:\"sale/customer_group\";i:145;s:10:\"sale/order\";i:146;s:14:\"sale/recurring\";i:147;s:11:\"sale/return\";i:148;s:12:\"sale/voucher\";i:149;s:18:\"sale/voucher_theme\";i:150;s:15:\"setting/setting\";i:151;s:13:\"setting/store\";i:152;s:16:\"shipping/auspost\";i:153;s:17:\"shipping/citylink\";i:154;s:14:\"shipping/fedex\";i:155;s:13:\"shipping/flat\";i:156;s:13:\"shipping/free\";i:157;s:13:\"shipping/item\";i:158;s:23:\"shipping/parcelforce_48\";i:159;s:15:\"shipping/pickup\";i:160;s:19:\"shipping/royal_mail\";i:161;s:12:\"shipping/ups\";i:162;s:13:\"shipping/usps\";i:163;s:15:\"shipping/weight\";i:164;s:11:\"tool/backup\";i:165;s:14:\"tool/error_log\";i:166;s:11:\"tool/upload\";i:167;s:12:\"total/coupon\";i:168;s:12:\"total/credit\";i:169;s:14:\"total/handling\";i:170;s:16:\"total/klarna_fee\";i:171;s:19:\"total/low_order_fee\";i:172;s:12:\"total/reward\";i:173;s:14:\"total/shipping\";i:174;s:15:\"total/sub_total\";i:175;s:9:\"total/tax\";i:176;s:11:\"total/total\";i:177;s:13:\"total/voucher\";i:178;s:8:\"user/api\";i:179;s:9:\"user/user\";i:180;s:20:\"user/user_permission\";}}');
INSERT INTO `oc_user_group` VALUES ('10', 'Demonstration', '');

-- ----------------------------
-- Table structure for `oc_voucher`
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher`;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_voucher_history`
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher_history`;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher_history
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_voucher_theme`
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher_theme`;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher_theme
-- ----------------------------
INSERT INTO `oc_voucher_theme` VALUES ('8', 'catalog/demo/canon_eos_5d_2.jpg');
INSERT INTO `oc_voucher_theme` VALUES ('7', 'catalog/demo/gift-voucher-birthday.jpg');
INSERT INTO `oc_voucher_theme` VALUES ('6', 'catalog/demo/apple_logo.jpg');

-- ----------------------------
-- Table structure for `oc_voucher_theme_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher_theme_description`;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher_theme_description
-- ----------------------------
INSERT INTO `oc_voucher_theme_description` VALUES ('6', '1', 'Новый год');
INSERT INTO `oc_voucher_theme_description` VALUES ('7', '1', 'День рождения');
INSERT INTO `oc_voucher_theme_description` VALUES ('8', '1', 'Другое');

-- ----------------------------
-- Table structure for `oc_weight_class`
-- ----------------------------
DROP TABLE IF EXISTS `oc_weight_class`;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_weight_class
-- ----------------------------
INSERT INTO `oc_weight_class` VALUES ('1', '1.00000000');
INSERT INTO `oc_weight_class` VALUES ('2', '1000.00000000');
INSERT INTO `oc_weight_class` VALUES ('5', '2.20460000');
INSERT INTO `oc_weight_class` VALUES ('6', '35.27400000');

-- ----------------------------
-- Table structure for `oc_weight_class_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_weight_class_description`;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_weight_class_description
-- ----------------------------
INSERT INTO `oc_weight_class_description` VALUES ('1', '1', 'Килограмм', 'кг');
INSERT INTO `oc_weight_class_description` VALUES ('2', '1', 'Грамм', 'г');

-- ----------------------------
-- Table structure for `oc_zone`
-- ----------------------------
DROP TABLE IF EXISTS `oc_zone`;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_zone
-- ----------------------------
INSERT INTO `oc_zone` VALUES ('1', '20', 'Брест', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('2', '20', 'Гомель', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('3', '20', 'Минск', 'HM', '1');
INSERT INTO `oc_zone` VALUES ('4', '20', 'Гродно', 'HR', '1');
INSERT INTO `oc_zone` VALUES ('5', '20', 'Могилев', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('6', '20', 'Минская область', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('7', '20', 'Витебск', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('8', '80', 'Abkhazia', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('9', '80', 'Ajaria', 'AJ', '1');
INSERT INTO `oc_zone` VALUES ('10', '80', 'Tbilisi', 'TB', '1');
INSERT INTO `oc_zone` VALUES ('11', '80', 'Guria', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('12', '80', 'Imereti', 'IM', '1');
INSERT INTO `oc_zone` VALUES ('13', '80', 'Kakheti', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('14', '80', 'Kvemo Kartli', 'KK', '1');
INSERT INTO `oc_zone` VALUES ('15', '80', 'Mtskheta-Mtianeti', 'MM', '1');
INSERT INTO `oc_zone` VALUES ('16', '80', 'Racha Lechkhumi and Kvemo Svanet', 'RL', '1');
INSERT INTO `oc_zone` VALUES ('17', '80', 'Samegrelo-Zemo Svaneti', 'SZ', '1');
INSERT INTO `oc_zone` VALUES ('18', '80', 'Samtskhe-Javakheti', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('19', '80', 'Shida Kartli', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('20', '109', 'Алматинская область', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('21', '109', 'Алматы - город республ-го значения', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('22', '109', 'Акмолинская область', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('23', '109', 'Актюбинская область', 'AQ', '1');
INSERT INTO `oc_zone` VALUES ('24', '109', 'Астана - город республ-го значения', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('25', '109', 'Атырауская область', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('26', '109', 'Западно-Казахстанская область', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('27', '109', 'Байконур - город республ-го значения', 'BY', '1');
INSERT INTO `oc_zone` VALUES ('28', '109', 'Мангистауская область', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('29', '109', 'Южно-Казахстанская область', 'ON', '1');
INSERT INTO `oc_zone` VALUES ('30', '109', 'Павлодарская область', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('31', '109', 'Карагандинская область', 'QA', '1');
INSERT INTO `oc_zone` VALUES ('32', '109', 'Костанайская область', 'QO', '1');
INSERT INTO `oc_zone` VALUES ('33', '109', 'Кызылординская область', 'QY', '1');
INSERT INTO `oc_zone` VALUES ('34', '109', 'Восточно-Казахстанская область', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('35', '109', 'Северо-Казахстанская область', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('36', '109', 'Жамбылская область', 'ZH', '1');
INSERT INTO `oc_zone` VALUES ('37', '115', 'Bishkek', 'GB', '1');
INSERT INTO `oc_zone` VALUES ('38', '115', 'Batken', 'B', '1');
INSERT INTO `oc_zone` VALUES ('39', '115', 'Chu', 'C', '1');
INSERT INTO `oc_zone` VALUES ('40', '115', 'Jalal-Abad', 'J', '1');
INSERT INTO `oc_zone` VALUES ('41', '115', 'Naryn', 'N', '1');
INSERT INTO `oc_zone` VALUES ('42', '115', 'Osh', 'O', '1');
INSERT INTO `oc_zone` VALUES ('43', '115', 'Talas', 'T', '1');
INSERT INTO `oc_zone` VALUES ('44', '115', 'Ysyk-Kol', 'Y', '1');
INSERT INTO `oc_zone` VALUES ('45', '176', 'Республика Хакасия', 'KK', '1');
INSERT INTO `oc_zone` VALUES ('46', '176', 'Московская область', 'MOS', '1');
INSERT INTO `oc_zone` VALUES ('47', '176', 'Чукотский АО', 'CHU', '1');
INSERT INTO `oc_zone` VALUES ('48', '176', 'Архангельская область', 'ARK', '1');
INSERT INTO `oc_zone` VALUES ('49', '176', 'Астраханская область', 'AST', '1');
INSERT INTO `oc_zone` VALUES ('50', '176', 'Алтайский край', 'ALT', '1');
INSERT INTO `oc_zone` VALUES ('51', '176', 'Белгородская область', 'BEL', '1');
INSERT INTO `oc_zone` VALUES ('52', '176', 'Еврейская АО', 'YEV', '1');
INSERT INTO `oc_zone` VALUES ('53', '176', 'Амурская область', 'AMU', '1');
INSERT INTO `oc_zone` VALUES ('54', '176', 'Брянская область', 'BRY', '1');
INSERT INTO `oc_zone` VALUES ('55', '176', 'Чувашская Республика', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('56', '176', 'Челябинская область', 'CHE', '1');
INSERT INTO `oc_zone` VALUES ('57', '176', 'Карачаево-Черкеcсия', 'KC', '1');
INSERT INTO `oc_zone` VALUES ('58', '176', 'Забайкальский край', 'ZAB', '1');
INSERT INTO `oc_zone` VALUES ('59', '176', 'Ленинградская область', 'LEN', '1');
INSERT INTO `oc_zone` VALUES ('60', '176', 'Республика Калмыкия', 'KL', '1');
INSERT INTO `oc_zone` VALUES ('61', '176', 'Сахалинская область', 'SAK', '1');
INSERT INTO `oc_zone` VALUES ('62', '176', 'Республика Алтай', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('63', '176', 'Чеченская Республика', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('64', '176', 'Иркутская область', 'IRK', '1');
INSERT INTO `oc_zone` VALUES ('65', '176', 'Ивановская область', 'IVA', '1');
INSERT INTO `oc_zone` VALUES ('66', '176', 'Удмуртская Республика', 'UD', '1');
INSERT INTO `oc_zone` VALUES ('67', '176', 'Калининградская область', 'KGD', '1');
INSERT INTO `oc_zone` VALUES ('68', '176', 'Калужская область', 'KLU', '1');
INSERT INTO `oc_zone` VALUES ('69', '176', 'Республика Татарстан', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('70', '176', 'Кемеровская область', 'KEM', '1');
INSERT INTO `oc_zone` VALUES ('71', '176', 'Хабаровский край', 'KHA', '1');
INSERT INTO `oc_zone` VALUES ('72', '176', 'Ханты-Мансийский АО - Югра', 'KHM', '1');
INSERT INTO `oc_zone` VALUES ('73', '176', 'Костромская область', 'KOS', '1');
INSERT INTO `oc_zone` VALUES ('74', '176', 'Краснодарский край', 'KDA', '1');
INSERT INTO `oc_zone` VALUES ('75', '176', 'Красноярский край', 'KYA', '1');
INSERT INTO `oc_zone` VALUES ('76', '176', 'Курганская область', 'KGN', '1');
INSERT INTO `oc_zone` VALUES ('77', '176', 'Курская область', 'KRS', '1');
INSERT INTO `oc_zone` VALUES ('78', '176', 'Республика Тыва', 'TY', '1');
INSERT INTO `oc_zone` VALUES ('79', '176', 'Липецкая область', 'LIP', '1');
INSERT INTO `oc_zone` VALUES ('80', '176', 'Магаданская область', 'MAG', '1');
INSERT INTO `oc_zone` VALUES ('81', '176', 'Республика Дагестан', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('82', '176', 'Республика Адыгея', 'AD', '1');
INSERT INTO `oc_zone` VALUES ('83', '176', 'Москва', 'MOW', '1');
INSERT INTO `oc_zone` VALUES ('84', '176', 'Мурманская область', 'MUR', '1');
INSERT INTO `oc_zone` VALUES ('85', '176', 'Республика Кабардино-Балкария', 'KB', '1');
INSERT INTO `oc_zone` VALUES ('86', '176', 'Ненецкий АО', 'NEN', '1');
INSERT INTO `oc_zone` VALUES ('87', '176', 'Республика Ингушетия', 'IN', '1');
INSERT INTO `oc_zone` VALUES ('88', '176', 'Нижегородская область', 'NIZ', '1');
INSERT INTO `oc_zone` VALUES ('89', '176', 'Новгородская область', 'NGR', '1');
INSERT INTO `oc_zone` VALUES ('90', '176', 'Новосибирская область', 'NVS', '1');
INSERT INTO `oc_zone` VALUES ('91', '176', 'Омская область', 'OMS', '1');
INSERT INTO `oc_zone` VALUES ('92', '176', 'Орловская область', 'ORL', '1');
INSERT INTO `oc_zone` VALUES ('93', '176', 'Оренбургская область', 'ORE', '1');
INSERT INTO `oc_zone` VALUES ('94', '176', 'Пензенская область', 'PNZ', '1');
INSERT INTO `oc_zone` VALUES ('95', '176', 'Пермский край', 'PER', '1');
INSERT INTO `oc_zone` VALUES ('96', '176', 'Камчатский край', 'KAM', '1');
INSERT INTO `oc_zone` VALUES ('97', '176', 'Республика Карелия', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('98', '176', 'Псковская область', 'PSK', '1');
INSERT INTO `oc_zone` VALUES ('99', '176', 'Ростовская область', 'ROS', '1');
INSERT INTO `oc_zone` VALUES ('100', '176', 'Рязанская область', 'RYA', '1');
INSERT INTO `oc_zone` VALUES ('101', '176', 'Ямало-Ненецкий АО', 'YAN', '1');
INSERT INTO `oc_zone` VALUES ('102', '176', 'Самарская область', 'SAM', '1');
INSERT INTO `oc_zone` VALUES ('103', '176', 'Республика Мордовия', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('104', '176', 'Саратовская область', 'SAR', '1');
INSERT INTO `oc_zone` VALUES ('105', '176', 'Смоленская область', 'SMO', '1');
INSERT INTO `oc_zone` VALUES ('106', '176', 'Санкт-Петербург', 'SPE', '1');
INSERT INTO `oc_zone` VALUES ('107', '176', 'Ставропольский край', 'STA', '1');
INSERT INTO `oc_zone` VALUES ('108', '176', 'Республика Коми', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('109', '176', 'Тамбовская область', 'TAM', '1');
INSERT INTO `oc_zone` VALUES ('110', '176', 'Томская область', 'TOM', '1');
INSERT INTO `oc_zone` VALUES ('111', '176', 'Тульская область', 'TUL', '1');
INSERT INTO `oc_zone` VALUES ('112', '176', 'Тверская область', 'TVE', '1');
INSERT INTO `oc_zone` VALUES ('113', '176', 'Тюменская область', 'TYU', '1');
INSERT INTO `oc_zone` VALUES ('114', '176', 'Республика Башкортостан', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('115', '176', 'Ульяновская область', 'ULY', '1');
INSERT INTO `oc_zone` VALUES ('116', '176', 'Республика Бурятия', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('117', '176', 'Республика Северная Осетия', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('118', '176', 'Владимирская область', 'VLA', '1');
INSERT INTO `oc_zone` VALUES ('119', '176', 'Приморский край', 'PRI', '1');
INSERT INTO `oc_zone` VALUES ('120', '176', 'Волгоградская область', 'VGG', '1');
INSERT INTO `oc_zone` VALUES ('121', '176', 'Вологодская область', 'VLG', '1');
INSERT INTO `oc_zone` VALUES ('122', '176', 'Воронежская область', 'VOR', '1');
INSERT INTO `oc_zone` VALUES ('123', '176', 'Кировская область', 'KIR', '1');
INSERT INTO `oc_zone` VALUES ('124', '176', 'Республика Саха', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('125', '176', 'Ярославская область', 'YAR', '1');
INSERT INTO `oc_zone` VALUES ('126', '176', 'Свердловская область', 'SVE', '1');
INSERT INTO `oc_zone` VALUES ('127', '176', 'Республика Марий Эл', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('128', '176', 'Республика Крым', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('129', '220', 'Черкассы', 'CK', '1');
INSERT INTO `oc_zone` VALUES ('130', '220', 'Чернигов', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('131', '220', 'Черновцы', 'CV', '1');
INSERT INTO `oc_zone` VALUES ('132', '220', 'Днепропетровск', 'DN', '1');
INSERT INTO `oc_zone` VALUES ('133', '220', 'Донецк', 'DO', '1');
INSERT INTO `oc_zone` VALUES ('134', '220', 'Ивано-Франковск', 'IV', '1');
INSERT INTO `oc_zone` VALUES ('135', '220', 'Харьков', 'KH', '1');
INSERT INTO `oc_zone` VALUES ('136', '220', 'Хмельницкий', 'KM', '1');
INSERT INTO `oc_zone` VALUES ('137', '220', 'Кировоград', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('138', '220', 'Киевская область', 'KV', '1');
INSERT INTO `oc_zone` VALUES ('139', '220', 'Киев', 'KY', '1');
INSERT INTO `oc_zone` VALUES ('140', '220', 'Луганск', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('141', '220', 'Львов', 'LV', '1');
INSERT INTO `oc_zone` VALUES ('142', '220', 'Николаев', 'MY', '1');
INSERT INTO `oc_zone` VALUES ('143', '220', 'Одесса', 'OD', '1');
INSERT INTO `oc_zone` VALUES ('144', '220', 'Полтава', 'PO', '1');
INSERT INTO `oc_zone` VALUES ('145', '220', 'Ровно', 'RI', '1');
INSERT INTO `oc_zone` VALUES ('146', '220', 'Севастополь', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('147', '220', 'Сумы', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('148', '220', 'Тернополь', 'TE', '1');
INSERT INTO `oc_zone` VALUES ('149', '220', 'Винница', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('150', '220', 'Луцк', 'VO', '1');
INSERT INTO `oc_zone` VALUES ('151', '220', 'Ужгород', 'ZK', '1');
INSERT INTO `oc_zone` VALUES ('152', '220', 'Запорожье', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('153', '220', 'Житомир', 'ZH', '1');
INSERT INTO `oc_zone` VALUES ('154', '220', 'Херсон', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('155', '226', 'Andijon', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('156', '226', 'Buxoro', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('157', '226', 'Farg\'ona', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('158', '226', 'Jizzax', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('159', '226', 'Namangan', 'NG', '1');
INSERT INTO `oc_zone` VALUES ('160', '226', 'Navoiy', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('161', '226', 'Qashqadaryo', 'QA', '1');
INSERT INTO `oc_zone` VALUES ('162', '226', 'Qoraqalpog\'iston Republikasi', 'QR', '1');
INSERT INTO `oc_zone` VALUES ('163', '226', 'Samarqand', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('164', '226', 'Sirdaryo', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('165', '226', 'Surxondaryo', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('166', '226', 'Toshkent City', 'TK', '1');
INSERT INTO `oc_zone` VALUES ('167', '226', 'Toshkent Region', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('168', '226', 'Xorazm', 'XO', '1');

-- ----------------------------
-- Table structure for `oc_zone_to_geo_zone`
-- ----------------------------
DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_zone_to_geo_zone
-- ----------------------------
INSERT INTO `oc_zone_to_geo_zone` VALUES ('1', '222', '0', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('110', '176', '0', '3', '2014-09-09 11:48:13', '0000-00-00 00:00:00');

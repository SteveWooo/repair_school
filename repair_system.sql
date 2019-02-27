/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost
 Source Database       : repair_system

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : utf-8

 Date: 02/27/2019 16:00:02 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `account` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_by` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `update_by` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `create_at` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_at` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `admins`
-- ----------------------------
BEGIN;
INSERT INTO `admins` VALUES ('1', '54ddc2d16fb3da53e424ea702e6b7020', 'admin', '831c0ed393cfc1a28adee92b2b57ddcf', 'admin_root', 'root', 'root', '1551108623298', '1551108623298');
COMMIT;

-- ----------------------------
--  Table structure for `image_loops`
-- ----------------------------
DROP TABLE IF EXISTS `image_loops`;
CREATE TABLE `image_loops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_loop_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `image_url` text COLLATE utf8_bin,
  `name` text COLLATE utf8_bin,
  `is_loop` int(11) DEFAULT NULL,
  `create_by` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `update_by` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `create_at` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_at` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `notices`
-- ----------------------------
DROP TABLE IF EXISTS `notices`;
CREATE TABLE `notices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `title` text COLLATE utf8_bin,
  `content` text COLLATE utf8_bin,
  `description` text COLLATE utf8_bin,
  `cover_url` text COLLATE utf8_bin,
  `create_by` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `update_by` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `create_at` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_at` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `order_evaluates`
-- ----------------------------
DROP TABLE IF EXISTS `order_evaluates`;
CREATE TABLE `order_evaluates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_evaluate_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `order_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_bin,
  `create_by` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `update_by` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `create_at` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_at` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `user_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `service_class_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `title` text COLLATE utf8_bin,
  `content` text COLLATE utf8_bin,
  `mobile` text COLLATE utf8_bin,
  `name` text COLLATE utf8_bin,
  `status` int(11) DEFAULT NULL,
  `position_field` text COLLATE utf8_bin,
  `position_building` text COLLATE utf8_bin,
  `position_room` text COLLATE utf8_bin,
  `leisure_time` text COLLATE utf8_bin,
  `create_by` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `update_by` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `create_at` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_at` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `self_services`
-- ----------------------------
DROP TABLE IF EXISTS `self_services`;
CREATE TABLE `self_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `self_service_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `service_class_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `title` text COLLATE utf8_bin,
  `content` text COLLATE utf8_bin,
  `description` text COLLATE utf8_bin,
  `cover_url` text COLLATE utf8_bin,
  `create_by` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `update_by` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `create_at` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_at` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `service_classes`
-- ----------------------------
DROP TABLE IF EXISTS `service_classes`;
CREATE TABLE `service_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_class_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `name` text COLLATE utf8_bin,
  `description` text COLLATE utf8_bin,
  `icon_url` text COLLATE utf8_bin,
  `create_by` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `update_by` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `create_at` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_at` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `user_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `nick_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `avatar_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mobile` text COLLATE utf8_bin,
  `name` text COLLATE utf8_bin,
  `position_field` text COLLATE utf8_bin,
  `position_building` text COLLATE utf8_bin,
  `position_room` text COLLATE utf8_bin,
  `create_by` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `update_by` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `create_at` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_at` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

SET FOREIGN_KEY_CHECKS = 1;

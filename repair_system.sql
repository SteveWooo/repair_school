/*
 Navicat Premium Data Transfer

 Source Server         : 115.28.241.66
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : 115.28.241.66
 Source Database       : repair_system

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : utf-8

 Date: 02/28/2019 09:33:38 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `image_loops`
-- ----------------------------
BEGIN;
INSERT INTO `image_loops` VALUES ('1', '78273cda34692193874ab67ab29a2fc7', 0x32646463323934623732326438613766386131303636306465656534303830652e6a706567, 0x74657374, null, '54ddc2d16fb3da53e424ea702e6b7020', '54ddc2d16fb3da53e424ea702e6b7020', '1551254789850', '1551254789850'), ('5', '0e09da961a23a15e2ea8ad40896401a1', 0x36616164306430323464306665323233646261393566356639326238333264312e6a706567, 0x74657374, null, '54ddc2d16fb3da53e424ea702e6b7020', '54ddc2d16fb3da53e424ea702e6b7020', '1551287546776', '1551287546776');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `notices`
-- ----------------------------
BEGIN;
INSERT INTO `notices` VALUES ('1', 'f12cda30bcd1e119354a54b684565e64', 0xe585ace5918ae6b58be8af95, 0x74657374, 0xe585ace5918ae6b58be8af95, '', '54ddc2d16fb3da53e424ea702e6b7020', '54ddc2d16fb3da53e424ea702e6b7020', '1551255262426', '1551255262426'), ('2', 'd38ca64b540b7e836ef1ce2f12223468', 0xe6b58be8af95e58f91e5b883, 0xe58685e5aeb9e99990e588b6353030e5ad97, 0xe6b58be8af95e58f91e5b883, '', '54ddc2d16fb3da53e424ea702e6b7020', '54ddc2d16fb3da53e424ea702e6b7020', '1551257762961', '1551257762961');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `order_evaluates`
-- ----------------------------
BEGIN;
INSERT INTO `order_evaluates` VALUES ('1', 'c087fed13c38528ddd0c38eea29dcb23', '35515f081ce5f3b56c14befe36767c79', '5', 0x68616f, '02528e6c7b0565f0ff9d0526d3485537', '02528e6c7b0565f0ff9d0526d3485537', '1551255313511', '1551255313511'), ('2', 'd83b2fe462c383219b417316d0d683ff', '5ba8669ad76d5bfc72571af82cef811b', '5', 0xe5a4aae4bb96e5a688e5bfabe5a4aae4bb96e5a688e58e89e5aeb3e4ba8620e5a5bde88892e69c8d, 'a886f04d28335d2e6515f14e714402c6', 'a886f04d28335d2e6515f14e714402c6', '1551287740637', '1551287740637');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `orders`
-- ----------------------------
BEGIN;
INSERT INTO `orders` VALUES ('1', '35515f081ce5f3b56c14befe36767c79', null, 'feb956592ba8784737ddefeef8559c64', 0x74657374, 0x6878697869, 0x313838313131, 0x6e616d65, '1', 0xe4b89ce58cba, 0xe4b89ce5ada6e6a5bc31e58fb7, 0x313131, 0x313233, '02528e6c7b0565f0ff9d0526d3485537', '54ddc2d16fb3da53e424ea702e6b7020', '1551255292292', '1551255303176'), ('2', '5ba8669ad76d5bfc72571af82cef811b', null, 'feb956592ba8784737ddefeef8559c64', 0xe794b5e88491e4b88de5bc80e69cba, 0xe6adbbe983bde4b88de5bc80e69cba, 0x3135353231313437313639, 0xe8b596e788b8e788b8, '1', 0xe8a5bfe58cba, 0xe8a5bfe5ada6e6a5bc31e58fb7, 0x353236, null, 'a886f04d28335d2e6515f14e714402c6', '54ddc2d16fb3da53e424ea702e6b7020', '1551257112931', '1551287711037');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `self_services`
-- ----------------------------
BEGIN;
INSERT INTO `self_services` VALUES ('1', '86df070b19906d89ab00c6eaefe72423', 'feb956592ba8784737ddefeef8559c64', 0xe8bdafe4bbb6, 0x3c68313e746573743c2f68313e3c703e6465736372697074696f6e3c2f703e, 0xe8bdafe4bbb6e79a84e68f8fe8bfb0, 0x62303335613866313364303639333738396666373737656666333764323436612e6a706567, '54ddc2d16fb3da53e424ea702e6b7020', '54ddc2d16fb3da53e424ea702e6b7020', '1551255233470', '1551255233470'), ('2', '97a9b1f6d27508e82f474bf216d4e631', 'f0701dcb4b94e43cf0082f7f339ec3af', 0xe585b3e4ba8ee7bd91e7bb9ce5a682e4bd95e9858de7bdae, 0x3c703ee585b3e4ba8ee7bd91e7bb9ce5a682e4bd95e9858de7bdae3c2f703e, 0xe585b3e4ba8ee7bd91e7bb9ce5a682e4bd95e9858de7bdae, 0x36616164306430323464306665323233646261393566356639326238333264312e6a706567, '54ddc2d16fb3da53e424ea702e6b7020', '54ddc2d16fb3da53e424ea702e6b7020', '1551287810893', '1551287810893');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `service_classes`
-- ----------------------------
BEGIN;
INSERT INTO `service_classes` VALUES ('1', 'feb956592ba8784737ddefeef8559c64', 0xe8bdafe4bbb6, 0xe8bdafe4bbb6, 0x30646266393365666466393638303161306535333465373161333865363733322e706e67, '54ddc2d16fb3da53e424ea702e6b7020', '54ddc2d16fb3da53e424ea702e6b7020', '1551255185868', '1551255185868'), ('4', '57cd67f2ba82fd29f886672212a4bdb9', 0xe5aea2e688b7e7abafe7bbb4e4bfae, 0xe5aea2e688b7e7abafe7bbb4e4bfae, 0x31373437313365623761616666643966646339356139633838626164356363332e706e67, '54ddc2d16fb3da53e424ea702e6b7020', '54ddc2d16fb3da53e424ea702e6b7020', '1551286152176', '1551286152176'), ('5', '204efa87d4b555aff57fdd2a5b3d8cac', 0xe88bb9e69e9ce58f8ce7b3bbe7bb9f, 0xe88bb9e69e9ce58f8ce7b3bbe7bb9f, 0x31386531343637323239633765373834346231613664623138386362303534342e706e67, '54ddc2d16fb3da53e424ea702e6b7020', '54ddc2d16fb3da53e424ea702e6b7020', '1551286242127', '1551286242127'), ('6', 'dee54082d56fc3ef78f11f65f13fbf80', 0x4d6163626f6f6b, 0x4d6163626f6f6b, 0x30313539306237623931366530343634646538633862646634613630303763642e706e67, '54ddc2d16fb3da53e424ea702e6b7020', '54ddc2d16fb3da53e424ea702e6b7020', '1551286260718', '1551286260718'), ('8', '3e4434d19de1205b213b2c65d53e26dc', 0xe9878de8a385e7b3bbe7bb9f, 0xe9878de8a385e7b3bbe7bb9f, 0x66366666396263393437383030643265396365653263373533356635663163352e706e67, '54ddc2d16fb3da53e424ea702e6b7020', '54ddc2d16fb3da53e424ea702e6b7020', '1551286309342', '1551286309342'), ('10', 'f0701dcb4b94e43cf0082f7f339ec3af', 0xe7bd91e7bb9ce997aee9a298, 0xe7bd91e7bb9ce997aee9a298, 0x33643838353133383330393331326433663466346331373761393632376531382e706e67, '54ddc2d16fb3da53e424ea702e6b7020', '54ddc2d16fb3da53e424ea702e6b7020', '1551286355288', '1551286355288');
COMMIT;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `nick_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `avatar_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mobile` text CHARACTER SET utf8 COLLATE utf8_bin,
  `name` text CHARACTER SET utf8 COLLATE utf8_bin,
  `position_field` text CHARACTER SET utf8 COLLATE utf8_bin,
  `position_building` text CHARACTER SET utf8 COLLATE utf8_bin,
  `position_room` text CHARACTER SET utf8 COLLATE utf8_bin,
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `create_at` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_at` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
--  Records of `users`
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('1', 'o4Eua5U3jOFo8GhA_53fa0m7GdSE', '02528e6c7b0565f0ff9d0526d3485537', 'DenielFrank?', 'https://wx.qlogo.cn/mmopen/vi_32/JpibDD9hjDKFYzMKQsByxZTkYNEjzqK88r84h6f9tEIGAEriaNxWrZOhhpTo4nibUJIQwfYerZoIETj8vUvoHhn3A/132', 0x74657374, 0x74657374, '', '', '', 'wechat', 'wechat', '1551254626560', '1551254626560'), ('2', 'o4Eua5aIZGVDM27g19dX7H2g9CGY', 'a886f04d28335d2e6515f14e714402c6', '菜 头.?', 'https://wx.qlogo.cn/mmopen/vi_32/5GV7AA0NzMtfWRlSbF1lQ0GNtQ01sgthZr3agpZl4ic9KNEibbqTeIMoHHHDlibJXTGZAWxicqiaAYtibC5zMoQdwC1Q/132', 0x3135353231313437313639, 0xe8b596e6b6a6e6b3bd, 0xe4b89ce58cba, 0xe4b89ce5ada6e6a5bc31e58fb7, 0x353239, 'wechat', 'wechat', '1551255810917', '1551255810917'), ('3', 'o4Eua5eLCm3PUSr4psiccn1Y-rvo', '7e7db69f1a2e405006b77c1055d97bff', 'ray', 'https://wx.qlogo.cn/mmopen/vi_32/IJykQFPVHE0zObgf7bDKVcGRt9jl8VWIok2apOs1EqpZ8u8PtzD3NicdkpyPknzlEbTSxbYibJxp8V3Zt7lDm3Vg/132', '', '', '', '', '', 'wechat', 'wechat', '1551258692906', '1551258692906');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

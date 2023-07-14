/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 80028
Source Host           : localhost:3306
Source Database       : xdb

Target Server Type    : MYSQL
Target Server Version : 80028
File Encoding         : 65001

Date: 2023-07-08 13:07:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_goods_data
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_data`;
CREATE TABLE `t_goods_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gname` varchar(255) DEFAULT NULL,
  `produce` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `sizes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `restamount` int DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_goods_data
-- ----------------------------
INSERT INTO `t_goods_data` VALUES ('1', 'NB327暗红', 'NB327 2022休闲鞋春秋新款女同款户外运动鞋 潮流指向日常穿搭必备', '799', '35,36,37,38,39', '333', 'NB327暗红.png', 'NB327暗红1.jpg', 'NB327暗红2.jpg', 'NB327暗红3.jpg');
INSERT INTO `t_goods_data` VALUES ('2', 'OCSILL基础短袖', 'OCSILL 夏季时尚短袖   衣服纯棉短袖T恤 男女同款宽松流行', '99', 'S,M,L,XL,XXL', '668', 'OCSILL基础短袖.jpeg', 'OCSILL基础短袖1.jpg', 'OCSILL基础短袖2.jpg', 'OCSILL基础短袖3.jpg');
INSERT INTO `t_goods_data` VALUES ('3', 'AIR4-蓝白', 'AIR4最热配色 男简单百搭鞋款 质量售后保证 七天无理由退后', '1699', '41,42,43,44,45', '200', 'AIR4-蓝白.jpeg', 'AIR4-蓝白1.jpg', 'AIR4-蓝白2.jpg', 'AIR4-蓝白3.jpg');
INSERT INTO `t_goods_data` VALUES ('4', 'NB327浅灰', 'NB327 2022休闲鞋春秋新款男女同款户外运动鞋 潮流指向日常穿搭必备', '699', '41,42,43,44,45', '287', 'NB327浅灰.jpeg', 'NB327浅灰1.jpg', 'NB327浅灰2.jpg', 'NB327浅灰3.jpg');
INSERT INTO `t_goods_data` VALUES ('5', 'OCSILL万菊卫衣', 'OCSILL万菊卫衣 男女同款 换季新气象 黄菊新配色', '119', 'S,M,L,XL,XXL', '872', 'OCSILL万菊卫衣.jpeg', 'OCSILL万菊卫衣1.jpg', 'OCSILL万菊卫衣2.jpg', 'OCSILL万菊卫衣3.jpg');
INSERT INTO `t_goods_data` VALUES ('6', 'OCSILL长袜', 'OCSILL长袜 男寒流袭来不想冻脚又不想撞款 本长袜你势在必得', '19', '41,42,43,44,45', '5', 'OCSILL长袜.jpeg', 'OCSILL长袜1.jpg', 'OCSILL长袜2.jpg', 'OCSILL长袜3.jpg');
INSERT INTO `t_goods_data` VALUES ('7', 'OSCILL针织毛衣', 'OSCILL2022新款毛衣卫衣 喜迎春节 女针织毛衣保质保量无脑冲', '79', 'S,M,L,XL,XXL', '877', 'OSCILL针织毛衣.jpeg', 'OSCILL针织毛衣1.jpg', 'OSCILL针织毛衣2.jpg', 'OSCILL针织毛衣3.jpg');
INSERT INTO `t_goods_data` VALUES ('8', '直筒牛仔裤', '直筒牛仔裤 2022新款女士直筒牛仔裤 黑色百搭基础款 双十一在即 ', '149', 'S,M,L', '1', '直筒牛仔裤.jpeg', '直筒牛仔裤1.jpg', '直筒牛仔裤2.jpg', '直筒牛仔裤3.jpg');
INSERT INTO `t_goods_data` VALUES ('9', 'Nike经典童鞋', 'Nike经典童鞋 孩子穿得舒服自在 时尚潮流性价比很高 专注儿童20年', '79', '21,22,23,24,25', '790', 'Nike经典童鞋.png', 'Nike经典童鞋1.jpg', 'Nike经典童鞋2.jpg', 'Nike经典童鞋3.jpg');
INSERT INTO `t_goods_data` VALUES ('10', 'Nike阿甘系列童鞋', '经典阿甘系列儿童 亲子鞋快来和父母一起成长 买过得都夸好', '89', '21,22,23,24,25', '899', 'Nike阿甘系列童鞋.png', 'Nike阿甘系列童鞋1.jpg', 'Nike阿甘系列童鞋2.jpg', 'Nike阿甘系列童鞋3.jpg');

-- ----------------------------
-- Table structure for t_goods_order
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_order`;
CREATE TABLE `t_goods_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `aid` int DEFAULT NULL,
  `status` int DEFAULT '0',
  `pay_type` varchar(255) DEFAULT NULL,
  `gid` int DEFAULT NULL,
  `num` int DEFAULT NULL,
  `total` float DEFAULT NULL,
  `order_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `size` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_goods_order
-- ----------------------------
INSERT INTO `t_goods_order` VALUES ('198', '1673527779408945154', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '3', '6', '微信', '58', '2', '198', '2023-06-27 12:12:34', 'XXL');
INSERT INTO `t_goods_order` VALUES ('199', '1673527779408945156', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '3', '3', '微信', '58', '1', '99', '2023-06-27 13:12:55', 'M');
INSERT INTO `t_goods_order` VALUES ('200', '1673527779408945155', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '3', '0', '微信', '58', '2', '198', '2023-06-27 11:04:49', 'L');
INSERT INTO `t_goods_order` VALUES ('201', '1673527779480248322', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '3', '0', '微信', '59', '2', '238', '2023-06-27 11:04:49', 'XL');
INSERT INTO `t_goods_order` VALUES ('202', '1674715809889054721', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '9', '0', '其他', '58', '1', '99', '2023-06-30 17:45:38', 'XL');
INSERT INTO `t_goods_order` VALUES ('203', '1674732370427310081', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '1', '0', '其他', '67', '1', '89', '2023-06-30 18:51:26', '24');

-- ----------------------------
-- Table structure for t_receiver_address
-- ----------------------------
DROP TABLE IF EXISTS `t_receiver_address`;
CREATE TABLE `t_receiver_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_receiver_address
-- ----------------------------
INSERT INTO `t_receiver_address` VALUES ('1', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '小杜', '15613231139', '河北省唐山市高新技术开发区', '河北省唐山市路北区唐山高新技术开发区大学西道11号');
INSERT INTO `t_receiver_address` VALUES ('3', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '小度', '15613231139', '河北省保定市定兴县张家庄乡', '中陶沈村');
INSERT INTO `t_receiver_address` VALUES ('4', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '小王', '15131572390', '河北省张家口市张北县张北镇', '永泰综合市场西门');
INSERT INTO `t_receiver_address` VALUES ('9', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '小季', '15613231137', '河北张家口张北县', '永泰小区5单元10号楼6层');

-- ----------------------------
-- Table structure for t_user_collection
-- ----------------------------
DROP TABLE IF EXISTS `t_user_collection`;
CREATE TABLE `t_user_collection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `gid` int DEFAULT NULL,
  `add_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_user_collection
-- ----------------------------
INSERT INTO `t_user_collection` VALUES ('71', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '59', '2023-06-26 23:11:45');

-- ----------------------------
-- Table structure for t_user_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_user_comment`;
CREATE TABLE `t_user_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `reply_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gid` int DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `status` int DEFAULT '0',
  `comment_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_user_comment
-- ----------------------------
INSERT INTO `t_user_comment` VALUES ('7', 'o4Tk35Ihwcm91IZzW3AmNUtMozas', null, '61', '轻巧方便', '1', '2023-06-26 18:57:24', '0');
INSERT INTO `t_user_comment` VALUES ('8', 'o4Tk35Khwcm91IZzW3AmNUtMozas', null, '64', '针织毛衣 一线一针', '1', '2023-06-26 18:57:54', '0');
INSERT INTO `t_user_comment` VALUES ('9', 'o4Tk35Khwcm91IZzW3AmNUtMozas', null, '64', '111', '1', '2023-06-26 18:57:58', '0');
INSERT INTO `t_user_comment` VALUES ('16', 'o4Tk35Khwcm91IZzW3AmNUtMozas', null, '61', '111', '1', '2023-06-26 18:57:26', '0');
INSERT INTO `t_user_comment` VALUES ('22', 'o4Tk35Khwcm91IZzW3AmNUtMozas', 'o4Tk35Ihwcm91IZzW3AmNUtMozas', '61', '确实如此', '1', '2023-06-26 18:57:29', '7');
INSERT INTO `t_user_comment` VALUES ('23', 'o4Tk35Ihwcm91IZzW3AmNUtMozas', null, '61', '坐我斜对面', '1', '2023-06-26 18:57:33', '0');
INSERT INTO `t_user_comment` VALUES ('25', 'o4Tk35Khwcm91IZzW3AmNUtMozas', 'o4Tk35Ihwcm91IZzW3AmNUtMozas', '61', '好在', '1', '2023-06-26 18:57:38', '7');
INSERT INTO `t_user_comment` VALUES ('30', 'o4Tk35Khwcm91IZzW3AmNUtMozas', null, '61', 'test0626', '2', '2023-06-26 18:57:52', '0');
INSERT INTO `t_user_comment` VALUES ('33', 'o4Tk35Ihwcm91IZzW3AmNUtMozas', null, '58', 'test0627', '1', '2023-06-27 09:26:47', '0');
INSERT INTO `t_user_comment` VALUES ('36', 'o4Tk35Khwcm91IZzW3AmNUtMozas', 'o4Tk35Ihwcm91IZzW3AmNUtMozas', '61', '你猜', '0', '2023-06-27 13:26:49', '7');
INSERT INTO `t_user_comment` VALUES ('37', 'o4Tk35Khwcm91IZzW3AmNUtMozas', null, '58', '', '0', '2023-06-27 19:52:14', '0');
INSERT INTO `t_user_comment` VALUES ('38', 'o4Tk35Khwcm91IZzW3AmNUtMozas', 'o4Tk35Ihwcm91IZzW3AmNUtMozas', '61', 'aaa', '0', '2023-06-27 20:49:52', '7');
INSERT INTO `t_user_comment` VALUES ('39', 'null', null, '58', '', '0', '2023-06-28 16:04:05', '0');

-- ----------------------------
-- Table structure for t_user_data
-- ----------------------------
DROP TABLE IF EXISTS `t_user_data`;
CREATE TABLE `t_user_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `repassword` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_user_data
-- ----------------------------
INSERT INTO `t_user_data` VALUES ('1', '7', '有些', '7', '7', 'http://tmp/REcET3p2CNeR3bfd61c49bbe9b8db046315fdb131194.png');
INSERT INTO `t_user_data` VALUES ('2', '0', '小度', '0', '0', 'http://tmp/REcET3p2CNeR3bfd61c49bbe9b8db046315fdb131194.png');

-- ----------------------------
-- Table structure for t_user_like
-- ----------------------------
DROP TABLE IF EXISTS `t_user_like`;
CREATE TABLE `t_user_like` (
  `like_id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `comment_id` int DEFAULT NULL,
  `like_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`like_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_user_like
-- ----------------------------
INSERT INTO `t_user_like` VALUES ('5', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '7', '2023-06-03 11:03:16');
INSERT INTO `t_user_like` VALUES ('20', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '29', '2023-06-08 16:03:25');
INSERT INTO `t_user_like` VALUES ('22', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '25', '2023-06-21 09:14:58');
INSERT INTO `t_user_like` VALUES ('24', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '23', '2023-06-26 15:35:00');
INSERT INTO `t_user_like` VALUES ('26', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '33', '2023-06-30 17:15:04');

-- ----------------------------
-- Table structure for t_user_message
-- ----------------------------
DROP TABLE IF EXISTS `t_user_message`;
CREATE TABLE `t_user_message` (
  `msg_id` int NOT NULL AUTO_INCREMENT,
  `msg_type` int DEFAULT NULL COMMENT '0：系统通知\r\n1：物流信息\r\n2：评论信息\r\n3：点赞信息\r\n4：私信',
  `act_openid` varchar(255) DEFAULT NULL COMMENT '发送消息的人',
  `pas_openid` varchar(255) DEFAULT NULL COMMENT '接受的消息的人',
  `msg_content` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `msg_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_user_message
-- ----------------------------
INSERT INTO `t_user_message` VALUES ('1', '2', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的评论审核不通过', '2023-06-02 17:27:04');
INSERT INTO `t_user_message` VALUES ('2', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单41876881794已发货,请关注物流信息！', '2023-06-02 17:39:59');
INSERT INTO `t_user_message` VALUES ('6', '3', 'o4Tk35Khwcm91IZzW3AmNUtMozas', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '用户“有些”点赞了你的评论！', '2023-06-03 12:03:49');
INSERT INTO `t_user_message` VALUES ('10', '3', 'o4Tk35Khwcm91IZzW3AmNUtMozas', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '用户“有些”点赞了你的评论！', '2023-06-08 14:41:39');
INSERT INTO `t_user_message` VALUES ('11', '3', 'o4Tk35Khwcm91IZzW3AmNUtMozas', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '用户“有些”点赞了你的评论！', '2023-06-08 14:49:19');
INSERT INTO `t_user_message` VALUES ('12', '3', 'o4Tk35Khwcm91IZzW3AmNUtMozas', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '用户“有些”点赞了你的评论！', '2023-06-08 14:49:35');
INSERT INTO `t_user_message` VALUES ('14', '3', 'o4Tk35Khwcm91IZzW3AmNUtMozas', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '用户“有些”点赞了你的评论！', '2023-06-08 16:03:25');
INSERT INTO `t_user_message` VALUES ('15', '3', 'o4Tk35Khwcm91IZzW3AmNUtMozas', 'o4Tk35Ihwcm91IZzW3AmNUtMozas', '用户“有些”点赞了你的评论！', '2023-06-21 09:10:35');
INSERT INTO `t_user_message` VALUES ('17', '3', 'o4Tk35Khwcm91IZzW3AmNUtMozas', 'o4Tk35Ihwcm91IZzW3AmNUtMozas', '用户“有些”点赞了你的评论！', '2023-06-26 15:26:08');
INSERT INTO `t_user_message` VALUES ('18', '3', 'o4Tk35Khwcm91IZzW3AmNUtMozas', 'o4Tk35Ihwcm91IZzW3AmNUtMozas', '用户“有些”点赞了你的评论！', '2023-06-26 15:35:00');
INSERT INTO `t_user_message` VALUES ('19', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单1667109271536070658已发货,请关注物流信息！', '2023-06-26 15:59:51');
INSERT INTO `t_user_message` VALUES ('20', '3', 'o4Tk35Khwcm91IZzW3AmNUtMozas', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '用户“有些”点赞了你的评论！', '2023-06-27 00:22:12');
INSERT INTO `t_user_message` VALUES ('21', '2', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的评论test0626审核不通过', '2023-06-27 10:08:26');
INSERT INTO `t_user_message` VALUES ('22', '2', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的评论确实如此审核通过', '2023-06-27 10:08:31');
INSERT INTO `t_user_message` VALUES ('23', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单1673304115115663361已发货,请关注物流信息！', '2023-06-27 10:18:52');
INSERT INTO `t_user_message` VALUES ('24', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单1673306099252137985已发货,请关注物流信息！', '2023-06-27 10:18:55');
INSERT INTO `t_user_message` VALUES ('25', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单1673304115115663361已送达,请及时签收包裹！', '2023-06-27 10:19:27');
INSERT INTO `t_user_message` VALUES ('26', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单1673364946566238209已发货,请关注物流信息！', '2023-06-27 10:20:37');
INSERT INTO `t_user_message` VALUES ('27', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单1673364946566238209已送达,请及时签收包裹！', '2023-06-27 10:20:38');
INSERT INTO `t_user_message` VALUES ('28', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单1673312734171312129已发货,请关注物流信息！', '2023-06-27 10:26:01');
INSERT INTO `t_user_message` VALUES ('29', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单1673312734171312129已送达,请及时签收包裹！', '2023-06-27 10:26:08');
INSERT INTO `t_user_message` VALUES ('30', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单1673520486499938305已发货,请关注物流信息！', '2023-06-27 10:37:03');
INSERT INTO `t_user_message` VALUES ('31', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单1673520486499938305已送达,请及时签收包裹！', '2023-06-27 10:37:07');
INSERT INTO `t_user_message` VALUES ('32', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单1673520486499938305签收完毕！', '2023-06-27 10:38:28');
INSERT INTO `t_user_message` VALUES ('33', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单1673520486499938305签收完毕！', '2023-06-27 10:41:07');
INSERT INTO `t_user_message` VALUES ('34', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单1673527779408945154已发货,请关注物流信息！', '2023-06-27 11:12:28');
INSERT INTO `t_user_message` VALUES ('35', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单1673527779408945154已送达,请及时签收包裹！', '2023-06-27 11:12:30');
INSERT INTO `t_user_message` VALUES ('36', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单1673527779408945154退款失败！详情请联系客服', '2023-06-27 12:02:08');
INSERT INTO `t_user_message` VALUES ('37', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单1673527779408945154退款失败！详情请联系客服', '2023-06-27 12:03:36');
INSERT INTO `t_user_message` VALUES ('38', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单1673527779408945154退款失败！详情请联系客服', '2023-06-27 12:05:38');
INSERT INTO `t_user_message` VALUES ('39', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单1673527779408945154退款完成！', '2023-06-27 12:09:54');
INSERT INTO `t_user_message` VALUES ('40', '1', '0', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '您的订单1673527779408945154退款失败！详情请联系客服', '2023-06-27 12:12:41');
INSERT INTO `t_user_message` VALUES ('41', '2', 'o4Tk35Ihwcm91IZzW3AmNUtMozas', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '用户“那些”回复了你的评论!', '2023-06-27 13:26:49');
INSERT INTO `t_user_message` VALUES ('42', '2', 'o4Tk35Ihwcm91IZzW3AmNUtMozas', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '用户“那些”回复了你的评论!', '2023-06-27 20:49:52');
INSERT INTO `t_user_message` VALUES ('43', '3', 'o4Tk35Khwcm91IZzW3AmNUtMozas', 'o4Tk35Ihwcm91IZzW3AmNUtMozas', '用户“有些”点赞了你的评论！', '2023-06-30 17:15:04');

-- ----------------------------
-- Table structure for t_user_search
-- ----------------------------
DROP TABLE IF EXISTS `t_user_search`;
CREATE TABLE `t_user_search` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `search_name` varchar(255) DEFAULT NULL,
  `search_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_user_search
-- ----------------------------
INSERT INTO `t_user_search` VALUES ('66', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '卫衣', '2023-06-26 22:41:29');
INSERT INTO `t_user_search` VALUES ('67', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '鞋', '2023-06-26 22:41:37');
INSERT INTO `t_user_search` VALUES ('68', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '经典', '2023-06-26 22:41:47');
INSERT INTO `t_user_search` VALUES ('71', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '童鞋', '2023-06-26 22:42:27');

-- ----------------------------
-- Table structure for t_user_shopcar
-- ----------------------------
DROP TABLE IF EXISTS `t_user_shopcar`;
CREATE TABLE `t_user_shopcar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `gid` int DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `add_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `num` int DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_user_shopcar
-- ----------------------------
INSERT INTO `t_user_shopcar` VALUES ('71', '2', '4', '44', '2022-11-25 16:19:17', '1');
INSERT INTO `t_user_shopcar` VALUES ('93', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '62', '43', '2023-07-03 00:58:31', '1');
INSERT INTO `t_user_shopcar` VALUES ('94', 'o4Tk35Khwcm91IZzW3AmNUtMozas', '59', 'XXL', '2023-07-03 00:58:40', '1');

-- ----------------------------
-- Table structure for t_wx_user
-- ----------------------------
DROP TABLE IF EXISTS `t_wx_user`;
CREATE TABLE `t_wx_user` (
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_wx_user
-- ----------------------------
INSERT INTO `t_wx_user` VALUES ('o4Tk35Ihwcm91IZzW3AmNUtMozas', '那些', 'https://thirdwx.qlogo.cn/mmopen/vi_32/ibLV9FP4O5pY5rgicMgsx3IT7Yhxqwqp6MYSxgVAox61iaN0LvOOs6nibOT7ymSnT72ZfZMyG6DS0PuI5uqlk9TW2A/132');
INSERT INTO `t_wx_user` VALUES ('o4Tk35Khwcm91IZzW3AmNUtMozas', '有些', 'http://tmp/mYZMPp2wV8hc3bfd61c49bbe9b8db046315fdb131194.png');

-- ----------------------------
-- Table structure for x_count_list
-- ----------------------------
DROP TABLE IF EXISTS `x_count_list`;
CREATE TABLE `x_count_list` (
  `count_list_id` int NOT NULL AUTO_INCREMENT,
  `sale` float DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `profit` float DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`count_list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of x_count_list
-- ----------------------------
INSERT INTO `x_count_list` VALUES ('10', '267', '39', '228', '2023-04-09');
INSERT INTO `x_count_list` VALUES ('11', '150', '40', '110', '2023-04-10');
INSERT INTO `x_count_list` VALUES ('12', '890', '130', '760', '2023-04-11');
INSERT INTO `x_count_list` VALUES ('13', '750', '200', '550', '2023-04-12');
INSERT INTO `x_count_list` VALUES ('14', '890', '130', '760', '2023-03-16');
INSERT INTO `x_count_list` VALUES ('15', '150', '40', '110', '2023-04-20');
INSERT INTO `x_count_list` VALUES ('16', '890', '390', '500', '2023-06-18');
INSERT INTO `x_count_list` VALUES ('17', '890', '390', '500', '2023-06-26');
INSERT INTO `x_count_list` VALUES ('18', '7900', '3900', '4000', '2023-06-13');

-- ----------------------------
-- Table structure for x_customer
-- ----------------------------
DROP TABLE IF EXISTS `x_customer`;
CREATE TABLE `x_customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT COMMENT '客户编号id，主键',
  `customer_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '客户名称',
  `customer_type_id` int DEFAULT NULL,
  `contacts` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人',
  `phone_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人电话',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '客户地址',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `bank_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bank_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE,
  KEY `customer_type_id` (`customer_type_id`) USING BTREE,
  CONSTRAINT `x_customer_type_ibfk_1` FOREIGN KEY (`customer_type_id`) REFERENCES `x_goods_type` (`goods_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x_customer
-- ----------------------------
INSERT INTO `x_customer` VALUES ('1', '家乐福（青石桥店）', '3', '张三', '13555555555', '成都市锦江区大业路6号COSMO财富中心F3', '家乐福超市稳定客户', null, null, null, null, '中国工商银行', '621700381002696708');
INSERT INTO `x_customer` VALUES ('3', '永辉超市（温江光华大道店）', '3', '李四', '13888888888', '成都市温江区永兴路51号中森·光华1号1-2层', '永辉超市稳定客户', null, null, null, null, '中国农业银行', '621700381002696711');
INSERT INTO `x_customer` VALUES ('4', '北京华联空港购物中心', '2', '赵六', '028-89460961', '北京市双流区锦华路二段166号北京华联空港购物中心B1', '华联稳定客户', null, null, null, null, '中国农业银行', '621700381002696722');
INSERT INTO `x_customer` VALUES ('8', '滔博服饰商场', '2', '王五', '13420020509', '北京市双流区锦华路二段166号北京华联空港购物中心B1', '滔博稳定客户', null, null, null, null, '中国工商银行', '621700381002696733');
INSERT INTO `x_customer` VALUES ('9', '北京万博家具城', '4', '万坤', '15866974486', '北京市双流区锦华路二段166号万博家具B1', '万博稳定客户', null, null, null, null, '中国工商银行', '621700381002696744');
INSERT INTO `x_customer` VALUES ('10', '唐山硅谷数码城', '5', '李湘', '16613231156', '唐山市双流区锦华路二段166号万博家具B1', '硅谷数码城稳定客户', null, null, null, null, '中国工商银行', '621700381002696755');
INSERT INTO `x_customer` VALUES ('11', '保定万象家电城', '4', '王小白', '15613231164', '保定竞秀区朝阳路211号', '家电要想好，就来保定万象家具城', '2023-05-09 17:52:47', '2023-05-09 17:52:47', '1', '1', '中国农业银行', '621700381002696766');

-- ----------------------------
-- Table structure for x_customer_return_list
-- ----------------------------
DROP TABLE IF EXISTS `x_customer_return_list`;
CREATE TABLE `x_customer_return_list` (
  `customer_return_list_id` int NOT NULL AUTO_INCREMENT COMMENT '客户退货单id，主键',
  `return_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退货单号',
  `return_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退货日期',
  `amount_paid` float NOT NULL COMMENT '实付金额',
  `amount_payable` float NOT NULL COMMENT '应付金额',
  `state` int DEFAULT NULL COMMENT '状态，是否付款',
  `customer_id` int DEFAULT NULL COMMENT '客户编号id，外键',
  `user_id` int DEFAULT NULL COMMENT '操作员，用户id，外键',
  `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  PRIMARY KEY (`customer_return_list_id`) USING BTREE,
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `x_customer_return_list_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `x_customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `x_customer_return_list_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `x_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x_customer_return_list
-- ----------------------------
INSERT INTO `x_customer_return_list` VALUES ('15', 'XT1644688507860144130', '2023-04-04', '890', '890', '1', '4', null, 'ccccc', '2023-04-08 21:07:52', '2023-04-08 21:07:52', null, null);
INSERT INTO `x_customer_return_list` VALUES ('16', 'XT1670328259887910914', '2023-06-18', '890', '0', '0', '8', '1', '待收款中', '2023-06-18 15:11:05', '2023-06-18 15:11:05', '1', '1');

-- ----------------------------
-- Table structure for x_customer_return_list_goods
-- ----------------------------
DROP TABLE IF EXISTS `x_customer_return_list_goods`;
CREATE TABLE `x_customer_return_list_goods` (
  `customer_return_list_goods_id` int NOT NULL AUTO_INCREMENT COMMENT '客户退货单商品列表id，主键',
  `goods_id` int DEFAULT NULL COMMENT '商品编号id，外键',
  `goods_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品编码',
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `goods_model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品型号',
  `goods_num` int DEFAULT NULL COMMENT '客户退货数量',
  `goods_unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品单位',
  `price` float NOT NULL COMMENT '商品单价',
  `total` float NOT NULL COMMENT '总金额',
  `customer_return_list_id` int DEFAULT NULL COMMENT '客户退货单id，外键',
  `goods_type_id` int DEFAULT NULL COMMENT '商品类别id，外键',
  PRIMARY KEY (`customer_return_list_goods_id`) USING BTREE,
  KEY `FKtqt67mbn96lxn8hvtl4piblhi` (`customer_return_list_id`) USING BTREE,
  KEY `FK32ijokbrx3j6h0p6aa9hcccbq` (`goods_type_id`) USING BTREE,
  KEY `goods_id` (`goods_id`) USING BTREE,
  CONSTRAINT `x_customer_return_list_goods_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `x_goods` (`goods_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `x_customer_return_list_goods_ibfk_2` FOREIGN KEY (`goods_type_id`) REFERENCES `x_goods_type` (`goods_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `x_customer_return_list_goods_ibfk_3` FOREIGN KEY (`customer_return_list_id`) REFERENCES `x_customer_return_list` (`customer_return_list_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x_customer_return_list_goods
-- ----------------------------
INSERT INTO `x_customer_return_list_goods` VALUES ('15', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '10', '条', '89', '890', '15', '8');
INSERT INTO `x_customer_return_list_goods` VALUES ('16', '67', '0037', 'Nike阿甘系列童鞋', '百搭热潮009', '10', '双', '89', '890', '16', '24');

-- ----------------------------
-- Table structure for x_damage_list
-- ----------------------------
DROP TABLE IF EXISTS `x_damage_list`;
CREATE TABLE `x_damage_list` (
  `damage_list_id` int NOT NULL AUTO_INCREMENT COMMENT '商品报损单id，主键',
  `damage_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品报损单号',
  `damage_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建日期',
  `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `user_id` int DEFAULT NULL COMMENT '用户id，外键',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  PRIMARY KEY (`damage_list_id`) USING BTREE,
  KEY `FKpn094ma69sch1icjc2gu7xus` (`user_id`) USING BTREE,
  CONSTRAINT `x_damage_list_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `x_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x_damage_list
-- ----------------------------
INSERT INTO `x_damage_list` VALUES ('1', 'BS1550561206988', '2019-02-19', '', '1', null, null, null, null);
INSERT INTO `x_damage_list` VALUES ('7', 'BS1643085475539984385', '2023-04-03', 'ppp', null, '2023-04-04 10:57:59', '2023-04-04 10:57:59', null, null);
INSERT INTO `x_damage_list` VALUES ('8', 'BS1644203697521725441', '2023-04-03', '', null, '2023-04-07 13:01:24', '2023-04-07 13:01:24', null, null);

-- ----------------------------
-- Table structure for x_damage_list_goods
-- ----------------------------
DROP TABLE IF EXISTS `x_damage_list_goods`;
CREATE TABLE `x_damage_list_goods` (
  `damage_list_goods_id` int NOT NULL AUTO_INCREMENT COMMENT '商品报损单商品列表id，主键',
  `goods_id` int DEFAULT NULL COMMENT '商品编号id，外键',
  `goods_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品编码',
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `goods_model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品型号',
  `goods_unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品单位',
  `goods_num` int DEFAULT NULL COMMENT '报损数量',
  `price` float NOT NULL COMMENT '商品单价',
  `total` float NOT NULL COMMENT '总金额',
  `damage_list_id` int DEFAULT NULL COMMENT '商品报损单id，外键',
  `goods_type_id` int DEFAULT NULL COMMENT '商品类别id，外键',
  PRIMARY KEY (`damage_list_goods_id`) USING BTREE,
  KEY `goods_id` (`goods_id`) USING BTREE,
  KEY `damage_list_id` (`damage_list_id`) USING BTREE,
  KEY `goods_type_id` (`goods_type_id`) USING BTREE,
  CONSTRAINT `x_damage_list_goods_ibfk_2` FOREIGN KEY (`damage_list_id`) REFERENCES `x_damage_list` (`damage_list_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `x_damage_list_goods_ibfk_3` FOREIGN KEY (`goods_id`) REFERENCES `x_goods` (`goods_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `x_damage_list_goods_ibfk_4` FOREIGN KEY (`goods_type_id`) REFERENCES `x_goods_type` (`goods_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x_damage_list_goods
-- ----------------------------
INSERT INTO `x_damage_list_goods` VALUES ('1', '14', '0006', '冰糖金桔干', '300g装', '盒', '4', '5', '20', '1', '11');
INSERT INTO `x_damage_list_goods` VALUES ('3', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'AFS JEEP', '条', '10', '9', '90', '7', '8');
INSERT INTO `x_damage_list_goods` VALUES ('4', '34', '0025', '西服套装男三件套秋季新款商务修身职业正装男士西装新郎结婚礼服', '三件套秋', '件', '10', '189', '1890', '8', '7');

-- ----------------------------
-- Table structure for x_goods
-- ----------------------------
DROP TABLE IF EXISTS `x_goods`;
CREATE TABLE `x_goods` (
  `goods_id` int NOT NULL AUTO_INCREMENT COMMENT '商品编号id，主键',
  `goods_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品编码',
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `goods_price` float DEFAULT NULL,
  `inventory_quantity` int NOT NULL COMMENT '库存数量',
  `min_num` int NOT NULL COMMENT '库存下限',
  `goods_model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品型号',
  `goods_producer` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生产厂商',
  `purchasing_price` float NOT NULL COMMENT '采购价格',
  `last_purchasing_price` float NOT NULL COMMENT '上一次采购价格',
  `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `selling_price` float NOT NULL COMMENT '出售价格',
  `state` int NOT NULL COMMENT '0表示初始值,1表示已入库，2表示有进货或销售单据',
  `goods_unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品单位',
  `goods_type_id` int DEFAULT NULL COMMENT '商品类别id，外键',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `goods_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goods_image1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goods_image2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goods_image3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_putting` int DEFAULT '0',
  `goods_produce` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goods_sizes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`goods_id`) USING BTREE,
  KEY `goods_type_id` (`goods_type_id`) USING BTREE,
  CONSTRAINT `x_goods_ibfk_1` FOREIGN KEY (`goods_type_id`) REFERENCES `x_goods_type` (`goods_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x_goods
-- ----------------------------
INSERT INTO `x_goods` VALUES ('1', '0001', '陶华碧老干妈香辣脆油辣椒', null, '200', '1000', '红色装', '贵州省贵阳南明老干妈风味食品有限公司', '8.22', '8.5', '好卖', '8.5', '2', '瓶', '10', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('2', '0002', '华为荣耀Note8', null, '0', '400', 'Note8', '华为计算机系统有限公司', '2152.51', '2220', '热销', '2200', '2', '台', '16', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('11', '0003', '野生东北黑木耳', null, '0', '400', '500g装', '辉南县博康土特产有限公司', '23', '23', '够黑2', '38', '2', '袋', '11', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('12', '0004', '新疆红枣', null, '0', '300', '2斤装', '沧州铭鑫食品有限公司', '13', '13', '好吃', '25', '2', '袋', '10', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('13', '0005', '麦片燕麦巧克力', null, '0', '1000', '散装500克', '福建省麦德好食品工业有限公司', '8', '8', 'Goods', '15', '2', '袋', '11', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('14', '0006', '冰糖金桔干', null, '0', '1999', '300g装', '揭西县同心食品有限公司', '5.03', '5', '', '13', '2', '盒', '11', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('15', '0007', '吉利人家牛肉味蛋糕', null, '0', '400', '500g装', '合肥吉利人家食品有限公司', '4.5', '4.5', 'good', '10', '2', '袋', '11', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('16', '0008', '奕森奶油桃肉蜜饯果脯果干桃肉干休闲零食品', null, '200', '500', '128g装', '潮州市潮安区正大食品有限公司', '3', '3', '', '10', '2', '盒', '11', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('17', '0009', '休闲零食坚果特产精品干果无漂白大个开心果', null, '400', '1000', '240g装', '石家庄博群食品有限公司', '20', '20', '', '33', '2', '袋', '11', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('18', '0010', '劲仔小鱼干', null, '0', '300', '250g装', '湖南省华文食品有限公司', '12', '12', '', '20', '2', '袋', '11', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('19', '0011', '山楂条', null, '0', '300', '198g装', '临朐县七贤升利食品厂', '3.2', '3.2', '', '10', '0', '袋', '11', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('20', '0012', '大乌梅干', null, '0', '200', '500g装', '长春市鼎丰真食品有限责任公司', '20', '20', '', '25', '0', '袋', '11', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('21', '0013', '手工制作芝麻香酥麻通', null, '0', '100', '250g装', '桂林兰雨食品有限公司', '3', '3', '', '8', '2', '袋', '11', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('22', '0014', '美国青豆原味 蒜香', null, '0', '200', '250g装', '菲律宾', '5', '5', '', '8', '2', '袋', '11', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('24', '0015', ' iPhone X', null, '0', '100', 'X', 'xx2', '8000', '8000', 'xxx2', '9500', '2', '台', '16', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('25', '0016', '21', null, '0', '12', 'X', '32', '102', '102', '21', '120', '0', '盒', '3', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('26', '0017', 'Sony/索尼 ILCE-A6000L WIFI微单数码相机高清单电', null, '0', '100', 'ILCE-A6000L', '索尼计算机系统有限公司', '3000', '3000', 'xxx', '3650', '2', '台', '15', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('27', '0018', 'Canon/佳能 IXUS 285 HS 数码相机 2020万像素高清拍摄', null, '0', '400', 'IXUS 285 HS', '佳能计算机系统有限公司', '800', '800', 'xxx', '1299', '2', '台', '15', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('28', '0019', 'Golden Field/金河田 Q8电脑音响台式多媒体家用音箱低音炮重低音', null, '9', '300', 'Q8', '谷歌计算机系统有限公司', '65', '70', '', '129', '2', '台', '17', null, '2023-06-22 09:13:18', null, '1', null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('29', '0020', 'Haier/海尔冰箱BCD-190WDPT双门电冰箱大两门冷藏冷冻', null, '0', '50', '190WDPT', '海尔家电家器有限公司', '1000', '1000', '', '1699', '0', '台', '14', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('30', '0021', 'Xiaomi/小米 小米电视4A 32英寸 智能液晶平板电视机', null, '0', '320', '4A ', '小米科技计算有限公司', '700', '700', '', '1199', '0', '台', '12', null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('31', '0022', 'TCL XQB55-36SP 5.5公斤全自动波轮迷你小型洗衣机家用单脱抗菌', null, '276', '40', 'XQB55-36SP', 'TCL科学技术发展有限公司', '400', '460', '', '729', '0', '台', '13', null, '2023-04-10 17:51:10', null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('32', '0023', '台湾进口膨化零食品张君雅小妹妹日式串烧丸子80g*2', null, '30', '1000', '80g*2', '台湾安妮食品工业有限公司', '4', '4', '', '15', '0', '袋', '9', null, '2023-04-22 15:56:32', null, '1', null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('33', '0024', '卓图女装立领针织格子印花拼接高腰A字裙2017秋冬新款碎花连衣裙', null, '45', '10', 'A字裙', '卓图时尚女装潮牌', '168', '100', '', '298', '0', '件', '6', null, '2023-04-11 13:03:09', null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('34', '0025', '西服套装男三件套秋季新款商务修身职业正装男士西装新郎结婚礼服', null, '70', '10', '三件套秋', '雅阁私人定制西服', '189', '189', '', '299', '0', '件', '7', null, '2023-04-10 17:17:43', null, null, null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', null, '81', '10', '条', '全球冬季领航者服饰', '60', '13', '', '89', '0', '条', '8', null, '2023-04-24 19:36:37', null, '1', null, null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('55', '0027', 'qq牌甜糖', null, '1102', '100', '1314g装', '全球食品掌控者有限公司', '100', '100', null, '200', '0', '袋', '9', '2023-04-26 18:30:34', '2023-06-27 00:26:56', '1', '1', '', null, null, null, '0', null, null);
INSERT INTO `x_goods` VALUES ('58', '0028', 'OCSILL基础短袖', '99', '995', '100', '宽松基础款001', '保定白沟子阳服装制造', '39', '39', '质量第一', '99', '0', '件', '25', '2023-06-08 20:03:05', '2023-06-27 12:09:54', '1', '1', 'OCSILL基础短袖.jpeg', 'OCSILL基础短袖1.jpg', 'OCSILL基础短袖2.jpg', 'OCSILL基础短袖3.jpg', '1', 'OCSILL 夏季时尚短袖   衣服纯棉短袖T恤 男女同款宽松流行', 'S,M,L,XL,XXL');
INSERT INTO `x_goods` VALUES ('59', '0029', 'OCSILL万菊卫衣', '119', '998', '100', '宽松基础百搭001', '保定白沟子阳服装制造', '59', '59', '质量第一', '119', '0', '件', '26', '2023-06-08 20:06:49', '2023-06-08 20:06:49', '1', '1', 'OCSILL万菊卫衣.jpeg', 'OCSILL万菊卫衣1.jpg', 'OCSILL万菊卫衣2.jpg', 'OCSILL万菊卫衣3.jpg', '1', 'OCSILL万菊卫衣 男女同款 换季新气象 黄菊新配色', 'S,M,L,XL,XXL');
INSERT INTO `x_goods` VALUES ('60', '0030', 'AIR4-蓝白', '1699', '999', '100', '百搭热潮002', '保定白沟子豪鞋类制造', '699', '699', '质量第一', '1699', '0', '双', '24', '2023-06-08 20:09:16', '2023-06-08 20:09:16', '1', '1', 'AIR4-蓝白.jpeg', 'AIR4-蓝白1.jpg', 'AIR4-蓝白2.jpg', 'AIR4-蓝白3.jpg', '1', 'AIR4最热配色 男简单百搭鞋款 质量售后保证 七天无理由退后', '41,42,43,44,45');
INSERT INTO `x_goods` VALUES ('61', '0031', 'NB327暗红', '799', '999', '100', '百搭热潮003', '保定白沟子豪鞋类制造', '399', '399', 'xiaodijiudianhuisushexiedaima', '799', '0', '双', '24', '2023-06-14 20:54:46', '2023-06-14 20:54:46', '1', '1', 'NB327暗红.png', 'NB327暗红1.jpg', 'NB327暗红2.jpg', 'NB327暗红3.jpg', '1', 'NB327 2022休闲鞋春秋新款女同款户外运动鞋 潮流指向日常穿搭必备', '35,36,37,38,39');
INSERT INTO `x_goods` VALUES ('62', '0032', 'NB327浅灰', '699', '1000', '100', '百搭热潮004', '保定白沟子豪鞋类制造', '299', '299', 'duorangxiaodixuexihuibaburangtaaoyelezuijin', '699', '0', '双', '24', '2023-06-14 20:56:33', '2023-06-14 20:56:33', '1', '1', 'NB327浅灰.jpeg', 'NB327浅灰1.jpg', 'NB327浅灰2.jpg', 'NB327浅灰3.jpg', '1', 'NB327 2022休闲鞋春秋新款男女同款户外运动鞋 潮流指向日常穿搭必备', '41,42,43,44,45');
INSERT INTO `x_goods` VALUES ('63', '0033', 'OCSILL长袜', '19', '1000', '100', '百搭热潮005', '保定白沟世贸服饰有限公司', '5', '5', 'wocaixiaodibuhuirangjiaxuanqunazhengshude', '19', '0', '双', '28', '2023-06-14 20:58:39', '2023-06-14 20:58:39', '1', '1', 'OCSILL长袜.jpeg', 'OCSILL长袜1.jpg', 'OCSILL长袜2.jpg', 'OCSILL长袜3.jpg', '1', 'OCSILL长袜 男寒流袭来不想冻脚又不想撞款 本长袜你势在必得', '41,42,43,44,45');
INSERT INTO `x_goods` VALUES ('64', '0034', 'OSCILL针织毛衣', '79', '1000', '100', '百搭热潮006', '保定白沟世贸服饰有限公司', '39', '39', 'wohuiqujiuquna', '79', '0', '件', '26', '2023-06-14 20:59:47', '2023-06-22 10:43:56', '1', '1', 'OSCILL针织毛衣.jpeg', 'OSCILL针织毛衣1.jpg', 'OSCILL针织毛衣2.jpg', 'OSCILL针织毛衣3.jpg', '1', 'OSCILL2022新款毛衣卫衣 喜迎春节 女针织毛衣保质保量无脑冲', 'S,M,L,XL,XXL');
INSERT INTO `x_goods` VALUES ('65', '0035', '直筒牛仔裤', '149', '1', '100', '百搭热潮007', '保定白沟世贸服饰有限公司', '79', '79', 'weishenmezhishaizizongshishu', '149', '0', '条', '8', '2023-06-14 21:02:20', '2023-06-22 10:28:10', '1', '1', '直筒牛仔裤.jpeg', '直筒牛仔裤1.jpg', '直筒牛仔裤2.jpg', '直筒牛仔裤3.jpg', '1', '直筒牛仔裤 2022新款女士直筒牛仔裤 黑色百搭基础款 双十一在即', 'S,M,L');
INSERT INTO `x_goods` VALUES ('66', '0036', 'Nike经典童鞋', '79', '900', '100', '百搭热潮008', '保定白沟国凯时髦鞋类有限公司', '39', '39', 'tianzhuding', '79', '0', '双', '24', '2023-06-14 21:03:45', '2023-06-26 10:47:58', '1', '1', 'Nike经典童鞋.png', 'Nike经典童鞋1.jpg', 'Nike经典童鞋2.jpg', 'Nike经典童鞋3.jpg', '1', 'Nike经典童鞋 孩子穿得舒服自在 时尚潮流性价比很高 专注儿童20年', '21,22,23,24,25');
INSERT INTO `x_goods` VALUES ('67', '0037', 'Nike阿甘系列童鞋', '89', '599', '100', '百搭热潮009', '保定白沟国凯时髦鞋类有限公司', '39', '39', 'mingzhongyouming', '89', '0', '双', '24', '2023-06-14 21:04:49', '2023-06-26 10:47:31', '1', '1', 'Nike阿甘系列童鞋.png', 'Nike阿甘系列童鞋1.jpg', 'Nike阿甘系列童鞋2.jpg', 'Nike阿甘系列童鞋3.jpg', '1', '经典阿甘系列儿童 亲子鞋快来和父母一起成长 买过得都夸', '21,22,23,24,25');

-- ----------------------------
-- Table structure for x_goods_type
-- ----------------------------
DROP TABLE IF EXISTS `x_goods_type`;
CREATE TABLE `x_goods_type` (
  `goods_type_id` int NOT NULL AUTO_INCREMENT COMMENT '商品类别id，主键',
  `goods_type_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品类别名称',
  `p_id` int DEFAULT NULL COMMENT '父商品类别id',
  `goods_type_state` int DEFAULT NULL COMMENT '类别状态，0为叶子节点',
  PRIMARY KEY (`goods_type_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x_goods_type
-- ----------------------------
INSERT INTO `x_goods_type` VALUES ('1', '所有类别', '-1', '1');
INSERT INTO `x_goods_type` VALUES ('2', '服饰', '1', '1');
INSERT INTO `x_goods_type` VALUES ('3', '食品', '1', '1');
INSERT INTO `x_goods_type` VALUES ('4', '家电', '1', '1');
INSERT INTO `x_goods_type` VALUES ('5', '数码', '1', '1');
INSERT INTO `x_goods_type` VALUES ('6', '连衣裙', '2', '0');
INSERT INTO `x_goods_type` VALUES ('7', '男士西装', '2', '0');
INSERT INTO `x_goods_type` VALUES ('8', '牛仔裤', '2', '0');
INSERT INTO `x_goods_type` VALUES ('9', '进口食品', '3', '0');
INSERT INTO `x_goods_type` VALUES ('10', '地方特产', '3', '0');
INSERT INTO `x_goods_type` VALUES ('11', '休闲食品', '3', '0');
INSERT INTO `x_goods_type` VALUES ('12', '电视机', '4', '0');
INSERT INTO `x_goods_type` VALUES ('13', '洗衣机', '4', '0');
INSERT INTO `x_goods_type` VALUES ('14', '冰箱', '4', '0');
INSERT INTO `x_goods_type` VALUES ('15', '相机', '5', '0');
INSERT INTO `x_goods_type` VALUES ('16', '手机', '5', '0');
INSERT INTO `x_goods_type` VALUES ('17', '音箱', '5', '0');
INSERT INTO `x_goods_type` VALUES ('24', '鞋子', '2', '0');
INSERT INTO `x_goods_type` VALUES ('25', '短袖', '2', '0');
INSERT INTO `x_goods_type` VALUES ('26', '卫衣', '2', '0');
INSERT INTO `x_goods_type` VALUES ('27', '童装', '2', '0');
INSERT INTO `x_goods_type` VALUES ('28', '长袜', '2', '0');

-- ----------------------------
-- Table structure for x_log
-- ----------------------------
DROP TABLE IF EXISTS `x_log`;
CREATE TABLE `x_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `log_type` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `log_date` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `FKbvn5yabu3vqwvtjoh32i9r4ip` (`user_id`) USING BTREE,
  CONSTRAINT `t_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `x_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3641 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of x_log
-- ----------------------------
INSERT INTO `x_log` VALUES ('1', '查询操作', '查询所有客户', '2023-04-26 08:06:49', '1');
INSERT INTO `x_log` VALUES ('2', '查询操作', '分页查询客户退货', '2023-04-26 08:06:49', '1');
INSERT INTO `x_log` VALUES ('3', '查询操作', '分页查询客户退货', '2023-04-26 08:06:50', '1');
INSERT INTO `x_log` VALUES ('4', '查询操作', '查询所有客户', '2023-04-26 08:17:39', '1');
INSERT INTO `x_log` VALUES ('5', '查询操作', '分页查询客户退货', '2023-04-26 08:17:39', '1');
INSERT INTO `x_log` VALUES ('6', '查询操作', '分页查询客户退货', '2023-04-26 08:19:07', '1');
INSERT INTO `x_log` VALUES ('7', '查询操作', '查询所有客户', '2023-04-26 08:19:07', '1');
INSERT INTO `x_log` VALUES ('8', '查询操作', '查询客户退货商品:加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '2023-04-26 08:19:36', '1');
INSERT INTO `x_log` VALUES ('9', '查询操作', '查询所有客户', '2023-04-26 08:55:01', '1');
INSERT INTO `x_log` VALUES ('10', '查询操作', '分页查询客户退货', '2023-04-26 08:55:01', '1');
INSERT INTO `x_log` VALUES ('11', '查询操作', '分页查询报损', '2023-04-26 08:55:07', '1');
INSERT INTO `x_log` VALUES ('12', '查询操作', '分页查询报溢', '2023-04-26 08:55:19', '1');
INSERT INTO `x_log` VALUES ('13', '查询操作', '查询所有客户', '2023-04-26 09:10:10', '1');
INSERT INTO `x_log` VALUES ('14', '查询操作', '查询所有客户', '2023-04-26 09:12:24', '1');
INSERT INTO `x_log` VALUES ('15', '查询操作', '分页查询报损', '2023-04-26 09:16:51', '1');
INSERT INTO `x_log` VALUES ('16', '查询操作', '查询报损商品:加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '2023-04-26 09:16:53', '1');
INSERT INTO `x_log` VALUES ('17', '查询操作', '分页查询商品', '2023-04-26 17:51:16', '1');
INSERT INTO `x_log` VALUES ('18', '查询操作', '分页查询商品信息', '2023-04-26 18:14:34', '1');
INSERT INTO `x_log` VALUES ('19', '查询操作', '分页查询商品信息', '2023-04-26 18:25:41', '1');
INSERT INTO `x_log` VALUES ('20', '新增操作', '新增商品:xxdr牌甜糖', '2023-04-26 18:30:35', '1');
INSERT INTO `x_log` VALUES ('21', '查询操作', '分页查询商品信息', '2023-04-26 18:30:35', '1');
INSERT INTO `x_log` VALUES ('22', '查询操作', '查询商品:xxdr牌甜糖', '2023-04-26 18:30:54', '1');
INSERT INTO `x_log` VALUES ('23', '修改操作', '修改商品:xxdr牌甜糖', '2023-04-26 18:30:58', '1');
INSERT INTO `x_log` VALUES ('24', '查询操作', '分页查询商品信息', '2023-04-26 18:30:58', '1');
INSERT INTO `x_log` VALUES ('25', '查询操作', '分页查询商品信息', '2023-04-26 20:13:14', '1');
INSERT INTO `x_log` VALUES ('26', '查询操作', '查询商品类别信息', '2023-04-26 20:24:58', '1');
INSERT INTO `x_log` VALUES ('27', '查询操作', '分页查询商品信息', '2023-04-26 20:24:58', '1');
INSERT INTO `x_log` VALUES ('28', '查询操作', '查询商品类别信息', '2023-04-26 20:37:05', '1');
INSERT INTO `x_log` VALUES ('29', '查询操作', '分页查询商品信息', '2023-04-26 20:37:05', '1');
INSERT INTO `x_log` VALUES ('30', '查询操作', '查询商品类别信息', '2023-04-26 20:37:13', '1');
INSERT INTO `x_log` VALUES ('31', '查询操作', '分页查询商品信息', '2023-04-26 20:37:13', '1');
INSERT INTO `x_log` VALUES ('32', '查询操作', '分页查询报损信息', '2023-04-26 20:37:13', '1');
INSERT INTO `x_log` VALUES ('33', '查询操作', '分页查询报溢信息', '2023-04-26 20:37:16', '1');
INSERT INTO `x_log` VALUES ('34', '查询操作', '查询报溢商品:加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '2023-04-26 20:37:17', '1');
INSERT INTO `x_log` VALUES ('35', '查询操作', '分页查询报损信息', '2023-04-26 20:38:17', '1');
INSERT INTO `x_log` VALUES ('36', '查询操作', '查询报损商品:加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '2023-04-26 20:38:19', '1');
INSERT INTO `x_log` VALUES ('37', '查询操作', '查询商品类别信息', '2023-04-26 20:44:18', '1');
INSERT INTO `x_log` VALUES ('38', '查询操作', '分页查询商品信息', '2023-04-26 20:44:18', '1');
INSERT INTO `x_log` VALUES ('39', '查询操作', '查询商品类别信息', '2023-04-26 20:44:48', '1');
INSERT INTO `x_log` VALUES ('40', '查询操作', '分页查询商品信息', '2023-04-26 20:44:48', '1');
INSERT INTO `x_log` VALUES ('41', '查询操作', '查询商品类别信息', '2023-04-26 20:44:57', '1');
INSERT INTO `x_log` VALUES ('42', '查询操作', '分页查询商品信息', '2023-04-26 20:44:57', '1');
INSERT INTO `x_log` VALUES ('43', '查询操作', '查询商品类别信息', '2023-04-26 20:45:02', '1');
INSERT INTO `x_log` VALUES ('44', '查询操作', '分页查询商品信息', '2023-04-26 20:45:02', '1');
INSERT INTO `x_log` VALUES ('45', '查询操作', '查询商品类别信息', '2023-04-26 20:47:09', '1');
INSERT INTO `x_log` VALUES ('46', '查询操作', '分页查询商品信息', '2023-04-26 20:47:09', '1');
INSERT INTO `x_log` VALUES ('47', '查询操作', '查询商品类别信息', '2023-04-26 20:49:28', '1');
INSERT INTO `x_log` VALUES ('48', '查询操作', '分页查询商品采购信息', '2023-04-26 20:49:28', '1');
INSERT INTO `x_log` VALUES ('49', '查询操作', '分页查询商品信息', '2023-04-26 20:49:28', '1');
INSERT INTO `x_log` VALUES ('50', '查询操作', '查询商品类别信息', '2023-04-26 20:56:59', '1');
INSERT INTO `x_log` VALUES ('51', '查询操作', '分页查询商品采购信息', '2023-04-26 20:56:59', '1');
INSERT INTO `x_log` VALUES ('52', '查询操作', '分页查询商品信息', '2023-04-26 20:56:59', '1');
INSERT INTO `x_log` VALUES ('53', '查询操作', '查询商品类别信息', '2023-04-26 20:57:03', '1');
INSERT INTO `x_log` VALUES ('54', '查询操作', '分页查询商品信息', '2023-04-26 20:57:03', '1');
INSERT INTO `x_log` VALUES ('55', '查询操作', '查询商品类别信息', '2023-04-26 20:57:37', '1');
INSERT INTO `x_log` VALUES ('56', '查询操作', '分页查询进货信息', '2023-04-26 20:57:37', '1');
INSERT INTO `x_log` VALUES ('57', '查询操作', '分页查询商品信息', '2023-04-26 20:57:37', '1');
INSERT INTO `x_log` VALUES ('58', '修改操作', '进货单号JH1645662860848373761现在付款', '2023-04-26 20:57:40', '1');
INSERT INTO `x_log` VALUES ('59', '查询操作', '分页查询进货信息', '2023-04-26 20:57:40', '1');
INSERT INTO `x_log` VALUES ('60', '查询操作', '查询商品类别信息', '2023-04-26 21:02:55', '1');
INSERT INTO `x_log` VALUES ('61', '查询操作', '分页查询进货信息', '2023-04-26 21:02:55', '1');
INSERT INTO `x_log` VALUES ('62', '查询操作', '分页查询商品信息', '2023-04-26 21:02:55', '1');
INSERT INTO `x_log` VALUES ('63', '查询操作', '查询进货商品:加加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '2023-04-26 21:02:56', '1');
INSERT INTO `x_log` VALUES ('64', '查询操作', '查询商品类别信息', '2023-04-26 21:43:12', '1');
INSERT INTO `x_log` VALUES ('65', '查询操作', '分页查询商品信息', '2023-04-26 21:43:12', '1');
INSERT INTO `x_log` VALUES ('66', '查询操作', '查询商品类别信息', '2023-04-26 21:44:02', '1');
INSERT INTO `x_log` VALUES ('67', '查询操作', '分页查询商品信息', '2023-04-26 21:44:02', '1');
INSERT INTO `x_log` VALUES ('68', '查询操作', '查询商品类别信息', '2023-04-26 21:44:25', '1');
INSERT INTO `x_log` VALUES ('69', '查询操作', '分页查询商品信息', '2023-04-26 21:44:25', '1');
INSERT INTO `x_log` VALUES ('70', '查询操作', '分页查询进货信息', '2023-04-26 21:44:25', '1');
INSERT INTO `x_log` VALUES ('71', '查询操作', '分页查询进货信息', '2023-04-26 21:48:51', '1');
INSERT INTO `x_log` VALUES ('72', '查询操作', '查询商品类别信息', '2023-04-26 21:48:51', '1');
INSERT INTO `x_log` VALUES ('73', '查询操作', '分页查询商品信息', '2023-04-26 21:48:51', '1');
INSERT INTO `x_log` VALUES ('74', '查询操作', '查询商品类别信息', '2023-04-26 21:48:54', '1');
INSERT INTO `x_log` VALUES ('75', '查询操作', '分页查询商品信息', '2023-04-26 21:48:54', '1');
INSERT INTO `x_log` VALUES ('76', '查询操作', '分页查询退货信息', '2023-04-26 21:48:54', '1');
INSERT INTO `x_log` VALUES ('77', '查询操作', '查询退货商品:西服套装男三件套秋季新款商务修身职业正装男士西装新郎结婚礼服', '2023-04-26 21:48:55', '1');
INSERT INTO `x_log` VALUES ('78', '查询操作', '分页查询角色信息', '2023-04-26 22:01:06', '1');
INSERT INTO `x_log` VALUES ('79', '查询操作', '查询角色:admin', '2023-04-26 22:01:07', '1');
INSERT INTO `x_log` VALUES ('80', '查询操作', '查询角色:hr', '2023-04-26 22:01:24', '1');
INSERT INTO `x_log` VALUES ('81', '查询操作', '查询按日统计', '2023-04-27 07:58:01', '1');
INSERT INTO `x_log` VALUES ('82', '查询操作', '查询按日统计', '2023-04-27 07:58:13', '1');
INSERT INTO `x_log` VALUES ('83', '查询操作', '查询按月统计', '2023-04-27 07:59:30', '1');
INSERT INTO `x_log` VALUES ('84', '查询操作', '查询按月统计', '2023-04-27 07:59:41', '1');
INSERT INTO `x_log` VALUES ('85', '查询操作', '查询按月统计', '2023-04-27 07:59:58', '1');
INSERT INTO `x_log` VALUES ('86', '查询操作', '查询所有客户', '2023-04-27 08:08:45', '1');
INSERT INTO `x_log` VALUES ('87', '查询操作', '查询商品类别信息', '2023-04-27 08:08:45', '1');
INSERT INTO `x_log` VALUES ('88', '查询操作', '分页查询商品信息', '2023-04-27 08:08:45', '1');
INSERT INTO `x_log` VALUES ('89', '查询操作', '查询销售商品:加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '2023-04-27 08:08:46', '1');
INSERT INTO `x_log` VALUES ('90', '查询操作', '查询所有客户', '2023-04-27 08:11:05', '1');
INSERT INTO `x_log` VALUES ('91', '查询操作', '查询商品类别信息', '2023-04-27 08:11:05', '1');
INSERT INTO `x_log` VALUES ('92', '查询操作', '分页查询商品信息', '2023-04-27 08:11:05', '1');
INSERT INTO `x_log` VALUES ('93', '查询操作', '分页查询库存信息', '2023-04-27 08:11:11', '1');
INSERT INTO `x_log` VALUES ('94', '查询操作', '查询商品类别信息', '2023-04-27 08:16:21', '1');
INSERT INTO `x_log` VALUES ('95', '查询操作', '分页查询商品信息', '2023-04-27 08:16:21', '1');
INSERT INTO `x_log` VALUES ('96', '查询操作', '分页查询供应商信息', '2023-04-27 08:25:32', '1');
INSERT INTO `x_log` VALUES ('97', '查询操作', '分页查询供应商信息', '2023-04-27 08:25:38', '1');
INSERT INTO `x_log` VALUES ('98', '查询操作', '查询供应商:临安高朋食品有限公司', '2023-04-27 08:25:39', '1');
INSERT INTO `x_log` VALUES ('99', '查询操作', '分页查询供应商信息', '2023-04-27 08:38:39', '1');
INSERT INTO `x_log` VALUES ('100', '退出操作', '退出登录', '2023-04-27 08:38:49', null);
INSERT INTO `x_log` VALUES ('101', '退出操作', '退出登录', '2023-04-27 08:44:41', null);
INSERT INTO `x_log` VALUES ('102', '查询操作', '查询按日统计', '2023-04-27 09:07:04', '1');
INSERT INTO `x_log` VALUES ('103', '查询操作', '查询按月统计', '2023-04-27 09:07:17', '1');
INSERT INTO `x_log` VALUES ('104', '查询操作', '查询按月统计', '2023-04-27 09:07:38', '1');
INSERT INTO `x_log` VALUES ('105', '查询操作', '查询按日统计', '2023-04-27 09:07:45', '1');
INSERT INTO `x_log` VALUES ('106', '查询操作', '查询所有客户', '2023-05-05 09:42:44', '1');
INSERT INTO `x_log` VALUES ('107', '查询操作', '查询商品类别信息', '2023-05-05 09:42:44', '1');
INSERT INTO `x_log` VALUES ('108', '查询操作', '分页查询商品信息', '2023-05-05 09:42:44', '1');
INSERT INTO `x_log` VALUES ('109', '查询操作', '查询按日统计', '2023-05-05 09:42:54', '1');
INSERT INTO `x_log` VALUES ('110', '查询操作', '查询所有客户', '2023-05-05 09:50:17', '1');
INSERT INTO `x_log` VALUES ('111', '查询操作', '查询商品类别信息', '2023-05-05 09:50:17', '1');
INSERT INTO `x_log` VALUES ('112', '查询操作', '分页查询商品信息', '2023-05-05 09:50:17', '1');
INSERT INTO `x_log` VALUES ('113', '查询操作', '查询所有角色', '2023-05-05 09:50:25', '1');
INSERT INTO `x_log` VALUES ('114', '查询操作', '分页查询用户信息', '2023-05-05 09:50:25', '1');
INSERT INTO `x_log` VALUES ('115', '查询操作', '查询所有客户', '2023-05-05 09:50:32', '1');
INSERT INTO `x_log` VALUES ('116', '查询操作', '查询商品类别信息', '2023-05-05 09:50:32', '1');
INSERT INTO `x_log` VALUES ('117', '查询操作', '分页查询商品信息', '2023-05-05 09:50:32', '1');
INSERT INTO `x_log` VALUES ('118', '查询操作', '查询所有客户', '2023-05-05 09:53:54', '1');
INSERT INTO `x_log` VALUES ('119', '查询操作', '查询商品类别信息', '2023-05-05 09:53:54', '1');
INSERT INTO `x_log` VALUES ('120', '查询操作', '分页查询商品信息', '2023-05-05 09:53:54', '1');
INSERT INTO `x_log` VALUES ('121', '查询操作', '分页查询角色信息', '2023-05-05 09:53:56', '1');
INSERT INTO `x_log` VALUES ('122', '查询操作', '查询角色:admin', '2023-05-05 09:53:58', '1');
INSERT INTO `x_log` VALUES ('123', '修改操作', '修改角色:admin', '2023-05-05 09:54:01', '1');
INSERT INTO `x_log` VALUES ('124', '查询操作', '分页查询角色信息', '2023-05-05 09:54:01', '1');
INSERT INTO `x_log` VALUES ('125', '查询操作', '分页查询角色信息', '2023-05-05 09:54:04', '1');
INSERT INTO `x_log` VALUES ('126', '查询操作', '查询商品类别信息', '2023-05-05 09:54:06', '1');
INSERT INTO `x_log` VALUES ('127', '查询操作', '查询所有客户', '2023-05-05 09:54:06', '1');
INSERT INTO `x_log` VALUES ('128', '查询操作', '分页查询商品信息', '2023-05-05 09:54:06', '1');
INSERT INTO `x_log` VALUES ('129', '查询操作', '查询商品类别信息', '2023-05-05 09:57:39', '1');
INSERT INTO `x_log` VALUES ('130', '查询操作', '分页查询商品信息', '2023-05-05 09:57:39', '1');
INSERT INTO `x_log` VALUES ('131', '查询操作', '查询所有供应商', '2023-05-05 09:57:39', '1');
INSERT INTO `x_log` VALUES ('132', '查询操作', '分页查询供应商统计', '2023-05-05 09:57:39', '1');
INSERT INTO `x_log` VALUES ('133', '查询操作', '查询所有角色', '2023-05-05 09:57:52', '1');
INSERT INTO `x_log` VALUES ('134', '查询操作', '分页查询用户信息', '2023-05-05 09:57:52', '1');
INSERT INTO `x_log` VALUES ('135', '查询操作', '查询商品类别信息', '2023-05-05 10:01:20', '1');
INSERT INTO `x_log` VALUES ('136', '查询操作', '查询所有客户', '2023-05-05 10:01:20', '1');
INSERT INTO `x_log` VALUES ('137', '查询操作', '分页查询商品信息', '2023-05-05 10:01:20', '1');
INSERT INTO `x_log` VALUES ('138', '查询操作', '查询所有角色', '2023-05-05 10:02:31', '1');
INSERT INTO `x_log` VALUES ('139', '查询操作', '分页查询用户信息', '2023-05-05 10:02:31', '1');
INSERT INTO `x_log` VALUES ('140', '查询操作', '查询所有客户', '2023-05-05 10:03:05', '1');
INSERT INTO `x_log` VALUES ('141', '查询操作', '查询商品类别信息', '2023-05-05 10:03:05', '1');
INSERT INTO `x_log` VALUES ('142', '查询操作', '分页查询商品信息', '2023-05-05 10:03:05', '1');
INSERT INTO `x_log` VALUES ('143', '查询操作', '分页查询供应商信息', '2023-05-05 10:06:38', '1');
INSERT INTO `x_log` VALUES ('144', '查询操作', '查询所有供应商', '2023-05-05 10:06:45', '1');
INSERT INTO `x_log` VALUES ('145', '查询操作', '查询商品类别信息', '2023-05-05 10:06:45', '1');
INSERT INTO `x_log` VALUES ('146', '查询操作', '分页查询供应商统计', '2023-05-05 10:06:45', '1');
INSERT INTO `x_log` VALUES ('147', '查询操作', '分页查询商品信息', '2023-05-05 10:06:45', '1');
INSERT INTO `x_log` VALUES ('148', '查询操作', '查询商品类别信息', '2023-05-05 10:06:50', '1');
INSERT INTO `x_log` VALUES ('149', '查询操作', '查询所有客户', '2023-05-05 10:06:50', '1');
INSERT INTO `x_log` VALUES ('150', '查询操作', '分页查询商品信息', '2023-05-05 10:06:50', '1');
INSERT INTO `x_log` VALUES ('151', '查询操作', '查询商品类别信息', '2023-05-05 10:07:00', '1');
INSERT INTO `x_log` VALUES ('152', '查询操作', '查询所有客户', '2023-05-05 10:07:00', '1');
INSERT INTO `x_log` VALUES ('153', '查询操作', '分页查询商品信息', '2023-05-05 10:07:00', '1');
INSERT INTO `x_log` VALUES ('154', '查询操作', '查询商品类别信息', '2023-05-05 10:07:04', '1');
INSERT INTO `x_log` VALUES ('155', '查询操作', '查询所有客户', '2023-05-05 10:07:04', '1');
INSERT INTO `x_log` VALUES ('156', '查询操作', '分页查询商品信息', '2023-05-05 10:07:04', '1');
INSERT INTO `x_log` VALUES ('157', '查询操作', '查询商品类别信息', '2023-05-05 10:07:11', '1');
INSERT INTO `x_log` VALUES ('158', '查询操作', '分页查询商品信息', '2023-05-05 10:07:11', '1');
INSERT INTO `x_log` VALUES ('159', '查询操作', '分页查询商品信息', '2023-05-05 10:07:14', '1');
INSERT INTO `x_log` VALUES ('160', '查询操作', '分页查询商品信息', '2023-05-05 10:07:18', '1');
INSERT INTO `x_log` VALUES ('161', '新增操作', '新增商品:ccc', '2023-05-05 10:08:11', '1');
INSERT INTO `x_log` VALUES ('162', '查询操作', '分页查询商品信息', '2023-05-05 10:08:11', '1');
INSERT INTO `x_log` VALUES ('163', '查询操作', '查询商品:ccc', '2023-05-05 10:08:13', '1');
INSERT INTO `x_log` VALUES ('164', '修改操作', '修改商品:ccc', '2023-05-05 10:08:17', '1');
INSERT INTO `x_log` VALUES ('165', '查询操作', '分页查询商品信息', '2023-05-05 10:08:17', '1');
INSERT INTO `x_log` VALUES ('166', '查询操作', '查询商品类别信息', '2023-05-05 10:12:27', '1');
INSERT INTO `x_log` VALUES ('167', '查询操作', '分页查询商品信息', '2023-05-05 10:12:27', '1');
INSERT INTO `x_log` VALUES ('168', '新增操作', '新增商品:jjjj', '2023-05-05 10:13:03', '1');
INSERT INTO `x_log` VALUES ('169', '查询操作', '分页查询商品信息', '2023-05-05 10:13:03', '1');
INSERT INTO `x_log` VALUES ('170', '删除操作', '删除商品:jjjj', '2023-05-05 10:13:06', '1');
INSERT INTO `x_log` VALUES ('171', '查询操作', '分页查询商品信息', '2023-05-05 10:13:06', '1');
INSERT INTO `x_log` VALUES ('172', '查询操作', '查询商品类别信息', '2023-05-05 11:05:18', '1');
INSERT INTO `x_log` VALUES ('173', '查询操作', '分页查询商品信息', '2023-05-05 11:05:18', '1');
INSERT INTO `x_log` VALUES ('174', '查询操作', '查询所有用户', '2023-05-05 11:05:24', '1');
INSERT INTO `x_log` VALUES ('175', '查询操作', '查询所有用户', '2023-05-05 11:05:51', '1');
INSERT INTO `x_log` VALUES ('176', '查询操作', '查询所有用户', '2023-05-05 11:09:06', '1');
INSERT INTO `x_log` VALUES ('177', '查询操作', '查询所有用户', '2023-05-05 11:09:12', '1');
INSERT INTO `x_log` VALUES ('178', '查询操作', '查询所有用户', '2023-05-05 11:09:28', '1');
INSERT INTO `x_log` VALUES ('179', '查询操作', '查询所有用户', '2023-05-05 11:09:52', '1');
INSERT INTO `x_log` VALUES ('180', '查询操作', '查询所有用户', '2023-05-05 11:09:56', '1');
INSERT INTO `x_log` VALUES ('181', '查询操作', '查询所有用户', '2023-05-05 11:10:46', '1');
INSERT INTO `x_log` VALUES ('182', '查询操作', '查询所有用户', '2023-05-05 11:11:30', '1');
INSERT INTO `x_log` VALUES ('183', '查询操作', '查询所有用户', '2023-05-05 11:14:14', '1');
INSERT INTO `x_log` VALUES ('184', '查询操作', '查询所有用户', '2023-05-05 11:14:46', '1');
INSERT INTO `x_log` VALUES ('185', '查询操作', '查询所有用户', '2023-05-05 11:14:51', '1');
INSERT INTO `x_log` VALUES ('186', '查询操作', '查询所有用户', '2023-05-05 11:15:09', '1');
INSERT INTO `x_log` VALUES ('187', '查询操作', '查询所有用户', '2023-05-05 11:17:44', '1');
INSERT INTO `x_log` VALUES ('188', '查询操作', '查询商品类别信息', '2023-05-05 11:17:52', '1');
INSERT INTO `x_log` VALUES ('189', '查询操作', '查询所有客户', '2023-05-05 11:17:52', '1');
INSERT INTO `x_log` VALUES ('190', '查询操作', '分页查询商品信息', '2023-05-05 11:17:52', '1');
INSERT INTO `x_log` VALUES ('191', '查询操作', '查询商品类别信息', '2023-05-05 11:23:15', '1');
INSERT INTO `x_log` VALUES ('192', '查询操作', '查询所有客户', '2023-05-05 11:23:15', '1');
INSERT INTO `x_log` VALUES ('193', '查询操作', '分页查询商品信息', '2023-05-05 11:23:15', '1');
INSERT INTO `x_log` VALUES ('194', '查询操作', '查询所有用户', '2023-05-05 11:23:17', '1');
INSERT INTO `x_log` VALUES ('195', '查询操作', '查询所有用户', '2023-05-05 11:23:44', '1');
INSERT INTO `x_log` VALUES ('196', '查询操作', '查询所有用户', '2023-05-05 11:23:47', '1');
INSERT INTO `x_log` VALUES ('197', '查询操作', '查询所有用户', '2023-05-05 11:28:00', '1');
INSERT INTO `x_log` VALUES ('198', '查询操作', '查询所有用户', '2023-05-05 12:08:47', '1');
INSERT INTO `x_log` VALUES ('199', '查询操作', '查询所有用户', '2023-05-05 14:09:15', '1');
INSERT INTO `x_log` VALUES ('200', '查询操作', '查询所有用户', '2023-05-05 14:10:54', '1');
INSERT INTO `x_log` VALUES ('201', '查询操作', '查询所有用户', '2023-05-05 14:12:53', '1');
INSERT INTO `x_log` VALUES ('202', '查询操作', '查询所有用户', '2023-05-05 14:13:22', '1');
INSERT INTO `x_log` VALUES ('203', '查询操作', '分页查询角色信息', '2023-05-05 14:14:33', '1');
INSERT INTO `x_log` VALUES ('204', '查询操作', '分页查询角色信息', '2023-05-05 14:16:15', '1');
INSERT INTO `x_log` VALUES ('205', '查询操作', '查询所有用户', '2023-05-05 14:16:17', '1');
INSERT INTO `x_log` VALUES ('206', '查询操作', '查询所有用户', '2023-05-05 14:16:39', '1');
INSERT INTO `x_log` VALUES ('207', '查询操作', '查询所有客户', '2023-05-05 14:17:14', '1');
INSERT INTO `x_log` VALUES ('208', '查询操作', '查询商品类别信息', '2023-05-05 14:17:14', '1');
INSERT INTO `x_log` VALUES ('209', '查询操作', '分页查询商品信息', '2023-05-05 14:17:14', '1');
INSERT INTO `x_log` VALUES ('210', '查询操作', '查询所有用户', '2023-05-05 14:19:31', '1');
INSERT INTO `x_log` VALUES ('211', '查询操作', '查询所有用户', '2023-05-05 14:19:44', '1');
INSERT INTO `x_log` VALUES ('212', '退出操作', '退出登录', '2023-05-05 14:20:12', null);
INSERT INTO `x_log` VALUES ('213', '查询操作', '查询所有用户', '2023-05-05 14:20:18', '1');
INSERT INTO `x_log` VALUES ('214', '查询操作', '查询所有用户', '2023-05-05 14:21:41', '1');
INSERT INTO `x_log` VALUES ('215', '查询操作', '查询商品类别信息', '2023-05-05 14:24:27', '1');
INSERT INTO `x_log` VALUES ('216', '查询操作', '查询所有供应商', '2023-05-05 14:24:27', '1');
INSERT INTO `x_log` VALUES ('217', '查询操作', '分页查询商品信息', '2023-05-05 14:24:27', '1');
INSERT INTO `x_log` VALUES ('218', '查询操作', '分页查询进货信息', '2023-05-05 14:24:27', '1');
INSERT INTO `x_log` VALUES ('219', '查询操作', '查询所有用户', '2023-05-05 14:26:00', '1');
INSERT INTO `x_log` VALUES ('220', '查询操作', '查询所有用户', '2023-05-05 14:27:08', '1');
INSERT INTO `x_log` VALUES ('221', '查询操作', '查询所有用户', '2023-05-05 14:28:27', '1');
INSERT INTO `x_log` VALUES ('222', '查询操作', '查询商品类别信息', '2023-05-05 14:30:14', '1');
INSERT INTO `x_log` VALUES ('223', '查询操作', '查询所有供应商', '2023-05-05 14:30:14', '1');
INSERT INTO `x_log` VALUES ('224', '查询操作', '分页查询进货信息', '2023-05-05 14:30:14', '1');
INSERT INTO `x_log` VALUES ('225', '查询操作', '分页查询商品信息', '2023-05-05 14:30:14', '1');
INSERT INTO `x_log` VALUES ('226', '查询操作', '查询所有用户', '2023-05-05 14:32:15', '1');
INSERT INTO `x_log` VALUES ('227', '查询操作', '查询所有用户', '2023-05-05 14:32:17', '1');
INSERT INTO `x_log` VALUES ('228', '查询操作', '查询所有用户', '2023-05-05 14:33:20', '1');
INSERT INTO `x_log` VALUES ('229', '查询操作', '查询所有用户', '2023-05-05 14:34:53', '1');
INSERT INTO `x_log` VALUES ('230', '查询操作', '查询所有用户', '2023-05-05 14:38:06', '1');
INSERT INTO `x_log` VALUES ('231', '查询操作', '查询所有用户', '2023-05-05 14:38:15', '1');
INSERT INTO `x_log` VALUES ('232', '查询操作', '查询所有用户', '2023-05-05 14:43:16', '1');
INSERT INTO `x_log` VALUES ('233', '查询操作', '查询商品类别信息', '2023-05-05 14:43:38', '1');
INSERT INTO `x_log` VALUES ('234', '查询操作', '查询所有供应商', '2023-05-05 14:43:38', '1');
INSERT INTO `x_log` VALUES ('235', '查询操作', '分页查询进货信息', '2023-05-05 14:43:38', '1');
INSERT INTO `x_log` VALUES ('236', '查询操作', '分页查询商品信息', '2023-05-05 14:43:38', '1');
INSERT INTO `x_log` VALUES ('237', '查询操作', '查询所有用户', '2023-05-05 14:43:40', '1');
INSERT INTO `x_log` VALUES ('238', '查询操作', '查询所有用户', '2023-05-05 14:45:34', '1');
INSERT INTO `x_log` VALUES ('239', '查询操作', '查询商品类别信息', '2023-05-05 14:53:00', '1');
INSERT INTO `x_log` VALUES ('240', '查询操作', '查询所有供应商', '2023-05-05 14:53:00', '1');
INSERT INTO `x_log` VALUES ('241', '查询操作', '分页查询进货信息', '2023-05-05 14:53:00', '1');
INSERT INTO `x_log` VALUES ('242', '查询操作', '分页查询商品信息', '2023-05-05 14:53:00', '1');
INSERT INTO `x_log` VALUES ('243', '查询操作', '查询所有用户', '2023-05-05 14:53:03', '1');
INSERT INTO `x_log` VALUES ('244', '查询操作', '查询所有用户', '2023-05-05 14:57:05', '1');
INSERT INTO `x_log` VALUES ('245', '查询操作', '查询所有用户', '2023-05-05 15:01:14', '1');
INSERT INTO `x_log` VALUES ('246', '退出操作', '退出登录', '2023-05-05 15:03:35', '1');
INSERT INTO `x_log` VALUES ('247', '查询操作', '查询所有用户', '2023-05-05 15:03:47', '1');
INSERT INTO `x_log` VALUES ('248', '查询操作', '分页查询角色信息', '2023-05-05 15:10:49', '1');
INSERT INTO `x_log` VALUES ('249', '查询操作', '查询角色:admin', '2023-05-05 15:10:51', '1');
INSERT INTO `x_log` VALUES ('250', '修改操作', '修改角色:admin', '2023-05-05 15:10:54', '1');
INSERT INTO `x_log` VALUES ('251', '查询操作', '分页查询角色信息', '2023-05-05 15:10:54', '1');
INSERT INTO `x_log` VALUES ('252', '退出操作', '退出登录', '2023-05-05 15:12:37', '14');
INSERT INTO `x_log` VALUES ('253', '退出操作', '退出登录', '2023-05-05 15:12:55', '14');
INSERT INTO `x_log` VALUES ('254', '查询操作', '查询所有用户', '2023-05-05 15:15:27', '1');
INSERT INTO `x_log` VALUES ('255', '查询操作', '分页查询角色信息', '2023-05-05 15:15:31', '1');
INSERT INTO `x_log` VALUES ('256', '查询操作', '查询角色:admin', '2023-05-05 15:15:32', '1');
INSERT INTO `x_log` VALUES ('257', '修改操作', '修改角色:admin', '2023-05-05 15:15:35', '1');
INSERT INTO `x_log` VALUES ('258', '查询操作', '分页查询角色信息', '2023-05-05 15:15:36', '1');
INSERT INTO `x_log` VALUES ('259', '查询操作', '分页查询角色信息', '2023-05-05 15:15:38', '1');
INSERT INTO `x_log` VALUES ('260', '查询操作', '分页查询角色信息', '2023-05-05 15:16:53', '1');
INSERT INTO `x_log` VALUES ('261', '查询操作', '查询所有用户', '2023-05-05 15:16:54', '1');
INSERT INTO `x_log` VALUES ('262', '退出操作', '退出登录', '2023-05-05 15:22:05', '1');
INSERT INTO `x_log` VALUES ('263', '退出操作', '退出登录', '2023-05-05 15:28:29', '1');
INSERT INTO `x_log` VALUES ('264', '退出操作', '退出登录', '2023-05-05 15:28:45', '14');
INSERT INTO `x_log` VALUES ('265', '退出操作', '退出登录', '2023-05-05 15:33:48', '1');
INSERT INTO `x_log` VALUES ('266', '退出操作', '退出登录', '2023-05-05 15:34:15', '1');
INSERT INTO `x_log` VALUES ('267', '退出操作', '退出登录', '2023-05-05 15:34:53', '1');
INSERT INTO `x_log` VALUES ('268', '退出操作', '退出登录', '2023-05-05 15:39:30', '1');
INSERT INTO `x_log` VALUES ('269', '查询操作', '查询用户:admin', '2023-05-05 16:35:21', '1');
INSERT INTO `x_log` VALUES ('270', '查询操作', '查询用户:admin', '2023-05-05 16:49:58', '1');
INSERT INTO `x_log` VALUES ('271', '退出操作', '退出登录', '2023-05-05 17:52:28', '1');
INSERT INTO `x_log` VALUES ('272', '修改操作', '修改用户:admin', '2023-05-06 08:01:08', '1');
INSERT INTO `x_log` VALUES ('273', '退出操作', '退出登录', '2023-05-06 08:03:57', '1');
INSERT INTO `x_log` VALUES ('274', '修改操作', '修改用户:zhangsan', '2023-05-06 08:04:13', '14');
INSERT INTO `x_log` VALUES ('275', '退出操作', '退出登录', '2023-05-06 08:04:16', '14');
INSERT INTO `x_log` VALUES ('276', '退出操作', '退出登录', '2023-05-06 08:06:13', '1');
INSERT INTO `x_log` VALUES ('277', '退出操作', '退出登录', '2023-05-06 08:06:18', '1');
INSERT INTO `x_log` VALUES ('278', '查询操作', '查询用户:admin', '2023-05-06 08:15:40', '1');
INSERT INTO `x_log` VALUES ('279', '退出操作', '退出登录', '2023-05-06 08:16:24', '1');
INSERT INTO `x_log` VALUES ('280', '退出操作', '退出登录', '2023-05-06 08:45:37', '1');
INSERT INTO `x_log` VALUES ('281', '退出操作', '退出登录', '2023-05-06 08:45:44', '1');
INSERT INTO `x_log` VALUES ('282', '退出操作', '退出登录', '2023-05-06 08:48:14', '1');
INSERT INTO `x_log` VALUES ('283', '退出操作', '退出登录', '2023-05-06 08:48:51', '14');
INSERT INTO `x_log` VALUES ('284', '退出操作', '退出登录', '2023-05-06 08:50:49', '14');
INSERT INTO `x_log` VALUES ('285', '退出操作', '退出登录', '2023-05-06 08:53:46', '14');
INSERT INTO `x_log` VALUES ('286', '退出操作', '退出登录', '2023-05-06 08:55:46', '14');
INSERT INTO `x_log` VALUES ('287', '查询操作', '查询所有用户', '2023-05-06 09:18:49', '1');
INSERT INTO `x_log` VALUES ('288', '查询操作', '分页查询角色信息', '2023-05-06 09:20:08', '1');
INSERT INTO `x_log` VALUES ('289', '查询操作', '查询角色:admin', '2023-05-06 09:20:09', '1');
INSERT INTO `x_log` VALUES ('290', '修改操作', '修改角色:admin', '2023-05-06 09:20:13', '1');
INSERT INTO `x_log` VALUES ('291', '查询操作', '分页查询角色信息', '2023-05-06 09:20:13', '1');
INSERT INTO `x_log` VALUES ('292', '查询操作', '查询所有用户', '2023-05-06 09:20:19', '1');
INSERT INTO `x_log` VALUES ('293', '查询操作', '查询所有用户', '2023-05-06 09:20:26', '1');
INSERT INTO `x_log` VALUES ('294', '查询操作', '查询所有用户', '2023-05-06 09:21:06', '1');
INSERT INTO `x_log` VALUES ('295', '查询操作', '查询所有角色', '2023-05-06 09:21:19', '1');
INSERT INTO `x_log` VALUES ('296', '查询操作', '分页查询用户信息', '2023-05-06 09:21:19', '1');
INSERT INTO `x_log` VALUES ('297', '查询操作', '查询所有用户', '2023-05-06 09:21:21', '1');
INSERT INTO `x_log` VALUES ('298', '查询操作', '查询所有客户', '2023-05-06 09:23:21', '1');
INSERT INTO `x_log` VALUES ('299', '查询操作', '查询商品类别信息', '2023-05-06 09:23:21', '1');
INSERT INTO `x_log` VALUES ('300', '查询操作', '分页查询客户统计', '2023-05-06 09:23:21', '1');
INSERT INTO `x_log` VALUES ('301', '查询操作', '分页查询商品信息', '2023-05-06 09:23:21', '1');
INSERT INTO `x_log` VALUES ('302', '查询操作', '查询商品类别信息', '2023-05-06 09:23:24', '1');
INSERT INTO `x_log` VALUES ('303', '查询操作', '分页查询商品信息', '2023-05-06 09:23:24', '1');
INSERT INTO `x_log` VALUES ('304', '查询操作', '分页查询商品采购信息', '2023-05-06 09:23:24', '1');
INSERT INTO `x_log` VALUES ('305', '查询操作', '查询按日统计', '2023-05-06 09:23:28', '1');
INSERT INTO `x_log` VALUES ('306', '查询操作', '查询按日统计', '2023-05-06 09:23:35', '1');
INSERT INTO `x_log` VALUES ('307', '查询操作', '查询按月统计', '2023-05-06 09:23:46', '1');
INSERT INTO `x_log` VALUES ('308', '查询操作', '查询商品类别信息', '2023-05-07 08:55:57', '1');
INSERT INTO `x_log` VALUES ('309', '查询操作', '查询所有客户', '2023-05-07 08:55:57', '1');
INSERT INTO `x_log` VALUES ('310', '查询操作', '分页查询商品信息', '2023-05-07 08:55:57', '1');
INSERT INTO `x_log` VALUES ('311', '查询操作', '查询按日统计', '2023-05-07 08:56:54', '1');
INSERT INTO `x_log` VALUES ('312', '退出操作', '退出登录', '2023-05-09 08:24:48', '1');
INSERT INTO `x_log` VALUES ('313', '退出操作', '退出登录', '2023-05-09 08:27:03', '1');
INSERT INTO `x_log` VALUES ('314', '查询操作', '查询所有供应商', '2023-05-09 08:42:33', '1');
INSERT INTO `x_log` VALUES ('315', '查询操作', '查询商品类别信息', '2023-05-09 08:42:33', '1');
INSERT INTO `x_log` VALUES ('316', '查询操作', '分页查询商品信息', '2023-05-09 08:42:33', '1');
INSERT INTO `x_log` VALUES ('317', '查询操作', '查询商品类别信息', '2023-05-09 08:42:36', '1');
INSERT INTO `x_log` VALUES ('318', '查询操作', '查询所有供应商', '2023-05-09 08:42:36', '1');
INSERT INTO `x_log` VALUES ('319', '查询操作', '分页查询商品信息', '2023-05-09 08:42:36', '1');
INSERT INTO `x_log` VALUES ('320', '查询操作', '查询商品类别信息', '2023-05-09 08:42:39', '1');
INSERT INTO `x_log` VALUES ('321', '查询操作', '查询所有供应商', '2023-05-09 08:42:39', '1');
INSERT INTO `x_log` VALUES ('322', '查询操作', '分页查询商品信息', '2023-05-09 08:42:39', '1');
INSERT INTO `x_log` VALUES ('323', '查询操作', '分页查询进货信息', '2023-05-09 08:42:39', '1');
INSERT INTO `x_log` VALUES ('324', '查询操作', '查询商品类别信息', '2023-05-09 08:42:40', '1');
INSERT INTO `x_log` VALUES ('325', '查询操作', '查询所有供应商', '2023-05-09 08:42:40', '1');
INSERT INTO `x_log` VALUES ('326', '查询操作', '分页查询商品信息', '2023-05-09 08:42:40', '1');
INSERT INTO `x_log` VALUES ('327', '查询操作', '查询商品:xxdr牌甜糖', '2023-05-09 08:42:41', '1');
INSERT INTO `x_log` VALUES ('328', '新增操作', '新增进货商品:xxdr牌甜糖', '2023-05-09 08:43:03', '1');
INSERT INTO `x_log` VALUES ('329', '查询操作', '分页查询商品信息', '2023-05-09 08:43:03', '1');
INSERT INTO `x_log` VALUES ('330', '查询操作', '查询商品类别信息', '2023-05-09 08:43:06', '1');
INSERT INTO `x_log` VALUES ('331', '查询操作', '查询所有供应商', '2023-05-09 08:43:06', '1');
INSERT INTO `x_log` VALUES ('332', '查询操作', '分页查询商品信息', '2023-05-09 08:43:06', '1');
INSERT INTO `x_log` VALUES ('333', '查询操作', '分页查询进货信息', '2023-05-09 08:43:06', '1');
INSERT INTO `x_log` VALUES ('334', '查询操作', '查询所有供应商', '2023-05-09 08:43:09', '1');
INSERT INTO `x_log` VALUES ('335', '查询操作', '查询商品类别信息', '2023-05-09 08:43:09', '1');
INSERT INTO `x_log` VALUES ('336', '查询操作', '分页查询商品信息', '2023-05-09 08:43:09', '1');
INSERT INTO `x_log` VALUES ('337', '查询操作', '查询商品类别信息', '2023-05-09 08:43:17', '1');
INSERT INTO `x_log` VALUES ('338', '查询操作', '分页查询商品信息', '2023-05-09 08:43:17', '1');
INSERT INTO `x_log` VALUES ('339', '查询操作', '查询商品:xxdr牌甜糖', '2023-05-09 08:43:21', '1');
INSERT INTO `x_log` VALUES ('340', '查询操作', '查询商品类别信息', '2023-05-09 08:44:06', '1');
INSERT INTO `x_log` VALUES ('341', '查询操作', '查询所有供应商', '2023-05-09 08:44:06', '1');
INSERT INTO `x_log` VALUES ('342', '查询操作', '分页查询商品信息', '2023-05-09 08:44:06', '1');
INSERT INTO `x_log` VALUES ('343', '查询操作', '查询商品:xxdr牌甜糖', '2023-05-09 08:44:07', '1');
INSERT INTO `x_log` VALUES ('344', '查询操作', '查询所有供应商', '2023-05-09 08:45:07', '1');
INSERT INTO `x_log` VALUES ('345', '查询操作', '查询商品类别信息', '2023-05-09 08:45:07', '1');
INSERT INTO `x_log` VALUES ('346', '查询操作', '分页查询商品信息', '2023-05-09 08:45:07', '1');
INSERT INTO `x_log` VALUES ('347', '查询操作', '查询商品:xxdr牌甜糖', '2023-05-09 08:45:21', '1');
INSERT INTO `x_log` VALUES ('348', '查询操作', '查询所有供应商', '2023-05-09 08:45:35', '1');
INSERT INTO `x_log` VALUES ('349', '查询操作', '查询商品类别信息', '2023-05-09 08:45:35', '1');
INSERT INTO `x_log` VALUES ('350', '查询操作', '分页查询进货信息', '2023-05-09 08:45:35', '1');
INSERT INTO `x_log` VALUES ('351', '查询操作', '分页查询商品信息', '2023-05-09 08:45:35', '1');
INSERT INTO `x_log` VALUES ('352', '查询操作', '查询所有供应商', '2023-05-09 08:45:57', '1');
INSERT INTO `x_log` VALUES ('353', '查询操作', '查询商品类别信息', '2023-05-09 08:45:57', '1');
INSERT INTO `x_log` VALUES ('354', '查询操作', '分页查询商品信息', '2023-05-09 08:45:57', '1');
INSERT INTO `x_log` VALUES ('355', '查询操作', '查询商品:xxdr牌甜糖', '2023-05-09 08:45:58', '1');
INSERT INTO `x_log` VALUES ('356', '查询操作', '分页查询进货信息', '2023-05-09 08:46:11', '1');
INSERT INTO `x_log` VALUES ('357', '查询操作', '查询商品类别信息', '2023-05-09 08:46:11', '1');
INSERT INTO `x_log` VALUES ('358', '查询操作', '查询所有供应商', '2023-05-09 08:46:11', '1');
INSERT INTO `x_log` VALUES ('359', '查询操作', '分页查询商品信息', '2023-05-09 08:46:11', '1');
INSERT INTO `x_log` VALUES ('360', '查询操作', '查询商品类别信息', '2023-05-09 08:48:51', '1');
INSERT INTO `x_log` VALUES ('361', '查询操作', '分页查询商品信息', '2023-05-09 08:48:51', '1');
INSERT INTO `x_log` VALUES ('362', '查询操作', '查询所有客户', '2023-05-09 08:48:51', '1');
INSERT INTO `x_log` VALUES ('363', '查询操作', '查询商品:xxdr牌甜糖', '2023-05-09 08:49:02', '1');
INSERT INTO `x_log` VALUES ('364', '查询操作', '查询商品类别信息', '2023-05-09 09:18:56', '1');
INSERT INTO `x_log` VALUES ('365', '查询操作', '分页查询商品信息', '2023-05-09 09:18:56', '1');
INSERT INTO `x_log` VALUES ('366', '查询操作', '分页查询商品采购信息', '2023-05-09 09:18:56', '1');
INSERT INTO `x_log` VALUES ('367', '查询操作', '查询所有客户', '2023-05-09 09:19:09', '1');
INSERT INTO `x_log` VALUES ('368', '查询操作', '查询商品类别信息', '2023-05-09 09:19:09', '1');
INSERT INTO `x_log` VALUES ('369', '查询操作', '分页查询商品信息', '2023-05-09 09:19:09', '1');
INSERT INTO `x_log` VALUES ('370', '查询操作', '查询所有客户', '2023-05-09 13:20:51', '1');
INSERT INTO `x_log` VALUES ('371', '查询操作', '查询商品类别信息', '2023-05-09 13:20:51', '1');
INSERT INTO `x_log` VALUES ('372', '查询操作', '分页查询商品信息', '2023-05-09 13:20:51', '1');
INSERT INTO `x_log` VALUES ('373', '查询操作', '查询商品类别信息', '2023-05-09 13:21:25', '1');
INSERT INTO `x_log` VALUES ('374', '查询操作', '查询所有供应商', '2023-05-09 13:21:25', '1');
INSERT INTO `x_log` VALUES ('375', '查询操作', '分页查询商品信息', '2023-05-09 13:21:25', '1');
INSERT INTO `x_log` VALUES ('376', '查询操作', '分页查询进货信息', '2023-05-09 13:21:25', '1');
INSERT INTO `x_log` VALUES ('377', '查询操作', '查询商品类别信息', '2023-05-09 13:21:28', '1');
INSERT INTO `x_log` VALUES ('378', '查询操作', '查询所有供应商', '2023-05-09 13:21:28', '1');
INSERT INTO `x_log` VALUES ('379', '查询操作', '分页查询商品信息', '2023-05-09 13:21:28', '1');
INSERT INTO `x_log` VALUES ('380', '查询操作', '查询商品类别信息', '2023-05-09 13:23:57', '1');
INSERT INTO `x_log` VALUES ('381', '查询操作', '查询所有供应商', '2023-05-09 13:23:57', '1');
INSERT INTO `x_log` VALUES ('382', '查询操作', '分页查询商品信息', '2023-05-09 13:23:57', '1');
INSERT INTO `x_log` VALUES ('383', '查询操作', '查询所有供应商', '2023-05-09 13:24:52', '1');
INSERT INTO `x_log` VALUES ('384', '查询操作', '查询商品类别信息', '2023-05-09 13:24:52', '1');
INSERT INTO `x_log` VALUES ('385', '查询操作', '分页查询商品信息', '2023-05-09 13:24:52', '1');
INSERT INTO `x_log` VALUES ('386', '查询操作', '分页查询进货信息', '2023-05-09 13:24:52', '1');
INSERT INTO `x_log` VALUES ('387', '查询操作', '查询所有客户', '2023-05-09 13:27:48', '1');
INSERT INTO `x_log` VALUES ('388', '查询操作', '查询商品类别信息', '2023-05-09 13:27:48', '1');
INSERT INTO `x_log` VALUES ('389', '查询操作', '分页查询商品信息', '2023-05-09 13:27:48', '1');
INSERT INTO `x_log` VALUES ('390', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 13:27:49', '1');
INSERT INTO `x_log` VALUES ('391', '查询操作', '查询所有供应商', '2023-05-09 13:27:54', '1');
INSERT INTO `x_log` VALUES ('392', '查询操作', '查询商品类别信息', '2023-05-09 13:27:54', '1');
INSERT INTO `x_log` VALUES ('393', '查询操作', '分页查询商品信息', '2023-05-09 13:27:54', '1');
INSERT INTO `x_log` VALUES ('394', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 13:27:55', '1');
INSERT INTO `x_log` VALUES ('395', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 13:28:00', '1');
INSERT INTO `x_log` VALUES ('396', '查询操作', '查询所有供应商', '2023-05-09 13:29:01', '1');
INSERT INTO `x_log` VALUES ('397', '查询操作', '查询商品类别信息', '2023-05-09 13:29:01', '1');
INSERT INTO `x_log` VALUES ('398', '查询操作', '分页查询商品信息', '2023-05-09 13:29:01', '1');
INSERT INTO `x_log` VALUES ('399', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 13:29:01', '1');
INSERT INTO `x_log` VALUES ('400', '查询操作', '查询商品类别信息', '2023-05-09 13:29:06', '1');
INSERT INTO `x_log` VALUES ('401', '查询操作', '查询所有客户', '2023-05-09 13:29:06', '1');
INSERT INTO `x_log` VALUES ('402', '查询操作', '分页查询商品信息', '2023-05-09 13:29:06', '1');
INSERT INTO `x_log` VALUES ('403', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 13:29:07', '1');
INSERT INTO `x_log` VALUES ('404', '查询操作', '查询商品类别信息', '2023-05-09 13:29:12', '1');
INSERT INTO `x_log` VALUES ('405', '查询操作', '查询所有供应商', '2023-05-09 13:29:12', '1');
INSERT INTO `x_log` VALUES ('406', '查询操作', '分页查询商品信息', '2023-05-09 13:29:12', '1');
INSERT INTO `x_log` VALUES ('407', '查询操作', '查询所有客户', '2023-05-09 13:30:20', '1');
INSERT INTO `x_log` VALUES ('408', '查询操作', '查询商品类别信息', '2023-05-09 13:30:20', '1');
INSERT INTO `x_log` VALUES ('409', '查询操作', '分页查询商品信息', '2023-05-09 13:30:20', '1');
INSERT INTO `x_log` VALUES ('410', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 13:30:21', '1');
INSERT INTO `x_log` VALUES ('411', '查询操作', '分页查询供应商信息', '2023-05-09 13:44:02', '1');
INSERT INTO `x_log` VALUES ('412', '新增操作', '新增供应商:四川朝阳家具电器有限公司', '2023-05-09 13:47:43', '1');
INSERT INTO `x_log` VALUES ('413', '查询操作', '分页查询供应商信息', '2023-05-09 13:47:43', '1');
INSERT INTO `x_log` VALUES ('414', '新增操作', '新增供应商:四川智鑫服装批发市场', '2023-05-09 13:51:35', '1');
INSERT INTO `x_log` VALUES ('415', '查询操作', '分页查询供应商信息', '2023-05-09 13:51:35', '1');
INSERT INTO `x_log` VALUES ('416', '查询操作', '查询供应商:四川智鑫服装批发市场', '2023-05-09 13:52:19', '1');
INSERT INTO `x_log` VALUES ('417', '查询操作', '查询所有供应商', '2023-05-09 14:10:32', '1');
INSERT INTO `x_log` VALUES ('418', '查询操作', '查询商品类别信息', '2023-05-09 14:10:32', '1');
INSERT INTO `x_log` VALUES ('419', '查询操作', '分页查询商品信息', '2023-05-09 14:10:32', '1');
INSERT INTO `x_log` VALUES ('420', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 14:10:32', '1');
INSERT INTO `x_log` VALUES ('421', '查询操作', '查询商品类别信息', '2023-05-09 14:10:36', '1');
INSERT INTO `x_log` VALUES ('422', '查询操作', '分页查询商品信息', '2023-05-09 14:10:36', '1');
INSERT INTO `x_log` VALUES ('423', '查询操作', '分页查询商品信息', '2023-05-09 14:22:23', '1');
INSERT INTO `x_log` VALUES ('424', '查询操作', '查询所有供应商', '2023-05-09 14:22:46', '1');
INSERT INTO `x_log` VALUES ('425', '查询操作', '分页查询商品信息', '2023-05-09 14:22:46', '1');
INSERT INTO `x_log` VALUES ('426', '查询操作', '分页查询进货信息', '2023-05-09 14:22:46', '1');
INSERT INTO `x_log` VALUES ('427', '查询操作', '分页查询商品信息', '2023-05-09 14:22:49', '1');
INSERT INTO `x_log` VALUES ('428', '查询操作', '查询商品类别信息', '2023-05-09 14:29:12', '1');
INSERT INTO `x_log` VALUES ('429', '查询操作', '分页查询商品信息', '2023-05-09 14:29:12', '1');
INSERT INTO `x_log` VALUES ('430', '查询操作', '分页查询供应商信息', '2023-05-09 14:29:49', '1');
INSERT INTO `x_log` VALUES ('431', '查询操作', '分页查询供应商信息', '2023-05-09 14:40:35', '1');
INSERT INTO `x_log` VALUES ('432', '查询操作', '查询商品类别信息', '2023-05-09 14:40:35', '1');
INSERT INTO `x_log` VALUES ('433', '查询操作', '查询商品类别信息', '2023-05-09 14:55:39', '1');
INSERT INTO `x_log` VALUES ('434', '查询操作', '分页查询供应商信息', '2023-05-09 14:55:39', '1');
INSERT INTO `x_log` VALUES ('435', '查询操作', '查询商品类别信息', '2023-05-09 14:57:21', '1');
INSERT INTO `x_log` VALUES ('436', '查询操作', '分页查询供应商信息', '2023-05-09 14:57:21', '1');
INSERT INTO `x_log` VALUES ('437', '查询操作', '查询商品类别信息', '2023-05-09 14:59:25', '1');
INSERT INTO `x_log` VALUES ('438', '查询操作', '分页查询供应商信息', '2023-05-09 14:59:25', '1');
INSERT INTO `x_log` VALUES ('439', '查询操作', '查询商品类别信息', '2023-05-09 14:59:50', '1');
INSERT INTO `x_log` VALUES ('440', '查询操作', '分页查询供应商信息', '2023-05-09 14:59:50', '1');
INSERT INTO `x_log` VALUES ('441', '查询操作', '查询商品类别信息', '2023-05-09 15:03:44', '1');
INSERT INTO `x_log` VALUES ('442', '查询操作', '分页查询供应商信息', '2023-05-09 15:03:44', '1');
INSERT INTO `x_log` VALUES ('443', '查询操作', '查询商品类别信息', '2023-05-09 15:04:03', '1');
INSERT INTO `x_log` VALUES ('444', '查询操作', '分页查询供应商信息', '2023-05-09 15:04:03', '1');
INSERT INTO `x_log` VALUES ('445', '查询操作', '查询商品类别信息', '2023-05-09 15:05:15', '1');
INSERT INTO `x_log` VALUES ('446', '查询操作', '分页查询供应商信息', '2023-05-09 15:05:15', '1');
INSERT INTO `x_log` VALUES ('447', '查询操作', '查询商品类别信息', '2023-05-09 15:05:44', '1');
INSERT INTO `x_log` VALUES ('448', '查询操作', '分页查询供应商信息', '2023-05-09 15:05:44', '1');
INSERT INTO `x_log` VALUES ('449', '查询操作', '查询商品类别信息', '2023-05-09 15:08:00', '1');
INSERT INTO `x_log` VALUES ('450', '查询操作', '分页查询供应商信息', '2023-05-09 15:08:00', '1');
INSERT INTO `x_log` VALUES ('451', '查询操作', '查询商品类别信息', '2023-05-09 15:13:40', '1');
INSERT INTO `x_log` VALUES ('452', '查询操作', '分页查询供应商信息', '2023-05-09 15:13:40', '1');
INSERT INTO `x_log` VALUES ('453', '查询操作', '查询商品类别信息', '2023-05-09 15:14:15', '1');
INSERT INTO `x_log` VALUES ('454', '查询操作', '分页查询供应商信息', '2023-05-09 15:14:15', '1');
INSERT INTO `x_log` VALUES ('455', '新增操作', '新增供应商:11111111111', '2023-05-09 15:14:55', '1');
INSERT INTO `x_log` VALUES ('456', '查询操作', '分页查询供应商信息', '2023-05-09 15:14:55', '1');
INSERT INTO `x_log` VALUES ('457', '查询操作', '查询商品类别信息', '2023-05-09 15:17:57', '1');
INSERT INTO `x_log` VALUES ('458', '查询操作', '分页查询供应商信息', '2023-05-09 15:17:57', '1');
INSERT INTO `x_log` VALUES ('459', '退出操作', '退出登录', '2023-05-09 15:22:02', null);
INSERT INTO `x_log` VALUES ('460', '查询操作', '查询商品类别信息', '2023-05-09 15:22:40', '1');
INSERT INTO `x_log` VALUES ('461', '查询操作', '分页查询供应商信息', '2023-05-09 15:22:40', '1');
INSERT INTO `x_log` VALUES ('462', '新增操作', '新增供应商:111', '2023-05-09 15:22:49', '1');
INSERT INTO `x_log` VALUES ('463', '查询操作', '分页查询供应商信息', '2023-05-09 15:22:49', '1');
INSERT INTO `x_log` VALUES ('464', '查询操作', '查询商品类别信息', '2023-05-09 15:23:35', '1');
INSERT INTO `x_log` VALUES ('465', '查询操作', '分页查询供应商信息', '2023-05-09 15:23:35', '1');
INSERT INTO `x_log` VALUES ('466', '查询操作', '查询商品类别信息', '2023-05-09 15:24:15', '1');
INSERT INTO `x_log` VALUES ('467', '查询操作', '分页查询供应商信息', '2023-05-09 15:24:15', '1');
INSERT INTO `x_log` VALUES ('468', '查询操作', '分页查询客户', '2023-05-09 15:31:07', '1');
INSERT INTO `x_log` VALUES ('469', '查询操作', '查询所有角色', '2023-05-09 15:31:09', '1');
INSERT INTO `x_log` VALUES ('470', '查询操作', '分页查询用户信息', '2023-05-09 15:31:09', '1');
INSERT INTO `x_log` VALUES ('471', '新增操作', '添加用户:cccc', '2023-05-09 15:31:39', '1');
INSERT INTO `x_log` VALUES ('472', '查询操作', '分页查询用户信息', '2023-05-09 15:31:40', '1');
INSERT INTO `x_log` VALUES ('473', '查询操作', '查询所有角色', '2023-05-09 15:34:15', '1');
INSERT INTO `x_log` VALUES ('474', '查询操作', '分页查询用户信息', '2023-05-09 15:34:15', '1');
INSERT INTO `x_log` VALUES ('475', '新增操作', '添加用户:111111111', '2023-05-09 15:34:38', '1');
INSERT INTO `x_log` VALUES ('476', '查询操作', '分页查询用户信息', '2023-05-09 15:34:38', '1');
INSERT INTO `x_log` VALUES ('477', '查询操作', '查询所有角色', '2023-05-09 15:39:35', '1');
INSERT INTO `x_log` VALUES ('478', '查询操作', '分页查询用户信息', '2023-05-09 15:39:35', '1');
INSERT INTO `x_log` VALUES ('479', '新增操作', '添加用户:11111111111', '2023-05-09 15:39:58', '1');
INSERT INTO `x_log` VALUES ('480', '查询操作', '分页查询用户信息', '2023-05-09 15:39:58', '1');
INSERT INTO `x_log` VALUES ('481', '新增操作', '添加用户:12222222222', '2023-05-09 15:41:01', '1');
INSERT INTO `x_log` VALUES ('482', '查询操作', '分页查询用户信息', '2023-05-09 15:41:01', '1');
INSERT INTO `x_log` VALUES ('483', '查询操作', '查询所有角色', '2023-05-09 15:42:24', '1');
INSERT INTO `x_log` VALUES ('484', '查询操作', '分页查询用户信息', '2023-05-09 15:42:24', '1');
INSERT INTO `x_log` VALUES ('485', '查询操作', '查询所有角色', '2023-05-09 15:42:47', '1');
INSERT INTO `x_log` VALUES ('486', '查询操作', '分页查询用户信息', '2023-05-09 15:42:47', '1');
INSERT INTO `x_log` VALUES ('487', '查询操作', '查询所有角色', '2023-05-09 15:43:09', '1');
INSERT INTO `x_log` VALUES ('488', '查询操作', '分页查询用户信息', '2023-05-09 15:43:09', '1');
INSERT INTO `x_log` VALUES ('489', '新增操作', '添加用户:222222222', '2023-05-09 15:43:36', '1');
INSERT INTO `x_log` VALUES ('490', '查询操作', '分页查询用户信息', '2023-05-09 15:43:36', '1');
INSERT INTO `x_log` VALUES ('491', '查询操作', '查询所有角色', '2023-05-09 15:43:48', '1');
INSERT INTO `x_log` VALUES ('492', '查询操作', '分页查询用户信息', '2023-05-09 15:43:48', '1');
INSERT INTO `x_log` VALUES ('493', '查询操作', '查询商品类别信息', '2023-05-09 15:47:41', '1');
INSERT INTO `x_log` VALUES ('494', '查询操作', '分页查询供应商信息', '2023-05-09 15:47:41', '1');
INSERT INTO `x_log` VALUES ('495', '查询操作', '查询商品类别信息', '2023-05-09 15:48:16', '1');
INSERT INTO `x_log` VALUES ('496', '查询操作', '分页查询供应商信息', '2023-05-09 15:48:16', '1');
INSERT INTO `x_log` VALUES ('497', '查询操作', '查询商品类别信息', '2023-05-09 15:50:23', '1');
INSERT INTO `x_log` VALUES ('498', '查询操作', '分页查询供应商信息', '2023-05-09 15:50:23', '1');
INSERT INTO `x_log` VALUES ('499', '查询操作', '查询所有角色', '2023-05-09 15:51:42', '1');
INSERT INTO `x_log` VALUES ('500', '查询操作', '分页查询用户信息', '2023-05-09 15:51:42', '1');
INSERT INTO `x_log` VALUES ('501', '查询操作', '查询商品类别信息', '2023-05-09 15:51:44', '1');
INSERT INTO `x_log` VALUES ('502', '查询操作', '分页查询供应商信息', '2023-05-09 15:51:44', '1');
INSERT INTO `x_log` VALUES ('503', '查询操作', '查询商品类别信息', '2023-05-09 15:52:05', '1');
INSERT INTO `x_log` VALUES ('504', '查询操作', '分页查询商品信息', '2023-05-09 15:52:06', '1');
INSERT INTO `x_log` VALUES ('505', '查询操作', '查询所有供应商', '2023-05-09 15:59:22', '1');
INSERT INTO `x_log` VALUES ('506', '查询操作', '查询商品类别信息', '2023-05-09 15:59:22', '1');
INSERT INTO `x_log` VALUES ('507', '查询操作', '分页查询商品信息', '2023-05-09 15:59:22', '1');
INSERT INTO `x_log` VALUES ('508', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 16:13:22', '1');
INSERT INTO `x_log` VALUES ('509', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 16:13:32', '1');
INSERT INTO `x_log` VALUES ('510', '查询操作', '查询商品类别信息', '2023-05-09 16:38:02', '1');
INSERT INTO `x_log` VALUES ('511', '查询操作', '分页查询商品信息', '2023-05-09 16:38:02', '1');
INSERT INTO `x_log` VALUES ('512', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 16:38:03', '1');
INSERT INTO `x_log` VALUES ('513', '查询操作', '查询商品类别信息', '2023-05-09 16:38:54', '1');
INSERT INTO `x_log` VALUES ('514', '查询操作', '分页查询商品信息', '2023-05-09 16:38:54', '1');
INSERT INTO `x_log` VALUES ('515', '查询操作', '查询商品类别信息', '2023-05-09 16:39:18', '1');
INSERT INTO `x_log` VALUES ('516', '查询操作', '分页查询商品信息', '2023-05-09 16:39:18', '1');
INSERT INTO `x_log` VALUES ('517', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 16:39:19', '1');
INSERT INTO `x_log` VALUES ('518', '查询操作', '查询商品类别信息', '2023-05-09 16:40:18', '1');
INSERT INTO `x_log` VALUES ('519', '查询操作', '分页查询商品信息', '2023-05-09 16:40:18', '1');
INSERT INTO `x_log` VALUES ('520', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 16:40:31', '1');
INSERT INTO `x_log` VALUES ('521', '查询操作', '查询商品类别信息', '2023-05-09 16:41:37', '1');
INSERT INTO `x_log` VALUES ('522', '查询操作', '分页查询商品信息', '2023-05-09 16:41:37', '1');
INSERT INTO `x_log` VALUES ('523', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 16:41:40', '1');
INSERT INTO `x_log` VALUES ('524', '查询操作', '查询商品类别信息', '2023-05-09 16:42:28', '1');
INSERT INTO `x_log` VALUES ('525', '查询操作', '分页查询商品信息', '2023-05-09 16:42:28', '1');
INSERT INTO `x_log` VALUES ('526', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 16:42:29', '1');
INSERT INTO `x_log` VALUES ('527', '查询操作', '查询商品类别信息', '2023-05-09 16:44:03', '1');
INSERT INTO `x_log` VALUES ('528', '查询操作', '分页查询商品信息', '2023-05-09 16:44:03', '1');
INSERT INTO `x_log` VALUES ('529', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 16:44:07', '1');
INSERT INTO `x_log` VALUES ('530', '查询操作', '查询商品类别信息', '2023-05-09 16:47:29', '1');
INSERT INTO `x_log` VALUES ('531', '查询操作', '分页查询商品信息', '2023-05-09 16:47:29', '1');
INSERT INTO `x_log` VALUES ('532', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 16:47:31', '1');
INSERT INTO `x_log` VALUES ('533', '查询操作', '查询商品:西服套装男三件套秋季新款商务修身职业正装男士西装新郎结婚礼服', '2023-05-09 16:47:39', '1');
INSERT INTO `x_log` VALUES ('534', '查询操作', '查询商品类别信息', '2023-05-09 16:48:31', '1');
INSERT INTO `x_log` VALUES ('535', '查询操作', '查询所有供应商', '2023-05-09 16:48:31', '1');
INSERT INTO `x_log` VALUES ('536', '查询操作', '分页查询商品信息', '2023-05-09 16:48:31', '1');
INSERT INTO `x_log` VALUES ('537', '查询操作', '查询商品类别信息', '2023-05-09 16:48:34', '1');
INSERT INTO `x_log` VALUES ('538', '查询操作', '分页查询商品信息', '2023-05-09 16:48:34', '1');
INSERT INTO `x_log` VALUES ('539', '查询操作', '查询商品类别信息', '2023-05-09 16:48:37', '1');
INSERT INTO `x_log` VALUES ('540', '查询操作', '查询所有客户', '2023-05-09 16:48:37', '1');
INSERT INTO `x_log` VALUES ('541', '查询操作', '分页查询商品信息', '2023-05-09 16:48:37', '1');
INSERT INTO `x_log` VALUES ('542', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 16:48:50', '1');
INSERT INTO `x_log` VALUES ('543', '查询操作', '查询所有客户', '2023-05-09 16:55:04', '1');
INSERT INTO `x_log` VALUES ('544', '查询操作', '查询商品类别信息', '2023-05-09 16:55:04', '1');
INSERT INTO `x_log` VALUES ('545', '查询操作', '分页查询商品信息', '2023-05-09 16:55:04', '1');
INSERT INTO `x_log` VALUES ('546', '查询操作', '查询所有客户', '2023-05-09 16:57:10', '1');
INSERT INTO `x_log` VALUES ('547', '查询操作', '查询商品类别信息', '2023-05-09 16:57:10', '1');
INSERT INTO `x_log` VALUES ('548', '查询操作', '分页查询商品信息', '2023-05-09 16:57:10', '1');
INSERT INTO `x_log` VALUES ('549', '查询操作', '查询所有客户', '2023-05-09 16:57:11', '1');
INSERT INTO `x_log` VALUES ('550', '查询操作', '查询商品类别信息', '2023-05-09 16:57:11', '1');
INSERT INTO `x_log` VALUES ('551', '查询操作', '分页查询商品信息', '2023-05-09 16:57:11', '1');
INSERT INTO `x_log` VALUES ('552', '查询操作', '查询所有客户', '2023-05-09 16:57:14', '1');
INSERT INTO `x_log` VALUES ('553', '查询操作', '查询商品类别信息', '2023-05-09 16:57:14', '1');
INSERT INTO `x_log` VALUES ('554', '查询操作', '分页查询商品信息', '2023-05-09 16:57:14', '1');
INSERT INTO `x_log` VALUES ('555', '查询操作', '查询商品类别信息', '2023-05-09 17:22:15', null);
INSERT INTO `x_log` VALUES ('556', '查询操作', '分页查询商品信息', '2023-05-09 17:22:15', null);
INSERT INTO `x_log` VALUES ('557', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 17:22:21', null);
INSERT INTO `x_log` VALUES ('558', '查询操作', '查询商品类别信息', '2023-05-09 17:23:05', '1');
INSERT INTO `x_log` VALUES ('559', '查询操作', '分页查询商品信息', '2023-05-09 17:23:05', '1');
INSERT INTO `x_log` VALUES ('560', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 17:23:13', '1');
INSERT INTO `x_log` VALUES ('561', '查询操作', '查询商品类别信息', '2023-05-09 17:24:44', '1');
INSERT INTO `x_log` VALUES ('562', '查询操作', '分页查询商品信息', '2023-05-09 17:24:44', '1');
INSERT INTO `x_log` VALUES ('563', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 17:24:45', '1');
INSERT INTO `x_log` VALUES ('564', '查询操作', '查询商品类别信息', '2023-05-09 17:25:11', '1');
INSERT INTO `x_log` VALUES ('565', '查询操作', '分页查询商品信息', '2023-05-09 17:25:11', '1');
INSERT INTO `x_log` VALUES ('566', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 17:25:23', '1');
INSERT INTO `x_log` VALUES ('567', '查询操作', '查询商品类别信息', '2023-05-09 17:41:29', '1');
INSERT INTO `x_log` VALUES ('568', '查询操作', '分页查询商品信息', '2023-05-09 17:41:29', '1');
INSERT INTO `x_log` VALUES ('569', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 17:41:30', '1');
INSERT INTO `x_log` VALUES ('570', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 17:41:44', '1');
INSERT INTO `x_log` VALUES ('571', '查询操作', '查询商品:加加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '2023-05-09 17:41:47', '1');
INSERT INTO `x_log` VALUES ('572', '查询操作', '分页查询客户', '2023-05-09 17:42:31', '1');
INSERT INTO `x_log` VALUES ('573', '查询操作', '查询商品类别信息', '2023-05-09 17:49:50', '1');
INSERT INTO `x_log` VALUES ('574', '查询操作', '分页查询客户', '2023-05-09 17:49:50', '1');
INSERT INTO `x_log` VALUES ('575', '新增操作', '新增客户:保定万象家电城', '2023-05-09 17:52:47', '1');
INSERT INTO `x_log` VALUES ('576', '查询操作', '分页查询客户', '2023-05-09 17:52:47', '1');
INSERT INTO `x_log` VALUES ('577', '查询操作', '查询所有角色', '2023-05-09 17:59:43', '1');
INSERT INTO `x_log` VALUES ('578', '查询操作', '分页查询用户信息', '2023-05-09 17:59:43', '1');
INSERT INTO `x_log` VALUES ('579', '新增操作', '添加用户:ccccccccc', '2023-05-09 18:00:10', '1');
INSERT INTO `x_log` VALUES ('580', '查询操作', '分页查询用户信息', '2023-05-09 18:00:10', '1');
INSERT INTO `x_log` VALUES ('581', '查询操作', '查询所有角色', '2023-05-09 18:00:40', '1');
INSERT INTO `x_log` VALUES ('582', '查询操作', '分页查询用户信息', '2023-05-09 18:00:40', '1');
INSERT INTO `x_log` VALUES ('583', '查询操作', '查询所有角色', '2023-05-09 18:01:57', '1');
INSERT INTO `x_log` VALUES ('584', '查询操作', '分页查询用户信息', '2023-05-09 18:01:58', '1');
INSERT INTO `x_log` VALUES ('585', '查询操作', '查询所有角色', '2023-05-09 18:04:01', '1');
INSERT INTO `x_log` VALUES ('586', '查询操作', '分页查询用户信息', '2023-05-09 18:04:01', '1');
INSERT INTO `x_log` VALUES ('587', '退出操作', '退出登录', '2023-05-09 18:05:13', '1');
INSERT INTO `x_log` VALUES ('588', '查询操作', '查询所有角色', '2023-05-09 18:05:24', '1');
INSERT INTO `x_log` VALUES ('589', '查询操作', '分页查询用户信息', '2023-05-09 18:05:24', '1');
INSERT INTO `x_log` VALUES ('590', '查询操作', '查询所有角色', '2023-05-09 18:06:10', '1');
INSERT INTO `x_log` VALUES ('591', '查询操作', '分页查询用户信息', '2023-05-09 18:06:10', '1');
INSERT INTO `x_log` VALUES ('592', '查询操作', '查询所有角色', '2023-05-09 18:07:26', '1');
INSERT INTO `x_log` VALUES ('593', '查询操作', '分页查询用户信息', '2023-05-09 18:07:26', '1');
INSERT INTO `x_log` VALUES ('594', '删除操作', '删除用户:ccccccccc', '2023-05-09 18:07:31', '1');
INSERT INTO `x_log` VALUES ('595', '查询操作', '分页查询用户信息', '2023-05-09 18:07:31', '1');
INSERT INTO `x_log` VALUES ('596', '查询操作', '查询所有用户', '2023-05-09 18:09:01', '1');
INSERT INTO `x_log` VALUES ('597', '查询操作', '查询所有供应商', '2023-05-09 18:09:34', '1');
INSERT INTO `x_log` VALUES ('598', '查询操作', '查询商品类别信息', '2023-05-09 18:09:34', '1');
INSERT INTO `x_log` VALUES ('599', '查询操作', '分页查询商品信息', '2023-05-09 18:09:34', '1');
INSERT INTO `x_log` VALUES ('600', '查询操作', '查询商品类别信息', '2023-05-09 18:10:02', '1');
INSERT INTO `x_log` VALUES ('601', '查询操作', '查询所有供应商', '2023-05-09 18:10:02', '1');
INSERT INTO `x_log` VALUES ('602', '查询操作', '分页查询商品信息', '2023-05-09 18:10:02', '1');
INSERT INTO `x_log` VALUES ('603', '查询操作', '分页查询进货信息', '2023-05-09 18:10:02', '1');
INSERT INTO `x_log` VALUES ('604', '查询操作', '查询所有供应商', '2023-05-09 18:37:10', '1');
INSERT INTO `x_log` VALUES ('605', '查询操作', '查询商品类别信息', '2023-05-09 18:37:10', '1');
INSERT INTO `x_log` VALUES ('606', '查询操作', '分页查询商品信息', '2023-05-09 18:37:10', '1');
INSERT INTO `x_log` VALUES ('607', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 18:37:14', '1');
INSERT INTO `x_log` VALUES ('608', '查询操作', '查询所有供应商', '2023-05-09 18:37:30', '1');
INSERT INTO `x_log` VALUES ('609', '查询操作', '查询商品类别信息', '2023-05-09 18:37:30', '1');
INSERT INTO `x_log` VALUES ('610', '查询操作', '分页查询商品信息', '2023-05-09 18:37:30', '1');
INSERT INTO `x_log` VALUES ('611', '查询操作', '分页查询进货信息', '2023-05-09 18:37:30', '1');
INSERT INTO `x_log` VALUES ('612', '查询操作', '查询所有用户', '2023-05-09 19:36:32', '1');
INSERT INTO `x_log` VALUES ('613', '查询操作', '查询所有供应商', '2023-05-09 19:36:33', '1');
INSERT INTO `x_log` VALUES ('614', '查询操作', '查询商品类别信息', '2023-05-09 19:36:33', '1');
INSERT INTO `x_log` VALUES ('615', '查询操作', '分页查询进货信息', '2023-05-09 19:36:33', '1');
INSERT INTO `x_log` VALUES ('616', '查询操作', '分页查询商品信息', '2023-05-09 19:36:33', '1');
INSERT INTO `x_log` VALUES ('617', '查询操作', '查询商品类别信息', '2023-05-09 20:00:35', '1');
INSERT INTO `x_log` VALUES ('618', '查询操作', '分页查询商品信息', '2023-05-09 20:00:35', '1');
INSERT INTO `x_log` VALUES ('619', '查询操作', '查询商品类别信息', '2023-05-09 20:10:11', '1');
INSERT INTO `x_log` VALUES ('620', '查询操作', '分页查询商品信息', '2023-05-09 20:10:11', '1');
INSERT INTO `x_log` VALUES ('621', '查询操作', '查询商品类别信息', '2023-05-09 20:10:37', '1');
INSERT INTO `x_log` VALUES ('622', '查询操作', '分页查询商品信息', '2023-05-09 20:10:37', '1');
INSERT INTO `x_log` VALUES ('623', '查询操作', '查询商品类别信息', '2023-05-09 20:17:43', '1');
INSERT INTO `x_log` VALUES ('624', '查询操作', '分页查询商品信息', '2023-05-09 20:17:43', '1');
INSERT INTO `x_log` VALUES ('625', '查询操作', '查询所有客户', '2023-05-09 20:17:43', '1');
INSERT INTO `x_log` VALUES ('626', '查询操作', '分页查询客户退货信息', '2023-05-09 20:17:43', '1');
INSERT INTO `x_log` VALUES ('627', '查询操作', '查询商品类别信息', '2023-05-09 20:28:20', '1');
INSERT INTO `x_log` VALUES ('628', '查询操作', '分页查询商品信息', '2023-05-09 20:28:20', '1');
INSERT INTO `x_log` VALUES ('629', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 20:28:22', '1');
INSERT INTO `x_log` VALUES ('630', '查询操作', '查询商品类别信息', '2023-05-09 20:28:29', '1');
INSERT INTO `x_log` VALUES ('631', '查询操作', '分页查询商品信息', '2023-05-09 20:28:29', '1');
INSERT INTO `x_log` VALUES ('632', '查询操作', '查询商品:qq牌甜糖', '2023-05-09 20:28:31', '1');
INSERT INTO `x_log` VALUES ('633', '退出操作', '退出登录', '2023-05-10 08:09:17', '1');
INSERT INTO `x_log` VALUES ('634', '查询操作', '查询商品类别信息', '2023-05-10 08:09:35', '1');
INSERT INTO `x_log` VALUES ('635', '查询操作', '查询所有客户', '2023-05-10 08:09:35', '1');
INSERT INTO `x_log` VALUES ('636', '查询操作', '分页查询商品信息', '2023-05-10 08:09:35', '1');
INSERT INTO `x_log` VALUES ('637', '查询操作', '查询所有客户', '2023-05-10 08:09:36', '1');
INSERT INTO `x_log` VALUES ('638', '查询操作', '查询商品类别信息', '2023-05-10 08:09:36', '1');
INSERT INTO `x_log` VALUES ('639', '查询操作', '分页查询商品信息', '2023-05-10 08:09:36', '1');
INSERT INTO `x_log` VALUES ('640', '查询操作', '查询商品类别信息', '2023-05-10 08:09:39', '1');
INSERT INTO `x_log` VALUES ('641', '查询操作', '查询所有客户', '2023-05-10 08:09:39', '1');
INSERT INTO `x_log` VALUES ('642', '查询操作', '分页查询商品信息', '2023-05-10 08:09:39', '1');
INSERT INTO `x_log` VALUES ('643', '查询操作', '查询商品类别信息', '2023-05-10 08:09:51', '1');
INSERT INTO `x_log` VALUES ('644', '查询操作', '分页查询商品信息', '2023-05-10 08:09:51', '1');
INSERT INTO `x_log` VALUES ('645', '查询操作', '查询商品类别信息', '2023-05-10 08:18:39', '1');
INSERT INTO `x_log` VALUES ('646', '查询操作', '分页查询商品信息', '2023-05-10 08:18:39', '1');
INSERT INTO `x_log` VALUES ('647', '查询操作', '查询商品类别信息', '2023-05-10 08:18:43', '1');
INSERT INTO `x_log` VALUES ('648', '查询操作', '分页查询商品信息', '2023-05-10 08:18:43', '1');
INSERT INTO `x_log` VALUES ('649', '查询操作', '查询所有角色', '2023-05-10 08:18:52', '1');
INSERT INTO `x_log` VALUES ('650', '查询操作', '分页查询用户信息', '2023-05-10 08:18:52', '1');
INSERT INTO `x_log` VALUES ('651', '查询操作', '查询用户:admin', '2023-05-10 08:19:04', '1');
INSERT INTO `x_log` VALUES ('652', '查询操作', '分页查询角色信息', '2023-05-10 08:19:08', '1');
INSERT INTO `x_log` VALUES ('653', '查询操作', '查询角色:admin', '2023-05-10 08:20:13', '1');
INSERT INTO `x_log` VALUES ('654', '查询操作', '查询角色:admin', '2023-05-10 08:20:38', '1');
INSERT INTO `x_log` VALUES ('655', '修改操作', '修改角色:admin', '2023-05-10 08:20:51', '1');
INSERT INTO `x_log` VALUES ('656', '查询操作', '分页查询角色信息', '2023-05-10 08:20:51', '1');
INSERT INTO `x_log` VALUES ('657', '退出操作', '退出登录', '2023-05-10 08:20:53', '1');
INSERT INTO `x_log` VALUES ('658', '查询操作', '查询所有角色', '2023-05-10 08:37:58', '1');
INSERT INTO `x_log` VALUES ('659', '查询操作', '分页查询用户信息', '2023-05-10 08:37:58', '1');
INSERT INTO `x_log` VALUES ('660', '查询操作', '查询所有角色', '2023-05-10 08:40:17', '1');
INSERT INTO `x_log` VALUES ('661', '查询操作', '分页查询用户信息', '2023-05-10 08:40:17', '1');
INSERT INTO `x_log` VALUES ('662', '查询操作', '查询所有用户', '2023-05-10 09:04:02', '1');
INSERT INTO `x_log` VALUES ('663', '查询操作', '查询所有角色', '2023-05-10 09:04:38', '1');
INSERT INTO `x_log` VALUES ('664', '查询操作', '分页查询用户信息', '2023-05-10 09:04:38', '1');
INSERT INTO `x_log` VALUES ('665', '查询操作', '查询所有用户', '2023-05-10 09:05:58', '1');
INSERT INTO `x_log` VALUES ('666', '查询操作', '查询商品类别信息', '2023-05-10 09:14:16', '1');
INSERT INTO `x_log` VALUES ('667', '查询操作', '分页查询商品信息', '2023-05-10 09:14:16', '1');
INSERT INTO `x_log` VALUES ('668', '查询操作', '查询所有供应商', '2023-05-10 09:14:16', '1');
INSERT INTO `x_log` VALUES ('669', '查询操作', '分页查询进货信息', '2023-05-10 09:14:16', '1');
INSERT INTO `x_log` VALUES ('670', '查询操作', '分页查询进货信息', '2023-05-10 09:14:18', '1');
INSERT INTO `x_log` VALUES ('671', '查询操作', '分页查询进货信息', '2023-05-10 09:14:22', '1');
INSERT INTO `x_log` VALUES ('672', '查询操作', '查询所有角色', '2023-05-10 09:29:04', '1');
INSERT INTO `x_log` VALUES ('673', '查询操作', '分页查询用户信息', '2023-05-10 09:29:04', '1');
INSERT INTO `x_log` VALUES ('674', '查询操作', '查询商品类别信息', '2023-05-10 09:32:56', '1');
INSERT INTO `x_log` VALUES ('675', '查询操作', '分页查询进货信息', '2023-05-10 09:32:56', '1');
INSERT INTO `x_log` VALUES ('676', '查询操作', '查询所有供应商', '2023-05-10 09:32:56', '1');
INSERT INTO `x_log` VALUES ('677', '查询操作', '分页查询商品信息', '2023-05-10 09:32:56', '1');
INSERT INTO `x_log` VALUES ('678', '查询操作', '查询按日统计', '2023-05-10 17:46:26', '1');
INSERT INTO `x_log` VALUES ('679', '查询操作', '查询按月统计', '2023-05-10 17:46:30', '1');
INSERT INTO `x_log` VALUES ('680', '查询操作', '分页查询角色信息', '2023-05-10 18:14:11', '1');
INSERT INTO `x_log` VALUES ('681', '查询操作', '查询角色:admin', '2023-05-10 18:14:12', '1');
INSERT INTO `x_log` VALUES ('682', '查询操作', '分页查询角色信息', '2023-05-10 18:14:33', '1');
INSERT INTO `x_log` VALUES ('683', '查询操作', '查询角色:admin', '2023-05-10 18:14:58', '1');
INSERT INTO `x_log` VALUES ('684', '修改操作', '修改角色:admin', '2023-05-10 18:15:02', '1');
INSERT INTO `x_log` VALUES ('685', '查询操作', '分页查询角色信息', '2023-05-10 18:15:02', '1');
INSERT INTO `x_log` VALUES ('686', '查询操作', '分页查询角色信息', '2023-05-10 18:15:04', '1');
INSERT INTO `x_log` VALUES ('687', '查询操作', '查询角色:normal', '2023-05-10 18:15:07', '1');
INSERT INTO `x_log` VALUES ('688', '退出操作', '退出登录', '2023-05-10 18:15:17', '1');
INSERT INTO `x_log` VALUES ('689', '退出操作', '退出登录', '2023-05-10 18:16:01', '1');
INSERT INTO `x_log` VALUES ('690', '查询操作', '分页查询角色信息', '2023-05-10 18:16:31', '1');
INSERT INTO `x_log` VALUES ('691', '查询操作', '分页查询角色信息', '2023-05-10 18:16:38', '1');
INSERT INTO `x_log` VALUES ('692', '退出操作', '退出登录', '2023-05-10 18:16:41', '1');
INSERT INTO `x_log` VALUES ('693', '退出操作', '退出登录', '2023-05-10 18:19:32', '1');
INSERT INTO `x_log` VALUES ('694', '退出操作', '退出登录', '2023-05-10 18:19:49', '1');
INSERT INTO `x_log` VALUES ('695', '退出操作', '退出登录', '2023-05-10 18:25:39', '1');
INSERT INTO `x_log` VALUES ('696', '退出操作', '退出登录', '2023-05-10 18:25:47', '1');
INSERT INTO `x_log` VALUES ('697', '退出操作', '退出登录', '2023-05-10 18:25:56', '1');
INSERT INTO `x_log` VALUES ('698', '退出操作', '退出登录', '2023-05-10 18:26:08', '1');
INSERT INTO `x_log` VALUES ('699', '退出操作', '退出登录', '2023-05-10 18:28:19', '1');
INSERT INTO `x_log` VALUES ('700', '退出操作', '退出登录', '2023-05-10 18:28:24', '1');
INSERT INTO `x_log` VALUES ('701', '退出操作', '退出登录', '2023-05-10 18:28:52', '1');
INSERT INTO `x_log` VALUES ('702', '退出操作', '退出登录', '2023-05-10 18:29:24', '1');
INSERT INTO `x_log` VALUES ('703', '查询操作', '查询所有用户', '2023-05-10 18:32:28', '1');
INSERT INTO `x_log` VALUES ('704', '查询操作', '分页查询角色信息', '2023-05-10 18:32:29', '1');
INSERT INTO `x_log` VALUES ('705', '查询操作', '查询所有用户', '2023-05-10 18:35:46', '1');
INSERT INTO `x_log` VALUES ('706', '查询操作', '查询所有用户', '2023-05-10 18:36:12', '1');
INSERT INTO `x_log` VALUES ('707', '退出操作', '退出登录', '2023-05-10 18:36:15', '1');
INSERT INTO `x_log` VALUES ('708', '退出操作', '退出登录', '2023-05-10 18:36:31', '1');
INSERT INTO `x_log` VALUES ('709', '退出操作', '退出登录', '2023-05-10 18:37:53', '1');
INSERT INTO `x_log` VALUES ('710', '退出操作', '退出登录', '2023-05-10 18:38:18', '1');
INSERT INTO `x_log` VALUES ('711', '退出操作', '退出登录', '2023-05-10 18:38:25', '1');
INSERT INTO `x_log` VALUES ('712', '退出操作', '退出登录', '2023-05-10 18:38:42', '1');
INSERT INTO `x_log` VALUES ('713', '退出操作', '退出登录', '2023-05-11 15:08:03', '1');
INSERT INTO `x_log` VALUES ('714', '退出操作', '退出登录', '2023-05-11 15:08:11', '1');
INSERT INTO `x_log` VALUES ('715', '查询操作', '查询所有供应商', '2023-05-11 15:12:59', '1');
INSERT INTO `x_log` VALUES ('716', '查询操作', '查询商品类别信息', '2023-05-11 15:12:59', '1');
INSERT INTO `x_log` VALUES ('717', '查询操作', '分页查询进货信息', '2023-05-11 15:12:59', '1');
INSERT INTO `x_log` VALUES ('718', '查询操作', '分页查询商品信息', '2023-05-11 15:13:00', '1');
INSERT INTO `x_log` VALUES ('719', '查询操作', '查询商品类别信息', '2023-05-11 15:13:41', '1');
INSERT INTO `x_log` VALUES ('720', '查询操作', '查询所有供应商', '2023-05-11 15:13:41', '1');
INSERT INTO `x_log` VALUES ('721', '查询操作', '分页查询进货信息', '2023-05-11 15:13:41', '1');
INSERT INTO `x_log` VALUES ('722', '查询操作', '分页查询商品信息', '2023-05-11 15:13:41', '1');
INSERT INTO `x_log` VALUES ('723', '查询操作', '分页查询进货信息', '2023-05-11 15:13:55', '1');
INSERT INTO `x_log` VALUES ('724', '查询操作', '分页查询进货信息', '2023-05-11 15:13:58', '1');
INSERT INTO `x_log` VALUES ('725', '查询操作', '分页查询进货信息', '2023-05-11 15:15:33', '1');
INSERT INTO `x_log` VALUES ('726', '查询操作', '查询所有供应商', '2023-05-11 15:15:33', '1');
INSERT INTO `x_log` VALUES ('727', '查询操作', '查询商品类别信息', '2023-05-11 15:15:33', '1');
INSERT INTO `x_log` VALUES ('728', '查询操作', '分页查询商品信息', '2023-05-11 15:15:33', '1');
INSERT INTO `x_log` VALUES ('729', '查询操作', '分页查询进货信息', '2023-05-11 15:15:35', '1');
INSERT INTO `x_log` VALUES ('730', '查询操作', '分页查询进货信息', '2023-05-11 15:15:39', '1');
INSERT INTO `x_log` VALUES ('731', '查询操作', '分页查询进货信息', '2023-05-11 15:15:41', '1');
INSERT INTO `x_log` VALUES ('732', '查询操作', '查询进货商品:xxdr牌甜糖', '2023-05-11 15:16:08', '1');
INSERT INTO `x_log` VALUES ('733', '查询操作', '查询进货商品:xxdr牌甜糖', '2023-05-11 15:16:33', '1');
INSERT INTO `x_log` VALUES ('734', '查询操作', '查询所有供应商', '2023-05-11 15:17:03', '1');
INSERT INTO `x_log` VALUES ('735', '查询操作', '分页查询进货信息', '2023-05-11 15:17:03', '1');
INSERT INTO `x_log` VALUES ('736', '查询操作', '查询商品类别信息', '2023-05-11 15:17:03', '1');
INSERT INTO `x_log` VALUES ('737', '查询操作', '分页查询商品信息', '2023-05-11 15:17:03', '1');
INSERT INTO `x_log` VALUES ('738', '查询操作', '分页查询进货信息', '2023-05-11 15:17:05', '1');
INSERT INTO `x_log` VALUES ('739', '查询操作', '分页查询进货信息', '2023-05-11 15:17:08', '1');
INSERT INTO `x_log` VALUES ('740', '查询操作', '分页查询进货信息', '2023-05-11 15:17:16', '1');
INSERT INTO `x_log` VALUES ('741', '查询操作', '分页查询进货信息', '2023-05-11 15:17:20', '1');
INSERT INTO `x_log` VALUES ('742', '查询操作', '分页查询进货信息', '2023-05-11 15:17:24', '1');
INSERT INTO `x_log` VALUES ('743', '查询操作', '查询所有供应商', '2023-05-11 15:17:52', '1');
INSERT INTO `x_log` VALUES ('744', '查询操作', '查询商品类别信息', '2023-05-11 15:17:52', '1');
INSERT INTO `x_log` VALUES ('745', '查询操作', '分页查询进货信息', '2023-05-11 15:17:52', '1');
INSERT INTO `x_log` VALUES ('746', '查询操作', '分页查询商品信息', '2023-05-11 15:17:52', '1');
INSERT INTO `x_log` VALUES ('747', '查询操作', '分页查询进货信息', '2023-05-11 15:17:55', '1');
INSERT INTO `x_log` VALUES ('748', '查询操作', '分页查询进货信息', '2023-05-11 15:17:56', '1');
INSERT INTO `x_log` VALUES ('749', '查询操作', '查询商品类别信息', '2023-05-11 15:22:27', '1');
INSERT INTO `x_log` VALUES ('750', '查询操作', '分页查询商品信息', '2023-05-11 15:22:27', '1');
INSERT INTO `x_log` VALUES ('751', '查询操作', '查询商品类别信息', '2023-05-11 15:33:57', '1');
INSERT INTO `x_log` VALUES ('752', '查询操作', '分页查询商品信息', '2023-05-11 15:33:57', '1');
INSERT INTO `x_log` VALUES ('753', '查询操作', '查询商品类别信息', '2023-05-11 15:34:00', '1');
INSERT INTO `x_log` VALUES ('754', '查询操作', '查询所有供应商', '2023-05-11 15:34:00', '1');
INSERT INTO `x_log` VALUES ('755', '查询操作', '分页查询进货信息', '2023-05-11 15:34:00', '1');
INSERT INTO `x_log` VALUES ('756', '查询操作', '分页查询商品信息', '2023-05-11 15:34:00', '1');
INSERT INTO `x_log` VALUES ('757', '查询操作', '查询商品类别信息', '2023-05-11 15:34:03', '1');
INSERT INTO `x_log` VALUES ('758', '查询操作', '分页查询商品信息', '2023-05-11 15:34:03', '1');
INSERT INTO `x_log` VALUES ('759', '查询操作', '查询商品类别信息', '2023-05-11 15:34:06', '1');
INSERT INTO `x_log` VALUES ('760', '查询操作', '查询所有供应商', '2023-05-11 15:34:06', '1');
INSERT INTO `x_log` VALUES ('761', '查询操作', '分页查询商品信息', '2023-05-11 15:34:06', '1');
INSERT INTO `x_log` VALUES ('762', '查询操作', '分页查询退货信息', '2023-05-11 15:34:06', '1');
INSERT INTO `x_log` VALUES ('763', '查询操作', '分页查询退货信息', '2023-05-11 15:34:09', '1');
INSERT INTO `x_log` VALUES ('764', '查询操作', '查询商品类别信息', '2023-05-11 15:34:34', '1');
INSERT INTO `x_log` VALUES ('765', '查询操作', '分页查询退货信息', '2023-05-11 15:34:34', '1');
INSERT INTO `x_log` VALUES ('766', '查询操作', '查询所有供应商', '2023-05-11 15:34:34', '1');
INSERT INTO `x_log` VALUES ('767', '查询操作', '分页查询商品信息', '2023-05-11 15:34:34', '1');
INSERT INTO `x_log` VALUES ('768', '查询操作', '分页查询退货信息', '2023-05-11 15:34:35', '1');
INSERT INTO `x_log` VALUES ('769', '查询操作', '分页查询退货信息', '2023-05-11 15:34:36', '1');
INSERT INTO `x_log` VALUES ('770', '查询操作', '分页查询退货信息', '2023-05-11 15:34:39', '1');
INSERT INTO `x_log` VALUES ('771', '查询操作', '分页查询退货信息', '2023-05-11 15:34:40', '1');
INSERT INTO `x_log` VALUES ('772', '查询操作', '查询商品类别信息', '2023-05-11 15:35:59', '1');
INSERT INTO `x_log` VALUES ('773', '查询操作', '分页查询商品信息', '2023-05-11 15:35:59', '1');
INSERT INTO `x_log` VALUES ('774', '查询操作', '查询商品类别信息', '2023-05-11 15:36:04', '1');
INSERT INTO `x_log` VALUES ('775', '查询操作', '分页查询商品信息', '2023-05-11 15:36:04', '1');
INSERT INTO `x_log` VALUES ('776', '查询操作', '分页查询商品信息', '2023-05-11 15:36:07', '1');
INSERT INTO `x_log` VALUES ('777', '查询操作', '分页查询商品信息', '2023-05-11 15:36:13', '1');
INSERT INTO `x_log` VALUES ('778', '查询操作', '分页查询商品信息', '2023-05-11 15:36:19', '1');
INSERT INTO `x_log` VALUES ('779', '查询操作', '分页查询商品信息', '2023-05-11 15:36:22', '1');
INSERT INTO `x_log` VALUES ('780', '查询操作', '查询商品类别信息', '2023-05-11 15:37:14', '1');
INSERT INTO `x_log` VALUES ('781', '查询操作', '分页查询商品信息', '2023-05-11 15:37:14', '1');
INSERT INTO `x_log` VALUES ('782', '查询操作', '查询所有供应商', '2023-05-11 15:37:16', '1');
INSERT INTO `x_log` VALUES ('783', '查询操作', '查询商品类别信息', '2023-05-11 15:37:16', '1');
INSERT INTO `x_log` VALUES ('784', '查询操作', '分页查询退货信息', '2023-05-11 15:37:16', '1');
INSERT INTO `x_log` VALUES ('785', '查询操作', '分页查询商品信息', '2023-05-11 15:37:16', '1');
INSERT INTO `x_log` VALUES ('786', '查询操作', '查询商品类别信息', '2023-05-11 15:37:17', '1');
INSERT INTO `x_log` VALUES ('787', '查询操作', '查询所有供应商', '2023-05-11 15:37:17', '1');
INSERT INTO `x_log` VALUES ('788', '查询操作', '分页查询商品信息', '2023-05-11 15:37:17', '1');
INSERT INTO `x_log` VALUES ('789', '查询操作', '分页查询商品信息', '2023-05-11 15:37:21', '1');
INSERT INTO `x_log` VALUES ('790', '查询操作', '分页查询商品信息', '2023-05-11 15:37:22', '1');
INSERT INTO `x_log` VALUES ('791', '查询操作', '查询商品类别信息', '2023-05-11 15:37:29', '1');
INSERT INTO `x_log` VALUES ('792', '查询操作', '分页查询商品信息', '2023-05-11 15:37:29', '1');
INSERT INTO `x_log` VALUES ('793', '查询操作', '查询商品类别信息', '2023-05-11 15:40:21', '1');
INSERT INTO `x_log` VALUES ('794', '查询操作', '分页查询商品信息', '2023-05-11 15:40:21', '1');
INSERT INTO `x_log` VALUES ('795', '查询操作', '查询商品类别信息', '2023-05-11 15:41:12', '1');
INSERT INTO `x_log` VALUES ('796', '查询操作', '分页查询商品信息', '2023-05-11 15:41:12', '1');
INSERT INTO `x_log` VALUES ('797', '查询操作', '分页查询商品信息', '2023-05-11 15:41:17', '1');
INSERT INTO `x_log` VALUES ('798', '查询操作', '分页查询商品信息', '2023-05-11 15:41:18', '1');
INSERT INTO `x_log` VALUES ('799', '查询操作', '查询商品类别信息', '2023-05-11 15:44:14', '1');
INSERT INTO `x_log` VALUES ('800', '查询操作', '分页查询商品信息', '2023-05-11 15:44:14', '1');
INSERT INTO `x_log` VALUES ('801', '查询操作', '查询所有客户', '2023-05-11 15:44:14', '1');
INSERT INTO `x_log` VALUES ('802', '查询操作', '查询商品类别信息', '2023-05-11 15:44:29', '1');
INSERT INTO `x_log` VALUES ('803', '查询操作', '分页查询商品信息', '2023-05-11 15:44:29', '1');
INSERT INTO `x_log` VALUES ('804', '查询操作', '查询商品类别信息', '2023-05-11 15:46:21', '1');
INSERT INTO `x_log` VALUES ('805', '查询操作', '分页查询商品信息', '2023-05-11 15:46:21', '1');
INSERT INTO `x_log` VALUES ('806', '查询操作', '分页查询报损信息', '2023-05-11 15:46:21', '1');
INSERT INTO `x_log` VALUES ('807', '查询操作', '查询商品类别信息', '2023-05-11 15:46:22', '1');
INSERT INTO `x_log` VALUES ('808', '查询操作', '分页查询库存预警商品信息', '2023-05-11 15:46:22', '1');
INSERT INTO `x_log` VALUES ('809', '查询操作', '分页查询库存信息', '2023-05-11 15:46:39', '1');
INSERT INTO `x_log` VALUES ('810', '查询操作', '分页查询库存信息', '2023-05-11 15:49:44', '1');
INSERT INTO `x_log` VALUES ('811', '查询操作', '查询商品类别信息', '2023-05-11 15:49:45', '1');
INSERT INTO `x_log` VALUES ('812', '查询操作', '分页查询库存预警商品信息', '2023-05-11 15:49:45', '1');
INSERT INTO `x_log` VALUES ('813', '查询操作', '查询商品类别信息', '2023-05-11 15:49:47', '1');
INSERT INTO `x_log` VALUES ('814', '查询操作', '分页查询报损信息', '2023-05-11 15:49:47', '1');
INSERT INTO `x_log` VALUES ('815', '查询操作', '分页查询商品信息', '2023-05-11 15:49:47', '1');
INSERT INTO `x_log` VALUES ('816', '查询操作', '查询商品类别信息', '2023-05-11 15:49:48', '1');
INSERT INTO `x_log` VALUES ('817', '查询操作', '分页查询商品信息', '2023-05-11 15:49:48', '1');
INSERT INTO `x_log` VALUES ('818', '查询操作', '分页查询商品信息', '2023-05-11 15:49:51', '1');
INSERT INTO `x_log` VALUES ('819', '查询操作', '分页查询商品信息', '2023-05-11 15:49:52', '1');
INSERT INTO `x_log` VALUES ('820', '查询操作', '查询商品类别信息', '2023-05-11 15:49:53', '1');
INSERT INTO `x_log` VALUES ('821', '查询操作', '分页查询报损信息', '2023-05-11 15:49:53', '1');
INSERT INTO `x_log` VALUES ('822', '查询操作', '分页查询商品信息', '2023-05-11 15:49:53', '1');
INSERT INTO `x_log` VALUES ('823', '查询操作', '分页查询报损信息', '2023-05-11 15:49:59', '1');
INSERT INTO `x_log` VALUES ('824', '查询操作', '分页查询报溢信息', '2023-05-11 15:50:02', '1');
INSERT INTO `x_log` VALUES ('825', '查询操作', '分页查询报损信息', '2023-05-11 15:53:24', '1');
INSERT INTO `x_log` VALUES ('826', '查询操作', '查询商品类别信息', '2023-05-11 15:53:24', '1');
INSERT INTO `x_log` VALUES ('827', '查询操作', '分页查询商品信息', '2023-05-11 15:53:24', '1');
INSERT INTO `x_log` VALUES ('828', '查询操作', '分页查询报溢信息', '2023-05-11 15:53:26', '1');
INSERT INTO `x_log` VALUES ('829', '查询操作', '分页查询报损信息', '2023-05-11 15:53:27', '1');
INSERT INTO `x_log` VALUES ('830', '查询操作', '分页查询库存信息', '2023-05-11 15:53:36', '1');
INSERT INTO `x_log` VALUES ('831', '查询操作', '分页查询库存信息', '2023-05-11 15:54:18', '1');
INSERT INTO `x_log` VALUES ('832', '查询操作', '分页查询库存信息', '2023-05-11 15:55:03', '1');
INSERT INTO `x_log` VALUES ('833', '查询操作', '分页查询库存信息', '2023-05-11 15:55:25', '1');
INSERT INTO `x_log` VALUES ('834', '查询操作', '分页查询库存信息', '2023-05-11 15:55:31', '1');
INSERT INTO `x_log` VALUES ('835', '查询操作', '分页查询库存信息', '2023-05-11 15:55:35', '1');
INSERT INTO `x_log` VALUES ('836', '查询操作', '分页查询库存信息', '2023-05-11 15:55:38', '1');
INSERT INTO `x_log` VALUES ('837', '查询操作', '分页查询库存信息', '2023-05-11 15:55:43', '1');
INSERT INTO `x_log` VALUES ('838', '查询操作', '分页查询库存信息', '2023-05-11 15:56:09', '1');
INSERT INTO `x_log` VALUES ('839', '查询操作', '分页查询库存信息', '2023-05-11 15:56:12', '1');
INSERT INTO `x_log` VALUES ('840', '查询操作', '分页查询库存信息', '2023-05-11 15:56:13', '1');
INSERT INTO `x_log` VALUES ('841', '查询操作', '分页查询库存信息', '2023-05-11 15:56:18', '1');
INSERT INTO `x_log` VALUES ('842', '查询操作', '分页查询库存信息', '2023-05-11 15:56:20', '1');
INSERT INTO `x_log` VALUES ('843', '查询操作', '分页查询库存信息', '2023-05-11 16:06:14', '1');
INSERT INTO `x_log` VALUES ('844', '查询操作', '分页查询库存信息', '2023-05-11 16:06:14', '1');
INSERT INTO `x_log` VALUES ('845', '查询操作', '分页查询报损信息', '2023-05-11 16:06:29', '1');
INSERT INTO `x_log` VALUES ('846', '查询操作', '查询商品类别信息', '2023-05-11 16:06:29', '1');
INSERT INTO `x_log` VALUES ('847', '查询操作', '分页查询商品信息', '2023-05-11 16:06:29', '1');
INSERT INTO `x_log` VALUES ('848', '查询操作', '查询商品类别信息', '2023-05-11 16:06:35', '1');
INSERT INTO `x_log` VALUES ('849', '查询操作', '查询所有供应商', '2023-05-11 16:06:35', '1');
INSERT INTO `x_log` VALUES ('850', '查询操作', '分页查询商品信息', '2023-05-11 16:06:35', '1');
INSERT INTO `x_log` VALUES ('851', '查询操作', '分页查询供应商统计', '2023-05-11 16:06:35', '1');
INSERT INTO `x_log` VALUES ('852', '查询操作', '查询所有供应商', '2023-05-11 16:09:31', '1');
INSERT INTO `x_log` VALUES ('853', '查询操作', '查询商品类别信息', '2023-05-11 16:09:31', '1');
INSERT INTO `x_log` VALUES ('854', '查询操作', '分页查询商品信息', '2023-05-11 16:09:31', '1');
INSERT INTO `x_log` VALUES ('855', '查询操作', '分页查询供应商统计', '2023-05-11 16:09:31', '1');
INSERT INTO `x_log` VALUES ('856', '查询操作', '查询所有供应商', '2023-05-11 16:09:55', '1');
INSERT INTO `x_log` VALUES ('857', '查询操作', '查询商品类别信息', '2023-05-11 16:09:55', '1');
INSERT INTO `x_log` VALUES ('858', '查询操作', '分页查询供应商统计', '2023-05-11 16:09:55', '1');
INSERT INTO `x_log` VALUES ('859', '查询操作', '分页查询商品信息', '2023-05-11 16:09:55', '1');
INSERT INTO `x_log` VALUES ('860', '查询操作', '分页查询供应商统计', '2023-05-11 16:09:58', '1');
INSERT INTO `x_log` VALUES ('861', '查询操作', '分页查询供应商统计', '2023-05-11 16:09:59', '1');
INSERT INTO `x_log` VALUES ('862', '查询操作', '查询所有客户', '2023-05-11 16:10:05', '1');
INSERT INTO `x_log` VALUES ('863', '查询操作', '查询商品类别信息', '2023-05-11 16:10:05', '1');
INSERT INTO `x_log` VALUES ('864', '查询操作', '分页查询商品信息', '2023-05-11 16:10:05', '1');
INSERT INTO `x_log` VALUES ('865', '查询操作', '分页查询客户统计', '2023-05-11 16:10:05', '1');
INSERT INTO `x_log` VALUES ('866', '查询操作', '查询商品类别信息', '2023-05-11 16:10:47', '1');
INSERT INTO `x_log` VALUES ('867', '查询操作', '查询所有客户', '2023-05-11 16:10:47', '1');
INSERT INTO `x_log` VALUES ('868', '查询操作', '分页查询商品信息', '2023-05-11 16:10:47', '1');
INSERT INTO `x_log` VALUES ('869', '查询操作', '分页查询客户统计', '2023-05-11 16:10:47', '1');
INSERT INTO `x_log` VALUES ('870', '查询操作', '查询所有客户', '2023-05-11 16:11:09', '1');
INSERT INTO `x_log` VALUES ('871', '查询操作', '查询商品类别信息', '2023-05-11 16:11:09', '1');
INSERT INTO `x_log` VALUES ('872', '查询操作', '分页查询客户统计', '2023-05-11 16:11:09', '1');
INSERT INTO `x_log` VALUES ('873', '查询操作', '分页查询商品信息', '2023-05-11 16:11:09', '1');
INSERT INTO `x_log` VALUES ('874', '查询操作', '分页查询客户统计', '2023-05-11 16:11:11', '1');
INSERT INTO `x_log` VALUES ('875', '查询操作', '分页查询客户统计', '2023-05-11 16:11:16', '1');
INSERT INTO `x_log` VALUES ('876', '查询操作', '查询商品类别信息', '2023-05-11 16:11:33', '1');
INSERT INTO `x_log` VALUES ('877', '查询操作', '分页查询商品信息', '2023-05-11 16:11:33', '1');
INSERT INTO `x_log` VALUES ('878', '查询操作', '分页查询商品采购信息', '2023-05-11 16:11:33', '1');
INSERT INTO `x_log` VALUES ('879', '查询操作', '查询商品类别信息', '2023-05-11 16:12:10', '1');
INSERT INTO `x_log` VALUES ('880', '查询操作', '分页查询商品信息', '2023-05-11 16:12:10', '1');
INSERT INTO `x_log` VALUES ('881', '查询操作', '分页查询商品采购信息', '2023-05-11 16:12:10', '1');
INSERT INTO `x_log` VALUES ('882', '查询操作', '查询商品类别信息', '2023-05-11 16:12:24', '1');
INSERT INTO `x_log` VALUES ('883', '查询操作', '分页查询商品采购信息', '2023-05-11 16:12:24', '1');
INSERT INTO `x_log` VALUES ('884', '查询操作', '分页查询商品信息', '2023-05-11 16:12:24', '1');
INSERT INTO `x_log` VALUES ('885', '查询操作', '分页查询商品采购信息', '2023-05-11 16:12:27', '1');
INSERT INTO `x_log` VALUES ('886', '查询操作', '分页查询商品采购信息', '2023-05-11 16:12:31', '1');
INSERT INTO `x_log` VALUES ('887', '查询操作', '查询商品类别信息', '2023-05-11 16:13:34', '1');
INSERT INTO `x_log` VALUES ('888', '查询操作', '分页查询商品信息', '2023-05-11 16:13:34', '1');
INSERT INTO `x_log` VALUES ('889', '查询操作', '分页查询商品销售统计', '2023-05-11 16:13:34', '1');
INSERT INTO `x_log` VALUES ('890', '查询操作', '分页查询商品销售统计', '2023-05-11 16:13:37', '1');
INSERT INTO `x_log` VALUES ('891', '查询操作', '分页查询商品销售统计', '2023-05-11 16:13:40', '1');
INSERT INTO `x_log` VALUES ('892', '查询操作', '分页查询商品销售统计', '2023-05-11 16:13:42', '1');
INSERT INTO `x_log` VALUES ('893', '查询操作', '查询按日统计', '2023-05-11 16:13:50', '1');
INSERT INTO `x_log` VALUES ('894', '查询操作', '查询按日统计', '2023-05-11 16:18:17', '1');
INSERT INTO `x_log` VALUES ('895', '查询操作', '查询按日统计', '2023-05-11 16:20:08', '1');
INSERT INTO `x_log` VALUES ('896', '查询操作', '查询按日统计', '2023-05-11 16:28:54', '1');
INSERT INTO `x_log` VALUES ('897', '查询操作', '查询按日统计', '2023-05-11 16:33:17', '1');
INSERT INTO `x_log` VALUES ('898', '查询操作', '查询按日统计', '2023-05-11 16:34:47', '1');
INSERT INTO `x_log` VALUES ('899', '查询操作', '查询按月统计', '2023-05-11 16:36:11', '1');
INSERT INTO `x_log` VALUES ('900', '查询操作', '查询商品类别信息', '2023-05-11 16:36:20', '1');
INSERT INTO `x_log` VALUES ('901', '查询操作', '分页查询商品信息', '2023-05-11 16:36:20', '1');
INSERT INTO `x_log` VALUES ('902', '查询操作', '查询商品类别信息', '2023-05-11 16:37:11', '1');
INSERT INTO `x_log` VALUES ('903', '查询操作', '分页查询商品信息', '2023-05-11 16:37:11', '1');
INSERT INTO `x_log` VALUES ('904', '查询操作', '查询商品类别信息', '2023-05-11 16:37:28', '1');
INSERT INTO `x_log` VALUES ('905', '查询操作', '分页查询客户', '2023-05-11 16:37:28', '1');
INSERT INTO `x_log` VALUES ('906', '查询操作', '查询商品类别信息', '2023-05-11 16:37:36', '1');
INSERT INTO `x_log` VALUES ('907', '查询操作', '分页查询商品信息', '2023-05-11 16:37:36', '1');
INSERT INTO `x_log` VALUES ('908', '查询操作', '查询商品类别信息', '2023-05-11 16:37:38', '1');
INSERT INTO `x_log` VALUES ('909', '查询操作', '分页查询客户', '2023-05-11 16:37:38', '1');
INSERT INTO `x_log` VALUES ('910', '查询操作', '查询商品类别信息', '2023-05-11 16:37:41', '1');
INSERT INTO `x_log` VALUES ('911', '查询操作', '分页查询供应商信息', '2023-05-11 16:37:41', '1');
INSERT INTO `x_log` VALUES ('912', '查询操作', '查询商品类别信息', '2023-05-11 16:37:42', '1');
INSERT INTO `x_log` VALUES ('913', '查询操作', '分页查询客户', '2023-05-11 16:37:42', '1');
INSERT INTO `x_log` VALUES ('914', '查询操作', '查询商品类别信息', '2023-05-11 16:38:10', '1');
INSERT INTO `x_log` VALUES ('915', '查询操作', '分页查询客户', '2023-05-11 16:38:10', '1');
INSERT INTO `x_log` VALUES ('916', '查询操作', '查询商品类别信息', '2023-05-11 16:39:26', '1');
INSERT INTO `x_log` VALUES ('917', '查询操作', '分页查询客户', '2023-05-11 16:39:26', '1');
INSERT INTO `x_log` VALUES ('918', '查询操作', '分页查询客户', '2023-05-11 16:39:53', '1');
INSERT INTO `x_log` VALUES ('919', '查询操作', '分页查询客户', '2023-05-11 16:39:54', '1');
INSERT INTO `x_log` VALUES ('920', '查询操作', '分页查询客户', '2023-05-11 16:40:01', '1');
INSERT INTO `x_log` VALUES ('921', '查询操作', '分页查询客户', '2023-05-11 16:40:02', '1');
INSERT INTO `x_log` VALUES ('922', '查询操作', '查询商品类别信息', '2023-05-11 16:40:05', '1');
INSERT INTO `x_log` VALUES ('923', '查询操作', '分页查询供应商信息', '2023-05-11 16:40:05', '1');
INSERT INTO `x_log` VALUES ('924', '查询操作', '分页查询供应商信息', '2023-05-11 16:40:10', '1');
INSERT INTO `x_log` VALUES ('925', '查询操作', '分页查询供应商信息', '2023-05-11 16:40:10', '1');
INSERT INTO `x_log` VALUES ('926', '查询操作', '分页查询供应商信息', '2023-05-11 16:40:14', '1');
INSERT INTO `x_log` VALUES ('927', '查询操作', '分页查询供应商信息', '2023-05-11 16:40:17', '1');
INSERT INTO `x_log` VALUES ('928', '查询操作', '分页查询供应商信息', '2023-05-11 16:40:19', '1');
INSERT INTO `x_log` VALUES ('929', '退出操作', '退出登录', '2023-05-11 16:42:43', '1');
INSERT INTO `x_log` VALUES ('930', '退出操作', '退出登录', '2023-05-11 18:36:20', '1');
INSERT INTO `x_log` VALUES ('931', '查询操作', '查询所有供应商', '2023-05-11 18:47:32', '1');
INSERT INTO `x_log` VALUES ('932', '查询操作', '分页查询进货信息', '2023-05-11 18:47:32', '1');
INSERT INTO `x_log` VALUES ('933', '查询操作', '查询商品类别信息', '2023-05-11 18:47:32', '1');
INSERT INTO `x_log` VALUES ('934', '查询操作', '分页查询商品信息', '2023-05-11 18:47:32', '1');
INSERT INTO `x_log` VALUES ('935', '查询操作', '查询商品类别信息', '2023-05-11 18:47:33', '1');
INSERT INTO `x_log` VALUES ('936', '查询操作', '查询所有供应商', '2023-05-11 18:47:33', '1');
INSERT INTO `x_log` VALUES ('937', '查询操作', '分页查询退货信息', '2023-05-11 18:47:33', '1');
INSERT INTO `x_log` VALUES ('938', '查询操作', '分页查询商品信息', '2023-05-11 18:47:33', '1');
INSERT INTO `x_log` VALUES ('939', '查询操作', '查询商品类别信息', '2023-05-11 18:50:06', '1');
INSERT INTO `x_log` VALUES ('940', '查询操作', '查询所有供应商', '2023-05-11 18:50:06', '1');
INSERT INTO `x_log` VALUES ('941', '查询操作', '分页查询进货信息', '2023-05-11 18:50:06', '1');
INSERT INTO `x_log` VALUES ('942', '查询操作', '分页查询商品信息', '2023-05-11 18:50:06', '1');
INSERT INTO `x_log` VALUES ('943', '查询操作', '查询所有供应商', '2023-05-11 18:50:11', '1');
INSERT INTO `x_log` VALUES ('944', '查询操作', '分页查询退货信息', '2023-05-11 18:50:11', '1');
INSERT INTO `x_log` VALUES ('945', '查询操作', '查询商品类别信息', '2023-05-11 18:50:11', '1');
INSERT INTO `x_log` VALUES ('946', '查询操作', '分页查询商品信息', '2023-05-11 18:50:11', '1');
INSERT INTO `x_log` VALUES ('947', '查询操作', '查询所有供应商', '2023-05-11 18:50:25', '1');
INSERT INTO `x_log` VALUES ('948', '查询操作', '查询商品类别信息', '2023-05-11 18:50:25', '1');
INSERT INTO `x_log` VALUES ('949', '查询操作', '分页查询进货信息', '2023-05-11 18:50:25', '1');
INSERT INTO `x_log` VALUES ('950', '查询操作', '分页查询商品信息', '2023-05-11 18:50:25', '1');
INSERT INTO `x_log` VALUES ('951', '查询操作', '查询所有供应商', '2023-05-11 18:55:04', '1');
INSERT INTO `x_log` VALUES ('952', '查询操作', '查询商品类别信息', '2023-05-11 18:55:04', '1');
INSERT INTO `x_log` VALUES ('953', '查询操作', '分页查询商品信息', '2023-05-11 18:55:04', '1');
INSERT INTO `x_log` VALUES ('954', '查询操作', '查询所有用户', '2023-05-11 18:57:05', '1');
INSERT INTO `x_log` VALUES ('955', '查询操作', '查询商品类别信息', '2023-05-11 18:57:10', '1');
INSERT INTO `x_log` VALUES ('956', '查询操作', '查询所有供应商', '2023-05-11 18:57:10', '1');
INSERT INTO `x_log` VALUES ('957', '查询操作', '分页查询商品信息', '2023-05-11 18:57:10', '1');
INSERT INTO `x_log` VALUES ('958', '查询操作', '查询商品类别信息', '2023-05-11 18:59:11', '1');
INSERT INTO `x_log` VALUES ('959', '查询操作', '查询所有客户', '2023-05-11 18:59:11', '1');
INSERT INTO `x_log` VALUES ('960', '查询操作', '分页查询商品信息', '2023-05-11 18:59:11', '1');
INSERT INTO `x_log` VALUES ('961', '查询操作', '查询商品类别信息', '2023-05-11 19:15:53', '1');
INSERT INTO `x_log` VALUES ('962', '查询操作', '分页查询商品信息', '2023-05-11 19:15:53', '1');
INSERT INTO `x_log` VALUES ('963', '查询操作', '分页查询进货信息', '2023-05-11 19:18:49', '1');
INSERT INTO `x_log` VALUES ('964', '查询操作', '查询商品类别信息', '2023-05-11 19:18:49', '1');
INSERT INTO `x_log` VALUES ('965', '查询操作', '查询所有供应商', '2023-05-11 19:18:49', '1');
INSERT INTO `x_log` VALUES ('966', '查询操作', '分页查询商品信息', '2023-05-11 19:18:49', '1');
INSERT INTO `x_log` VALUES ('967', '查询操作', '查询商品类别信息', '2023-05-11 19:18:51', '1');
INSERT INTO `x_log` VALUES ('968', '查询操作', '分页查询商品信息', '2023-05-11 19:18:51', '1');
INSERT INTO `x_log` VALUES ('969', '查询操作', '查询所有供应商', '2023-05-11 19:18:54', '1');
INSERT INTO `x_log` VALUES ('970', '查询操作', '分页查询进货信息', '2023-05-11 19:18:54', '1');
INSERT INTO `x_log` VALUES ('971', '查询操作', '查询商品类别信息', '2023-05-11 19:18:54', '1');
INSERT INTO `x_log` VALUES ('972', '查询操作', '分页查询商品信息', '2023-05-11 19:18:54', '1');
INSERT INTO `x_log` VALUES ('973', '查询操作', '查询所有供应商', '2023-05-11 19:18:54', '1');
INSERT INTO `x_log` VALUES ('974', '查询操作', '分页查询商品信息', '2023-05-11 19:18:54', '1');
INSERT INTO `x_log` VALUES ('975', '查询操作', '查询商品类别信息', '2023-05-11 19:18:54', '1');
INSERT INTO `x_log` VALUES ('976', '查询操作', '查询商品类别信息', '2023-05-11 19:19:24', '1');
INSERT INTO `x_log` VALUES ('977', '查询操作', '查询所有供应商', '2023-05-11 19:19:24', '1');
INSERT INTO `x_log` VALUES ('978', '查询操作', '分页查询进货信息', '2023-05-11 19:19:24', '1');
INSERT INTO `x_log` VALUES ('979', '查询操作', '分页查询商品信息', '2023-05-11 19:19:24', '1');
INSERT INTO `x_log` VALUES ('980', '查询操作', '查询商品类别信息', '2023-05-11 19:36:18', '1');
INSERT INTO `x_log` VALUES ('981', '查询操作', '查询所有供应商', '2023-05-11 19:36:18', '1');
INSERT INTO `x_log` VALUES ('982', '查询操作', '分页查询退货信息', '2023-05-11 19:36:18', '1');
INSERT INTO `x_log` VALUES ('983', '查询操作', '分页查询商品信息', '2023-05-11 19:36:18', '1');
INSERT INTO `x_log` VALUES ('984', '查询操作', '查询所有供应商', '2023-05-11 19:46:05', '1');
INSERT INTO `x_log` VALUES ('985', '查询操作', '查询商品类别信息', '2023-05-11 19:46:05', '1');
INSERT INTO `x_log` VALUES ('986', '查询操作', '分页查询进货信息', '2023-05-11 19:46:05', '1');
INSERT INTO `x_log` VALUES ('987', '查询操作', '分页查询商品信息', '2023-05-11 19:46:05', '1');
INSERT INTO `x_log` VALUES ('988', '查询操作', '查询所有供应商', '2023-05-11 19:46:09', '1');
INSERT INTO `x_log` VALUES ('989', '查询操作', '查询商品类别信息', '2023-05-11 19:46:09', '1');
INSERT INTO `x_log` VALUES ('990', '查询操作', '分页查询商品信息', '2023-05-11 19:46:09', '1');
INSERT INTO `x_log` VALUES ('991', '查询操作', '查询所有供应商', '2023-05-12 07:59:14', '1');
INSERT INTO `x_log` VALUES ('992', '查询操作', '查询商品类别信息', '2023-05-12 07:59:14', '1');
INSERT INTO `x_log` VALUES ('993', '查询操作', '分页查询商品信息', '2023-05-12 07:59:14', '1');
INSERT INTO `x_log` VALUES ('994', '查询操作', '查询商品:qq牌甜糖', '2023-05-12 08:00:55', '1');
INSERT INTO `x_log` VALUES ('995', '查询操作', '查询商品:qq牌甜糖', '2023-05-12 08:00:58', '1');
INSERT INTO `x_log` VALUES ('996', '查询操作', '查询商品:qq牌甜糖', '2023-05-12 08:04:02', '1');
INSERT INTO `x_log` VALUES ('997', '查询操作', '查询商品类别信息', '2023-05-12 08:08:44', '1');
INSERT INTO `x_log` VALUES ('998', '查询操作', '查询所有供应商', '2023-05-12 08:08:44', '1');
INSERT INTO `x_log` VALUES ('999', '查询操作', '分页查询商品信息', '2023-05-12 08:08:44', '1');
INSERT INTO `x_log` VALUES ('1000', '查询操作', '分页查询进货信息', '2023-05-12 08:08:44', '1');
INSERT INTO `x_log` VALUES ('1001', '查询操作', '查询进货商品:xxdr牌甜糖', '2023-05-12 08:08:59', '1');
INSERT INTO `x_log` VALUES ('1002', '查询操作', '查询商品类别信息', '2023-05-12 08:39:49', '1');
INSERT INTO `x_log` VALUES ('1003', '查询操作', '查询所有供应商', '2023-05-12 08:39:49', '1');
INSERT INTO `x_log` VALUES ('1004', '查询操作', '分页查询进货信息', '2023-05-12 08:39:49', '1');
INSERT INTO `x_log` VALUES ('1005', '查询操作', '分页查询商品信息', '2023-05-12 08:39:49', '1');
INSERT INTO `x_log` VALUES ('1006', '查询操作', '分页查询进货信息', '2023-05-12 08:40:11', '1');
INSERT INTO `x_log` VALUES ('1007', '查询操作', '分页查询商品信息', '2023-05-12 08:40:11', '1');
INSERT INTO `x_log` VALUES ('1008', '查询操作', '查询商品类别信息', '2023-05-12 08:40:11', '1');
INSERT INTO `x_log` VALUES ('1009', '查询操作', '查询所有供应商', '2023-05-12 08:40:11', '1');
INSERT INTO `x_log` VALUES ('1010', '查询操作', '查询所有供应商', '2023-05-12 08:40:26', '1');
INSERT INTO `x_log` VALUES ('1011', '查询操作', '查询商品类别信息', '2023-05-12 08:40:26', '1');
INSERT INTO `x_log` VALUES ('1012', '查询操作', '分页查询进货信息', '2023-05-12 08:40:26', '1');
INSERT INTO `x_log` VALUES ('1013', '查询操作', '分页查询商品信息', '2023-05-12 08:40:26', '1');
INSERT INTO `x_log` VALUES ('1014', '查询操作', '分页查询进货信息', '2023-05-12 08:40:35', '1');
INSERT INTO `x_log` VALUES ('1015', '查询操作', '查询所有供应商', '2023-05-12 08:40:35', '1');
INSERT INTO `x_log` VALUES ('1016', '查询操作', '查询商品类别信息', '2023-05-12 08:40:35', '1');
INSERT INTO `x_log` VALUES ('1017', '查询操作', '分页查询商品信息', '2023-05-12 08:40:35', '1');
INSERT INTO `x_log` VALUES ('1018', '查询操作', '查询所有供应商', '2023-05-12 08:41:08', '1');
INSERT INTO `x_log` VALUES ('1019', '查询操作', '查询商品类别信息', '2023-05-12 08:41:08', '1');
INSERT INTO `x_log` VALUES ('1020', '查询操作', '分页查询进货信息', '2023-05-12 08:41:08', '1');
INSERT INTO `x_log` VALUES ('1021', '查询操作', '分页查询商品信息', '2023-05-12 08:41:08', '1');
INSERT INTO `x_log` VALUES ('1022', '查询操作', '查询所有供应商', '2023-05-12 09:13:09', '1');
INSERT INTO `x_log` VALUES ('1023', '查询操作', '查询商品类别信息', '2023-05-12 09:13:09', '1');
INSERT INTO `x_log` VALUES ('1024', '查询操作', '分页查询进货信息', '2023-05-12 09:13:09', '1');
INSERT INTO `x_log` VALUES ('1025', '查询操作', '分页查询商品信息', '2023-05-12 09:13:09', '1');
INSERT INTO `x_log` VALUES ('1026', '查询操作', '分页查询商品信息', '2023-05-12 10:16:18', null);
INSERT INTO `x_log` VALUES ('1027', '查询操作', '查询所有供应商', '2023-05-12 10:16:18', null);
INSERT INTO `x_log` VALUES ('1028', '查询操作', '查询商品类别信息', '2023-05-12 10:16:18', null);
INSERT INTO `x_log` VALUES ('1029', '查询操作', '分页查询进货信息', '2023-05-12 10:16:18', null);
INSERT INTO `x_log` VALUES ('1030', '查询操作', '查询按日统计', '2023-05-12 10:16:26', null);
INSERT INTO `x_log` VALUES ('1031', '查询操作', '查询按日统计', '2023-05-12 10:16:32', null);
INSERT INTO `x_log` VALUES ('1032', '查询操作', '查询按日统计', '2023-05-12 10:17:19', '1');
INSERT INTO `x_log` VALUES ('1033', '查询操作', '查询按日统计', '2023-05-12 10:17:25', '1');
INSERT INTO `x_log` VALUES ('1034', '查询操作', '查询按月统计', '2023-05-12 10:17:35', '1');
INSERT INTO `x_log` VALUES ('1035', '查询操作', '查询按月统计', '2023-05-12 10:17:40', '1');
INSERT INTO `x_log` VALUES ('1036', '查询操作', '查询按月统计', '2023-05-12 10:18:09', '1');
INSERT INTO `x_log` VALUES ('1037', '查询操作', '查询按日统计', '2023-05-12 10:18:15', '1');
INSERT INTO `x_log` VALUES ('1038', '查询操作', '查询按日统计', '2023-05-12 10:19:46', '1');
INSERT INTO `x_log` VALUES ('1039', '查询操作', '查询按日统计', '2023-05-12 10:28:01', '1');
INSERT INTO `x_log` VALUES ('1040', '查询操作', '查询按日统计', '2023-05-12 10:28:24', '1');
INSERT INTO `x_log` VALUES ('1041', '查询操作', '查询按日统计', '2023-05-12 10:28:27', '1');
INSERT INTO `x_log` VALUES ('1042', '查询操作', '查询按日统计', '2023-05-12 10:33:09', '1');
INSERT INTO `x_log` VALUES ('1043', '查询操作', '查询按日统计', '2023-05-12 10:33:16', '1');
INSERT INTO `x_log` VALUES ('1044', '查询操作', '查询按日统计', '2023-05-12 10:45:47', '1');
INSERT INTO `x_log` VALUES ('1045', '查询操作', '查询按日统计', '2023-05-12 10:45:50', '1');
INSERT INTO `x_log` VALUES ('1046', '查询操作', '查询按日统计', '2023-05-13 11:39:36', '1');
INSERT INTO `x_log` VALUES ('1047', '查询操作', '查询按日统计', '2023-05-13 11:39:41', '1');
INSERT INTO `x_log` VALUES ('1048', '查询操作', '查询按日统计', '2023-05-13 11:40:19', '1');
INSERT INTO `x_log` VALUES ('1049', '查询操作', '查询按日统计', '2023-05-13 11:40:27', '1');
INSERT INTO `x_log` VALUES ('1050', '查询操作', '查询按日统计', '2023-05-13 11:40:32', '1');
INSERT INTO `x_log` VALUES ('1051', '查询操作', '查询所有角色', '2023-05-18 11:10:44', '1');
INSERT INTO `x_log` VALUES ('1052', '查询操作', '分页查询用户信息', '2023-05-18 11:10:44', '1');
INSERT INTO `x_log` VALUES ('1053', '查询操作', '分页查询角色信息', '2023-05-18 11:10:50', '1');
INSERT INTO `x_log` VALUES ('1054', '查询操作', '查询角色:admin', '2023-05-18 11:10:52', '1');
INSERT INTO `x_log` VALUES ('1055', '查询操作', '查询所有用户', '2023-05-18 11:10:59', '1');
INSERT INTO `x_log` VALUES ('1056', '查询操作', '查询所有用户', '2023-05-18 11:11:54', '1');
INSERT INTO `x_log` VALUES ('1057', '查询操作', '分页查询商品信息', '2023-05-18 11:11:58', '1');
INSERT INTO `x_log` VALUES ('1058', '查询操作', '查询商品类别信息', '2023-05-18 11:11:58', '1');
INSERT INTO `x_log` VALUES ('1059', '查询操作', '查询商品:qq牌甜糖', '2023-05-18 11:12:09', '1');
INSERT INTO `x_log` VALUES ('1060', '查询操作', '查询商品类别信息', '2023-05-18 11:12:16', '1');
INSERT INTO `x_log` VALUES ('1061', '查询操作', '查询所有供应商', '2023-05-18 11:12:16', '1');
INSERT INTO `x_log` VALUES ('1062', '查询操作', '分页查询商品信息', '2023-05-18 11:12:16', '1');
INSERT INTO `x_log` VALUES ('1063', '查询操作', '分页查询进货信息', '2023-05-18 11:12:16', '1');
INSERT INTO `x_log` VALUES ('1064', '查询操作', '查询进货商品:xxdr牌甜糖', '2023-05-18 11:12:19', '1');
INSERT INTO `x_log` VALUES ('1065', '查询操作', '查询所有供应商', '2023-05-18 11:12:29', '1');
INSERT INTO `x_log` VALUES ('1066', '查询操作', '查询商品类别信息', '2023-05-18 11:12:29', '1');
INSERT INTO `x_log` VALUES ('1067', '查询操作', '分页查询商品信息', '2023-05-18 11:12:29', '1');
INSERT INTO `x_log` VALUES ('1068', '查询操作', '分页查询进货信息', '2023-05-18 11:12:29', '1');
INSERT INTO `x_log` VALUES ('1069', '查询操作', '查询所有供应商', '2023-05-18 11:12:40', '1');
INSERT INTO `x_log` VALUES ('1070', '查询操作', '查询商品类别信息', '2023-05-18 11:12:40', '1');
INSERT INTO `x_log` VALUES ('1071', '查询操作', '分页查询商品信息', '2023-05-18 11:12:40', '1');
INSERT INTO `x_log` VALUES ('1072', '查询操作', '分页查询退货信息', '2023-05-18 11:12:40', '1');
INSERT INTO `x_log` VALUES ('1073', '查询操作', '查询商品类别信息', '2023-05-18 11:12:47', '1');
INSERT INTO `x_log` VALUES ('1074', '查询操作', '分页查询商品信息', '2023-05-18 11:12:47', '1');
INSERT INTO `x_log` VALUES ('1075', '查询操作', '查询商品:qq牌甜糖', '2023-05-18 11:12:52', '1');
INSERT INTO `x_log` VALUES ('1076', '查询操作', '查询所有客户', '2023-05-18 11:13:04', '1');
INSERT INTO `x_log` VALUES ('1077', '查询操作', '查询商品类别信息', '2023-05-18 11:13:04', '1');
INSERT INTO `x_log` VALUES ('1078', '查询操作', '分页查询商品信息', '2023-05-18 11:13:04', '1');
INSERT INTO `x_log` VALUES ('1079', '查询操作', '查询商品类别信息', '2023-05-18 11:13:22', '1');
INSERT INTO `x_log` VALUES ('1080', '查询操作', '查询所有客户', '2023-05-18 11:13:22', '1');
INSERT INTO `x_log` VALUES ('1081', '查询操作', '分页查询商品信息', '2023-05-18 11:13:22', '1');
INSERT INTO `x_log` VALUES ('1082', '查询操作', '查询商品类别信息', '2023-05-18 11:13:44', '1');
INSERT INTO `x_log` VALUES ('1083', '查询操作', '分页查询商品信息', '2023-05-18 11:13:44', '1');
INSERT INTO `x_log` VALUES ('1084', '查询操作', '分页查询商品销售统计', '2023-05-18 11:13:44', '1');
INSERT INTO `x_log` VALUES ('1085', '查询操作', '查询商品类别信息', '2023-05-18 11:14:02', '1');
INSERT INTO `x_log` VALUES ('1086', '查询操作', '分页查询商品信息', '2023-05-18 11:14:02', '1');
INSERT INTO `x_log` VALUES ('1087', '查询操作', '查询商品类别信息', '2023-05-18 11:14:06', '1');
INSERT INTO `x_log` VALUES ('1088', '查询操作', '分页查询客户', '2023-05-18 11:14:06', '1');
INSERT INTO `x_log` VALUES ('1089', '查询操作', '查询客户:保定万象家电城', '2023-05-18 11:14:10', '1');
INSERT INTO `x_log` VALUES ('1090', '查询操作', '查询商品类别信息', '2023-05-18 11:14:25', '1');
INSERT INTO `x_log` VALUES ('1091', '查询操作', '分页查询供应商信息', '2023-05-18 11:14:25', '1');
INSERT INTO `x_log` VALUES ('1092', '查询操作', '分页查询供应商信息', '2023-05-18 11:14:29', '1');
INSERT INTO `x_log` VALUES ('1093', '查询操作', '查询商品类别信息', '2023-05-18 11:14:44', '1');
INSERT INTO `x_log` VALUES ('1094', '查询操作', '分页查询客户', '2023-05-18 11:14:44', '1');
INSERT INTO `x_log` VALUES ('1095', '查询操作', '查询商品类别信息', '2023-05-18 11:14:46', '1');
INSERT INTO `x_log` VALUES ('1096', '查询操作', '分页查询商品信息', '2023-05-18 11:14:46', '1');
INSERT INTO `x_log` VALUES ('1097', '查询操作', '查询所有角色', '2023-05-18 11:15:12', '1');
INSERT INTO `x_log` VALUES ('1098', '查询操作', '分页查询用户信息', '2023-05-18 11:15:12', '1');
INSERT INTO `x_log` VALUES ('1099', '查询操作', '分页查询角色信息', '2023-05-18 11:15:15', '1');
INSERT INTO `x_log` VALUES ('1100', '查询操作', '查询所有用户', '2023-05-18 11:15:18', '1');
INSERT INTO `x_log` VALUES ('1101', '查询操作', '查询商品类别信息', '2023-05-18 11:15:38', '1');
INSERT INTO `x_log` VALUES ('1102', '查询操作', '分页查询商品信息', '2023-05-18 11:15:38', '1');
INSERT INTO `x_log` VALUES ('1103', '查询操作', '查询所有角色', '2023-05-18 11:16:11', '1');
INSERT INTO `x_log` VALUES ('1104', '查询操作', '分页查询用户信息', '2023-05-18 11:16:11', '1');
INSERT INTO `x_log` VALUES ('1105', '查询操作', '分页查询角色信息', '2023-05-18 11:16:13', '1');
INSERT INTO `x_log` VALUES ('1106', '查询操作', '查询所有用户', '2023-05-18 11:16:15', '1');
INSERT INTO `x_log` VALUES ('1107', '查询操作', '查询商品类别信息', '2023-05-18 11:16:22', '1');
INSERT INTO `x_log` VALUES ('1108', '查询操作', '分页查询商品信息', '2023-05-18 11:16:22', '1');
INSERT INTO `x_log` VALUES ('1109', '查询操作', '查询商品类别信息', '2023-05-18 11:16:32', '1');
INSERT INTO `x_log` VALUES ('1110', '查询操作', '分页查询商品信息', '2023-05-18 11:16:32', '1');
INSERT INTO `x_log` VALUES ('1111', '查询操作', '查询商品类别信息', '2023-05-18 11:17:24', '1');
INSERT INTO `x_log` VALUES ('1112', '查询操作', '分页查询商品信息', '2023-05-18 11:17:24', '1');
INSERT INTO `x_log` VALUES ('1113', '查询操作', '查询商品类别信息', '2023-05-18 11:17:28', '1');
INSERT INTO `x_log` VALUES ('1114', '查询操作', '分页查询商品信息', '2023-05-18 11:17:28', '1');
INSERT INTO `x_log` VALUES ('1115', '查询操作', '查询商品类别信息', '2023-05-18 11:17:33', '1');
INSERT INTO `x_log` VALUES ('1116', '查询操作', '分页查询库存预警商品信息', '2023-05-18 11:17:33', '1');
INSERT INTO `x_log` VALUES ('1117', '查询操作', '查询商品类别信息', '2023-05-18 11:17:43', '1');
INSERT INTO `x_log` VALUES ('1118', '查询操作', '分页查询商品信息', '2023-05-18 11:17:43', '1');
INSERT INTO `x_log` VALUES ('1119', '查询操作', '分页查询报损信息', '2023-05-18 11:17:43', '1');
INSERT INTO `x_log` VALUES ('1120', '查询操作', '查询商品类别信息', '2023-05-18 11:17:44', '1');
INSERT INTO `x_log` VALUES ('1121', '查询操作', '分页查询库存预警商品信息', '2023-05-18 11:17:44', '1');
INSERT INTO `x_log` VALUES ('1122', '查询操作', '查询所有客户', '2023-05-18 11:17:58', '1');
INSERT INTO `x_log` VALUES ('1123', '查询操作', '查询商品类别信息', '2023-05-18 11:17:58', '1');
INSERT INTO `x_log` VALUES ('1124', '查询操作', '分页查询商品信息', '2023-05-18 11:17:58', '1');
INSERT INTO `x_log` VALUES ('1125', '查询操作', '分页查询客户统计', '2023-05-18 11:17:58', '1');
INSERT INTO `x_log` VALUES ('1126', '查询操作', '查询商品类别信息', '2023-05-18 11:18:00', '1');
INSERT INTO `x_log` VALUES ('1127', '查询操作', '分页查询商品信息', '2023-05-18 11:18:00', '1');
INSERT INTO `x_log` VALUES ('1128', '查询操作', '分页查询商品采购信息', '2023-05-18 11:18:00', '1');
INSERT INTO `x_log` VALUES ('1129', '查询操作', '查询商品类别信息', '2023-05-18 11:18:02', '1');
INSERT INTO `x_log` VALUES ('1130', '查询操作', '分页查询商品销售统计', '2023-05-18 11:18:02', '1');
INSERT INTO `x_log` VALUES ('1131', '查询操作', '分页查询商品信息', '2023-05-18 11:18:02', '1');
INSERT INTO `x_log` VALUES ('1132', '查询操作', '查询所有角色', '2023-05-18 11:20:19', '1');
INSERT INTO `x_log` VALUES ('1133', '查询操作', '分页查询用户信息', '2023-05-18 11:20:19', '1');
INSERT INTO `x_log` VALUES ('1134', '查询操作', '分页查询角色信息', '2023-05-18 11:20:20', '1');
INSERT INTO `x_log` VALUES ('1135', '查询操作', '查询角色:admin', '2023-05-18 11:20:20', '1');
INSERT INTO `x_log` VALUES ('1136', '查询操作', '查询所有客户', '2023-05-18 11:20:45', '1');
INSERT INTO `x_log` VALUES ('1137', '查询操作', '查询商品类别信息', '2023-05-18 11:20:45', '1');
INSERT INTO `x_log` VALUES ('1138', '查询操作', '分页查询商品信息', '2023-05-18 11:20:45', '1');
INSERT INTO `x_log` VALUES ('1139', '查询操作', '查询商品类别信息', '2023-05-18 11:20:49', '1');
INSERT INTO `x_log` VALUES ('1140', '查询操作', '分页查询报损信息', '2023-05-18 11:20:49', '1');
INSERT INTO `x_log` VALUES ('1141', '查询操作', '分页查询商品信息', '2023-05-18 11:20:49', '1');
INSERT INTO `x_log` VALUES ('1142', '查询操作', '查询商品类别信息', '2023-05-18 11:22:33', '1');
INSERT INTO `x_log` VALUES ('1143', '查询操作', '分页查询商品信息', '2023-05-18 11:22:33', '1');
INSERT INTO `x_log` VALUES ('1144', '查询操作', '查询商品类别信息', '2023-05-18 11:22:34', '1');
INSERT INTO `x_log` VALUES ('1145', '查询操作', '查询所有供应商', '2023-05-18 11:22:34', '1');
INSERT INTO `x_log` VALUES ('1146', '查询操作', '分页查询进货信息', '2023-05-18 11:22:34', '1');
INSERT INTO `x_log` VALUES ('1147', '查询操作', '分页查询商品信息', '2023-05-18 11:22:34', '1');
INSERT INTO `x_log` VALUES ('1148', '查询操作', '分页查询进货信息', '2023-05-18 11:22:39', '1');
INSERT INTO `x_log` VALUES ('1149', '查询操作', '分页查询进货信息', '2023-05-18 11:22:40', '1');
INSERT INTO `x_log` VALUES ('1150', '查询操作', '分页查询进货信息', '2023-05-18 11:22:42', '1');
INSERT INTO `x_log` VALUES ('1151', '查询操作', '分页查询进货信息', '2023-05-18 11:22:45', '1');
INSERT INTO `x_log` VALUES ('1152', '退出操作', '退出登录', '2023-05-18 18:04:35', '1');
INSERT INTO `x_log` VALUES ('1153', '退出操作', '退出登录', '2023-05-18 18:07:06', '1');
INSERT INTO `x_log` VALUES ('1154', '查询操作', '查询所有供应商', '2023-05-18 18:07:53', '1');
INSERT INTO `x_log` VALUES ('1155', '查询操作', '分页查询进货信息', '2023-05-18 18:07:53', '1');
INSERT INTO `x_log` VALUES ('1156', '查询操作', '查询商品类别信息', '2023-05-18 18:07:53', '1');
INSERT INTO `x_log` VALUES ('1157', '查询操作', '分页查询商品信息', '2023-05-18 18:07:53', '1');
INSERT INTO `x_log` VALUES ('1158', '查询操作', '分页查询进货信息', '2023-05-19 09:20:11', '1');
INSERT INTO `x_log` VALUES ('1159', '查询操作', '查询商品类别信息', '2023-05-19 09:20:11', '1');
INSERT INTO `x_log` VALUES ('1160', '查询操作', '查询所有供应商', '2023-05-19 09:20:11', '1');
INSERT INTO `x_log` VALUES ('1161', '查询操作', '分页查询商品信息', '2023-05-19 09:20:11', '1');
INSERT INTO `x_log` VALUES ('1162', '查询操作', '查询商品类别信息', '2023-05-19 09:23:20', '1');
INSERT INTO `x_log` VALUES ('1163', '查询操作', '分页查询商品信息', '2023-05-19 09:23:20', '1');
INSERT INTO `x_log` VALUES ('1164', '查询操作', '查询商品类别信息', '2023-05-19 09:23:48', '1');
INSERT INTO `x_log` VALUES ('1165', '查询操作', '查询所有供应商', '2023-05-19 09:23:48', '1');
INSERT INTO `x_log` VALUES ('1166', '查询操作', '分页查询进货信息', '2023-05-19 09:23:48', '1');
INSERT INTO `x_log` VALUES ('1167', '查询操作', '分页查询商品信息', '2023-05-19 09:23:48', '1');
INSERT INTO `x_log` VALUES ('1168', '查询操作', '查询商品类别信息', '2023-05-19 14:00:03', '1');
INSERT INTO `x_log` VALUES ('1169', '查询操作', '查询所有供应商', '2023-05-19 14:00:03', '1');
INSERT INTO `x_log` VALUES ('1170', '查询操作', '分页查询进货信息', '2023-05-19 14:00:03', '1');
INSERT INTO `x_log` VALUES ('1171', '查询操作', '分页查询商品信息', '2023-05-19 14:00:03', '1');
INSERT INTO `x_log` VALUES ('1172', '查询操作', '分页查询进货信息', '2023-05-19 14:13:21', '1');
INSERT INTO `x_log` VALUES ('1173', '查询操作', '查询所有供应商', '2023-05-19 14:13:21', '1');
INSERT INTO `x_log` VALUES ('1174', '查询操作', '查询商品类别信息', '2023-05-19 14:13:21', '1');
INSERT INTO `x_log` VALUES ('1175', '查询操作', '分页查询商品信息', '2023-05-19 14:13:21', '1');
INSERT INTO `x_log` VALUES ('1176', '查询操作', '查询所有供应商', '2023-05-19 14:13:23', '1');
INSERT INTO `x_log` VALUES ('1177', '查询操作', '分页查询进货信息', '2023-05-19 14:13:23', '1');
INSERT INTO `x_log` VALUES ('1178', '查询操作', '查询商品类别信息', '2023-05-19 14:13:23', '1');
INSERT INTO `x_log` VALUES ('1179', '查询操作', '分页查询商品信息', '2023-05-19 14:13:23', '1');
INSERT INTO `x_log` VALUES ('1180', '查询操作', '分页查询进货信息', '2023-05-19 14:13:25', '1');
INSERT INTO `x_log` VALUES ('1181', '查询操作', '分页查询进货信息', '2023-05-19 14:13:27', '1');
INSERT INTO `x_log` VALUES ('1182', '查询操作', '查询所有供应商', '2023-05-19 14:18:41', '1');
INSERT INTO `x_log` VALUES ('1183', '查询操作', '查询商品类别信息', '2023-05-19 14:18:41', '1');
INSERT INTO `x_log` VALUES ('1184', '查询操作', '分页查询进货信息', '2023-05-19 14:18:41', '1');
INSERT INTO `x_log` VALUES ('1185', '查询操作', '分页查询商品信息', '2023-05-19 14:18:41', '1');
INSERT INTO `x_log` VALUES ('1186', '查询操作', '查询商品类别信息', '2023-05-19 14:24:03', '1');
INSERT INTO `x_log` VALUES ('1187', '查询操作', '查询所有供应商', '2023-05-19 14:24:03', '1');
INSERT INTO `x_log` VALUES ('1188', '查询操作', '分页查询进货信息', '2023-05-19 14:24:03', '1');
INSERT INTO `x_log` VALUES ('1189', '查询操作', '分页查询商品信息', '2023-05-19 14:24:03', '1');
INSERT INTO `x_log` VALUES ('1190', '查询操作', '查询商品类别信息', '2023-05-19 14:24:06', '1');
INSERT INTO `x_log` VALUES ('1191', '查询操作', '查询所有供应商', '2023-05-19 14:24:06', '1');
INSERT INTO `x_log` VALUES ('1192', '查询操作', '分页查询进货信息', '2023-05-19 14:24:06', '1');
INSERT INTO `x_log` VALUES ('1193', '查询操作', '分页查询商品信息', '2023-05-19 14:24:06', '1');
INSERT INTO `x_log` VALUES ('1194', '查询操作', '分页查询进货信息', '2023-05-19 14:24:10', '1');
INSERT INTO `x_log` VALUES ('1195', '查询操作', '分页查询进货信息', '2023-05-19 14:24:23', '1');
INSERT INTO `x_log` VALUES ('1196', '查询操作', '查询商品类别信息', '2023-05-19 14:25:03', '1');
INSERT INTO `x_log` VALUES ('1197', '查询操作', '查询所有供应商', '2023-05-19 14:25:03', '1');
INSERT INTO `x_log` VALUES ('1198', '查询操作', '分页查询进货信息', '2023-05-19 14:25:03', '1');
INSERT INTO `x_log` VALUES ('1199', '查询操作', '分页查询商品信息', '2023-05-19 14:25:03', '1');
INSERT INTO `x_log` VALUES ('1200', '查询操作', '分页查询进货信息', '2023-05-19 14:25:06', '1');
INSERT INTO `x_log` VALUES ('1201', '查询操作', '查询所有供应商', '2023-05-19 14:25:23', '1');
INSERT INTO `x_log` VALUES ('1202', '查询操作', '查询商品类别信息', '2023-05-19 14:25:23', '1');
INSERT INTO `x_log` VALUES ('1203', '查询操作', '分页查询进货信息', '2023-05-19 14:25:23', '1');
INSERT INTO `x_log` VALUES ('1204', '查询操作', '分页查询商品信息', '2023-05-19 14:25:23', '1');
INSERT INTO `x_log` VALUES ('1205', '查询操作', '分页查询进货信息', '2023-05-19 14:25:25', '1');
INSERT INTO `x_log` VALUES ('1206', '查询操作', '分页查询进货信息', '2023-05-19 14:25:30', '1');
INSERT INTO `x_log` VALUES ('1207', '查询操作', '分页查询进货信息', '2023-05-19 14:25:31', '1');
INSERT INTO `x_log` VALUES ('1208', '查询操作', '分页查询进货信息', '2023-05-19 14:25:52', '1');
INSERT INTO `x_log` VALUES ('1209', '查询操作', '分页查询进货信息', '2023-05-19 14:26:05', '1');
INSERT INTO `x_log` VALUES ('1210', '查询操作', '分页查询进货信息', '2023-05-19 14:26:51', '1');
INSERT INTO `x_log` VALUES ('1211', '查询操作', '查询所有供应商', '2023-05-19 14:26:51', '1');
INSERT INTO `x_log` VALUES ('1212', '查询操作', '查询商品类别信息', '2023-05-19 14:26:51', '1');
INSERT INTO `x_log` VALUES ('1213', '查询操作', '分页查询商品信息', '2023-05-19 14:26:51', '1');
INSERT INTO `x_log` VALUES ('1214', '查询操作', '分页查询进货信息', '2023-05-19 14:26:57', '1');
INSERT INTO `x_log` VALUES ('1215', '查询操作', '查询商品类别信息', '2023-05-19 14:26:57', '1');
INSERT INTO `x_log` VALUES ('1216', '查询操作', '查询所有供应商', '2023-05-19 14:26:57', '1');
INSERT INTO `x_log` VALUES ('1217', '查询操作', '分页查询商品信息', '2023-05-19 14:26:57', '1');
INSERT INTO `x_log` VALUES ('1218', '查询操作', '分页查询进货信息', '2023-05-19 14:27:03', '1');
INSERT INTO `x_log` VALUES ('1219', '查询操作', '分页查询进货信息', '2023-05-19 14:27:35', '1');
INSERT INTO `x_log` VALUES ('1220', '查询操作', '分页查询进货信息', '2023-05-19 14:29:59', '1');
INSERT INTO `x_log` VALUES ('1221', '查询操作', '分页查询进货信息', '2023-05-19 14:30:00', '1');
INSERT INTO `x_log` VALUES ('1222', '查询操作', '查询商品类别信息', '2023-05-19 14:31:20', '1');
INSERT INTO `x_log` VALUES ('1223', '查询操作', '查询所有供应商', '2023-05-19 14:31:20', '1');
INSERT INTO `x_log` VALUES ('1224', '查询操作', '分页查询进货信息', '2023-05-19 14:31:20', '1');
INSERT INTO `x_log` VALUES ('1225', '查询操作', '分页查询商品信息', '2023-05-19 14:31:20', '1');
INSERT INTO `x_log` VALUES ('1226', '查询操作', '分页查询进货信息', '2023-05-19 14:31:25', '1');
INSERT INTO `x_log` VALUES ('1227', '查询操作', '分页查询进货信息', '2023-05-19 14:35:25', '1');
INSERT INTO `x_log` VALUES ('1228', '查询操作', '查询所有供应商', '2023-05-19 14:35:25', '1');
INSERT INTO `x_log` VALUES ('1229', '查询操作', '查询商品类别信息', '2023-05-19 14:35:25', '1');
INSERT INTO `x_log` VALUES ('1230', '查询操作', '分页查询商品信息', '2023-05-19 14:35:25', '1');
INSERT INTO `x_log` VALUES ('1231', '查询操作', '分页查询进货信息', '2023-05-19 14:35:27', '1');
INSERT INTO `x_log` VALUES ('1232', '查询操作', '分页查询进货信息', '2023-05-19 14:35:48', '1');
INSERT INTO `x_log` VALUES ('1233', '查询操作', '分页查询进货信息', '2023-05-19 14:35:51', '1');
INSERT INTO `x_log` VALUES ('1234', '查询操作', '分页查询进货信息', '2023-05-19 14:35:55', '1');
INSERT INTO `x_log` VALUES ('1235', '查询操作', '分页查询进货信息', '2023-05-19 14:37:23', '1');
INSERT INTO `x_log` VALUES ('1236', '查询操作', '查询所有供应商', '2023-05-19 14:37:23', '1');
INSERT INTO `x_log` VALUES ('1237', '查询操作', '查询商品类别信息', '2023-05-19 14:37:24', '1');
INSERT INTO `x_log` VALUES ('1238', '查询操作', '分页查询商品信息', '2023-05-19 14:37:24', '1');
INSERT INTO `x_log` VALUES ('1239', '查询操作', '分页查询进货信息', '2023-05-19 14:37:34', '1');
INSERT INTO `x_log` VALUES ('1240', '查询操作', '查询所有供应商', '2023-05-19 14:41:09', '1');
INSERT INTO `x_log` VALUES ('1241', '查询操作', '查询商品类别信息', '2023-05-19 14:41:09', '1');
INSERT INTO `x_log` VALUES ('1242', '查询操作', '分页查询进货信息', '2023-05-19 14:41:09', '1');
INSERT INTO `x_log` VALUES ('1243', '查询操作', '分页查询商品信息', '2023-05-19 14:41:09', '1');
INSERT INTO `x_log` VALUES ('1244', '查询操作', '分页查询进货信息', '2023-05-19 14:41:12', '1');
INSERT INTO `x_log` VALUES ('1245', '查询操作', '查询所有供应商', '2023-05-19 14:42:00', '1');
INSERT INTO `x_log` VALUES ('1246', '查询操作', '查询商品类别信息', '2023-05-19 14:42:00', '1');
INSERT INTO `x_log` VALUES ('1247', '查询操作', '分页查询进货信息', '2023-05-19 14:42:00', '1');
INSERT INTO `x_log` VALUES ('1248', '查询操作', '分页查询商品信息', '2023-05-19 14:42:00', '1');
INSERT INTO `x_log` VALUES ('1249', '查询操作', '分页查询进货信息', '2023-05-19 14:42:03', '1');
INSERT INTO `x_log` VALUES ('1250', '查询操作', '查询所有供应商', '2023-05-19 14:44:02', '1');
INSERT INTO `x_log` VALUES ('1251', '查询操作', '分页查询进货信息', '2023-05-19 14:44:02', '1');
INSERT INTO `x_log` VALUES ('1252', '查询操作', '查询商品类别信息', '2023-05-19 14:44:02', '1');
INSERT INTO `x_log` VALUES ('1253', '查询操作', '分页查询商品信息', '2023-05-19 14:44:02', '1');
INSERT INTO `x_log` VALUES ('1254', '查询操作', '分页查询进货信息', '2023-05-19 14:44:04', '1');
INSERT INTO `x_log` VALUES ('1255', '查询操作', '查询所有供应商', '2023-05-19 16:05:50', '1');
INSERT INTO `x_log` VALUES ('1256', '查询操作', '分页查询进货信息', '2023-05-19 16:05:50', '1');
INSERT INTO `x_log` VALUES ('1257', '查询操作', '查询商品类别信息', '2023-05-19 16:05:50', '1');
INSERT INTO `x_log` VALUES ('1258', '查询操作', '分页查询商品信息', '2023-05-19 16:05:50', '1');
INSERT INTO `x_log` VALUES ('1259', '查询操作', '查询商品类别信息', '2023-05-22 17:24:22', '1');
INSERT INTO `x_log` VALUES ('1260', '查询操作', '分页查询商品信息', '2023-05-22 17:24:22', '1');
INSERT INTO `x_log` VALUES ('1261', '退出操作', '退出登录', '2023-05-23 10:11:12', '1');
INSERT INTO `x_log` VALUES ('1262', '退出操作', '退出登录', '2023-05-23 10:13:30', '9');
INSERT INTO `x_log` VALUES ('1263', '退出操作', '退出登录', '2023-05-23 10:39:40', '9');
INSERT INTO `x_log` VALUES ('1264', '查询操作', '查询所有供应商', '2023-05-23 10:40:02', '1');
INSERT INTO `x_log` VALUES ('1265', '查询操作', '分页查询进货信息', '2023-05-23 10:40:02', '1');
INSERT INTO `x_log` VALUES ('1266', '查询操作', '分页查询商品信息', '2023-05-23 10:40:02', '1');
INSERT INTO `x_log` VALUES ('1267', '查询操作', '查询商品类别信息', '2023-05-23 10:40:02', '1');
INSERT INTO `x_log` VALUES ('1268', '查询操作', '查询商品类别信息', '2023-05-23 10:40:06', '1');
INSERT INTO `x_log` VALUES ('1269', '查询操作', '分页查询商品信息', '2023-05-23 10:40:06', '1');
INSERT INTO `x_log` VALUES ('1270', '查询操作', '查询商品类别信息', '2023-05-23 10:40:13', '1');
INSERT INTO `x_log` VALUES ('1271', '查询操作', '查询所有供应商', '2023-05-23 10:40:13', '1');
INSERT INTO `x_log` VALUES ('1272', '查询操作', '分页查询进货信息', '2023-05-23 10:40:13', '1');
INSERT INTO `x_log` VALUES ('1273', '查询操作', '分页查询商品信息', '2023-05-23 10:40:13', '1');
INSERT INTO `x_log` VALUES ('1274', '查询操作', '查询商品类别信息', '2023-05-23 11:03:16', '1');
INSERT INTO `x_log` VALUES ('1275', '查询操作', '分页查询商品信息', '2023-05-23 11:03:16', '1');
INSERT INTO `x_log` VALUES ('1276', '查询操作', '查询商品类别信息', '2023-05-23 11:03:22', '1');
INSERT INTO `x_log` VALUES ('1277', '查询操作', '分页查询库存预警商品信息', '2023-05-23 11:03:22', '1');
INSERT INTO `x_log` VALUES ('1278', '查询操作', '分页查询角色信息', '2023-05-23 18:54:33', '1');
INSERT INTO `x_log` VALUES ('1279', '查询操作', '查询角色:admin', '2023-05-23 18:54:35', '1');
INSERT INTO `x_log` VALUES ('1280', '查询操作', '分页查询角色信息', '2023-05-23 18:55:08', '1');
INSERT INTO `x_log` VALUES ('1281', '查询操作', '查询角色:admin', '2023-05-23 18:55:08', '1');
INSERT INTO `x_log` VALUES ('1282', '修改操作', '修改角色:admin', '2023-05-23 18:55:13', '1');
INSERT INTO `x_log` VALUES ('1283', '查询操作', '分页查询角色信息', '2023-05-23 18:55:13', '1');
INSERT INTO `x_log` VALUES ('1284', '查询操作', '分页查询角色信息', '2023-05-23 20:53:42', '1');
INSERT INTO `x_log` VALUES ('1285', '查询操作', '查询角色:admin', '2023-05-23 20:53:49', '1');
INSERT INTO `x_log` VALUES ('1286', '修改操作', '修改角色:admin', '2023-05-23 20:54:03', '1');
INSERT INTO `x_log` VALUES ('1287', '查询操作', '分页查询角色信息', '2023-05-23 20:54:03', '1');
INSERT INTO `x_log` VALUES ('1288', '退出操作', '退出登录', '2023-05-23 20:54:05', '1');
INSERT INTO `x_log` VALUES ('1289', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 20:54:16', '1');
INSERT INTO `x_log` VALUES ('1290', '查询操作', '分页查询角色信息', '2023-05-23 20:55:09', '1');
INSERT INTO `x_log` VALUES ('1291', '查询操作', '查询角色:admin', '2023-05-23 20:55:10', '1');
INSERT INTO `x_log` VALUES ('1292', '修改操作', '修改角色:admin', '2023-05-23 20:55:36', '1');
INSERT INTO `x_log` VALUES ('1293', '查询操作', '分页查询角色信息', '2023-05-23 20:55:36', '1');
INSERT INTO `x_log` VALUES ('1294', '退出操作', '退出登录', '2023-05-23 20:55:38', '1');
INSERT INTO `x_log` VALUES ('1295', '查询操作', '分页查询角色信息', '2023-05-23 20:57:03', '1');
INSERT INTO `x_log` VALUES ('1296', '查询操作', '查询角色:admin', '2023-05-23 20:57:04', '1');
INSERT INTO `x_log` VALUES ('1297', '查询操作', '查询角色:admin', '2023-05-23 20:57:48', '1');
INSERT INTO `x_log` VALUES ('1298', '修改操作', '修改角色:admin', '2023-05-23 20:57:53', '1');
INSERT INTO `x_log` VALUES ('1299', '查询操作', '分页查询角色信息', '2023-05-23 20:57:53', '1');
INSERT INTO `x_log` VALUES ('1300', '查询操作', '分页查询角色信息', '2023-05-23 20:57:55', '1');
INSERT INTO `x_log` VALUES ('1301', '查询操作', '查询角色:admin', '2023-05-23 20:58:00', '1');
INSERT INTO `x_log` VALUES ('1302', '修改操作', '修改角色:admin', '2023-05-23 20:58:06', '1');
INSERT INTO `x_log` VALUES ('1303', '查询操作', '分页查询角色信息', '2023-05-23 20:58:06', '1');
INSERT INTO `x_log` VALUES ('1304', '查询操作', '分页查询角色信息', '2023-05-23 20:58:33', '1');
INSERT INTO `x_log` VALUES ('1305', '查询操作', '分页查询角色信息', '2023-05-23 20:59:07', '1');
INSERT INTO `x_log` VALUES ('1306', '查询操作', '查询角色:admin', '2023-05-23 20:59:08', '1');
INSERT INTO `x_log` VALUES ('1307', '修改操作', '修改角色:admin', '2023-05-23 20:59:11', '1');
INSERT INTO `x_log` VALUES ('1308', '查询操作', '分页查询角色信息', '2023-05-23 20:59:11', '1');
INSERT INTO `x_log` VALUES ('1309', '查询操作', '分页查询角色信息', '2023-05-23 20:59:13', '1');
INSERT INTO `x_log` VALUES ('1310', '查询操作', '分页查询角色信息', '2023-05-23 20:59:23', '1');
INSERT INTO `x_log` VALUES ('1311', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 20:59:30', '1');
INSERT INTO `x_log` VALUES ('1312', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:01:43', '1');
INSERT INTO `x_log` VALUES ('1313', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:01:54', '1');
INSERT INTO `x_log` VALUES ('1314', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:02:32', '1');
INSERT INTO `x_log` VALUES ('1315', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:02:35', '1');
INSERT INTO `x_log` VALUES ('1316', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:10:16', '1');
INSERT INTO `x_log` VALUES ('1317', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:10:38', '1');
INSERT INTO `x_log` VALUES ('1318', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:10:47', '1');
INSERT INTO `x_log` VALUES ('1319', '查询操作', '分页查询角色信息', '2023-05-23 21:12:29', '1');
INSERT INTO `x_log` VALUES ('1320', '查询操作', '查询角色:admin', '2023-05-23 21:12:30', '1');
INSERT INTO `x_log` VALUES ('1321', '查询操作', '查询角色:admin', '2023-05-23 21:12:41', '1');
INSERT INTO `x_log` VALUES ('1322', '修改操作', '修改角色:admin', '2023-05-23 21:12:44', '1');
INSERT INTO `x_log` VALUES ('1323', '查询操作', '分页查询角色信息', '2023-05-23 21:12:44', '1');
INSERT INTO `x_log` VALUES ('1324', '查询操作', '分页查询角色信息', '2023-05-23 21:12:46', '1');
INSERT INTO `x_log` VALUES ('1325', '查询操作', '查询角色:admin', '2023-05-23 21:12:51', '1');
INSERT INTO `x_log` VALUES ('1326', '修改操作', '修改角色:admin', '2023-05-23 21:12:54', '1');
INSERT INTO `x_log` VALUES ('1327', '查询操作', '分页查询角色信息', '2023-05-23 21:12:54', '1');
INSERT INTO `x_log` VALUES ('1328', '查询操作', '分页查询角色信息', '2023-05-23 21:12:56', '1');
INSERT INTO `x_log` VALUES ('1329', '查询操作', '分页查询角色信息', '2023-05-23 21:13:27', '1');
INSERT INTO `x_log` VALUES ('1330', '查询操作', '查询角色:admin', '2023-05-23 21:13:30', '1');
INSERT INTO `x_log` VALUES ('1331', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:14:33', '1');
INSERT INTO `x_log` VALUES ('1332', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:18:36', '1');
INSERT INTO `x_log` VALUES ('1333', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:19:29', '1');
INSERT INTO `x_log` VALUES ('1334', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:22:26', '1');
INSERT INTO `x_log` VALUES ('1335', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:22:33', '1');
INSERT INTO `x_log` VALUES ('1336', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:24:34', '1');
INSERT INTO `x_log` VALUES ('1337', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:24:48', '1');
INSERT INTO `x_log` VALUES ('1338', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:25:15', '1');
INSERT INTO `x_log` VALUES ('1339', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:26:28', '1');
INSERT INTO `x_log` VALUES ('1340', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:28:21', '1');
INSERT INTO `x_log` VALUES ('1341', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:32:54', '1');
INSERT INTO `x_log` VALUES ('1342', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:32:58', '1');
INSERT INTO `x_log` VALUES ('1343', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:33:02', '1');
INSERT INTO `x_log` VALUES ('1344', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:33:12', '1');
INSERT INTO `x_log` VALUES ('1345', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:33:54', '1');
INSERT INTO `x_log` VALUES ('1346', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:34:14', '1');
INSERT INTO `x_log` VALUES ('1347', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:35:34', '1');
INSERT INTO `x_log` VALUES ('1348', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:36:03', '1');
INSERT INTO `x_log` VALUES ('1349', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:39:51', '1');
INSERT INTO `x_log` VALUES ('1350', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:39:55', '1');
INSERT INTO `x_log` VALUES ('1351', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:40:19', '1');
INSERT INTO `x_log` VALUES ('1352', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:40:36', '1');
INSERT INTO `x_log` VALUES ('1353', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:40:58', '1');
INSERT INTO `x_log` VALUES ('1354', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:44:22', '1');
INSERT INTO `x_log` VALUES ('1355', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:46:15', '1');
INSERT INTO `x_log` VALUES ('1356', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:46:20', '1');
INSERT INTO `x_log` VALUES ('1357', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:46:52', '1');
INSERT INTO `x_log` VALUES ('1358', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:46:59', '1');
INSERT INTO `x_log` VALUES ('1359', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:47:56', '1');
INSERT INTO `x_log` VALUES ('1360', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:48:01', '1');
INSERT INTO `x_log` VALUES ('1361', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:48:12', '1');
INSERT INTO `x_log` VALUES ('1362', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:49:30', '1');
INSERT INTO `x_log` VALUES ('1363', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:49:34', '1');
INSERT INTO `x_log` VALUES ('1364', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:50:18', '1');
INSERT INTO `x_log` VALUES ('1365', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:52:20', '1');
INSERT INTO `x_log` VALUES ('1366', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:52:25', '1');
INSERT INTO `x_log` VALUES ('1367', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:55:49', '1');
INSERT INTO `x_log` VALUES ('1368', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:56:00', '1');
INSERT INTO `x_log` VALUES ('1369', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:58:43', '1');
INSERT INTO `x_log` VALUES ('1370', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 21:58:45', '1');
INSERT INTO `x_log` VALUES ('1371', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 22:05:48', '1');
INSERT INTO `x_log` VALUES ('1372', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 22:09:07', '1');
INSERT INTO `x_log` VALUES ('1373', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 22:09:35', '1');
INSERT INTO `x_log` VALUES ('1374', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 22:13:06', '1');
INSERT INTO `x_log` VALUES ('1375', '查询操作', '分页查询小程序端的商品信息', '2023-05-23 22:15:59', '1');
INSERT INTO `x_log` VALUES ('1376', '查询操作', '分页查询小程序端的商品信息', '2023-05-24 07:54:48', '1');
INSERT INTO `x_log` VALUES ('1377', '查询操作', '分页查询小程序端的商品信息', '2023-05-24 07:56:24', '1');
INSERT INTO `x_log` VALUES ('1378', '查询操作', '分页查询小程序端的商品信息', '2023-05-24 07:57:30', '1');
INSERT INTO `x_log` VALUES ('1379', '查询操作', '分页查询小程序端的商品信息', '2023-05-24 07:58:45', '1');
INSERT INTO `x_log` VALUES ('1380', '查询操作', '分页查询小程序端的商品信息', '2023-05-24 08:01:09', '1');
INSERT INTO `x_log` VALUES ('1381', '查询操作', '分页查询小程序端的商品信息', '2023-05-24 08:03:38', '1');
INSERT INTO `x_log` VALUES ('1382', '查询操作', '分页查询小程序端的商品信息', '2023-05-24 08:04:24', '1');
INSERT INTO `x_log` VALUES ('1383', '新增操作', '上架商品:nihao', '2023-05-24 08:04:39', '1');
INSERT INTO `x_log` VALUES ('1384', '查询操作', '分页查询小程序端的商品信息', '2023-05-24 08:04:39', '1');
INSERT INTO `x_log` VALUES ('1385', '查询操作', '分页查询小程序端的商品信息', '2023-05-24 08:56:46', '1');
INSERT INTO `x_log` VALUES ('1386', '查询操作', '分页查询小程序端的商品信息', '2023-05-24 08:57:48', '1');
INSERT INTO `x_log` VALUES ('1387', '删除操作', '下架商品:nihao', '2023-05-24 08:57:52', '1');
INSERT INTO `x_log` VALUES ('1388', '查询操作', '分页查询小程序端的商品信息', '2023-05-24 08:57:52', '1');
INSERT INTO `x_log` VALUES ('1389', '查询操作', '分页查询小程序端的商品信息', '2023-05-24 08:58:01', '1');
INSERT INTO `x_log` VALUES ('1390', '查询操作', '分页查询小程序端的商品信息', '2023-05-24 09:03:21', '1');
INSERT INTO `x_log` VALUES ('1391', '查询操作', '查询所有客户', '2023-05-24 09:14:01', '1');
INSERT INTO `x_log` VALUES ('1392', '查询操作', '查询商品类别信息', '2023-05-24 09:14:01', '1');
INSERT INTO `x_log` VALUES ('1393', '查询操作', '分页查询商品信息', '2023-05-24 09:14:01', '1');
INSERT INTO `x_log` VALUES ('1394', '查询操作', '分页查询小程序端的商品信息', '2023-05-24 10:35:10', '1');
INSERT INTO `x_log` VALUES ('1395', '查询操作', '查询商品类别信息', '2023-05-24 10:43:10', '1');
INSERT INTO `x_log` VALUES ('1396', '查询操作', '分页查询商品信息', '2023-05-24 10:43:10', '1');
INSERT INTO `x_log` VALUES ('1397', '查询操作', '查询商品类别信息', '2023-05-24 10:43:17', '1');
INSERT INTO `x_log` VALUES ('1398', '查询操作', '分页查询商品信息', '2023-05-24 10:43:17', '1');
INSERT INTO `x_log` VALUES ('1399', '查询操作', '查询商品类别信息', '2023-05-24 10:43:24', '1');
INSERT INTO `x_log` VALUES ('1400', '查询操作', '分页查询商品信息', '2023-05-24 10:43:24', '1');
INSERT INTO `x_log` VALUES ('1401', '查询操作', '分页查询报损信息', '2023-05-24 10:43:24', '1');
INSERT INTO `x_log` VALUES ('1402', '查询操作', '查询商品类别信息', '2023-05-24 10:43:38', '1');
INSERT INTO `x_log` VALUES ('1403', '查询操作', '分页查询商品信息', '2023-05-24 10:43:38', '1');
INSERT INTO `x_log` VALUES ('1404', '查询操作', '查询商品类别信息', '2023-05-24 10:43:43', '1');
INSERT INTO `x_log` VALUES ('1405', '查询操作', '查询所有客户', '2023-05-24 10:43:43', '1');
INSERT INTO `x_log` VALUES ('1406', '查询操作', '分页查询商品信息', '2023-05-24 10:43:43', '1');
INSERT INTO `x_log` VALUES ('1407', '查询操作', '分页查询商品信息', '2023-05-24 10:43:52', '1');
INSERT INTO `x_log` VALUES ('1408', '查询操作', '查询商品类别信息', '2023-05-24 10:44:01', '1');
INSERT INTO `x_log` VALUES ('1409', '查询操作', '分页查询商品信息', '2023-05-24 10:44:01', '1');
INSERT INTO `x_log` VALUES ('1410', '查询操作', '查询商品类别信息', '2023-05-24 10:44:03', '1');
INSERT INTO `x_log` VALUES ('1411', '查询操作', '查询所有客户', '2023-05-24 10:44:03', '1');
INSERT INTO `x_log` VALUES ('1412', '查询操作', '分页查询商品信息', '2023-05-24 10:44:03', '1');
INSERT INTO `x_log` VALUES ('1413', '查询操作', '分页查询客户退货信息', '2023-05-24 10:44:03', '1');
INSERT INTO `x_log` VALUES ('1414', '查询操作', '分页查询库存信息', '2023-05-24 10:44:10', '1');
INSERT INTO `x_log` VALUES ('1415', '查询操作', '分页查询库存信息', '2023-05-24 10:44:25', '1');
INSERT INTO `x_log` VALUES ('1416', '查询操作', '分页查询库存信息', '2023-05-24 10:44:34', '1');
INSERT INTO `x_log` VALUES ('1417', '查询操作', '分页查询库存信息', '2023-05-24 10:44:35', '1');
INSERT INTO `x_log` VALUES ('1418', '查询操作', '分页查询库存信息', '2023-05-24 10:44:40', '1');
INSERT INTO `x_log` VALUES ('1419', '查询操作', '分页查询库存信息', '2023-05-24 10:44:41', '1');
INSERT INTO `x_log` VALUES ('1420', '查询操作', '分页查询库存信息', '2023-05-24 10:44:41', '1');
INSERT INTO `x_log` VALUES ('1421', '查询操作', '分页查询库存信息', '2023-05-24 10:44:42', '1');
INSERT INTO `x_log` VALUES ('1422', '查询操作', '查询所有角色', '2023-05-24 10:44:55', '1');
INSERT INTO `x_log` VALUES ('1423', '查询操作', '分页查询用户信息', '2023-05-24 10:44:55', '1');
INSERT INTO `x_log` VALUES ('1424', '查询操作', '分页查询角色信息', '2023-05-24 10:44:58', '1');
INSERT INTO `x_log` VALUES ('1425', '查询操作', '查询所有用户', '2023-05-24 10:45:03', '1');
INSERT INTO `x_log` VALUES ('1426', '查询操作', '查询商品类别信息', '2023-05-24 10:45:24', '1');
INSERT INTO `x_log` VALUES ('1427', '查询操作', '分页查询供应商信息', '2023-05-24 10:45:24', '1');
INSERT INTO `x_log` VALUES ('1428', '查询操作', '查询按日统计', '2023-05-24 11:03:39', '1');
INSERT INTO `x_log` VALUES ('1429', '查询操作', '查询按日统计', '2023-05-24 11:03:43', '1');
INSERT INTO `x_log` VALUES ('1430', '查询操作', '查询按日统计', '2023-05-24 11:03:49', '1');
INSERT INTO `x_log` VALUES ('1431', '查询操作', '查询商品类别信息', '2023-05-24 11:03:57', '1');
INSERT INTO `x_log` VALUES ('1432', '查询操作', '查询所有供应商', '2023-05-24 11:03:57', '1');
INSERT INTO `x_log` VALUES ('1433', '查询操作', '分页查询商品信息', '2023-05-24 11:03:57', '1');
INSERT INTO `x_log` VALUES ('1434', '查询操作', '分页查询进货信息', '2023-05-24 11:03:57', '1');
INSERT INTO `x_log` VALUES ('1435', '查询操作', '分页查询小程序端的商品信息', '2023-05-25 13:51:44', '1');
INSERT INTO `x_log` VALUES ('1436', '查询操作', '查询所有客户', '2023-05-25 14:09:51', '1');
INSERT INTO `x_log` VALUES ('1437', '查询操作', '查询商品类别信息', '2023-05-25 14:09:51', '1');
INSERT INTO `x_log` VALUES ('1438', '查询操作', '分页查询商品信息', '2023-05-25 14:09:51', '1');
INSERT INTO `x_log` VALUES ('1439', '查询操作', '分页查询小程序端客户订单信息', '2023-05-25 14:14:39', '1');
INSERT INTO `x_log` VALUES ('1440', '查询操作', '分页查询小程序端客户订单信息', '2023-05-25 14:14:40', '1');
INSERT INTO `x_log` VALUES ('1441', '查询操作', '分页查询小程序端客户订单信息', '2023-05-25 14:17:25', '1');
INSERT INTO `x_log` VALUES ('1442', '查询操作', '分页查询小程序端客户订单信息', '2023-05-25 14:17:35', '1');
INSERT INTO `x_log` VALUES ('1443', '查询操作', '分页查询进货信息', '2023-05-25 14:17:53', '1');
INSERT INTO `x_log` VALUES ('1444', '查询操作', '查询所有供应商', '2023-05-25 14:17:53', '1');
INSERT INTO `x_log` VALUES ('1445', '查询操作', '查询商品类别信息', '2023-05-25 14:17:53', '1');
INSERT INTO `x_log` VALUES ('1446', '查询操作', '分页查询商品信息', '2023-05-25 14:17:53', '1');
INSERT INTO `x_log` VALUES ('1447', '查询操作', '分页查询小程序端客户订单信息', '2023-05-25 14:19:25', '1');
INSERT INTO `x_log` VALUES ('1448', '查询操作', '分页查询小程序端客户订单信息', '2023-05-25 14:24:56', '1');
INSERT INTO `x_log` VALUES ('1449', '查询操作', '分页查询小程序端客户订单信息', '2023-05-25 14:24:58', '1');
INSERT INTO `x_log` VALUES ('1450', '查询操作', '分页查询小程序端客户订单信息', '2023-05-25 14:25:00', '1');
INSERT INTO `x_log` VALUES ('1451', '查询操作', '分页查询小程序端客户订单信息', '2023-05-25 14:26:41', '1');
INSERT INTO `x_log` VALUES ('1452', '查询操作', '分页查询小程序端客户订单信息', '2023-05-25 14:26:45', '1');
INSERT INTO `x_log` VALUES ('1453', '修改操作', '销售单号41876881794现在发货', '2023-05-25 14:27:48', '1');
INSERT INTO `x_log` VALUES ('1454', '查询操作', '分页查询小程序端客户订单信息', '2023-05-25 14:27:48', '1');
INSERT INTO `x_log` VALUES ('1455', '修改操作', '销售单号41876881794已送达', '2023-05-25 14:27:56', '1');
INSERT INTO `x_log` VALUES ('1456', '查询操作', '分页查询小程序端客户订单信息', '2023-05-25 14:27:56', '1');
INSERT INTO `x_log` VALUES ('1457', '查询操作', '分页查询小程序端的商品信息', '2023-05-25 14:36:52', '1');
INSERT INTO `x_log` VALUES ('1458', '查询操作', '分页查询小程序端客户订单信息', '2023-05-25 14:36:55', '1');
INSERT INTO `x_log` VALUES ('1459', '查询操作', '分页查询小程序端客户订单信息', '2023-05-25 15:43:54', '1');
INSERT INTO `x_log` VALUES ('1460', '查询操作', '分页查询小程序端客户订单信息', '2023-05-25 15:44:34', '1');
INSERT INTO `x_log` VALUES ('1461', '查询操作', '分页查询小程序端客户订单信息', '2023-05-25 15:44:36', '1');
INSERT INTO `x_log` VALUES ('1462', '修改操作', '销售单号97194360668现在发货', '2023-05-25 15:44:58', '1');
INSERT INTO `x_log` VALUES ('1463', '查询操作', '分页查询小程序端客户订单信息', '2023-05-25 15:44:58', '1');
INSERT INTO `x_log` VALUES ('1464', '查询操作', '分页查询小程序端客户订单信息', '2023-05-25 15:45:29', '1');
INSERT INTO `x_log` VALUES ('1465', '查询操作', '分页查询小程序端客户订单信息', '2023-05-25 18:10:45', '1');
INSERT INTO `x_log` VALUES ('1466', '查询操作', '查询所有角色', '2023-05-25 18:10:52', '1');
INSERT INTO `x_log` VALUES ('1467', '查询操作', '分页查询用户信息', '2023-05-25 18:10:52', '1');
INSERT INTO `x_log` VALUES ('1468', '查询操作', '查询所有客户', '2023-05-25 18:26:35', '1');
INSERT INTO `x_log` VALUES ('1469', '查询操作', '查询商品类别信息', '2023-05-25 18:26:35', '1');
INSERT INTO `x_log` VALUES ('1470', '查询操作', '分页查询商品信息', '2023-05-25 18:26:35', '1');
INSERT INTO `x_log` VALUES ('1471', '查询操作', '查询所有客户', '2023-05-25 18:27:23', '1');
INSERT INTO `x_log` VALUES ('1472', '查询操作', '查询商品类别信息', '2023-05-25 18:27:23', '1');
INSERT INTO `x_log` VALUES ('1473', '查询操作', '分页查询商品信息', '2023-05-25 18:27:23', '1');
INSERT INTO `x_log` VALUES ('1474', '查询操作', '分页查询客户退货信息', '2023-05-25 18:32:08', '1');
INSERT INTO `x_log` VALUES ('1475', '查询操作', '查询商品类别信息', '2023-05-25 18:32:08', '1');
INSERT INTO `x_log` VALUES ('1476', '查询操作', '查询所有客户', '2023-05-25 18:32:08', '1');
INSERT INTO `x_log` VALUES ('1477', '查询操作', '分页查询商品信息', '2023-05-25 18:32:08', '1');
INSERT INTO `x_log` VALUES ('1478', '查询操作', '查询所有客户', '2023-05-25 18:32:11', '1');
INSERT INTO `x_log` VALUES ('1479', '查询操作', '查询商品类别信息', '2023-05-25 18:32:11', '1');
INSERT INTO `x_log` VALUES ('1480', '查询操作', '分页查询商品信息', '2023-05-25 18:32:11', '1');
INSERT INTO `x_log` VALUES ('1481', '查询操作', '查询所有客户', '2023-05-25 18:59:17', '1');
INSERT INTO `x_log` VALUES ('1482', '查询操作', '查询商品类别信息', '2023-05-25 18:59:17', '1');
INSERT INTO `x_log` VALUES ('1483', '查询操作', '分页查询商品信息', '2023-05-25 18:59:17', '1');
INSERT INTO `x_log` VALUES ('1484', '查询操作', '查询所有客户', '2023-05-25 23:02:03', '1');
INSERT INTO `x_log` VALUES ('1485', '查询操作', '查询商品类别信息', '2023-05-25 23:02:03', '1');
INSERT INTO `x_log` VALUES ('1486', '查询操作', '分页查询商品信息', '2023-05-25 23:02:03', '1');
INSERT INTO `x_log` VALUES ('1487', '退出操作', '退出登录', '2023-05-26 15:01:16', '1');
INSERT INTO `x_log` VALUES ('1488', '查询操作', '查询所有角色', '2023-05-26 20:09:31', null);
INSERT INTO `x_log` VALUES ('1489', '查询操作', '分页查询用户信息', '2023-05-26 20:09:31', null);
INSERT INTO `x_log` VALUES ('1490', '查询操作', '查询所有角色', '2023-05-29 15:54:59', '1');
INSERT INTO `x_log` VALUES ('1491', '查询操作', '分页查询用户信息', '2023-05-29 15:54:59', '1');
INSERT INTO `x_log` VALUES ('1492', '查询操作', '分页查询小程序端的商品信息', '2023-05-30 11:56:00', '1');
INSERT INTO `x_log` VALUES ('1493', '查询操作', '查询小程序商品:Nike阿甘系列童鞋', '2023-05-30 12:00:22', '1');
INSERT INTO `x_log` VALUES ('1494', '查询操作', '查询所有角色', '2023-05-30 21:05:27', '1');
INSERT INTO `x_log` VALUES ('1495', '查询操作', '分页查询用户信息', '2023-05-30 21:05:27', '1');
INSERT INTO `x_log` VALUES ('1496', '查询操作', '分页查询角色信息', '2023-05-30 21:05:36', '1');
INSERT INTO `x_log` VALUES ('1497', '查询操作', '查询所有用户', '2023-05-30 21:05:39', '1');
INSERT INTO `x_log` VALUES ('1498', '退出操作', '退出登录', '2023-05-30 21:05:51', '1');
INSERT INTO `x_log` VALUES ('1499', '查询操作', '分页查询商品信息', '2023-05-30 21:06:04', '1');
INSERT INTO `x_log` VALUES ('1500', '查询操作', '查询商品类别信息', '2023-05-30 21:06:04', '1');
INSERT INTO `x_log` VALUES ('1501', '查询操作', '分页查询商品信息', '2023-05-30 21:06:12', '1');
INSERT INTO `x_log` VALUES ('1502', '查询操作', '查询所有供应商', '2023-05-30 21:06:12', '1');
INSERT INTO `x_log` VALUES ('1503', '查询操作', '查询商品类别信息', '2023-05-30 21:06:12', '1');
INSERT INTO `x_log` VALUES ('1504', '查询操作', '分页查询进货信息', '2023-05-30 21:06:12', '1');
INSERT INTO `x_log` VALUES ('1505', '查询操作', '查询商品类别信息', '2023-05-30 21:06:16', '1');
INSERT INTO `x_log` VALUES ('1506', '查询操作', '查询所有供应商', '2023-05-30 21:06:16', '1');
INSERT INTO `x_log` VALUES ('1507', '查询操作', '分页查询进货信息', '2023-05-30 21:06:16', '1');
INSERT INTO `x_log` VALUES ('1508', '查询操作', '分页查询商品信息', '2023-05-30 21:06:16', '1');
INSERT INTO `x_log` VALUES ('1509', '查询操作', '查询商品类别信息', '2023-05-30 21:06:18', '1');
INSERT INTO `x_log` VALUES ('1510', '查询操作', '分页查询商品信息', '2023-05-30 21:06:18', '1');
INSERT INTO `x_log` VALUES ('1511', '查询操作', '查询商品类别信息', '2023-05-30 21:06:22', '1');
INSERT INTO `x_log` VALUES ('1512', '查询操作', '分页查询商品信息', '2023-05-30 21:06:22', '1');
INSERT INTO `x_log` VALUES ('1513', '查询操作', '查询所有客户', '2023-05-30 21:06:22', '1');
INSERT INTO `x_log` VALUES ('1514', '查询操作', '查询商品类别信息', '2023-05-30 21:06:29', '1');
INSERT INTO `x_log` VALUES ('1515', '查询操作', '分页查询商品信息', '2023-05-30 21:06:29', '1');
INSERT INTO `x_log` VALUES ('1516', '查询操作', '查询商品类别信息', '2023-05-30 21:06:31', '1');
INSERT INTO `x_log` VALUES ('1517', '查询操作', '分页查询商品信息', '2023-05-30 21:06:31', '1');
INSERT INTO `x_log` VALUES ('1518', '查询操作', '查询所有供应商', '2023-05-30 21:06:35', '1');
INSERT INTO `x_log` VALUES ('1519', '查询操作', '查询商品类别信息', '2023-05-30 21:06:35', '1');
INSERT INTO `x_log` VALUES ('1520', '查询操作', '分页查询商品信息', '2023-05-30 21:06:35', '1');
INSERT INTO `x_log` VALUES ('1521', '查询操作', '分页查询供应商统计', '2023-05-30 21:06:35', '1');
INSERT INTO `x_log` VALUES ('1522', '查询操作', '查询商品类别信息', '2023-05-30 21:06:48', '1');
INSERT INTO `x_log` VALUES ('1523', '查询操作', '分页查询商品信息', '2023-05-30 21:06:48', '1');
INSERT INTO `x_log` VALUES ('1524', '查询操作', '分页查询商品采购信息', '2023-05-30 21:06:48', '1');
INSERT INTO `x_log` VALUES ('1525', '查询操作', '查询商品类别信息', '2023-05-30 21:06:52', '1');
INSERT INTO `x_log` VALUES ('1526', '查询操作', '分页查询商品信息', '2023-05-30 21:06:52', '1');
INSERT INTO `x_log` VALUES ('1527', '查询操作', '查询商品类别信息', '2023-05-30 21:07:06', '1');
INSERT INTO `x_log` VALUES ('1528', '查询操作', '分页查询客户', '2023-05-30 21:07:06', '1');
INSERT INTO `x_log` VALUES ('1529', '查询操作', '查询商品类别信息', '2023-05-30 21:07:12', '1');
INSERT INTO `x_log` VALUES ('1530', '查询操作', '分页查询供应商信息', '2023-05-30 21:07:12', '1');
INSERT INTO `x_log` VALUES ('1531', '查询操作', '分页查询小程序端的商品信息', '2023-05-30 21:07:14', '1');
INSERT INTO `x_log` VALUES ('1532', '查询操作', '分页查询小程序端客户订单信息', '2023-05-30 21:07:22', '1');
INSERT INTO `x_log` VALUES ('1533', '退出操作', '退出登录', '2023-05-30 21:07:37', '1');
INSERT INTO `x_log` VALUES ('1534', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:02:19', '1');
INSERT INTO `x_log` VALUES ('1535', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:03:28', '1');
INSERT INTO `x_log` VALUES ('1536', '查询操作', '查询商品类别信息', '2023-05-31 08:16:15', '1');
INSERT INTO `x_log` VALUES ('1537', '查询操作', '分页查询商品信息', '2023-05-31 08:16:15', '1');
INSERT INTO `x_log` VALUES ('1538', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:23:04', '1');
INSERT INTO `x_log` VALUES ('1539', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:30:56', '1');
INSERT INTO `x_log` VALUES ('1540', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:31:59', '1');
INSERT INTO `x_log` VALUES ('1541', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:32:18', '1');
INSERT INTO `x_log` VALUES ('1542', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:32:52', '1');
INSERT INTO `x_log` VALUES ('1543', '查询操作', '查询商品类别信息', '2023-05-31 08:34:40', '1');
INSERT INTO `x_log` VALUES ('1544', '查询操作', '分页查询商品信息', '2023-05-31 08:34:40', '1');
INSERT INTO `x_log` VALUES ('1545', '查询操作', '查询商品类别信息', '2023-05-31 08:34:51', '1');
INSERT INTO `x_log` VALUES ('1546', '查询操作', '分页查询商品信息', '2023-05-31 08:34:51', '1');
INSERT INTO `x_log` VALUES ('1547', '查询操作', '查询所有客户', '2023-05-31 08:34:51', '1');
INSERT INTO `x_log` VALUES ('1548', '查询操作', '查询商品类别信息', '2023-05-31 08:34:54', '1');
INSERT INTO `x_log` VALUES ('1549', '查询操作', '分页查询商品信息', '2023-05-31 08:34:54', '1');
INSERT INTO `x_log` VALUES ('1550', '查询操作', '查询商品类别信息', '2023-05-31 08:34:55', '1');
INSERT INTO `x_log` VALUES ('1551', '查询操作', '分页查询商品信息', '2023-05-31 08:34:55', '1');
INSERT INTO `x_log` VALUES ('1552', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:39:31', '1');
INSERT INTO `x_log` VALUES ('1553', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:40:12', '1');
INSERT INTO `x_log` VALUES ('1554', '查询操作', '查询所有上架到小程序的商品', '2023-05-31 08:40:20', '1');
INSERT INTO `x_log` VALUES ('1555', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:40:20', '1');
INSERT INTO `x_log` VALUES ('1556', '查询操作', '查询所有上架到小程序的商品', '2023-05-31 08:40:54', '1');
INSERT INTO `x_log` VALUES ('1557', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:40:54', '1');
INSERT INTO `x_log` VALUES ('1558', '查询操作', '查询所有上架到小程序的商品', '2023-05-31 08:41:29', '1');
INSERT INTO `x_log` VALUES ('1559', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:41:29', '1');
INSERT INTO `x_log` VALUES ('1560', '查询操作', '查询商品类别信息', '2023-05-31 08:42:35', '1');
INSERT INTO `x_log` VALUES ('1561', '查询操作', '分页查询商品信息', '2023-05-31 08:42:35', '1');
INSERT INTO `x_log` VALUES ('1562', '查询操作', '查询商品:qq牌甜糖', '2023-05-31 08:42:46', '1');
INSERT INTO `x_log` VALUES ('1563', '查询操作', '查询所有上架到小程序的商品', '2023-05-31 08:42:57', '1');
INSERT INTO `x_log` VALUES ('1564', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:42:57', '1');
INSERT INTO `x_log` VALUES ('1565', '查询操作', '查询所有上架到小程序的商品', '2023-05-31 08:44:13', '1');
INSERT INTO `x_log` VALUES ('1566', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:44:13', '1');
INSERT INTO `x_log` VALUES ('1567', '查询操作', '查询所有商品', '2023-05-31 08:48:00', '1');
INSERT INTO `x_log` VALUES ('1568', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:48:00', '1');
INSERT INTO `x_log` VALUES ('1569', '查询操作', '查询所有上架到小程序的商品', '2023-05-31 08:48:32', '1');
INSERT INTO `x_log` VALUES ('1570', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:48:32', '1');
INSERT INTO `x_log` VALUES ('1571', '查询操作', '查询所有商品', '2023-05-31 08:49:17', '1');
INSERT INTO `x_log` VALUES ('1572', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:49:17', '1');
INSERT INTO `x_log` VALUES ('1573', '查询操作', '查询所有商品', '2023-05-31 08:50:29', '1');
INSERT INTO `x_log` VALUES ('1574', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:50:29', '1');
INSERT INTO `x_log` VALUES ('1575', '查询操作', '查询商品类别信息', '2023-05-31 08:50:50', '1');
INSERT INTO `x_log` VALUES ('1576', '查询操作', '查询所有客户', '2023-05-31 08:50:50', '1');
INSERT INTO `x_log` VALUES ('1577', '查询操作', '分页查询商品信息', '2023-05-31 08:50:51', '1');
INSERT INTO `x_log` VALUES ('1578', '查询操作', '查询所有商品', '2023-05-31 08:50:52', '1');
INSERT INTO `x_log` VALUES ('1579', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:50:52', '1');
INSERT INTO `x_log` VALUES ('1580', '查询操作', '查询所有客户', '2023-05-31 08:50:53', '1');
INSERT INTO `x_log` VALUES ('1581', '查询操作', '查询商品类别信息', '2023-05-31 08:50:53', '1');
INSERT INTO `x_log` VALUES ('1582', '查询操作', '分页查询商品信息', '2023-05-31 08:50:53', '1');
INSERT INTO `x_log` VALUES ('1583', '查询操作', '查询所有客户', '2023-05-31 08:51:55', '1');
INSERT INTO `x_log` VALUES ('1584', '查询操作', '查询商品类别信息', '2023-05-31 08:51:55', '1');
INSERT INTO `x_log` VALUES ('1585', '查询操作', '分页查询商品信息', '2023-05-31 08:51:55', '1');
INSERT INTO `x_log` VALUES ('1586', '查询操作', '查询所有商品', '2023-05-31 08:51:56', '1');
INSERT INTO `x_log` VALUES ('1587', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:51:56', '1');
INSERT INTO `x_log` VALUES ('1588', '查询操作', '查询所有商品', '2023-05-31 08:52:21', '1');
INSERT INTO `x_log` VALUES ('1589', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:52:21', '1');
INSERT INTO `x_log` VALUES ('1590', '查询操作', '查询所有商品', '2023-05-31 08:52:30', '1');
INSERT INTO `x_log` VALUES ('1591', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:52:30', '1');
INSERT INTO `x_log` VALUES ('1592', '查询操作', '查询所有商品', '2023-05-31 08:53:36', '1');
INSERT INTO `x_log` VALUES ('1593', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:53:36', '1');
INSERT INTO `x_log` VALUES ('1594', '查询操作', '查询所有商品', '2023-05-31 08:54:51', '1');
INSERT INTO `x_log` VALUES ('1595', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:54:51', '1');
INSERT INTO `x_log` VALUES ('1596', '查询操作', '查询所有商品', '2023-05-31 08:55:56', '1');
INSERT INTO `x_log` VALUES ('1597', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:55:56', '1');
INSERT INTO `x_log` VALUES ('1598', '查询操作', '查询所有商品', '2023-05-31 08:57:18', '1');
INSERT INTO `x_log` VALUES ('1599', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:57:18', '1');
INSERT INTO `x_log` VALUES ('1600', '查询操作', '查询所有商品', '2023-05-31 08:58:08', '1');
INSERT INTO `x_log` VALUES ('1601', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:58:08', '1');
INSERT INTO `x_log` VALUES ('1602', '查询操作', '查询所有商品', '2023-05-31 08:58:20', '1');
INSERT INTO `x_log` VALUES ('1603', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:58:20', '1');
INSERT INTO `x_log` VALUES ('1604', '查询操作', '查询所有商品', '2023-05-31 08:58:29', '1');
INSERT INTO `x_log` VALUES ('1605', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:58:29', '1');
INSERT INTO `x_log` VALUES ('1606', '查询操作', '查询所有商品', '2023-05-31 08:58:39', '1');
INSERT INTO `x_log` VALUES ('1607', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:58:39', '1');
INSERT INTO `x_log` VALUES ('1608', '查询操作', '查询小程序商品:Nike阿甘系列童鞋', '2023-05-31 08:59:39', '1');
INSERT INTO `x_log` VALUES ('1609', '查询操作', '查询商品类别信息', '2023-05-31 08:59:50', '1');
INSERT INTO `x_log` VALUES ('1610', '查询操作', '分页查询商品信息', '2023-05-31 08:59:50', '1');
INSERT INTO `x_log` VALUES ('1611', '查询操作', '查询所有商品', '2023-05-31 08:59:53', '1');
INSERT INTO `x_log` VALUES ('1612', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 08:59:53', '1');
INSERT INTO `x_log` VALUES ('1613', '查询操作', '查询商品类别信息', '2023-05-31 08:59:56', '1');
INSERT INTO `x_log` VALUES ('1614', '查询操作', '分页查询商品信息', '2023-05-31 08:59:56', '1');
INSERT INTO `x_log` VALUES ('1615', '查询操作', '查询商品类别信息', '2023-05-31 08:59:57', '1');
INSERT INTO `x_log` VALUES ('1616', '查询操作', '分页查询供应商信息', '2023-05-31 08:59:57', '1');
INSERT INTO `x_log` VALUES ('1617', '查询操作', '查询商品类别信息', '2023-05-31 09:00:04', '1');
INSERT INTO `x_log` VALUES ('1618', '查询操作', '分页查询商品信息', '2023-05-31 09:00:04', '1');
INSERT INTO `x_log` VALUES ('1619', '查询操作', '查询商品类别信息', '2023-05-31 09:00:05', '1');
INSERT INTO `x_log` VALUES ('1620', '查询操作', '分页查询商品信息', '2023-05-31 09:00:05', '1');
INSERT INTO `x_log` VALUES ('1621', '查询操作', '分页查询商品信息', '2023-05-31 09:00:06', '1');
INSERT INTO `x_log` VALUES ('1622', '查询操作', '查询所有客户', '2023-05-31 09:00:06', '1');
INSERT INTO `x_log` VALUES ('1623', '查询操作', '查询商品类别信息', '2023-05-31 09:00:06', '1');
INSERT INTO `x_log` VALUES ('1624', '查询操作', '查询所有商品', '2023-05-31 09:00:07', '1');
INSERT INTO `x_log` VALUES ('1625', '查询操作', '分页查询小程序端的商品信息', '2023-05-31 09:00:07', '1');
INSERT INTO `x_log` VALUES ('1626', '查询操作', '分页查询小程序端客户订单信息', '2023-06-01 19:04:08', '1');
INSERT INTO `x_log` VALUES ('1627', '查询操作', '查询所有商品', '2023-06-01 19:05:53', '1');
INSERT INTO `x_log` VALUES ('1628', '查询操作', '分页查询小程序端的商品信息', '2023-06-01 19:05:53', '1');
INSERT INTO `x_log` VALUES ('1629', '查询操作', '分页查询角色信息', '2023-06-02 10:34:47', '1');
INSERT INTO `x_log` VALUES ('1630', '查询操作', '查询角色:admin', '2023-06-02 10:34:48', '1');
INSERT INTO `x_log` VALUES ('1631', '修改操作', '修改角色:admin', '2023-06-02 10:34:52', '1');
INSERT INTO `x_log` VALUES ('1632', '查询操作', '分页查询角色信息', '2023-06-02 10:34:52', '1');
INSERT INTO `x_log` VALUES ('1633', '查询操作', '分页查询角色信息', '2023-06-02 10:34:53', '1');
INSERT INTO `x_log` VALUES ('1634', '查询操作', '分页查询角色信息', '2023-06-02 10:35:09', '1');
INSERT INTO `x_log` VALUES ('1635', '查询操作', '分页查询角色信息', '2023-06-02 10:35:36', '1');
INSERT INTO `x_log` VALUES ('1636', '退出操作', '退出登录', '2023-06-02 10:35:43', '1');
INSERT INTO `x_log` VALUES ('1637', '查询操作', '查询所有角色', '2023-06-02 10:37:05', '1');
INSERT INTO `x_log` VALUES ('1638', '查询操作', '分页查询用户信息', '2023-06-02 10:37:05', '1');
INSERT INTO `x_log` VALUES ('1639', '查询操作', '查询用户:zhangsan', '2023-06-02 10:37:07', '1');
INSERT INTO `x_log` VALUES ('1640', '查询操作', '分页查询角色信息', '2023-06-02 10:37:10', '1');
INSERT INTO `x_log` VALUES ('1641', '查询操作', '查询角色:admin', '2023-06-02 10:37:11', '1');
INSERT INTO `x_log` VALUES ('1642', '修改操作', '修改角色:admin', '2023-06-02 10:37:14', '1');
INSERT INTO `x_log` VALUES ('1643', '查询操作', '分页查询角色信息', '2023-06-02 10:37:14', '1');
INSERT INTO `x_log` VALUES ('1644', '查询操作', '分页查询角色信息', '2023-06-02 10:37:15', '1');
INSERT INTO `x_log` VALUES ('1645', '查询操作', '查询角色:admin', '2023-06-02 10:37:24', '1');
INSERT INTO `x_log` VALUES ('1646', '修改操作', '修改角色:admin', '2023-06-02 10:37:46', '1');
INSERT INTO `x_log` VALUES ('1647', '查询操作', '分页查询角色信息', '2023-06-02 10:37:46', '1');
INSERT INTO `x_log` VALUES ('1648', '查询操作', '分页查询角色信息', '2023-06-02 10:37:47', '1');
INSERT INTO `x_log` VALUES ('1649', '查询操作', '分页查询角色信息', '2023-06-02 10:37:54', '1');
INSERT INTO `x_log` VALUES ('1650', '查询操作', '查询所有角色', '2023-06-02 10:37:55', '1');
INSERT INTO `x_log` VALUES ('1651', '查询操作', '分页查询用户信息', '2023-06-02 10:37:55', '1');
INSERT INTO `x_log` VALUES ('1652', '查询操作', '分页查询角色信息', '2023-06-02 10:37:56', '1');
INSERT INTO `x_log` VALUES ('1653', '查询操作', '分页查询角色信息', '2023-06-02 10:37:58', '1');
INSERT INTO `x_log` VALUES ('1654', '查询操作', '查询角色:admin', '2023-06-02 10:37:59', '1');
INSERT INTO `x_log` VALUES ('1655', '修改操作', '修改角色:admin', '2023-06-02 10:38:01', '1');
INSERT INTO `x_log` VALUES ('1656', '查询操作', '分页查询角色信息', '2023-06-02 10:38:01', '1');
INSERT INTO `x_log` VALUES ('1657', '查询操作', '分页查询角色信息', '2023-06-02 10:38:29', '1');
INSERT INTO `x_log` VALUES ('1658', '查询操作', '查询所有商品', '2023-06-02 10:38:32', '1');
INSERT INTO `x_log` VALUES ('1659', '查询操作', '分页查询小程序端的商品信息', '2023-06-02 10:38:32', '1');
INSERT INTO `x_log` VALUES ('1660', '查询操作', '查询所有商品', '2023-06-02 10:40:31', '1');
INSERT INTO `x_log` VALUES ('1661', '查询操作', '分页查询小程序端的商品信息', '2023-06-02 10:40:31', '1');
INSERT INTO `x_log` VALUES ('1662', '查询操作', '分页查询角色信息', '2023-06-02 10:40:33', '1');
INSERT INTO `x_log` VALUES ('1663', '查询操作', '查询角色:admin', '2023-06-02 10:40:34', '1');
INSERT INTO `x_log` VALUES ('1664', '修改操作', '修改角色:admin', '2023-06-02 10:40:38', '1');
INSERT INTO `x_log` VALUES ('1665', '查询操作', '分页查询角色信息', '2023-06-02 10:40:38', '1');
INSERT INTO `x_log` VALUES ('1666', '查询操作', '分页查询角色信息', '2023-06-02 10:40:46', '1');
INSERT INTO `x_log` VALUES ('1667', '查询操作', '查询所有商品', '2023-06-02 10:41:54', '1');
INSERT INTO `x_log` VALUES ('1668', '查询操作', '分页查询小程序端的商品信息', '2023-06-02 10:41:54', '1');
INSERT INTO `x_log` VALUES ('1669', '查询操作', '分页查询角色信息', '2023-06-02 10:41:59', '1');
INSERT INTO `x_log` VALUES ('1670', '查询操作', '分页查询商品信息', '2023-06-02 10:42:07', '1');
INSERT INTO `x_log` VALUES ('1671', '查询操作', '查询商品类别信息', '2023-06-02 10:42:07', '1');
INSERT INTO `x_log` VALUES ('1672', '查询操作', '查询商品类别信息', '2023-06-02 10:42:20', '1');
INSERT INTO `x_log` VALUES ('1673', '查询操作', '分页查询商品信息', '2023-06-02 10:42:20', '1');
INSERT INTO `x_log` VALUES ('1674', '查询操作', '查询所有供应商', '2023-06-02 10:42:20', '1');
INSERT INTO `x_log` VALUES ('1675', '查询操作', '分页查询进货信息', '2023-06-02 10:42:20', '1');
INSERT INTO `x_log` VALUES ('1676', '查询操作', '查询商品类别信息', '2023-06-02 10:55:32', '1');
INSERT INTO `x_log` VALUES ('1677', '查询操作', '分页查询商品信息', '2023-06-02 10:55:32', '1');
INSERT INTO `x_log` VALUES ('1678', '查询操作', '查询商品类别信息', '2023-06-02 10:55:36', '1');
INSERT INTO `x_log` VALUES ('1679', '查询操作', '分页查询商品信息', '2023-06-02 10:55:36', '1');
INSERT INTO `x_log` VALUES ('1680', '查询操作', '查询所有供应商', '2023-06-02 10:55:36', '1');
INSERT INTO `x_log` VALUES ('1681', '查询操作', '分页查询进货信息', '2023-06-02 10:55:36', '1');
INSERT INTO `x_log` VALUES ('1682', '查询操作', '查询商品类别信息', '2023-06-02 11:00:32', '1');
INSERT INTO `x_log` VALUES ('1683', '查询操作', '分页查询客户', '2023-06-02 11:00:32', '1');
INSERT INTO `x_log` VALUES ('1684', '查询操作', '查询商品类别信息', '2023-06-02 11:00:59', '1');
INSERT INTO `x_log` VALUES ('1685', '查询操作', '分页查询客户', '2023-06-02 11:00:59', '1');
INSERT INTO `x_log` VALUES ('1686', '查询操作', '查询商品类别信息', '2023-06-02 11:16:14', '1');
INSERT INTO `x_log` VALUES ('1687', '查询操作', '分页查询客户', '2023-06-02 11:16:14', '1');
INSERT INTO `x_log` VALUES ('1688', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 11:23:53', '1');
INSERT INTO `x_log` VALUES ('1689', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 11:24:43', '1');
INSERT INTO `x_log` VALUES ('1690', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 11:24:55', '1');
INSERT INTO `x_log` VALUES ('1691', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 11:25:29', '1');
INSERT INTO `x_log` VALUES ('1692', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 11:28:00', '1');
INSERT INTO `x_log` VALUES ('1693', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:21:48', '1');
INSERT INTO `x_log` VALUES ('1694', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:23:49', '1');
INSERT INTO `x_log` VALUES ('1695', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:24:41', '1');
INSERT INTO `x_log` VALUES ('1696', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:25:34', '1');
INSERT INTO `x_log` VALUES ('1697', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:37:53', '1');
INSERT INTO `x_log` VALUES ('1698', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:37:54', '1');
INSERT INTO `x_log` VALUES ('1699', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:41:58', '1');
INSERT INTO `x_log` VALUES ('1700', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:43:08', '1');
INSERT INTO `x_log` VALUES ('1701', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:43:12', '1');
INSERT INTO `x_log` VALUES ('1702', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:44:55', '1');
INSERT INTO `x_log` VALUES ('1703', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:46:09', '1');
INSERT INTO `x_log` VALUES ('1704', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:48:43', '1');
INSERT INTO `x_log` VALUES ('1705', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:48:44', '1');
INSERT INTO `x_log` VALUES ('1706', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:49:27', '1');
INSERT INTO `x_log` VALUES ('1707', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:49:51', '1');
INSERT INTO `x_log` VALUES ('1708', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:53:52', '1');
INSERT INTO `x_log` VALUES ('1709', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:55:58', '1');
INSERT INTO `x_log` VALUES ('1710', '修改操作', '评论编号15审核通过', '2023-06-02 14:56:00', '1');
INSERT INTO `x_log` VALUES ('1711', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:56:00', '1');
INSERT INTO `x_log` VALUES ('1712', '修改操作', '评论编号14审核失败', '2023-06-02 14:56:06', '1');
INSERT INTO `x_log` VALUES ('1713', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:56:06', '1');
INSERT INTO `x_log` VALUES ('1714', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:58:21', '1');
INSERT INTO `x_log` VALUES ('1715', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 14:58:32', '1');
INSERT INTO `x_log` VALUES ('1716', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 16:09:00', '1');
INSERT INTO `x_log` VALUES ('1717', '查询操作', '查询所有客户', '2023-06-02 16:09:58', '1');
INSERT INTO `x_log` VALUES ('1718', '查询操作', '查询商品类别信息', '2023-06-02 16:09:58', '1');
INSERT INTO `x_log` VALUES ('1719', '查询操作', '分页查询商品信息', '2023-06-02 16:09:58', '1');
INSERT INTO `x_log` VALUES ('1720', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 16:11:19', '1');
INSERT INTO `x_log` VALUES ('1721', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 16:11:48', '1');
INSERT INTO `x_log` VALUES ('1722', '查询操作', '查询商品类别信息', '2023-06-02 16:37:47', null);
INSERT INTO `x_log` VALUES ('1723', '查询操作', '分页查询商品信息', '2023-06-02 16:37:47', null);
INSERT INTO `x_log` VALUES ('1724', '查询操作', '查询商品:qq牌甜糖', '2023-06-02 16:37:48', null);
INSERT INTO `x_log` VALUES ('1725', '退出操作', '退出登录', '2023-06-02 16:40:11', null);
INSERT INTO `x_log` VALUES ('1726', '查询操作', '查询商品类别信息', '2023-06-02 16:40:34', '1');
INSERT INTO `x_log` VALUES ('1727', '查询操作', '分页查询商品信息', '2023-06-02 16:40:34', '1');
INSERT INTO `x_log` VALUES ('1728', '查询操作', '查询商品:qq牌甜糖', '2023-06-02 16:40:37', '1');
INSERT INTO `x_log` VALUES ('1729', '新增操作', '新增进货商品:qq牌甜糖', '2023-06-02 16:40:56', '1');
INSERT INTO `x_log` VALUES ('1730', '查询操作', '分页查询商品信息', '2023-06-02 16:40:56', '1');
INSERT INTO `x_log` VALUES ('1731', '查询操作', '查询商品类别信息', '2023-06-02 17:26:52', '1');
INSERT INTO `x_log` VALUES ('1732', '查询操作', '分页查询商品信息', '2023-06-02 17:26:52', '1');
INSERT INTO `x_log` VALUES ('1733', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 17:26:56', '1');
INSERT INTO `x_log` VALUES ('1734', '修改操作', '评论编号13审核失败', '2023-06-02 17:27:05', '1');
INSERT INTO `x_log` VALUES ('1735', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 17:27:05', '1');
INSERT INTO `x_log` VALUES ('1736', '查询操作', '分页查询小程序端用户评论信息', '2023-06-02 17:39:52', '1');
INSERT INTO `x_log` VALUES ('1737', '查询操作', '分页查询小程序端客户订单信息', '2023-06-02 17:39:55', '1');
INSERT INTO `x_log` VALUES ('1738', '修改操作', '销售单号41876881794现在发货', '2023-06-02 17:40:00', '1');
INSERT INTO `x_log` VALUES ('1739', '查询操作', '分页查询小程序端客户订单信息', '2023-06-02 17:40:00', '1');
INSERT INTO `x_log` VALUES ('1740', '修改操作', '销售单号97194360668现在发货', '2023-06-02 17:42:31', '1');
INSERT INTO `x_log` VALUES ('1741', '查询操作', '分页查询小程序端客户订单信息', '2023-06-02 17:42:31', '1');
INSERT INTO `x_log` VALUES ('1742', '修改操作', '销售单号41876881794已送达', '2023-06-02 17:42:39', '1');
INSERT INTO `x_log` VALUES ('1743', '查询操作', '分页查询小程序端客户订单信息', '2023-06-02 17:42:39', '1');
INSERT INTO `x_log` VALUES ('1744', '退出操作', '退出登录', '2023-06-02 18:14:06', '1');
INSERT INTO `x_log` VALUES ('1745', '查询操作', '查询商品类别信息', '2023-06-04 14:53:03', '1');
INSERT INTO `x_log` VALUES ('1746', '查询操作', '分页查询商品采购信息', '2023-06-04 14:53:03', '1');
INSERT INTO `x_log` VALUES ('1747', '查询操作', '分页查询商品信息', '2023-06-04 14:53:03', '1');
INSERT INTO `x_log` VALUES ('1748', '查询操作', '查询按日统计', '2023-06-04 14:53:13', '1');
INSERT INTO `x_log` VALUES ('1749', '查询操作', '查询按日统计', '2023-06-04 14:53:19', '1');
INSERT INTO `x_log` VALUES ('1750', '查询操作', '查询商品类别信息', '2023-06-04 14:53:27', '1');
INSERT INTO `x_log` VALUES ('1751', '查询操作', '分页查询商品信息', '2023-06-04 14:53:27', '1');
INSERT INTO `x_log` VALUES ('1752', '查询操作', '分页查询商品销售统计', '2023-06-04 14:53:27', '1');
INSERT INTO `x_log` VALUES ('1753', '查询操作', '查询按日统计', '2023-06-04 14:53:32', '1');
INSERT INTO `x_log` VALUES ('1754', '查询操作', '查询按月统计', '2023-06-04 14:53:44', '1');
INSERT INTO `x_log` VALUES ('1755', '查询操作', '查询商品类别信息', '2023-06-04 14:53:47', '1');
INSERT INTO `x_log` VALUES ('1756', '查询操作', '分页查询商品信息', '2023-06-04 14:53:47', '1');
INSERT INTO `x_log` VALUES ('1757', '查询操作', '分页查询商品销售统计', '2023-06-04 14:53:47', '1');
INSERT INTO `x_log` VALUES ('1758', '查询操作', '查询按日统计', '2023-06-04 14:53:52', '1');
INSERT INTO `x_log` VALUES ('1759', '查询操作', '查询商品类别信息', '2023-06-04 14:54:03', '1');
INSERT INTO `x_log` VALUES ('1760', '查询操作', '分页查询商品信息', '2023-06-04 14:54:03', '1');
INSERT INTO `x_log` VALUES ('1761', '查询操作', '查询商品类别信息', '2023-06-04 14:54:04', '1');
INSERT INTO `x_log` VALUES ('1762', '查询操作', '分页查询客户', '2023-06-04 14:54:04', '1');
INSERT INTO `x_log` VALUES ('1763', '查询操作', '查询所有用户', '2023-06-04 14:54:19', '1');
INSERT INTO `x_log` VALUES ('1764', '查询操作', '查询所有商品', '2023-06-08 18:53:25', '1');
INSERT INTO `x_log` VALUES ('1765', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 18:53:25', '1');
INSERT INTO `x_log` VALUES ('1766', '查询操作', '查询所有商品', '2023-06-08 19:11:52', '1');
INSERT INTO `x_log` VALUES ('1767', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 19:11:52', '1');
INSERT INTO `x_log` VALUES ('1768', '查询操作', '查询所有商品', '2023-06-08 19:14:21', '1');
INSERT INTO `x_log` VALUES ('1769', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 19:14:21', '1');
INSERT INTO `x_log` VALUES ('1770', '查询操作', '查询所有商品', '2023-06-08 19:16:27', '1');
INSERT INTO `x_log` VALUES ('1771', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 19:16:27', '1');
INSERT INTO `x_log` VALUES ('1772', '查询操作', '查询所有商品', '2023-06-08 19:17:28', '1');
INSERT INTO `x_log` VALUES ('1773', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 19:17:28', '1');
INSERT INTO `x_log` VALUES ('1774', '查询操作', '查询所有商品', '2023-06-08 19:17:44', '1');
INSERT INTO `x_log` VALUES ('1775', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 19:17:44', '1');
INSERT INTO `x_log` VALUES ('1776', '查询操作', '查询所有商品', '2023-06-08 19:22:19', '1');
INSERT INTO `x_log` VALUES ('1777', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 19:22:19', '1');
INSERT INTO `x_log` VALUES ('1778', '查询操作', '查询所有商品', '2023-06-08 19:22:40', '1');
INSERT INTO `x_log` VALUES ('1779', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 19:22:40', '1');
INSERT INTO `x_log` VALUES ('1780', '查询操作', '查询所有商品', '2023-06-08 19:32:07', '1');
INSERT INTO `x_log` VALUES ('1781', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 19:32:07', '1');
INSERT INTO `x_log` VALUES ('1782', '查询操作', '查询所有商品', '2023-06-08 19:34:01', '1');
INSERT INTO `x_log` VALUES ('1783', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 19:34:01', '1');
INSERT INTO `x_log` VALUES ('1784', '查询操作', '分页查询商品信息', '2023-06-08 19:35:32', '1');
INSERT INTO `x_log` VALUES ('1785', '查询操作', '查询商品类别信息', '2023-06-08 19:35:32', '1');
INSERT INTO `x_log` VALUES ('1786', '查询操作', '查询商品:qq牌甜糖', '2023-06-08 19:35:36', '1');
INSERT INTO `x_log` VALUES ('1787', '查询操作', '查询商品:加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '2023-06-08 19:35:41', '1');
INSERT INTO `x_log` VALUES ('1788', '查询操作', '查询所有商品', '2023-06-08 19:35:52', '1');
INSERT INTO `x_log` VALUES ('1789', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 19:35:52', '1');
INSERT INTO `x_log` VALUES ('1790', '查询操作', '查询小程序商品:Nike阿甘系列童鞋', '2023-06-08 19:37:59', '1');
INSERT INTO `x_log` VALUES ('1791', '查询操作', '查询小程序商品:Nike阿甘系列童鞋', '2023-06-08 19:40:43', '1');
INSERT INTO `x_log` VALUES ('1792', '查询操作', '查询商品类别信息', '2023-06-08 19:45:39', '1');
INSERT INTO `x_log` VALUES ('1793', '查询操作', '分页查询商品信息', '2023-06-08 19:45:39', '1');
INSERT INTO `x_log` VALUES ('1794', '查询操作', '查询商品:qq牌甜糖', '2023-06-08 19:45:41', '1');
INSERT INTO `x_log` VALUES ('1795', '查询操作', '查询商品:qq牌甜糖', '2023-06-08 19:46:06', '1');
INSERT INTO `x_log` VALUES ('1796', '查询操作', '查询所有商品', '2023-06-08 19:48:51', '1');
INSERT INTO `x_log` VALUES ('1797', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 19:48:51', '1');
INSERT INTO `x_log` VALUES ('1798', '查询操作', '查询商品类别信息', '2023-06-08 19:52:07', '1');
INSERT INTO `x_log` VALUES ('1799', '查询操作', '分页查询商品信息', '2023-06-08 19:52:07', '1');
INSERT INTO `x_log` VALUES ('1800', '查询操作', '查询商品:qq牌甜糖', '2023-06-08 19:52:08', '1');
INSERT INTO `x_log` VALUES ('1801', '查询操作', '查询所有商品', '2023-06-08 19:52:56', '1');
INSERT INTO `x_log` VALUES ('1802', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 19:52:56', '1');
INSERT INTO `x_log` VALUES ('1803', '查询操作', '查询所有商品', '2023-06-08 19:55:12', '1');
INSERT INTO `x_log` VALUES ('1804', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 19:55:12', '1');
INSERT INTO `x_log` VALUES ('1805', '查询操作', '查询商品类别信息', '2023-06-08 19:57:11', '1');
INSERT INTO `x_log` VALUES ('1806', '查询操作', '分页查询商品信息', '2023-06-08 19:57:11', '1');
INSERT INTO `x_log` VALUES ('1807', '查询操作', '查询商品类别信息', '2023-06-08 20:00:22', '1');
INSERT INTO `x_log` VALUES ('1808', '查询操作', '分页查询商品信息', '2023-06-08 20:00:22', '1');
INSERT INTO `x_log` VALUES ('1809', '新增操作', '新增商品:OCSILL基础短袖', '2023-06-08 20:03:05', '1');
INSERT INTO `x_log` VALUES ('1810', '查询操作', '分页查询商品信息', '2023-06-08 20:03:05', '1');
INSERT INTO `x_log` VALUES ('1811', '查询操作', '查询商品类别信息', '2023-06-08 20:05:04', '1');
INSERT INTO `x_log` VALUES ('1812', '查询操作', '分页查询商品信息', '2023-06-08 20:05:04', '1');
INSERT INTO `x_log` VALUES ('1813', '新增操作', '新增商品:OCSILL万菊卫衣', '2023-06-08 20:06:49', '1');
INSERT INTO `x_log` VALUES ('1814', '查询操作', '分页查询商品信息', '2023-06-08 20:06:49', '1');
INSERT INTO `x_log` VALUES ('1815', '查询操作', '查询商品类别信息', '2023-06-08 20:07:53', '1');
INSERT INTO `x_log` VALUES ('1816', '查询操作', '分页查询商品信息', '2023-06-08 20:07:53', '1');
INSERT INTO `x_log` VALUES ('1817', '新增操作', '新增商品:AIR4-蓝白', '2023-06-08 20:09:16', '1');
INSERT INTO `x_log` VALUES ('1818', '查询操作', '分页查询商品信息', '2023-06-08 20:09:16', '1');
INSERT INTO `x_log` VALUES ('1819', '查询操作', '查询所有商品', '2023-06-08 20:09:22', '1');
INSERT INTO `x_log` VALUES ('1820', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 20:09:22', '1');
INSERT INTO `x_log` VALUES ('1821', '查询操作', '查询所有商品', '2023-06-08 20:11:01', '1');
INSERT INTO `x_log` VALUES ('1822', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 20:11:01', '1');
INSERT INTO `x_log` VALUES ('1823', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 20:34:00', '1');
INSERT INTO `x_log` VALUES ('1824', '查询操作', '查询所有服饰类商品', '2023-06-08 20:34:00', '1');
INSERT INTO `x_log` VALUES ('1825', '查询操作', '查询商品类别信息', '2023-06-08 20:34:54', '1');
INSERT INTO `x_log` VALUES ('1826', '查询操作', '分页查询商品信息', '2023-06-08 20:34:54', '1');
INSERT INTO `x_log` VALUES ('1827', '查询操作', '查询商品:AIR4-蓝白', '2023-06-08 20:34:55', '1');
INSERT INTO `x_log` VALUES ('1828', '查询操作', '查询商品:OCSILL万菊卫衣', '2023-06-08 20:35:29', '1');
INSERT INTO `x_log` VALUES ('1829', '查询操作', '查询商品:qq牌甜糖', '2023-06-08 20:35:36', '1');
INSERT INTO `x_log` VALUES ('1830', '查询操作', '查询商品:AIR4-蓝白', '2023-06-08 20:37:01', '1');
INSERT INTO `x_log` VALUES ('1831', '查询操作', '查询所有服饰类商品', '2023-06-08 20:41:50', '1');
INSERT INTO `x_log` VALUES ('1832', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 20:41:50', '1');
INSERT INTO `x_log` VALUES ('1833', '查询操作', '查询所有服饰类商品', '2023-06-08 20:56:07', null);
INSERT INTO `x_log` VALUES ('1834', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 20:56:07', null);
INSERT INTO `x_log` VALUES ('1835', '查询操作', '查询所有服饰类商品', '2023-06-08 20:57:36', null);
INSERT INTO `x_log` VALUES ('1836', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 20:57:36', null);
INSERT INTO `x_log` VALUES ('1837', '查询操作', '查询所有服饰类商品', '2023-06-08 21:49:35', '1');
INSERT INTO `x_log` VALUES ('1838', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 21:49:35', '1');
INSERT INTO `x_log` VALUES ('1839', '查询操作', '查询所有服饰类商品', '2023-06-08 21:50:26', '1');
INSERT INTO `x_log` VALUES ('1840', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 21:50:26', '1');
INSERT INTO `x_log` VALUES ('1841', '查询操作', '查询所有服饰类商品', '2023-06-08 21:51:40', '1');
INSERT INTO `x_log` VALUES ('1842', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 21:51:40', '1');
INSERT INTO `x_log` VALUES ('1843', '查询操作', '查询所有服饰类商品', '2023-06-08 21:53:40', '1');
INSERT INTO `x_log` VALUES ('1844', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 21:53:40', '1');
INSERT INTO `x_log` VALUES ('1845', '查询操作', '查询所有服饰类商品', '2023-06-08 21:59:48', '1');
INSERT INTO `x_log` VALUES ('1846', '查询操作', '分页查询小程序端的商品信息', '2023-06-08 21:59:48', '1');
INSERT INTO `x_log` VALUES ('1847', '查询操作', '查询所有服饰类商品', '2023-06-09 07:51:53', '1');
INSERT INTO `x_log` VALUES ('1848', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 07:51:53', '1');
INSERT INTO `x_log` VALUES ('1849', '查询操作', '查询所有服饰类商品', '2023-06-09 07:57:05', '1');
INSERT INTO `x_log` VALUES ('1850', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 07:57:05', '1');
INSERT INTO `x_log` VALUES ('1851', '新增操作', '上架商品:null', '2023-06-09 07:57:23', '1');
INSERT INTO `x_log` VALUES ('1852', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 07:57:23', '1');
INSERT INTO `x_log` VALUES ('1853', '查询操作', '查询所有服饰类商品', '2023-06-09 08:00:02', '1');
INSERT INTO `x_log` VALUES ('1854', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:00:02', '1');
INSERT INTO `x_log` VALUES ('1855', '新增操作', '上架商品:null', '2023-06-09 08:01:02', '1');
INSERT INTO `x_log` VALUES ('1856', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:01:02', '1');
INSERT INTO `x_log` VALUES ('1857', '查询操作', '查询所有服饰类商品', '2023-06-09 08:07:04', '1');
INSERT INTO `x_log` VALUES ('1858', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:07:04', '1');
INSERT INTO `x_log` VALUES ('1859', '查询操作', '查询所有服饰类商品', '2023-06-09 08:21:33', '1');
INSERT INTO `x_log` VALUES ('1860', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:21:33', '1');
INSERT INTO `x_log` VALUES ('1861', '查询操作', '查询所有服饰类商品', '2023-06-09 08:21:41', '1');
INSERT INTO `x_log` VALUES ('1862', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:21:41', '1');
INSERT INTO `x_log` VALUES ('1863', '查询操作', '查询所有服饰类商品', '2023-06-09 08:22:32', '1');
INSERT INTO `x_log` VALUES ('1864', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:22:32', '1');
INSERT INTO `x_log` VALUES ('1865', '查询操作', '查询所有服饰类商品', '2023-06-09 08:23:00', '1');
INSERT INTO `x_log` VALUES ('1866', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:23:00', '1');
INSERT INTO `x_log` VALUES ('1867', '新增操作', '上架商品:null', '2023-06-09 08:23:23', '1');
INSERT INTO `x_log` VALUES ('1868', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:23:23', '1');
INSERT INTO `x_log` VALUES ('1869', '查询操作', '查询所有服饰类商品', '2023-06-09 08:24:51', '1');
INSERT INTO `x_log` VALUES ('1870', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:24:51', '1');
INSERT INTO `x_log` VALUES ('1871', '新增操作', '上架商品:null', '2023-06-09 08:25:04', '1');
INSERT INTO `x_log` VALUES ('1872', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:25:04', '1');
INSERT INTO `x_log` VALUES ('1873', '查询操作', '查询所有服饰类商品', '2023-06-09 08:26:04', '1');
INSERT INTO `x_log` VALUES ('1874', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:26:04', '1');
INSERT INTO `x_log` VALUES ('1875', '查询操作', '查询所有服饰类商品', '2023-06-09 08:26:52', '1');
INSERT INTO `x_log` VALUES ('1876', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:26:52', '1');
INSERT INTO `x_log` VALUES ('1877', '新增操作', '上架商品:null', '2023-06-09 08:27:12', '1');
INSERT INTO `x_log` VALUES ('1878', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:27:13', '1');
INSERT INTO `x_log` VALUES ('1879', '查询操作', '查询所有服饰类商品', '2023-06-09 08:32:07', '1');
INSERT INTO `x_log` VALUES ('1880', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:32:07', '1');
INSERT INTO `x_log` VALUES ('1881', '查询操作', '查询所有服饰类商品', '2023-06-09 08:33:16', '1');
INSERT INTO `x_log` VALUES ('1882', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:33:16', '1');
INSERT INTO `x_log` VALUES ('1883', '查询操作', '查询所有服饰类商品', '2023-06-09 08:36:52', '1');
INSERT INTO `x_log` VALUES ('1884', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:36:52', '1');
INSERT INTO `x_log` VALUES ('1885', '查询操作', '查询所有服饰类商品', '2023-06-09 08:37:02', '1');
INSERT INTO `x_log` VALUES ('1886', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:37:02', '1');
INSERT INTO `x_log` VALUES ('1887', '查询操作', '查询所有服饰类商品', '2023-06-09 08:38:48', '1');
INSERT INTO `x_log` VALUES ('1888', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:38:48', '1');
INSERT INTO `x_log` VALUES ('1889', '查询操作', '查询所有服饰类商品', '2023-06-09 08:39:53', '1');
INSERT INTO `x_log` VALUES ('1890', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:39:53', '1');
INSERT INTO `x_log` VALUES ('1891', '查询操作', '查询所有服饰类商品', '2023-06-09 08:40:39', '1');
INSERT INTO `x_log` VALUES ('1892', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:40:39', '1');
INSERT INTO `x_log` VALUES ('1893', '查询操作', '查询所有服饰类商品', '2023-06-09 08:42:22', '1');
INSERT INTO `x_log` VALUES ('1894', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:42:22', '1');
INSERT INTO `x_log` VALUES ('1895', '查询操作', '查询所有服饰类商品', '2023-06-09 08:42:48', '1');
INSERT INTO `x_log` VALUES ('1896', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:42:48', '1');
INSERT INTO `x_log` VALUES ('1897', '查询操作', '查询所有服饰类商品', '2023-06-09 08:44:07', '1');
INSERT INTO `x_log` VALUES ('1898', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:44:07', '1');
INSERT INTO `x_log` VALUES ('1899', '查询操作', '查询所有服饰类商品', '2023-06-09 08:44:09', '1');
INSERT INTO `x_log` VALUES ('1900', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:44:09', '1');
INSERT INTO `x_log` VALUES ('1901', '查询操作', '查询所有服饰类商品', '2023-06-09 08:44:50', '1');
INSERT INTO `x_log` VALUES ('1902', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:44:50', '1');
INSERT INTO `x_log` VALUES ('1903', '查询操作', '查询所有服饰类商品', '2023-06-09 08:48:44', '1');
INSERT INTO `x_log` VALUES ('1904', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:48:44', '1');
INSERT INTO `x_log` VALUES ('1905', '查询操作', '查询所有服饰类商品', '2023-06-09 08:50:01', '1');
INSERT INTO `x_log` VALUES ('1906', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:50:01', '1');
INSERT INTO `x_log` VALUES ('1907', '查询操作', '查询所有服饰类商品', '2023-06-09 08:51:23', '1');
INSERT INTO `x_log` VALUES ('1908', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:51:23', '1');
INSERT INTO `x_log` VALUES ('1909', '查询操作', '查询所有服饰类商品', '2023-06-09 08:53:37', '1');
INSERT INTO `x_log` VALUES ('1910', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:53:37', '1');
INSERT INTO `x_log` VALUES ('1911', '查询操作', '查询所有服饰类商品', '2023-06-09 08:54:24', '1');
INSERT INTO `x_log` VALUES ('1912', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:54:24', '1');
INSERT INTO `x_log` VALUES ('1913', '查询操作', '查询所有服饰类商品', '2023-06-09 08:54:59', '1');
INSERT INTO `x_log` VALUES ('1914', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:54:59', '1');
INSERT INTO `x_log` VALUES ('1915', '查询操作', '查询所有服饰类商品', '2023-06-09 08:56:08', '1');
INSERT INTO `x_log` VALUES ('1916', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:56:08', '1');
INSERT INTO `x_log` VALUES ('1917', '退出操作', '退出登录', '2023-06-09 08:56:42', '1');
INSERT INTO `x_log` VALUES ('1918', '查询操作', '查询所有服饰类商品', '2023-06-09 08:57:13', '1');
INSERT INTO `x_log` VALUES ('1919', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:57:13', '1');
INSERT INTO `x_log` VALUES ('1920', '新增操作', '上架商品:null', '2023-06-09 08:57:28', '1');
INSERT INTO `x_log` VALUES ('1921', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 08:57:28', '1');
INSERT INTO `x_log` VALUES ('1922', '查询操作', '分页查询商品信息', '2023-06-09 09:01:37', '1');
INSERT INTO `x_log` VALUES ('1923', '查询操作', '查询商品类别信息', '2023-06-09 09:01:37', '1');
INSERT INTO `x_log` VALUES ('1924', '查询操作', '查询商品:AIR4-蓝白', '2023-06-09 09:01:43', '1');
INSERT INTO `x_log` VALUES ('1925', '查询操作', '查询商品:AIR4-蓝白', '2023-06-09 09:02:13', '1');
INSERT INTO `x_log` VALUES ('1926', '查询操作', '查询商品:AIR4-蓝白', '2023-06-09 09:02:17', '1');
INSERT INTO `x_log` VALUES ('1927', '查询操作', '查询商品类别信息', '2023-06-09 09:02:26', '1');
INSERT INTO `x_log` VALUES ('1928', '查询操作', '分页查询商品信息', '2023-06-09 09:02:26', '1');
INSERT INTO `x_log` VALUES ('1929', '查询操作', '查询商品:AIR4-蓝白', '2023-06-09 09:02:27', '1');
INSERT INTO `x_log` VALUES ('1930', '查询操作', '查询商品:AIR4-蓝白', '2023-06-09 09:02:52', '1');
INSERT INTO `x_log` VALUES ('1931', '查询操作', '查询商品:西服套装男三件套秋季新款商务修身职业正装男士西装新郎结婚礼服', '2023-06-09 09:02:58', '1');
INSERT INTO `x_log` VALUES ('1932', '查询操作', '查询商品:OCSILL基础短袖', '2023-06-09 09:04:39', '1');
INSERT INTO `x_log` VALUES ('1933', '查询操作', '查询商品:qq牌甜糖', '2023-06-09 09:04:46', '1');
INSERT INTO `x_log` VALUES ('1934', '查询操作', '查询商品:qq牌甜糖', '2023-06-09 09:04:52', '1');
INSERT INTO `x_log` VALUES ('1935', '新增操作', '新增进货商品:qq牌甜糖', '2023-06-09 09:05:12', '1');
INSERT INTO `x_log` VALUES ('1936', '查询操作', '分页查询商品信息', '2023-06-09 09:05:12', '1');
INSERT INTO `x_log` VALUES ('1937', '查询操作', '查询所有服饰类商品', '2023-06-09 09:06:45', '1');
INSERT INTO `x_log` VALUES ('1938', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 09:06:45', '1');
INSERT INTO `x_log` VALUES ('1939', '新增操作', '上架商品:null', '2023-06-09 09:07:00', '1');
INSERT INTO `x_log` VALUES ('1940', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 09:07:00', '1');
INSERT INTO `x_log` VALUES ('1941', '新增操作', '上架商品:null', '2023-06-09 09:09:10', '1');
INSERT INTO `x_log` VALUES ('1942', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 09:09:10', '1');
INSERT INTO `x_log` VALUES ('1943', '查询操作', '查询所有服饰类商品', '2023-06-09 09:22:59', '1');
INSERT INTO `x_log` VALUES ('1944', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 09:22:59', '1');
INSERT INTO `x_log` VALUES ('1945', '新增操作', '上架商品:null', '2023-06-09 09:23:12', '1');
INSERT INTO `x_log` VALUES ('1946', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 09:23:12', '1');
INSERT INTO `x_log` VALUES ('1947', '查询操作', '查询所有服饰类商品', '2023-06-09 09:23:47', '1');
INSERT INTO `x_log` VALUES ('1948', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 09:23:47', '1');
INSERT INTO `x_log` VALUES ('1949', '新增操作', '上架商品:卓图女装立领针织格子印花拼接高腰A字裙2017秋冬新款碎花连衣裙', '2023-06-09 09:24:01', '1');
INSERT INTO `x_log` VALUES ('1950', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 09:24:01', '1');
INSERT INTO `x_log` VALUES ('1951', '查询操作', '查询所有服饰类商品', '2023-06-09 09:28:39', '1');
INSERT INTO `x_log` VALUES ('1952', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 09:28:39', '1');
INSERT INTO `x_log` VALUES ('1953', '新增操作', '上架商品:34', '2023-06-09 09:28:52', '1');
INSERT INTO `x_log` VALUES ('1954', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 09:28:52', '1');
INSERT INTO `x_log` VALUES ('1955', '查询操作', '查询所有服饰类商品', '2023-06-09 09:30:44', '1');
INSERT INTO `x_log` VALUES ('1956', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 09:30:44', '1');
INSERT INTO `x_log` VALUES ('1957', '查询操作', '查询所有服饰类商品', '2023-06-09 09:31:19', '1');
INSERT INTO `x_log` VALUES ('1958', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 09:31:19', '1');
INSERT INTO `x_log` VALUES ('1959', '查询操作', '查询所有服饰类商品', '2023-06-09 09:32:22', '1');
INSERT INTO `x_log` VALUES ('1960', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 09:32:22', '1');
INSERT INTO `x_log` VALUES ('1961', '新增操作', '上架商品:33', '2023-06-09 09:32:37', '1');
INSERT INTO `x_log` VALUES ('1962', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 09:32:37', '1');
INSERT INTO `x_log` VALUES ('1963', '查询操作', '查询所有服饰类商品', '2023-06-09 09:33:33', '1');
INSERT INTO `x_log` VALUES ('1964', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 09:33:33', '1');
INSERT INTO `x_log` VALUES ('1965', '新增操作', '上架商品:西服套装男三件套秋季新款商务修身职业正装男士西装新郎结婚礼服', '2023-06-09 09:33:59', '1');
INSERT INTO `x_log` VALUES ('1966', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 09:33:59', '1');
INSERT INTO `x_log` VALUES ('1967', '新增操作', '上架商品:null', '2023-06-09 10:41:26', '1');
INSERT INTO `x_log` VALUES ('1968', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 10:41:26', '1');
INSERT INTO `x_log` VALUES ('1969', '查询操作', '查询所有服饰类商品', '2023-06-09 10:41:54', '1');
INSERT INTO `x_log` VALUES ('1970', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 10:41:54', '1');
INSERT INTO `x_log` VALUES ('1971', '查询操作', '查询所有服饰类商品', '2023-06-09 10:43:02', '1');
INSERT INTO `x_log` VALUES ('1972', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 10:43:02', '1');
INSERT INTO `x_log` VALUES ('1973', '新增操作', '上架商品:加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '2023-06-09 10:43:38', '1');
INSERT INTO `x_log` VALUES ('1974', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 10:43:38', '1');
INSERT INTO `x_log` VALUES ('1975', '查询操作', '查询所有服饰类商品', '2023-06-09 10:44:24', '1');
INSERT INTO `x_log` VALUES ('1976', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 10:44:24', '1');
INSERT INTO `x_log` VALUES ('1977', '新增操作', '上架商品:西服套装男三件套秋季新款商务修身职业正装男士西装新郎结婚礼服', '2023-06-09 10:44:40', '1');
INSERT INTO `x_log` VALUES ('1978', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 10:44:40', '1');
INSERT INTO `x_log` VALUES ('1979', '查询操作', '查询所有服饰类商品', '2023-06-09 10:45:06', '1');
INSERT INTO `x_log` VALUES ('1980', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 10:45:06', '1');
INSERT INTO `x_log` VALUES ('1981', '查询操作', '查询所有服饰类商品', '2023-06-09 14:34:19', '1');
INSERT INTO `x_log` VALUES ('1982', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 14:34:19', '1');
INSERT INTO `x_log` VALUES ('1983', '查询操作', '查询所有服饰类商品', '2023-06-09 14:53:35', '1');
INSERT INTO `x_log` VALUES ('1984', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 14:53:35', '1');
INSERT INTO `x_log` VALUES ('1985', '新增操作', '上架商品:AIR4-蓝白', '2023-06-09 14:54:29', '1');
INSERT INTO `x_log` VALUES ('1986', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 14:54:29', '1');
INSERT INTO `x_log` VALUES ('1987', '查询操作', '查询所有服饰类商品', '2023-06-09 14:57:02', '1');
INSERT INTO `x_log` VALUES ('1988', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 14:57:02', '1');
INSERT INTO `x_log` VALUES ('1989', '查询操作', '查询所有服饰类商品', '2023-06-09 14:58:00', '1');
INSERT INTO `x_log` VALUES ('1990', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 14:58:00', '1');
INSERT INTO `x_log` VALUES ('1991', '查询操作', '查询所有服饰类商品', '2023-06-09 14:59:18', '1');
INSERT INTO `x_log` VALUES ('1992', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 14:59:18', '1');
INSERT INTO `x_log` VALUES ('1993', '查询操作', '查询所有服饰类商品', '2023-06-09 15:00:52', '1');
INSERT INTO `x_log` VALUES ('1994', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 15:00:52', '1');
INSERT INTO `x_log` VALUES ('1995', '查询操作', '查询所有服饰类商品', '2023-06-09 15:01:03', '1');
INSERT INTO `x_log` VALUES ('1996', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 15:01:03', '1');
INSERT INTO `x_log` VALUES ('1997', '查询操作', '查询所有服饰类商品', '2023-06-09 15:03:04', '1');
INSERT INTO `x_log` VALUES ('1998', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 15:03:04', '1');
INSERT INTO `x_log` VALUES ('1999', '查询操作', '查询所有服饰类商品', '2023-06-09 15:03:12', '1');
INSERT INTO `x_log` VALUES ('2000', '查询操作', '分页查询小程序端的商品信息', '2023-06-09 15:03:12', '1');
INSERT INTO `x_log` VALUES ('2001', '查询操作', '分页查询小程序端用户评论信息', '2023-06-09 15:06:30', '1');
INSERT INTO `x_log` VALUES ('2002', '查询操作', '分页查询小程序端客户订单信息', '2023-06-09 15:06:32', '1');
INSERT INTO `x_log` VALUES ('2003', '查询操作', '分页查询小程序端客户订单信息', '2023-06-09 15:08:06', '1');
INSERT INTO `x_log` VALUES ('2004', '查询操作', '分页查询小程序端客户订单信息', '2023-06-09 15:08:23', '1');
INSERT INTO `x_log` VALUES ('2005', '查询操作', '分页查询小程序端客户订单信息', '2023-06-09 15:08:34', '1');
INSERT INTO `x_log` VALUES ('2006', '查询操作', '分页查询小程序端客户订单信息', '2023-06-09 16:06:44', '1');
INSERT INTO `x_log` VALUES ('2007', '查询操作', '分页查询小程序端客户订单信息', '2023-06-09 16:07:25', '1');
INSERT INTO `x_log` VALUES ('2008', '查询操作', '分页查询小程序端客户订单信息', '2023-06-09 16:13:05', '1');
INSERT INTO `x_log` VALUES ('2009', '查询操作', '分页查询小程序端客户订单信息', '2023-06-09 16:14:32', '1');
INSERT INTO `x_log` VALUES ('2010', '查询操作', '分页查询小程序端客户订单信息', '2023-06-09 16:16:07', '1');
INSERT INTO `x_log` VALUES ('2011', '查询操作', '分页查询小程序端客户订单信息', '2023-06-09 16:16:26', '1');
INSERT INTO `x_log` VALUES ('2012', '查询操作', '分页查询小程序端客户订单信息', '2023-06-09 16:17:08', '1');
INSERT INTO `x_log` VALUES ('2013', '查询操作', '分页查询小程序端客户订单信息', '2023-06-09 16:18:19', '1');
INSERT INTO `x_log` VALUES ('2014', '查询操作', '分页查询小程序端客户订单信息', '2023-06-09 19:00:36', '1');
INSERT INTO `x_log` VALUES ('2015', '查询操作', '分页查询小程序端客户订单信息', '2023-06-09 19:00:49', '1');
INSERT INTO `x_log` VALUES ('2016', '查询操作', '分页查询小程序端客户订单信息', '2023-06-09 19:00:54', '1');
INSERT INTO `x_log` VALUES ('2017', '查询操作', '分页查询小程序端客户订单信息', '2023-06-09 19:18:44', '1');
INSERT INTO `x_log` VALUES ('2018', '查询操作', '查询按日统计', '2023-06-09 19:18:51', '1');
INSERT INTO `x_log` VALUES ('2019', '查询操作', '查询商品类别信息', '2023-06-09 19:55:05', '1');
INSERT INTO `x_log` VALUES ('2020', '查询操作', '查询所有客户', '2023-06-09 19:55:05', '1');
INSERT INTO `x_log` VALUES ('2021', '查询操作', '分页查询商品信息', '2023-06-09 19:55:05', '1');
INSERT INTO `x_log` VALUES ('2022', '查询操作', '查询商品类别信息', '2023-06-09 19:55:43', '1');
INSERT INTO `x_log` VALUES ('2023', '查询操作', '查询所有客户', '2023-06-09 19:55:43', '1');
INSERT INTO `x_log` VALUES ('2024', '查询操作', '分页查询商品信息', '2023-06-09 19:55:43', '1');
INSERT INTO `x_log` VALUES ('2025', '查询操作', '查询按日统计', '2023-06-12 21:28:49', '1');
INSERT INTO `x_log` VALUES ('2026', '查询操作', '查询商品类别信息', '2023-06-12 21:28:59', '1');
INSERT INTO `x_log` VALUES ('2027', '查询操作', '分页查询商品信息', '2023-06-12 21:28:59', '1');
INSERT INTO `x_log` VALUES ('2028', '查询操作', '查询商品类别信息', '2023-06-12 21:29:20', '1');
INSERT INTO `x_log` VALUES ('2029', '查询操作', '分页查询商品信息', '2023-06-12 21:29:20', '1');
INSERT INTO `x_log` VALUES ('2030', '查询操作', '查询所有客户', '2023-06-12 21:29:20', '1');
INSERT INTO `x_log` VALUES ('2031', '查询操作', '分页查询客户统计', '2023-06-12 21:29:20', '1');
INSERT INTO `x_log` VALUES ('2032', '查询操作', '查询销售商品:加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '2023-06-12 21:29:23', '1');
INSERT INTO `x_log` VALUES ('2033', '查询操作', '查询所有用户', '2023-06-12 21:29:50', '1');
INSERT INTO `x_log` VALUES ('2034', '查询操作', '分页查询角色信息', '2023-06-12 21:30:08', '1');
INSERT INTO `x_log` VALUES ('2035', '查询操作', '查询所有角色', '2023-06-12 21:30:14', '1');
INSERT INTO `x_log` VALUES ('2036', '查询操作', '分页查询用户信息', '2023-06-12 21:30:14', '1');
INSERT INTO `x_log` VALUES ('2037', '查询操作', '查询商品类别信息', '2023-06-12 21:30:16', '1');
INSERT INTO `x_log` VALUES ('2038', '查询操作', '分页查询商品信息', '2023-06-12 21:30:16', '1');
INSERT INTO `x_log` VALUES ('2039', '查询操作', '分页查询商品信息', '2023-06-12 21:30:21', '1');
INSERT INTO `x_log` VALUES ('2040', '查询操作', '查询商品类别信息', '2023-06-12 21:30:23', '1');
INSERT INTO `x_log` VALUES ('2041', '查询操作', '分页查询商品信息', '2023-06-12 21:30:23', '1');
INSERT INTO `x_log` VALUES ('2042', '查询操作', '查询所有供应商', '2023-06-12 21:30:23', '1');
INSERT INTO `x_log` VALUES ('2043', '查询操作', '分页查询进货信息', '2023-06-12 21:30:23', '1');
INSERT INTO `x_log` VALUES ('2044', '查询操作', '查询商品类别信息', '2023-06-12 21:30:29', '1');
INSERT INTO `x_log` VALUES ('2045', '查询操作', '查询所有供应商', '2023-06-12 21:30:29', '1');
INSERT INTO `x_log` VALUES ('2046', '查询操作', '分页查询进货信息', '2023-06-12 21:30:29', '1');
INSERT INTO `x_log` VALUES ('2047', '查询操作', '分页查询商品信息', '2023-06-12 21:30:29', '1');
INSERT INTO `x_log` VALUES ('2048', '查询操作', '查询商品类别信息', '2023-06-12 21:30:39', '1');
INSERT INTO `x_log` VALUES ('2049', '查询操作', '分页查询商品信息', '2023-06-12 21:30:39', '1');
INSERT INTO `x_log` VALUES ('2050', '查询操作', '查询所有供应商', '2023-06-12 21:30:55', '1');
INSERT INTO `x_log` VALUES ('2051', '查询操作', '查询商品类别信息', '2023-06-12 21:30:55', '1');
INSERT INTO `x_log` VALUES ('2052', '查询操作', '分页查询进货信息', '2023-06-12 21:30:55', '1');
INSERT INTO `x_log` VALUES ('2053', '查询操作', '分页查询商品信息', '2023-06-12 21:30:55', '1');
INSERT INTO `x_log` VALUES ('2054', '查询操作', '分页查询进货信息', '2023-06-12 21:31:04', '1');
INSERT INTO `x_log` VALUES ('2055', '查询操作', '查询商品类别信息', '2023-06-12 21:31:06', '1');
INSERT INTO `x_log` VALUES ('2056', '查询操作', '分页查询商品信息', '2023-06-12 21:31:06', '1');
INSERT INTO `x_log` VALUES ('2057', '查询操作', '查询按日统计', '2023-06-13 13:43:36', '1');
INSERT INTO `x_log` VALUES ('2058', '查询操作', '查询按日统计', '2023-06-13 13:43:41', '1');
INSERT INTO `x_log` VALUES ('2059', '查询操作', '查询商品类别信息', '2023-06-13 13:43:45', '1');
INSERT INTO `x_log` VALUES ('2060', '查询操作', '分页查询商品销售统计', '2023-06-13 13:43:45', '1');
INSERT INTO `x_log` VALUES ('2061', '查询操作', '分页查询商品信息', '2023-06-13 13:43:45', '1');
INSERT INTO `x_log` VALUES ('2062', '查询操作', '查询所有服饰类商品', '2023-06-13 16:04:54', '1');
INSERT INTO `x_log` VALUES ('2063', '查询操作', '分页查询小程序端的商品信息', '2023-06-13 16:04:54', '1');
INSERT INTO `x_log` VALUES ('2064', '查询操作', '查询按月统计', '2023-06-14 07:08:26', '1');
INSERT INTO `x_log` VALUES ('2065', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 18:19:21', '1');
INSERT INTO `x_log` VALUES ('2066', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 18:23:39', '1');
INSERT INTO `x_log` VALUES ('2067', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 18:26:03', '1');
INSERT INTO `x_log` VALUES ('2068', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 18:29:26', '1');
INSERT INTO `x_log` VALUES ('2069', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 18:38:01', '1');
INSERT INTO `x_log` VALUES ('2070', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 20:03:04', '1');
INSERT INTO `x_log` VALUES ('2071', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 20:25:14', '1');
INSERT INTO `x_log` VALUES ('2072', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 20:25:42', '1');
INSERT INTO `x_log` VALUES ('2073', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 20:27:01', '1');
INSERT INTO `x_log` VALUES ('2074', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 20:46:23', '1');
INSERT INTO `x_log` VALUES ('2075', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 20:47:21', '1');
INSERT INTO `x_log` VALUES ('2076', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 20:48:13', '1');
INSERT INTO `x_log` VALUES ('2077', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 20:48:42', '1');
INSERT INTO `x_log` VALUES ('2078', '查询操作', '查询所有服饰类商品', '2023-06-14 20:52:01', '1');
INSERT INTO `x_log` VALUES ('2079', '查询操作', '分页查询小程序端的商品信息', '2023-06-14 20:52:01', '1');
INSERT INTO `x_log` VALUES ('2080', '查询操作', '查询商品类别信息', '2023-06-14 20:52:14', '1');
INSERT INTO `x_log` VALUES ('2081', '查询操作', '分页查询商品信息', '2023-06-14 20:52:14', '1');
INSERT INTO `x_log` VALUES ('2082', '查询操作', '查询所有服饰类商品', '2023-06-14 20:52:23', '1');
INSERT INTO `x_log` VALUES ('2083', '查询操作', '分页查询小程序端的商品信息', '2023-06-14 20:52:23', '1');
INSERT INTO `x_log` VALUES ('2084', '查询操作', '查询商品类别信息', '2023-06-14 20:52:23', '1');
INSERT INTO `x_log` VALUES ('2085', '查询操作', '分页查询商品信息', '2023-06-14 20:52:23', '1');
INSERT INTO `x_log` VALUES ('2086', '查询操作', '分页查询商品销售统计', '2023-06-14 20:52:23', '1');
INSERT INTO `x_log` VALUES ('2087', '查询操作', '查询商品类别信息', '2023-06-14 20:52:29', '1');
INSERT INTO `x_log` VALUES ('2088', '查询操作', '分页查询商品信息', '2023-06-14 20:52:29', '1');
INSERT INTO `x_log` VALUES ('2089', '新增操作', '新增商品:NB327暗红', '2023-06-14 20:54:46', '1');
INSERT INTO `x_log` VALUES ('2090', '查询操作', '分页查询商品信息', '2023-06-14 20:54:46', '1');
INSERT INTO `x_log` VALUES ('2091', '新增操作', '新增商品:NB327浅灰', '2023-06-14 20:56:33', '1');
INSERT INTO `x_log` VALUES ('2092', '查询操作', '分页查询商品信息', '2023-06-14 20:56:33', '1');
INSERT INTO `x_log` VALUES ('2093', '新增操作', '新增商品:OCSILL长袜', '2023-06-14 20:58:39', '1');
INSERT INTO `x_log` VALUES ('2094', '查询操作', '分页查询商品信息', '2023-06-14 20:58:39', '1');
INSERT INTO `x_log` VALUES ('2095', '新增操作', '新增商品:OSCILL针织毛衣', '2023-06-14 20:59:47', '1');
INSERT INTO `x_log` VALUES ('2096', '查询操作', '分页查询商品信息', '2023-06-14 20:59:47', '1');
INSERT INTO `x_log` VALUES ('2097', '新增操作', '新增商品:直筒牛仔裤', '2023-06-14 21:02:20', '1');
INSERT INTO `x_log` VALUES ('2098', '查询操作', '分页查询商品信息', '2023-06-14 21:02:20', '1');
INSERT INTO `x_log` VALUES ('2099', '查询操作', '查询商品类别信息', '2023-06-14 21:02:39', '1');
INSERT INTO `x_log` VALUES ('2100', '查询操作', '分页查询商品信息', '2023-06-14 21:02:39', '1');
INSERT INTO `x_log` VALUES ('2101', '新增操作', '新增商品:Nike经典童鞋', '2023-06-14 21:03:45', '1');
INSERT INTO `x_log` VALUES ('2102', '查询操作', '分页查询商品信息', '2023-06-14 21:03:45', '1');
INSERT INTO `x_log` VALUES ('2103', '查询操作', '查询商品类别信息', '2023-06-14 21:03:50', '1');
INSERT INTO `x_log` VALUES ('2104', '查询操作', '分页查询商品信息', '2023-06-14 21:03:50', '1');
INSERT INTO `x_log` VALUES ('2105', '新增操作', '新增商品:Nike阿甘系列童鞋', '2023-06-14 21:04:49', '1');
INSERT INTO `x_log` VALUES ('2106', '查询操作', '分页查询商品信息', '2023-06-14 21:04:49', '1');
INSERT INTO `x_log` VALUES ('2107', '查询操作', '查询商品类别信息', '2023-06-14 21:59:32', '1');
INSERT INTO `x_log` VALUES ('2108', '查询操作', '分页查询商品信息', '2023-06-14 21:59:32', '1');
INSERT INTO `x_log` VALUES ('2109', '查询操作', '查询商品类别信息', '2023-06-14 21:59:35', '1');
INSERT INTO `x_log` VALUES ('2110', '查询操作', '分页查询商品信息', '2023-06-14 21:59:35', '1');
INSERT INTO `x_log` VALUES ('2111', '查询操作', '分页查询商品销售统计', '2023-06-14 21:59:35', '1');
INSERT INTO `x_log` VALUES ('2112', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 21:59:49', '1');
INSERT INTO `x_log` VALUES ('2113', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:01:09', '1');
INSERT INTO `x_log` VALUES ('2114', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:01:09', '1');
INSERT INTO `x_log` VALUES ('2115', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:09:09', '1');
INSERT INTO `x_log` VALUES ('2116', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:09:09', '1');
INSERT INTO `x_log` VALUES ('2117', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:09:37', '1');
INSERT INTO `x_log` VALUES ('2118', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:09:37', '1');
INSERT INTO `x_log` VALUES ('2119', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:18:04', '1');
INSERT INTO `x_log` VALUES ('2120', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:18:04', '1');
INSERT INTO `x_log` VALUES ('2121', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:20:02', '1');
INSERT INTO `x_log` VALUES ('2122', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:20:02', '1');
INSERT INTO `x_log` VALUES ('2123', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:20:16', '1');
INSERT INTO `x_log` VALUES ('2124', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:20:16', '1');
INSERT INTO `x_log` VALUES ('2125', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:22:00', '1');
INSERT INTO `x_log` VALUES ('2126', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:22:00', '1');
INSERT INTO `x_log` VALUES ('2127', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:23:10', '1');
INSERT INTO `x_log` VALUES ('2128', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:23:10', '1');
INSERT INTO `x_log` VALUES ('2129', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:26:48', '1');
INSERT INTO `x_log` VALUES ('2130', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:26:48', '1');
INSERT INTO `x_log` VALUES ('2131', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:26:55', '1');
INSERT INTO `x_log` VALUES ('2132', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:26:55', '1');
INSERT INTO `x_log` VALUES ('2133', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:27:09', '1');
INSERT INTO `x_log` VALUES ('2134', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:27:09', '1');
INSERT INTO `x_log` VALUES ('2135', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:28:45', '1');
INSERT INTO `x_log` VALUES ('2136', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:28:45', '1');
INSERT INTO `x_log` VALUES ('2137', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:30:09', '1');
INSERT INTO `x_log` VALUES ('2138', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:30:09', '1');
INSERT INTO `x_log` VALUES ('2139', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:33:19', '1');
INSERT INTO `x_log` VALUES ('2140', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:33:19', '1');
INSERT INTO `x_log` VALUES ('2141', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:37:05', '1');
INSERT INTO `x_log` VALUES ('2142', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:37:05', '1');
INSERT INTO `x_log` VALUES ('2143', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:37:59', '1');
INSERT INTO `x_log` VALUES ('2144', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:37:59', '1');
INSERT INTO `x_log` VALUES ('2145', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:38:39', '1');
INSERT INTO `x_log` VALUES ('2146', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:38:39', '1');
INSERT INTO `x_log` VALUES ('2147', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:38:59', '1');
INSERT INTO `x_log` VALUES ('2148', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:38:59', '1');
INSERT INTO `x_log` VALUES ('2149', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:39:08', '1');
INSERT INTO `x_log` VALUES ('2150', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:39:08', '1');
INSERT INTO `x_log` VALUES ('2151', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:39:44', '1');
INSERT INTO `x_log` VALUES ('2152', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:39:44', '1');
INSERT INTO `x_log` VALUES ('2153', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:40:03', '1');
INSERT INTO `x_log` VALUES ('2154', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:40:03', '1');
INSERT INTO `x_log` VALUES ('2155', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-14 22:40:23', '1');
INSERT INTO `x_log` VALUES ('2156', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:40:23', '1');
INSERT INTO `x_log` VALUES ('2157', '查询操作', '优衣库销售额查询按日统计', '2023-06-14 22:44:41', '1');
INSERT INTO `x_log` VALUES ('2158', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:07:46', '1');
INSERT INTO `x_log` VALUES ('2159', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:08:17', '1');
INSERT INTO `x_log` VALUES ('2160', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:15:56', '1');
INSERT INTO `x_log` VALUES ('2161', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:15:56', '1');
INSERT INTO `x_log` VALUES ('2162', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:16:58', '1');
INSERT INTO `x_log` VALUES ('2163', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:16:58', '1');
INSERT INTO `x_log` VALUES ('2164', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:18:54', '1');
INSERT INTO `x_log` VALUES ('2165', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:18:54', '1');
INSERT INTO `x_log` VALUES ('2166', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:20:19', '1');
INSERT INTO `x_log` VALUES ('2167', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:20:19', '1');
INSERT INTO `x_log` VALUES ('2168', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:21:18', '1');
INSERT INTO `x_log` VALUES ('2169', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:21:18', '1');
INSERT INTO `x_log` VALUES ('2170', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:22:50', '1');
INSERT INTO `x_log` VALUES ('2171', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:22:50', '1');
INSERT INTO `x_log` VALUES ('2172', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:30:56', '1');
INSERT INTO `x_log` VALUES ('2173', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:30:56', '1');
INSERT INTO `x_log` VALUES ('2174', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:36:10', '1');
INSERT INTO `x_log` VALUES ('2175', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:36:10', '1');
INSERT INTO `x_log` VALUES ('2176', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:37:00', '1');
INSERT INTO `x_log` VALUES ('2177', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:37:00', '1');
INSERT INTO `x_log` VALUES ('2178', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:37:10', '1');
INSERT INTO `x_log` VALUES ('2179', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:37:10', '1');
INSERT INTO `x_log` VALUES ('2180', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:39:23', '1');
INSERT INTO `x_log` VALUES ('2181', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:39:23', '1');
INSERT INTO `x_log` VALUES ('2182', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:42:08', '1');
INSERT INTO `x_log` VALUES ('2183', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:42:08', '1');
INSERT INTO `x_log` VALUES ('2184', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:48:14', '1');
INSERT INTO `x_log` VALUES ('2185', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:48:14', '1');
INSERT INTO `x_log` VALUES ('2186', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:50:03', '1');
INSERT INTO `x_log` VALUES ('2187', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:50:03', '1');
INSERT INTO `x_log` VALUES ('2188', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:50:42', '1');
INSERT INTO `x_log` VALUES ('2189', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:50:42', '1');
INSERT INTO `x_log` VALUES ('2190', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:51:01', '1');
INSERT INTO `x_log` VALUES ('2191', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:51:01', '1');
INSERT INTO `x_log` VALUES ('2192', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:51:15', '1');
INSERT INTO `x_log` VALUES ('2193', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:51:15', '1');
INSERT INTO `x_log` VALUES ('2194', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:51:59', '1');
INSERT INTO `x_log` VALUES ('2195', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:51:59', '1');
INSERT INTO `x_log` VALUES ('2196', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:52:46', '1');
INSERT INTO `x_log` VALUES ('2197', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:52:46', '1');
INSERT INTO `x_log` VALUES ('2198', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:53:28', '1');
INSERT INTO `x_log` VALUES ('2199', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:53:28', '1');
INSERT INTO `x_log` VALUES ('2200', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:57:27', '1');
INSERT INTO `x_log` VALUES ('2201', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:57:27', '1');
INSERT INTO `x_log` VALUES ('2202', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:59:34', '1');
INSERT INTO `x_log` VALUES ('2203', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:59:34', '1');
INSERT INTO `x_log` VALUES ('2204', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 14:59:55', '1');
INSERT INTO `x_log` VALUES ('2205', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 14:59:55', '1');
INSERT INTO `x_log` VALUES ('2206', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:00:14', '1');
INSERT INTO `x_log` VALUES ('2207', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:00:14', '1');
INSERT INTO `x_log` VALUES ('2208', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:00:37', '1');
INSERT INTO `x_log` VALUES ('2209', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:00:37', '1');
INSERT INTO `x_log` VALUES ('2210', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:00:48', '1');
INSERT INTO `x_log` VALUES ('2211', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:00:48', '1');
INSERT INTO `x_log` VALUES ('2212', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:01:02', '1');
INSERT INTO `x_log` VALUES ('2213', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:01:02', '1');
INSERT INTO `x_log` VALUES ('2214', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:01:27', '1');
INSERT INTO `x_log` VALUES ('2215', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:01:27', '1');
INSERT INTO `x_log` VALUES ('2216', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:01:46', '1');
INSERT INTO `x_log` VALUES ('2217', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:01:46', '1');
INSERT INTO `x_log` VALUES ('2218', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:01:54', '1');
INSERT INTO `x_log` VALUES ('2219', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:01:54', '1');
INSERT INTO `x_log` VALUES ('2220', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:04:18', '1');
INSERT INTO `x_log` VALUES ('2221', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:04:18', '1');
INSERT INTO `x_log` VALUES ('2222', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:07:24', '1');
INSERT INTO `x_log` VALUES ('2223', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:07:24', '1');
INSERT INTO `x_log` VALUES ('2224', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:08:28', '1');
INSERT INTO `x_log` VALUES ('2225', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:08:28', '1');
INSERT INTO `x_log` VALUES ('2226', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:10:01', '1');
INSERT INTO `x_log` VALUES ('2227', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:10:01', '1');
INSERT INTO `x_log` VALUES ('2228', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:17:35', '1');
INSERT INTO `x_log` VALUES ('2229', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:17:35', '1');
INSERT INTO `x_log` VALUES ('2230', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:17:47', '1');
INSERT INTO `x_log` VALUES ('2231', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:17:47', '1');
INSERT INTO `x_log` VALUES ('2232', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:18:56', '1');
INSERT INTO `x_log` VALUES ('2233', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:18:56', '1');
INSERT INTO `x_log` VALUES ('2234', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:24:02', '1');
INSERT INTO `x_log` VALUES ('2235', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:24:02', '1');
INSERT INTO `x_log` VALUES ('2236', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:24:44', '1');
INSERT INTO `x_log` VALUES ('2237', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:24:44', '1');
INSERT INTO `x_log` VALUES ('2238', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:25:20', '1');
INSERT INTO `x_log` VALUES ('2239', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:25:20', '1');
INSERT INTO `x_log` VALUES ('2240', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:34:24', '1');
INSERT INTO `x_log` VALUES ('2241', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:34:24', '1');
INSERT INTO `x_log` VALUES ('2242', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:34:29', '1');
INSERT INTO `x_log` VALUES ('2243', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:34:29', '1');
INSERT INTO `x_log` VALUES ('2244', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:38:02', '1');
INSERT INTO `x_log` VALUES ('2245', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:38:02', '1');
INSERT INTO `x_log` VALUES ('2246', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:41:07', '1');
INSERT INTO `x_log` VALUES ('2247', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:41:07', '1');
INSERT INTO `x_log` VALUES ('2248', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:41:56', '1');
INSERT INTO `x_log` VALUES ('2249', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:41:56', '1');
INSERT INTO `x_log` VALUES ('2250', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:42:37', '1');
INSERT INTO `x_log` VALUES ('2251', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:42:37', '1');
INSERT INTO `x_log` VALUES ('2252', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:42:47', '1');
INSERT INTO `x_log` VALUES ('2253', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:42:47', '1');
INSERT INTO `x_log` VALUES ('2254', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:43:08', '1');
INSERT INTO `x_log` VALUES ('2255', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:43:08', '1');
INSERT INTO `x_log` VALUES ('2256', '查询操作', '查询按日统计', '2023-06-15 15:45:22', '1');
INSERT INTO `x_log` VALUES ('2257', '查询操作', '查询按日统计', '2023-06-15 15:45:43', '1');
INSERT INTO `x_log` VALUES ('2258', '查询操作', '查询商品类别信息', '2023-06-15 15:47:40', '1');
INSERT INTO `x_log` VALUES ('2259', '查询操作', '分页查询商品销售统计', '2023-06-15 15:47:40', '1');
INSERT INTO `x_log` VALUES ('2260', '查询操作', '分页查询商品信息', '2023-06-15 15:47:40', '1');
INSERT INTO `x_log` VALUES ('2261', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:47:46', '1');
INSERT INTO `x_log` VALUES ('2262', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:47:46', '1');
INSERT INTO `x_log` VALUES ('2263', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:48:41', '1');
INSERT INTO `x_log` VALUES ('2264', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:48:41', '1');
INSERT INTO `x_log` VALUES ('2265', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:51:08', '1');
INSERT INTO `x_log` VALUES ('2266', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:51:08', '1');
INSERT INTO `x_log` VALUES ('2267', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:52:11', '1');
INSERT INTO `x_log` VALUES ('2268', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:52:11', '1');
INSERT INTO `x_log` VALUES ('2269', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:54:50', '1');
INSERT INTO `x_log` VALUES ('2270', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:54:50', '1');
INSERT INTO `x_log` VALUES ('2271', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:55:17', '1');
INSERT INTO `x_log` VALUES ('2272', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:55:17', '1');
INSERT INTO `x_log` VALUES ('2273', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 15:56:06', '1');
INSERT INTO `x_log` VALUES ('2274', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 15:56:06', '1');
INSERT INTO `x_log` VALUES ('2275', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 16:01:33', '1');
INSERT INTO `x_log` VALUES ('2276', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 16:01:33', '1');
INSERT INTO `x_log` VALUES ('2277', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 16:03:39', '1');
INSERT INTO `x_log` VALUES ('2278', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 16:03:39', '1');
INSERT INTO `x_log` VALUES ('2279', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 16:16:35', '1');
INSERT INTO `x_log` VALUES ('2280', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 16:16:35', '1');
INSERT INTO `x_log` VALUES ('2281', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 16:16:35', '1');
INSERT INTO `x_log` VALUES ('2282', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 16:17:39', '1');
INSERT INTO `x_log` VALUES ('2283', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 16:17:39', '1');
INSERT INTO `x_log` VALUES ('2284', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 16:17:39', '1');
INSERT INTO `x_log` VALUES ('2285', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 16:18:10', '1');
INSERT INTO `x_log` VALUES ('2286', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 16:18:10', '1');
INSERT INTO `x_log` VALUES ('2287', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 16:18:10', '1');
INSERT INTO `x_log` VALUES ('2288', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 16:18:32', '1');
INSERT INTO `x_log` VALUES ('2289', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 16:18:32', '1');
INSERT INTO `x_log` VALUES ('2290', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 16:18:32', '1');
INSERT INTO `x_log` VALUES ('2291', '查询操作', '查询按日统计', '2023-06-15 16:18:53', '1');
INSERT INTO `x_log` VALUES ('2292', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 16:26:18', '1');
INSERT INTO `x_log` VALUES ('2293', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 16:26:18', '1');
INSERT INTO `x_log` VALUES ('2294', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 16:26:18', '1');
INSERT INTO `x_log` VALUES ('2295', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 16:28:21', '1');
INSERT INTO `x_log` VALUES ('2296', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 16:28:21', '1');
INSERT INTO `x_log` VALUES ('2297', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 16:28:21', '1');
INSERT INTO `x_log` VALUES ('2298', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-15 16:28:53', '1');
INSERT INTO `x_log` VALUES ('2299', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 16:28:53', '1');
INSERT INTO `x_log` VALUES ('2300', '查询操作', '优衣库销售额查询按日统计', '2023-06-15 16:28:53', '1');
INSERT INTO `x_log` VALUES ('2301', '查询操作', '查询所有角色', '2023-06-15 16:34:03', '1');
INSERT INTO `x_log` VALUES ('2302', '查询操作', '分页查询用户信息', '2023-06-15 16:34:03', '1');
INSERT INTO `x_log` VALUES ('2303', '查询操作', '查询用户:nihao', '2023-06-15 16:34:55', '1');
INSERT INTO `x_log` VALUES ('2304', '查询操作', '查询用户:nihao', '2023-06-15 16:37:32', '1');
INSERT INTO `x_log` VALUES ('2305', '修改操作', '修改用户:lisi', '2023-06-15 16:37:42', '1');
INSERT INTO `x_log` VALUES ('2306', '查询操作', '分页查询用户信息', '2023-06-15 16:37:42', '1');
INSERT INTO `x_log` VALUES ('2307', '查询操作', '查询所有角色', '2023-06-15 16:38:06', '1');
INSERT INTO `x_log` VALUES ('2308', '查询操作', '分页查询用户信息', '2023-06-15 16:38:06', '1');
INSERT INTO `x_log` VALUES ('2309', '新增操作', '添加用户:uniqlo', '2023-06-15 16:38:31', '1');
INSERT INTO `x_log` VALUES ('2310', '查询操作', '分页查询用户信息', '2023-06-15 16:38:31', '1');
INSERT INTO `x_log` VALUES ('2311', '查询操作', '分页查询角色信息', '2023-06-15 16:38:35', '1');
INSERT INTO `x_log` VALUES ('2312', '查询操作', '查询角色:uniqlo', '2023-06-15 16:38:36', '1');
INSERT INTO `x_log` VALUES ('2313', '修改操作', '修改角色:uniqlo', '2023-06-15 16:38:43', '1');
INSERT INTO `x_log` VALUES ('2314', '查询操作', '分页查询角色信息', '2023-06-15 16:38:43', '1');
INSERT INTO `x_log` VALUES ('2315', '退出操作', '退出登录', '2023-06-15 16:38:47', '1');
INSERT INTO `x_log` VALUES ('2316', '退出操作', '退出登录', '2023-06-15 16:40:49', '21');
INSERT INTO `x_log` VALUES ('2317', '查询操作', '分页查询小程序端客户订单信息', '2023-06-15 16:41:04', '21');
INSERT INTO `x_log` VALUES ('2318', '查询操作', '查询所有服饰类商品', '2023-06-15 16:41:07', '21');
INSERT INTO `x_log` VALUES ('2319', '查询操作', '分页查询小程序端的商品信息', '2023-06-15 16:41:07', '21');
INSERT INTO `x_log` VALUES ('2320', '退出操作', '退出登录', '2023-06-15 16:41:28', '21');
INSERT INTO `x_log` VALUES ('2321', '查询操作', '查询所有角色', '2023-06-15 16:44:08', '1');
INSERT INTO `x_log` VALUES ('2322', '查询操作', '分页查询用户信息', '2023-06-15 16:44:08', '1');
INSERT INTO `x_log` VALUES ('2323', '查询操作', '查询用户:uniqlo', '2023-06-15 16:44:11', '1');
INSERT INTO `x_log` VALUES ('2324', '查询操作', '分页查询角色信息', '2023-06-15 16:44:16', '1');
INSERT INTO `x_log` VALUES ('2325', '查询操作', '查询角色:uniqlo', '2023-06-15 16:44:17', '1');
INSERT INTO `x_log` VALUES ('2326', '修改操作', '修改角色:uniqlo', '2023-06-15 16:44:44', '1');
INSERT INTO `x_log` VALUES ('2327', '查询操作', '分页查询角色信息', '2023-06-15 16:44:45', '1');
INSERT INTO `x_log` VALUES ('2328', '查询操作', '查询所有角色', '2023-06-15 16:45:08', '1');
INSERT INTO `x_log` VALUES ('2329', '查询操作', '分页查询用户信息', '2023-06-15 16:45:08', '1');
INSERT INTO `x_log` VALUES ('2330', '查询操作', '分页查询角色信息', '2023-06-15 16:45:09', '1');
INSERT INTO `x_log` VALUES ('2331', '查询操作', '查询角色:normal', '2023-06-15 16:45:10', '1');
INSERT INTO `x_log` VALUES ('2332', '修改操作', '修改角色:normal', '2023-06-15 16:45:48', '1');
INSERT INTO `x_log` VALUES ('2333', '查询操作', '分页查询角色信息', '2023-06-15 16:45:48', '1');
INSERT INTO `x_log` VALUES ('2334', '查询操作', '查询角色:hr', '2023-06-15 16:45:50', '1');
INSERT INTO `x_log` VALUES ('2335', '修改操作', '修改角色:hr', '2023-06-15 16:45:56', '1');
INSERT INTO `x_log` VALUES ('2336', '查询操作', '分页查询角色信息', '2023-06-15 16:45:56', '1');
INSERT INTO `x_log` VALUES ('2337', '查询操作', '查询所有角色', '2023-06-15 16:46:00', '1');
INSERT INTO `x_log` VALUES ('2338', '查询操作', '分页查询用户信息', '2023-06-15 16:46:00', '1');
INSERT INTO `x_log` VALUES ('2339', '查询操作', '查询用户:zhangsan', '2023-06-15 16:46:03', '1');
INSERT INTO `x_log` VALUES ('2340', '查询操作', '查询用户:lisi', '2023-06-15 16:46:07', '1');
INSERT INTO `x_log` VALUES ('2341', '修改操作', '修改用户:lisi', '2023-06-15 16:46:10', '1');
INSERT INTO `x_log` VALUES ('2342', '查询操作', '分页查询用户信息', '2023-06-15 16:46:10', '1');
INSERT INTO `x_log` VALUES ('2343', '退出操作', '退出登录', '2023-06-15 16:46:13', '1');
INSERT INTO `x_log` VALUES ('2344', '退出操作', '退出登录', '2023-06-15 16:46:26', '9');
INSERT INTO `x_log` VALUES ('2345', '查询操作', '查询商品类别信息', '2023-06-15 16:54:50', '1');
INSERT INTO `x_log` VALUES ('2346', '查询操作', '查询所有供应商', '2023-06-15 16:54:50', '1');
INSERT INTO `x_log` VALUES ('2347', '查询操作', '分页查询商品信息', '2023-06-15 16:54:50', '1');
INSERT INTO `x_log` VALUES ('2348', '查询操作', '分页查询进货信息', '2023-06-15 16:54:50', '1');
INSERT INTO `x_log` VALUES ('2349', '查询操作', '查询进货商品:qq牌甜糖', '2023-06-15 16:58:25', '1');
INSERT INTO `x_log` VALUES ('2350', '查询操作', '查询所有供应商', '2023-06-17 08:00:02', '1');
INSERT INTO `x_log` VALUES ('2351', '查询操作', '查询商品类别信息', '2023-06-17 08:00:02', '1');
INSERT INTO `x_log` VALUES ('2352', '查询操作', '分页查询进货信息', '2023-06-17 08:00:02', '1');
INSERT INTO `x_log` VALUES ('2353', '查询操作', '分页查询商品信息', '2023-06-17 08:00:02', '1');
INSERT INTO `x_log` VALUES ('2354', '查询操作', '查询所有供应商', '2023-06-17 08:39:07', '1');
INSERT INTO `x_log` VALUES ('2355', '查询操作', '查询商品类别信息', '2023-06-17 08:39:07', '1');
INSERT INTO `x_log` VALUES ('2356', '查询操作', '分页查询进货信息', '2023-06-17 08:39:07', '1');
INSERT INTO `x_log` VALUES ('2357', '查询操作', '分页查询商品信息', '2023-06-17 08:39:07', '1');
INSERT INTO `x_log` VALUES ('2358', '查询操作', '查询商品类别信息', '2023-06-17 08:39:13', '1');
INSERT INTO `x_log` VALUES ('2359', '查询操作', '分页查询商品信息', '2023-06-17 08:39:13', '1');
INSERT INTO `x_log` VALUES ('2360', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-17 08:39:14', '1');
INSERT INTO `x_log` VALUES ('2361', '新增操作', '新增进货商品:Nike阿甘系列童鞋', '2023-06-17 08:40:00', '1');
INSERT INTO `x_log` VALUES ('2362', '查询操作', '分页查询商品信息', '2023-06-17 08:40:00', '1');
INSERT INTO `x_log` VALUES ('2363', '查询操作', '查询商品类别信息', '2023-06-17 08:40:02', '1');
INSERT INTO `x_log` VALUES ('2364', '查询操作', '查询所有供应商', '2023-06-17 08:40:02', '1');
INSERT INTO `x_log` VALUES ('2365', '查询操作', '分页查询进货信息', '2023-06-17 08:40:02', '1');
INSERT INTO `x_log` VALUES ('2366', '查询操作', '分页查询商品信息', '2023-06-17 08:40:02', '1');
INSERT INTO `x_log` VALUES ('2367', '查询操作', '查询商品类别信息', '2023-06-17 08:40:05', '1');
INSERT INTO `x_log` VALUES ('2368', '查询操作', '查询所有供应商', '2023-06-17 08:40:05', '1');
INSERT INTO `x_log` VALUES ('2369', '查询操作', '分页查询进货信息', '2023-06-17 08:40:05', '1');
INSERT INTO `x_log` VALUES ('2370', '查询操作', '分页查询商品信息', '2023-06-17 08:40:05', '1');
INSERT INTO `x_log` VALUES ('2371', '查询操作', '查询所有供应商', '2023-06-17 08:41:49', '1');
INSERT INTO `x_log` VALUES ('2372', '查询操作', '查询商品类别信息', '2023-06-17 08:41:49', '1');
INSERT INTO `x_log` VALUES ('2373', '查询操作', '分页查询进货信息', '2023-06-17 08:41:49', '1');
INSERT INTO `x_log` VALUES ('2374', '查询操作', '分页查询商品信息', '2023-06-17 08:41:49', '1');
INSERT INTO `x_log` VALUES ('2375', '查询操作', '查询所有供应商', '2023-06-17 08:42:22', '1');
INSERT INTO `x_log` VALUES ('2376', '查询操作', '查询商品类别信息', '2023-06-17 08:42:22', '1');
INSERT INTO `x_log` VALUES ('2377', '查询操作', '分页查询进货信息', '2023-06-17 08:42:22', '1');
INSERT INTO `x_log` VALUES ('2378', '查询操作', '分页查询商品信息', '2023-06-17 08:42:22', '1');
INSERT INTO `x_log` VALUES ('2379', '查询操作', '查询所有供应商', '2023-06-17 09:08:21', '1');
INSERT INTO `x_log` VALUES ('2380', '查询操作', '查询商品类别信息', '2023-06-17 09:08:21', '1');
INSERT INTO `x_log` VALUES ('2381', '查询操作', '分页查询商品信息', '2023-06-17 09:08:21', '1');
INSERT INTO `x_log` VALUES ('2382', '查询操作', '分页查询退货信息', '2023-06-17 09:08:21', '1');
INSERT INTO `x_log` VALUES ('2383', '查询操作', '查询所有供应商', '2023-06-17 09:12:18', '1');
INSERT INTO `x_log` VALUES ('2384', '查询操作', '查询商品类别信息', '2023-06-17 09:12:18', '1');
INSERT INTO `x_log` VALUES ('2385', '查询操作', '分页查询进货信息', '2023-06-17 09:12:18', '1');
INSERT INTO `x_log` VALUES ('2386', '查询操作', '分页查询商品信息', '2023-06-17 09:12:18', '1');
INSERT INTO `x_log` VALUES ('2387', '查询操作', '查询商品类别信息', '2023-06-17 09:12:20', '1');
INSERT INTO `x_log` VALUES ('2388', '查询操作', '分页查询商品信息', '2023-06-17 09:12:20', '1');
INSERT INTO `x_log` VALUES ('2389', '查询操作', '查询所有供应商', '2023-06-17 09:12:22', '1');
INSERT INTO `x_log` VALUES ('2390', '查询操作', '查询商品类别信息', '2023-06-17 09:12:22', '1');
INSERT INTO `x_log` VALUES ('2391', '查询操作', '分页查询进货信息', '2023-06-17 09:12:22', '1');
INSERT INTO `x_log` VALUES ('2392', '查询操作', '分页查询商品信息', '2023-06-17 09:12:22', '1');
INSERT INTO `x_log` VALUES ('2393', '查询操作', '查询商品类别信息', '2023-06-17 09:24:22', '1');
INSERT INTO `x_log` VALUES ('2394', '查询操作', '查询所有供应商', '2023-06-17 09:24:22', '1');
INSERT INTO `x_log` VALUES ('2395', '查询操作', '分页查询进货信息', '2023-06-17 09:24:22', '1');
INSERT INTO `x_log` VALUES ('2396', '查询操作', '分页查询商品信息', '2023-06-17 09:24:22', '1');
INSERT INTO `x_log` VALUES ('2397', '查询操作', '查询商品类别信息', '2023-06-17 09:24:41', '1');
INSERT INTO `x_log` VALUES ('2398', '查询操作', '查询所有供应商', '2023-06-17 09:24:41', '1');
INSERT INTO `x_log` VALUES ('2399', '查询操作', '分页查询进货信息', '2023-06-17 09:24:41', '1');
INSERT INTO `x_log` VALUES ('2400', '查询操作', '分页查询商品信息', '2023-06-17 09:24:41', '1');
INSERT INTO `x_log` VALUES ('2401', '新增操作', '新增退货商品:Nike阿甘系列童鞋', '2023-06-17 09:24:59', '1');
INSERT INTO `x_log` VALUES ('2402', '查询操作', '分页查询进货信息', '2023-06-17 09:24:59', '1');
INSERT INTO `x_log` VALUES ('2403', '查询操作', '查询商品类别信息', '2023-06-17 09:25:34', '1');
INSERT INTO `x_log` VALUES ('2404', '查询操作', '分页查询商品信息', '2023-06-17 09:25:35', '1');
INSERT INTO `x_log` VALUES ('2405', '查询操作', '查询商品类别信息', '2023-06-17 09:25:35', '1');
INSERT INTO `x_log` VALUES ('2406', '查询操作', '查询所有供应商', '2023-06-17 09:25:35', '1');
INSERT INTO `x_log` VALUES ('2407', '查询操作', '分页查询进货信息', '2023-06-17 09:25:35', '1');
INSERT INTO `x_log` VALUES ('2408', '查询操作', '分页查询商品信息', '2023-06-17 09:25:35', '1');
INSERT INTO `x_log` VALUES ('2409', '查询操作', '分页查询进货信息', '2023-06-17 09:47:20', '1');
INSERT INTO `x_log` VALUES ('2410', '查询操作', '查询所有供应商', '2023-06-17 09:47:20', '1');
INSERT INTO `x_log` VALUES ('2411', '查询操作', '查询商品类别信息', '2023-06-17 09:47:20', '1');
INSERT INTO `x_log` VALUES ('2412', '查询操作', '分页查询商品信息', '2023-06-17 09:47:20', '1');
INSERT INTO `x_log` VALUES ('2413', '查询操作', '查询所有供应商', '2023-06-17 09:53:11', '1');
INSERT INTO `x_log` VALUES ('2414', '查询操作', '查询商品类别信息', '2023-06-17 09:53:11', '1');
INSERT INTO `x_log` VALUES ('2415', '查询操作', '分页查询进货信息', '2023-06-17 09:53:11', '1');
INSERT INTO `x_log` VALUES ('2416', '查询操作', '分页查询商品信息', '2023-06-17 09:53:11', '1');
INSERT INTO `x_log` VALUES ('2417', '查询操作', '查询商品类别信息', '2023-06-17 09:54:35', '1');
INSERT INTO `x_log` VALUES ('2418', '查询操作', '分页查询进货信息', '2023-06-17 09:54:35', '1');
INSERT INTO `x_log` VALUES ('2419', '查询操作', '查询所有供应商', '2023-06-17 09:54:35', '1');
INSERT INTO `x_log` VALUES ('2420', '查询操作', '分页查询商品信息', '2023-06-17 09:54:35', '1');
INSERT INTO `x_log` VALUES ('2421', '查询操作', '查询商品类别信息', '2023-06-17 22:10:59', '1');
INSERT INTO `x_log` VALUES ('2422', '查询操作', '查询所有客户', '2023-06-17 22:10:59', '1');
INSERT INTO `x_log` VALUES ('2423', '查询操作', '分页查询商品信息', '2023-06-17 22:10:59', '1');
INSERT INTO `x_log` VALUES ('2424', '查询操作', '查询商品类别信息', '2023-06-17 22:11:04', '1');
INSERT INTO `x_log` VALUES ('2425', '查询操作', '分页查询商品信息', '2023-06-17 22:11:04', '1');
INSERT INTO `x_log` VALUES ('2426', '查询操作', '查询所有供应商', '2023-06-17 22:11:04', '1');
INSERT INTO `x_log` VALUES ('2427', '查询操作', '分页查询进货信息', '2023-06-17 22:11:04', '1');
INSERT INTO `x_log` VALUES ('2428', '查询操作', '分页查询角色信息', '2023-06-17 22:12:24', '1');
INSERT INTO `x_log` VALUES ('2429', '查询操作', '查询所有角色', '2023-06-17 22:12:38', '1');
INSERT INTO `x_log` VALUES ('2430', '查询操作', '分页查询用户信息', '2023-06-17 22:12:38', '1');
INSERT INTO `x_log` VALUES ('2431', '查询操作', '分页查询角色信息', '2023-06-17 22:12:43', '1');
INSERT INTO `x_log` VALUES ('2432', '查询操作', '查询所有角色', '2023-06-17 22:13:01', '1');
INSERT INTO `x_log` VALUES ('2433', '查询操作', '分页查询用户信息', '2023-06-17 22:13:01', '1');
INSERT INTO `x_log` VALUES ('2434', '查询操作', '分页查询角色信息', '2023-06-17 22:13:05', '1');
INSERT INTO `x_log` VALUES ('2435', '查询操作', '查询所有角色', '2023-06-17 22:13:08', '1');
INSERT INTO `x_log` VALUES ('2436', '查询操作', '分页查询用户信息', '2023-06-17 22:13:08', '1');
INSERT INTO `x_log` VALUES ('2437', '查询操作', '分页查询角色信息', '2023-06-17 22:13:08', '1');
INSERT INTO `x_log` VALUES ('2438', '查询操作', '查询所有用户', '2023-06-17 22:15:05', '1');
INSERT INTO `x_log` VALUES ('2439', '查询操作', '分页查询商品信息', '2023-06-17 22:17:02', '1');
INSERT INTO `x_log` VALUES ('2440', '查询操作', '分页查询进货信息', '2023-06-17 22:17:02', '1');
INSERT INTO `x_log` VALUES ('2441', '查询操作', '查询商品类别信息', '2023-06-17 22:17:02', '1');
INSERT INTO `x_log` VALUES ('2442', '查询操作', '查询所有供应商', '2023-06-17 22:17:02', '1');
INSERT INTO `x_log` VALUES ('2443', '查询操作', '查询商品类别信息', '2023-06-17 22:23:24', '1');
INSERT INTO `x_log` VALUES ('2444', '查询操作', '查询所有供应商', '2023-06-17 22:23:24', '1');
INSERT INTO `x_log` VALUES ('2445', '查询操作', '分页查询商品信息', '2023-06-17 22:23:24', '1');
INSERT INTO `x_log` VALUES ('2446', '查询操作', '分页查询进货信息', '2023-06-17 22:23:24', '1');
INSERT INTO `x_log` VALUES ('2447', '查询操作', '查询商品类别信息', '2023-06-17 22:23:24', '1');
INSERT INTO `x_log` VALUES ('2448', '查询操作', '查询所有供应商', '2023-06-17 22:23:24', '1');
INSERT INTO `x_log` VALUES ('2449', '查询操作', '分页查询进货信息', '2023-06-17 22:23:24', '1');
INSERT INTO `x_log` VALUES ('2450', '查询操作', '分页查询商品信息', '2023-06-17 22:23:24', '1');
INSERT INTO `x_log` VALUES ('2451', '新增操作', '新增退货商品:Nike阿甘系列童鞋', '2023-06-17 22:23:28', '1');
INSERT INTO `x_log` VALUES ('2452', '查询操作', '分页查询进货信息', '2023-06-17 22:23:28', '1');
INSERT INTO `x_log` VALUES ('2453', '查询操作', '查询商品类别信息', '2023-06-17 22:23:50', '1');
INSERT INTO `x_log` VALUES ('2454', '查询操作', '分页查询商品信息', '2023-06-17 22:23:50', '1');
INSERT INTO `x_log` VALUES ('2455', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-17 22:23:51', '1');
INSERT INTO `x_log` VALUES ('2456', '新增操作', '新增进货商品:Nike阿甘系列童鞋', '2023-06-17 22:24:43', '1');
INSERT INTO `x_log` VALUES ('2457', '查询操作', '分页查询商品信息', '2023-06-17 22:24:43', '1');
INSERT INTO `x_log` VALUES ('2458', '查询操作', '查询所有供应商', '2023-06-17 22:24:57', '1');
INSERT INTO `x_log` VALUES ('2459', '查询操作', '查询商品类别信息', '2023-06-17 22:24:57', '1');
INSERT INTO `x_log` VALUES ('2460', '查询操作', '分页查询进货信息', '2023-06-17 22:24:57', '1');
INSERT INTO `x_log` VALUES ('2461', '查询操作', '分页查询商品信息', '2023-06-17 22:24:57', '1');
INSERT INTO `x_log` VALUES ('2462', '新增操作', '新增退货商品:Nike阿甘系列童鞋', '2023-06-17 22:25:29', '1');
INSERT INTO `x_log` VALUES ('2463', '查询操作', '分页查询进货信息', '2023-06-17 22:25:29', '1');
INSERT INTO `x_log` VALUES ('2464', '查询操作', '查询商品类别信息', '2023-06-17 22:33:54', '1');
INSERT INTO `x_log` VALUES ('2465', '查询操作', '分页查询商品信息', '2023-06-17 22:33:54', '1');
INSERT INTO `x_log` VALUES ('2466', '查询操作', '查询所有客户', '2023-06-17 22:33:54', '1');
INSERT INTO `x_log` VALUES ('2467', '查询操作', '查询商品类别信息', '2023-06-18 14:19:14', '1');
INSERT INTO `x_log` VALUES ('2468', '查询操作', '查询所有客户', '2023-06-18 14:19:14', '1');
INSERT INTO `x_log` VALUES ('2469', '查询操作', '分页查询商品信息', '2023-06-18 14:19:14', '1');
INSERT INTO `x_log` VALUES ('2470', '查询操作', '查询商品类别信息', '2023-06-18 14:20:24', '1');
INSERT INTO `x_log` VALUES ('2471', '查询操作', '查询所有客户', '2023-06-18 14:20:24', '1');
INSERT INTO `x_log` VALUES ('2472', '查询操作', '分页查询商品信息', '2023-06-18 14:20:24', '1');
INSERT INTO `x_log` VALUES ('2473', '查询操作', '查询商品类别信息', '2023-06-18 14:22:13', '1');
INSERT INTO `x_log` VALUES ('2474', '查询操作', '分页查询商品信息', '2023-06-18 14:22:13', '1');
INSERT INTO `x_log` VALUES ('2475', '查询操作', '查询所有供应商', '2023-06-18 14:22:13', '1');
INSERT INTO `x_log` VALUES ('2476', '查询操作', '分页查询进货信息', '2023-06-18 14:22:13', '1');
INSERT INTO `x_log` VALUES ('2477', '查询操作', '查询商品类别信息', '2023-06-18 14:22:15', '1');
INSERT INTO `x_log` VALUES ('2478', '查询操作', '查询所有客户', '2023-06-18 14:22:15', '1');
INSERT INTO `x_log` VALUES ('2479', '查询操作', '分页查询商品信息', '2023-06-18 14:22:15', '1');
INSERT INTO `x_log` VALUES ('2480', '查询操作', '查询所有客户', '2023-06-18 14:22:51', '1');
INSERT INTO `x_log` VALUES ('2481', '查询操作', '查询商品类别信息', '2023-06-18 14:22:51', '1');
INSERT INTO `x_log` VALUES ('2482', '查询操作', '分页查询商品信息', '2023-06-18 14:22:51', '1');
INSERT INTO `x_log` VALUES ('2483', '查询操作', '查询商品类别信息', '2023-06-18 14:53:30', '1');
INSERT INTO `x_log` VALUES ('2484', '查询操作', '查询所有客户', '2023-06-18 14:53:30', '1');
INSERT INTO `x_log` VALUES ('2485', '查询操作', '分页查询商品信息', '2023-06-18 14:53:30', '1');
INSERT INTO `x_log` VALUES ('2486', '查询操作', '查询所有客户', '2023-06-18 14:54:40', '1');
INSERT INTO `x_log` VALUES ('2487', '查询操作', '查询商品类别信息', '2023-06-18 14:54:40', '1');
INSERT INTO `x_log` VALUES ('2488', '查询操作', '分页查询商品信息', '2023-06-18 14:54:40', '1');
INSERT INTO `x_log` VALUES ('2489', '查询操作', '查询商品类别信息', '2023-06-18 14:54:44', '1');
INSERT INTO `x_log` VALUES ('2490', '查询操作', '分页查询商品信息', '2023-06-18 14:54:44', '1');
INSERT INTO `x_log` VALUES ('2491', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-18 14:54:46', '1');
INSERT INTO `x_log` VALUES ('2492', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-18 14:55:00', '1');
INSERT INTO `x_log` VALUES ('2493', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-18 14:55:27', '1');
INSERT INTO `x_log` VALUES ('2494', '查询操作', '分页查询商品信息', '2023-06-18 14:55:44', '1');
INSERT INTO `x_log` VALUES ('2495', '查询操作', '查询所有客户', '2023-06-18 14:55:46', '1');
INSERT INTO `x_log` VALUES ('2496', '查询操作', '查询商品类别信息', '2023-06-18 14:55:46', '1');
INSERT INTO `x_log` VALUES ('2497', '查询操作', '分页查询商品信息', '2023-06-18 14:55:46', '1');
INSERT INTO `x_log` VALUES ('2498', '查询操作', '查询所有客户', '2023-06-18 15:11:03', '1');
INSERT INTO `x_log` VALUES ('2499', '查询操作', '查询商品类别信息', '2023-06-18 15:11:03', '1');
INSERT INTO `x_log` VALUES ('2500', '查询操作', '分页查询商品信息', '2023-06-18 15:11:03', '1');
INSERT INTO `x_log` VALUES ('2501', '新增操作', '客户退货商品:Nike阿甘系列童鞋', '2023-06-18 15:11:05', '1');
INSERT INTO `x_log` VALUES ('2502', '查询操作', '查询商品类别信息', '2023-06-18 15:11:44', '1');
INSERT INTO `x_log` VALUES ('2503', '查询操作', '分页查询商品信息', '2023-06-18 15:11:44', '1');
INSERT INTO `x_log` VALUES ('2504', '查询操作', '查询所有供应商', '2023-06-18 15:11:44', '1');
INSERT INTO `x_log` VALUES ('2505', '查询操作', '分页查询进货信息', '2023-06-18 15:11:44', '1');
INSERT INTO `x_log` VALUES ('2506', '查询操作', '查询进货商品:qq牌甜糖', '2023-06-18 15:11:45', '1');
INSERT INTO `x_log` VALUES ('2507', '查询操作', '查询进货商品:qq牌甜糖', '2023-06-18 15:11:46', '1');
INSERT INTO `x_log` VALUES ('2508', '查询操作', '查询进货商品:qq牌甜糖', '2023-06-18 15:11:47', '1');
INSERT INTO `x_log` VALUES ('2509', '查询操作', '查询进货商品:qq牌甜糖', '2023-06-18 15:11:47', '1');
INSERT INTO `x_log` VALUES ('2510', '查询操作', '查询进货商品:qq牌甜糖', '2023-06-18 15:11:48', '1');
INSERT INTO `x_log` VALUES ('2511', '查询操作', '查询进货商品:qq牌甜糖', '2023-06-18 15:11:48', '1');
INSERT INTO `x_log` VALUES ('2512', '查询操作', '查询所有供应商', '2023-06-18 15:14:02', '1');
INSERT INTO `x_log` VALUES ('2513', '查询操作', '分页查询商品信息', '2023-06-18 15:14:02', '1');
INSERT INTO `x_log` VALUES ('2514', '查询操作', '查询商品类别信息', '2023-06-18 15:14:02', '1');
INSERT INTO `x_log` VALUES ('2515', '查询操作', '分页查询进货信息', '2023-06-18 15:14:02', '1');
INSERT INTO `x_log` VALUES ('2516', '查询操作', '查询进货商品:qq牌甜糖', '2023-06-18 15:14:03', '1');
INSERT INTO `x_log` VALUES ('2517', '查询操作', '查询商品类别信息', '2023-06-18 15:14:28', '1');
INSERT INTO `x_log` VALUES ('2518', '查询操作', '查询所有供应商', '2023-06-18 15:14:28', '1');
INSERT INTO `x_log` VALUES ('2519', '查询操作', '分页查询进货信息', '2023-06-18 15:14:28', '1');
INSERT INTO `x_log` VALUES ('2520', '查询操作', '分页查询商品信息', '2023-06-18 15:14:28', '1');
INSERT INTO `x_log` VALUES ('2521', '查询操作', '查询商品类别信息', '2023-06-18 15:14:29', '1');
INSERT INTO `x_log` VALUES ('2522', '查询操作', '分页查询商品信息', '2023-06-18 15:14:29', '1');
INSERT INTO `x_log` VALUES ('2523', '查询操作', '查询所有客户', '2023-06-18 15:14:31', '1');
INSERT INTO `x_log` VALUES ('2524', '查询操作', '查询商品类别信息', '2023-06-18 15:14:31', '1');
INSERT INTO `x_log` VALUES ('2525', '查询操作', '分页查询商品信息', '2023-06-18 15:14:31', '1');
INSERT INTO `x_log` VALUES ('2526', '查询操作', '查询销售商品:台湾进口膨化零食品张君雅小妹妹日式串烧丸子80g*2', '2023-06-18 15:14:31', '1');
INSERT INTO `x_log` VALUES ('2527', '查询操作', '查询销售商品:台湾进口膨化零食品张君雅小妹妹日式串烧丸子80g*2', '2023-06-18 15:14:35', '1');
INSERT INTO `x_log` VALUES ('2528', '查询操作', '查询所有供应商', '2023-06-18 15:14:44', '1');
INSERT INTO `x_log` VALUES ('2529', '查询操作', '查询商品类别信息', '2023-06-18 15:14:44', '1');
INSERT INTO `x_log` VALUES ('2530', '查询操作', '分页查询进货信息', '2023-06-18 15:14:44', '1');
INSERT INTO `x_log` VALUES ('2531', '查询操作', '分页查询商品信息', '2023-06-18 15:14:44', '1');
INSERT INTO `x_log` VALUES ('2532', '查询操作', '查询商品类别信息', '2023-06-18 15:14:45', '1');
INSERT INTO `x_log` VALUES ('2533', '查询操作', '分页查询商品信息', '2023-06-18 15:14:45', '1');
INSERT INTO `x_log` VALUES ('2534', '查询操作', '查询商品类别信息', '2023-06-18 15:14:48', '1');
INSERT INTO `x_log` VALUES ('2535', '查询操作', '查询所有供应商', '2023-06-18 15:14:48', '1');
INSERT INTO `x_log` VALUES ('2536', '查询操作', '分页查询进货信息', '2023-06-18 15:14:48', '1');
INSERT INTO `x_log` VALUES ('2537', '查询操作', '分页查询商品信息', '2023-06-18 15:14:48', '1');
INSERT INTO `x_log` VALUES ('2538', '查询操作', '查询进货商品:qq牌甜糖', '2023-06-18 15:14:50', '1');
INSERT INTO `x_log` VALUES ('2539', '查询操作', '查询进货商品:qq牌甜糖', '2023-06-18 15:14:51', '1');
INSERT INTO `x_log` VALUES ('2540', '查询操作', '查询所有供应商', '2023-06-18 15:18:36', '1');
INSERT INTO `x_log` VALUES ('2541', '查询操作', '查询商品类别信息', '2023-06-18 15:18:36', '1');
INSERT INTO `x_log` VALUES ('2542', '查询操作', '分页查询进货信息', '2023-06-18 15:18:36', '1');
INSERT INTO `x_log` VALUES ('2543', '查询操作', '分页查询商品信息', '2023-06-18 15:18:36', '1');
INSERT INTO `x_log` VALUES ('2544', '查询操作', '查询商品类别信息', '2023-06-18 15:18:38', '1');
INSERT INTO `x_log` VALUES ('2545', '查询操作', '查询所有客户', '2023-06-18 15:18:38', '1');
INSERT INTO `x_log` VALUES ('2546', '查询操作', '分页查询商品信息', '2023-06-18 15:18:38', '1');
INSERT INTO `x_log` VALUES ('2547', '查询操作', '查询销售商品:台湾进口膨化零食品张君雅小妹妹日式串烧丸子80g*2', '2023-06-18 15:18:38', '1');
INSERT INTO `x_log` VALUES ('2548', '查询操作', '查询所有客户', '2023-06-18 15:19:00', '1');
INSERT INTO `x_log` VALUES ('2549', '查询操作', '查询商品类别信息', '2023-06-18 15:19:00', '1');
INSERT INTO `x_log` VALUES ('2550', '查询操作', '分页查询商品信息', '2023-06-18 15:19:00', '1');
INSERT INTO `x_log` VALUES ('2551', '查询操作', '查询所有客户', '2023-06-18 15:19:31', '1');
INSERT INTO `x_log` VALUES ('2552', '查询操作', '查询商品类别信息', '2023-06-18 15:19:31', '1');
INSERT INTO `x_log` VALUES ('2553', '查询操作', '分页查询商品信息', '2023-06-18 15:19:31', '1');
INSERT INTO `x_log` VALUES ('2554', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-18 15:20:03', '1');
INSERT INTO `x_log` VALUES ('2555', '查询操作', '优衣库销售额查询按日统计', '2023-06-18 15:20:03', '1');
INSERT INTO `x_log` VALUES ('2556', '查询操作', '优衣库销售额查询按日统计', '2023-06-18 15:20:03', '1');
INSERT INTO `x_log` VALUES ('2557', '查询操作', '查询商品类别信息', '2023-06-20 22:18:42', '1');
INSERT INTO `x_log` VALUES ('2558', '查询操作', '分页查询商品信息', '2023-06-20 22:18:42', '1');
INSERT INTO `x_log` VALUES ('2559', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-20 22:18:44', '1');
INSERT INTO `x_log` VALUES ('2560', '查询操作', '查询所有供应商', '2023-06-20 22:26:52', '1');
INSERT INTO `x_log` VALUES ('2561', '查询操作', '查询商品类别信息', '2023-06-20 22:26:52', '1');
INSERT INTO `x_log` VALUES ('2562', '查询操作', '分页查询商品信息', '2023-06-20 22:26:52', '1');
INSERT INTO `x_log` VALUES ('2563', '查询操作', '分页查询进货信息', '2023-06-20 22:26:52', '1');
INSERT INTO `x_log` VALUES ('2564', '查询操作', '查询商品类别信息', '2023-06-20 22:52:00', '1');
INSERT INTO `x_log` VALUES ('2565', '查询操作', '分页查询商品信息', '2023-06-20 22:52:00', '1');
INSERT INTO `x_log` VALUES ('2566', '查询操作', '查询所有角色', '2023-06-20 22:54:09', '1');
INSERT INTO `x_log` VALUES ('2567', '查询操作', '分页查询用户信息', '2023-06-20 22:54:09', '1');
INSERT INTO `x_log` VALUES ('2568', '查询操作', '查询用户:uniqlo', '2023-06-20 22:54:11', '1');
INSERT INTO `x_log` VALUES ('2569', '查询操作', '分页查询角色信息', '2023-06-20 22:57:01', '1');
INSERT INTO `x_log` VALUES ('2570', '查询操作', '查询商品类别信息', '2023-06-20 22:57:26', '1');
INSERT INTO `x_log` VALUES ('2571', '查询操作', '分页查询商品信息', '2023-06-20 22:57:26', '1');
INSERT INTO `x_log` VALUES ('2572', '查询操作', '查询商品类别信息', '2023-06-20 22:57:40', '1');
INSERT INTO `x_log` VALUES ('2573', '查询操作', '查询所有供应商', '2023-06-20 22:57:40', '1');
INSERT INTO `x_log` VALUES ('2574', '查询操作', '分页查询商品信息', '2023-06-20 22:57:40', '1');
INSERT INTO `x_log` VALUES ('2575', '查询操作', '分页查询进货信息', '2023-06-20 22:57:40', '1');
INSERT INTO `x_log` VALUES ('2576', '查询操作', '查询所有供应商', '2023-06-20 22:57:44', '1');
INSERT INTO `x_log` VALUES ('2577', '查询操作', '查询商品类别信息', '2023-06-20 22:57:44', '1');
INSERT INTO `x_log` VALUES ('2578', '查询操作', '分页查询进货信息', '2023-06-20 22:57:44', '1');
INSERT INTO `x_log` VALUES ('2579', '查询操作', '分页查询商品信息', '2023-06-20 22:57:44', '1');
INSERT INTO `x_log` VALUES ('2580', '查询操作', '查询进货商品:qq牌甜糖', '2023-06-20 22:57:47', '1');
INSERT INTO `x_log` VALUES ('2581', '查询操作', '查询所有供应商', '2023-06-20 22:57:57', '1');
INSERT INTO `x_log` VALUES ('2582', '查询操作', '查询商品类别信息', '2023-06-20 22:57:57', '1');
INSERT INTO `x_log` VALUES ('2583', '查询操作', '分页查询商品信息', '2023-06-20 22:57:57', '1');
INSERT INTO `x_log` VALUES ('2584', '查询操作', '分页查询退货信息', '2023-06-20 22:57:57', '1');
INSERT INTO `x_log` VALUES ('2585', '查询操作', '查询商品类别信息', '2023-06-20 22:58:00', '1');
INSERT INTO `x_log` VALUES ('2586', '查询操作', '分页查询商品信息', '2023-06-20 22:58:00', '1');
INSERT INTO `x_log` VALUES ('2587', '查询操作', '查询商品类别信息', '2023-06-20 22:58:02', '1');
INSERT INTO `x_log` VALUES ('2588', '查询操作', '查询所有供应商', '2023-06-20 22:58:02', '1');
INSERT INTO `x_log` VALUES ('2589', '查询操作', '分页查询商品信息', '2023-06-20 22:58:02', '1');
INSERT INTO `x_log` VALUES ('2590', '查询操作', '分页查询供应商统计', '2023-06-20 22:58:02', '1');
INSERT INTO `x_log` VALUES ('2591', '查询操作', '查询商品类别信息', '2023-06-20 22:58:09', '1');
INSERT INTO `x_log` VALUES ('2592', '查询操作', '分页查询商品信息', '2023-06-20 22:58:09', '1');
INSERT INTO `x_log` VALUES ('2593', '查询操作', '分页查询商品销售统计', '2023-06-20 22:58:09', '1');
INSERT INTO `x_log` VALUES ('2594', '查询操作', '查询商品类别信息', '2023-06-20 22:58:10', '1');
INSERT INTO `x_log` VALUES ('2595', '查询操作', '分页查询商品信息', '2023-06-20 22:58:10', '1');
INSERT INTO `x_log` VALUES ('2596', '查询操作', '分页查询商品采购信息', '2023-06-20 22:58:10', '1');
INSERT INTO `x_log` VALUES ('2597', '查询操作', '查询商品类别信息', '2023-06-20 22:58:15', '1');
INSERT INTO `x_log` VALUES ('2598', '查询操作', '分页查询商品信息', '2023-06-20 22:58:15', '1');
INSERT INTO `x_log` VALUES ('2599', '查询操作', '查询商品类别信息', '2023-06-20 22:58:18', '1');
INSERT INTO `x_log` VALUES ('2600', '查询操作', '分页查询客户', '2023-06-20 22:58:18', '1');
INSERT INTO `x_log` VALUES ('2601', '查询操作', '查询商品类别信息', '2023-06-20 22:58:19', '1');
INSERT INTO `x_log` VALUES ('2602', '查询操作', '分页查询供应商信息', '2023-06-20 22:58:19', '1');
INSERT INTO `x_log` VALUES ('2603', '查询操作', '查询所有服饰类商品', '2023-06-20 22:58:22', '1');
INSERT INTO `x_log` VALUES ('2604', '查询操作', '分页查询小程序端的商品信息', '2023-06-20 22:58:22', '1');
INSERT INTO `x_log` VALUES ('2605', '查询操作', '分页查询小程序端用户评论信息', '2023-06-20 22:58:26', '1');
INSERT INTO `x_log` VALUES ('2606', '查询操作', '分页查询小程序端客户订单信息', '2023-06-20 22:58:31', '1');
INSERT INTO `x_log` VALUES ('2607', '查询操作', '优衣库销售额查询按日统计', '2023-06-20 23:01:05', '1');
INSERT INTO `x_log` VALUES ('2608', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-20 23:01:05', '1');
INSERT INTO `x_log` VALUES ('2609', '查询操作', '优衣库销售额查询按日统计', '2023-06-20 23:01:05', '1');
INSERT INTO `x_log` VALUES ('2610', '查询操作', '查询按日统计', '2023-06-20 23:01:26', '1');
INSERT INTO `x_log` VALUES ('2611', '查询操作', '优衣库销售额查询按日统计', '2023-06-20 23:01:36', '1');
INSERT INTO `x_log` VALUES ('2612', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-20 23:01:36', '1');
INSERT INTO `x_log` VALUES ('2613', '查询操作', '优衣库销售额查询按日统计', '2023-06-20 23:01:36', '1');
INSERT INTO `x_log` VALUES ('2614', '查询操作', '优衣库销售额查询按日统计', '2023-06-21 09:04:51', '1');
INSERT INTO `x_log` VALUES ('2615', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-21 09:04:51', '1');
INSERT INTO `x_log` VALUES ('2616', '查询操作', '优衣库销售额查询按日统计', '2023-06-21 09:04:51', '1');
INSERT INTO `x_log` VALUES ('2617', '查询操作', '优衣库销售额查询按日统计', '2023-06-21 10:51:59', '1');
INSERT INTO `x_log` VALUES ('2618', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-21 10:51:59', '1');
INSERT INTO `x_log` VALUES ('2619', '查询操作', '优衣库销售额查询按日统计', '2023-06-21 10:51:59', '1');
INSERT INTO `x_log` VALUES ('2620', '查询操作', '查询按月统计', '2023-06-21 10:52:11', '1');
INSERT INTO `x_log` VALUES ('2621', '查询操作', '查询商品类别信息', '2023-06-21 10:53:39', '1');
INSERT INTO `x_log` VALUES ('2622', '查询操作', '分页查询商品信息', '2023-06-21 10:53:39', '1');
INSERT INTO `x_log` VALUES ('2623', '查询操作', '查询商品类别信息', '2023-06-21 10:53:40', '1');
INSERT INTO `x_log` VALUES ('2624', '查询操作', '分页查询商品信息', '2023-06-21 10:53:40', '1');
INSERT INTO `x_log` VALUES ('2625', '查询操作', '查询所有供应商', '2023-06-21 10:53:40', '1');
INSERT INTO `x_log` VALUES ('2626', '查询操作', '分页查询进货信息', '2023-06-21 10:53:40', '1');
INSERT INTO `x_log` VALUES ('2627', '查询操作', '分页查询进货信息', '2023-06-21 10:53:46', '1');
INSERT INTO `x_log` VALUES ('2628', '查询操作', '查询商品类别信息', '2023-06-21 10:54:04', '1');
INSERT INTO `x_log` VALUES ('2629', '查询操作', '查询所有供应商', '2023-06-21 10:54:04', '1');
INSERT INTO `x_log` VALUES ('2630', '查询操作', '分页查询进货信息', '2023-06-21 10:54:04', '1');
INSERT INTO `x_log` VALUES ('2631', '查询操作', '分页查询商品信息', '2023-06-21 10:54:04', '1');
INSERT INTO `x_log` VALUES ('2632', '退出操作', '退出登录', '2023-06-21 17:10:59', null);
INSERT INTO `x_log` VALUES ('2633', '退出操作', '退出登录', '2023-06-21 17:24:18', '1');
INSERT INTO `x_log` VALUES ('2634', '退出操作', '退出登录', '2023-06-21 17:39:43', '1');
INSERT INTO `x_log` VALUES ('2635', '查询操作', '查询所有角色', '2023-06-22 08:37:36', '1');
INSERT INTO `x_log` VALUES ('2636', '查询操作', '分页查询用户信息', '2023-06-22 08:37:36', '1');
INSERT INTO `x_log` VALUES ('2637', '查询操作', '分页查询角色信息', '2023-06-22 08:37:39', '1');
INSERT INTO `x_log` VALUES ('2638', '查询操作', '查询所有角色', '2023-06-22 08:37:42', '1');
INSERT INTO `x_log` VALUES ('2639', '查询操作', '分页查询用户信息', '2023-06-22 08:37:42', '1');
INSERT INTO `x_log` VALUES ('2640', '查询操作', '分页查询商品信息', '2023-06-22 08:41:39', '1');
INSERT INTO `x_log` VALUES ('2641', '查询操作', '查询商品类别信息', '2023-06-22 08:41:39', '1');
INSERT INTO `x_log` VALUES ('2642', '查询操作', '查询商品类别信息', '2023-06-22 08:41:50', '1');
INSERT INTO `x_log` VALUES ('2643', '查询操作', '分页查询库存预警商品信息', '2023-06-22 08:41:50', '1');
INSERT INTO `x_log` VALUES ('2644', '查询操作', '查询商品类别信息', '2023-06-22 08:42:04', '1');
INSERT INTO `x_log` VALUES ('2645', '查询操作', '分页查询商品信息', '2023-06-22 08:42:04', '1');
INSERT INTO `x_log` VALUES ('2646', '查询操作', '分页查询报损信息', '2023-06-22 08:42:04', '1');
INSERT INTO `x_log` VALUES ('2647', '查询操作', '分页查询报溢信息', '2023-06-22 08:42:09', '1');
INSERT INTO `x_log` VALUES ('2648', '查询操作', '分页查询报损信息', '2023-06-22 08:42:16', '1');
INSERT INTO `x_log` VALUES ('2649', '查询操作', '分页查询库存信息', '2023-06-22 08:42:21', '1');
INSERT INTO `x_log` VALUES ('2650', '查询操作', '查询商品类别信息', '2023-06-22 08:43:24', '1');
INSERT INTO `x_log` VALUES ('2651', '查询操作', '分页查询商品信息', '2023-06-22 08:43:24', '1');
INSERT INTO `x_log` VALUES ('2652', '查询操作', '分页查询库存信息', '2023-06-22 08:43:39', '1');
INSERT INTO `x_log` VALUES ('2653', '查询操作', '分页查询库存信息', '2023-06-22 08:51:15', '1');
INSERT INTO `x_log` VALUES ('2654', '查询操作', '查询用户:admin', '2023-06-22 09:04:54', '1');
INSERT INTO `x_log` VALUES ('2655', '退出操作', '退出登录', '2023-06-22 09:04:58', '1');
INSERT INTO `x_log` VALUES ('2656', '查询操作', '查询商品类别信息', '2023-06-22 09:13:00', '1');
INSERT INTO `x_log` VALUES ('2657', '查询操作', '分页查询商品信息', '2023-06-22 09:13:00', '1');
INSERT INTO `x_log` VALUES ('2658', '查询操作', '分页查询商品信息', '2023-06-22 09:13:02', '1');
INSERT INTO `x_log` VALUES ('2659', '查询操作', '查询商品:Golden Field/金河田 Q8电脑音响台式多媒体家用音箱低音炮重低音', '2023-06-22 09:13:04', '1');
INSERT INTO `x_log` VALUES ('2660', '查询操作', '查询商品类别信息', '2023-06-22 09:27:48', '1');
INSERT INTO `x_log` VALUES ('2661', '查询操作', '分页查询商品信息', '2023-06-22 09:27:48', '1');
INSERT INTO `x_log` VALUES ('2662', '查询操作', '查询商品类别信息', '2023-06-22 09:27:52', '1');
INSERT INTO `x_log` VALUES ('2663', '查询操作', '分页查询商品信息', '2023-06-22 09:27:52', '1');
INSERT INTO `x_log` VALUES ('2664', '查询操作', '查询商品类别信息', '2023-06-22 09:28:05', '1');
INSERT INTO `x_log` VALUES ('2665', '查询操作', '分页查询商品信息', '2023-06-22 09:28:05', '1');
INSERT INTO `x_log` VALUES ('2666', '查询操作', '查询商品类别信息', '2023-06-22 09:33:43', '1');
INSERT INTO `x_log` VALUES ('2667', '查询操作', '分页查询商品信息', '2023-06-22 09:33:43', '1');
INSERT INTO `x_log` VALUES ('2668', '查询操作', '分页查询库存预警商品信息', '2023-06-22 09:33:48', '1');
INSERT INTO `x_log` VALUES ('2669', '查询操作', '查询商品类别信息', '2023-06-22 09:33:48', '1');
INSERT INTO `x_log` VALUES ('2670', '查询操作', '分页查询库存信息', '2023-06-22 09:34:01', '1');
INSERT INTO `x_log` VALUES ('2671', '查询操作', '分页查询库存信息', '2023-06-22 09:38:19', '1');
INSERT INTO `x_log` VALUES ('2672', '查询操作', '查询商品类别信息', '2023-06-22 09:39:30', '1');
INSERT INTO `x_log` VALUES ('2673', '查询操作', '分页查询商品信息', '2023-06-22 09:39:30', '1');
INSERT INTO `x_log` VALUES ('2674', '查询操作', '查询商品类别信息', '2023-06-22 09:39:41', '1');
INSERT INTO `x_log` VALUES ('2675', '查询操作', '分页查询商品信息', '2023-06-22 09:39:41', '1');
INSERT INTO `x_log` VALUES ('2676', '查询操作', '查询所有供应商', '2023-06-22 09:39:41', '1');
INSERT INTO `x_log` VALUES ('2677', '查询操作', '分页查询进货信息', '2023-06-22 09:39:41', '1');
INSERT INTO `x_log` VALUES ('2678', '查询操作', '查询商品类别信息', '2023-06-22 09:39:42', '1');
INSERT INTO `x_log` VALUES ('2679', '查询操作', '分页查询商品信息', '2023-06-22 09:39:42', '1');
INSERT INTO `x_log` VALUES ('2680', '查询操作', '查询商品类别信息', '2023-06-22 09:42:30', '1');
INSERT INTO `x_log` VALUES ('2681', '查询操作', '分页查询商品信息', '2023-06-22 09:42:30', '1');
INSERT INTO `x_log` VALUES ('2682', '查询操作', '查询商品类别信息', '2023-06-22 09:42:32', '1');
INSERT INTO `x_log` VALUES ('2683', '查询操作', '分页查询商品信息', '2023-06-22 09:42:32', '1');
INSERT INTO `x_log` VALUES ('2684', '查询操作', '查询商品类别信息', '2023-06-22 09:42:36', '1');
INSERT INTO `x_log` VALUES ('2685', '查询操作', '分页查询商品信息', '2023-06-22 09:42:36', '1');
INSERT INTO `x_log` VALUES ('2686', '查询操作', '查询商品类别信息', '2023-06-22 09:45:39', '1');
INSERT INTO `x_log` VALUES ('2687', '查询操作', '分页查询商品信息', '2023-06-22 09:45:39', '1');
INSERT INTO `x_log` VALUES ('2688', '查询操作', '查询商品类别信息', '2023-06-22 09:45:42', '1');
INSERT INTO `x_log` VALUES ('2689', '查询操作', '分页查询商品信息', '2023-06-22 09:45:42', '1');
INSERT INTO `x_log` VALUES ('2690', '查询操作', '查询商品类别信息', '2023-06-22 09:46:07', '1');
INSERT INTO `x_log` VALUES ('2691', '查询操作', '分页查询商品信息', '2023-06-22 09:46:07', '1');
INSERT INTO `x_log` VALUES ('2692', '查询操作', '分页查询商品信息', '2023-06-22 09:46:21', '1');
INSERT INTO `x_log` VALUES ('2693', '查询操作', '分页查询商品信息', '2023-06-22 09:46:23', '1');
INSERT INTO `x_log` VALUES ('2694', '查询操作', '查询商品类别信息', '2023-06-22 09:46:43', '1');
INSERT INTO `x_log` VALUES ('2695', '查询操作', '分页查询商品信息', '2023-06-22 09:46:43', '1');
INSERT INTO `x_log` VALUES ('2696', '查询操作', '查询商品类别信息', '2023-06-22 09:46:45', '1');
INSERT INTO `x_log` VALUES ('2697', '查询操作', '分页查询商品信息', '2023-06-22 09:46:45', '1');
INSERT INTO `x_log` VALUES ('2698', '查询操作', '查询商品类别信息', '2023-06-22 09:48:04', '1');
INSERT INTO `x_log` VALUES ('2699', '查询操作', '分页查询商品信息', '2023-06-22 09:48:04', '1');
INSERT INTO `x_log` VALUES ('2700', '查询操作', '查询商品类别信息', '2023-06-22 09:48:59', '1');
INSERT INTO `x_log` VALUES ('2701', '查询操作', '分页查询商品信息', '2023-06-22 09:48:59', '1');
INSERT INTO `x_log` VALUES ('2702', '查询操作', '查询商品类别信息', '2023-06-22 09:49:34', '1');
INSERT INTO `x_log` VALUES ('2703', '查询操作', '分页查询商品信息', '2023-06-22 09:49:34', '1');
INSERT INTO `x_log` VALUES ('2704', '查询操作', '查询商品类别信息', '2023-06-22 09:49:47', '1');
INSERT INTO `x_log` VALUES ('2705', '查询操作', '分页查询商品信息', '2023-06-22 09:49:47', '1');
INSERT INTO `x_log` VALUES ('2706', '查询操作', '查询商品类别信息', '2023-06-22 09:49:54', '1');
INSERT INTO `x_log` VALUES ('2707', '查询操作', '分页查询商品信息', '2023-06-22 09:49:54', '1');
INSERT INTO `x_log` VALUES ('2708', '查询操作', '查询商品类别信息', '2023-06-22 09:50:04', '1');
INSERT INTO `x_log` VALUES ('2709', '查询操作', '分页查询商品信息', '2023-06-22 09:50:04', '1');
INSERT INTO `x_log` VALUES ('2710', '查询操作', '查询商品类别信息', '2023-06-22 09:50:05', '1');
INSERT INTO `x_log` VALUES ('2711', '查询操作', '分页查询商品信息', '2023-06-22 09:50:05', '1');
INSERT INTO `x_log` VALUES ('2712', '查询操作', '查询商品类别信息', '2023-06-22 09:50:06', '1');
INSERT INTO `x_log` VALUES ('2713', '查询操作', '分页查询商品信息', '2023-06-22 09:50:06', '1');
INSERT INTO `x_log` VALUES ('2714', '查询操作', '查询商品类别信息', '2023-06-22 09:50:18', '1');
INSERT INTO `x_log` VALUES ('2715', '查询操作', '分页查询商品信息', '2023-06-22 09:50:18', '1');
INSERT INTO `x_log` VALUES ('2716', '查询操作', '查询商品类别信息', '2023-06-22 09:50:29', '1');
INSERT INTO `x_log` VALUES ('2717', '查询操作', '分页查询商品信息', '2023-06-22 09:50:29', '1');
INSERT INTO `x_log` VALUES ('2718', '查询操作', '查询商品类别信息', '2023-06-22 09:51:09', '1');
INSERT INTO `x_log` VALUES ('2719', '查询操作', '分页查询商品信息', '2023-06-22 09:51:09', '1');
INSERT INTO `x_log` VALUES ('2720', '查询操作', '查询商品类别信息', '2023-06-22 09:51:59', '1');
INSERT INTO `x_log` VALUES ('2721', '查询操作', '分页查询商品信息', '2023-06-22 09:51:59', '1');
INSERT INTO `x_log` VALUES ('2722', '查询操作', '查询所有供应商', '2023-06-22 09:52:13', '1');
INSERT INTO `x_log` VALUES ('2723', '查询操作', '查询商品类别信息', '2023-06-22 09:52:13', '1');
INSERT INTO `x_log` VALUES ('2724', '查询操作', '分页查询进货信息', '2023-06-22 09:52:13', '1');
INSERT INTO `x_log` VALUES ('2725', '查询操作', '分页查询商品信息', '2023-06-22 09:52:13', '1');
INSERT INTO `x_log` VALUES ('2726', '查询操作', '查询所有供应商', '2023-06-22 09:52:15', '1');
INSERT INTO `x_log` VALUES ('2727', '查询操作', '查询商品类别信息', '2023-06-22 09:52:15', '1');
INSERT INTO `x_log` VALUES ('2728', '查询操作', '分页查询商品信息', '2023-06-22 09:52:15', '1');
INSERT INTO `x_log` VALUES ('2729', '查询操作', '分页查询进货信息', '2023-06-22 09:52:15', '1');
INSERT INTO `x_log` VALUES ('2730', '查询操作', '查询所有供应商', '2023-06-22 09:52:16', '1');
INSERT INTO `x_log` VALUES ('2731', '查询操作', '查询商品类别信息', '2023-06-22 09:52:16', '1');
INSERT INTO `x_log` VALUES ('2732', '查询操作', '分页查询商品信息', '2023-06-22 09:52:16', '1');
INSERT INTO `x_log` VALUES ('2733', '查询操作', '分页查询退货信息', '2023-06-22 09:52:16', '1');
INSERT INTO `x_log` VALUES ('2734', '查询操作', '查询所有供应商', '2023-06-22 09:56:02', '1');
INSERT INTO `x_log` VALUES ('2735', '查询操作', '分页查询退货信息', '2023-06-22 09:56:02', '1');
INSERT INTO `x_log` VALUES ('2736', '查询操作', '查询商品类别信息', '2023-06-22 09:56:02', '1');
INSERT INTO `x_log` VALUES ('2737', '查询操作', '分页查询商品信息', '2023-06-22 09:56:02', '1');
INSERT INTO `x_log` VALUES ('2738', '查询操作', '查询商品类别信息', '2023-06-22 10:02:01', '1');
INSERT INTO `x_log` VALUES ('2739', '查询操作', '查询所有供应商', '2023-06-22 10:02:01', '1');
INSERT INTO `x_log` VALUES ('2740', '查询操作', '分页查询商品信息', '2023-06-22 10:02:01', '1');
INSERT INTO `x_log` VALUES ('2741', '查询操作', '分页查询进货信息', '2023-06-22 10:02:01', '1');
INSERT INTO `x_log` VALUES ('2742', '查询操作', '查询所有供应商', '2023-06-22 10:02:06', '1');
INSERT INTO `x_log` VALUES ('2743', '查询操作', '查询商品类别信息', '2023-06-22 10:02:06', '1');
INSERT INTO `x_log` VALUES ('2744', '查询操作', '分页查询商品信息', '2023-06-22 10:02:06', '1');
INSERT INTO `x_log` VALUES ('2745', '查询操作', '分页查询退货信息', '2023-06-22 10:02:06', '1');
INSERT INTO `x_log` VALUES ('2746', '查询操作', '查询商品类别信息', '2023-06-22 10:09:12', '1');
INSERT INTO `x_log` VALUES ('2747', '查询操作', '查询所有供应商', '2023-06-22 10:09:12', '1');
INSERT INTO `x_log` VALUES ('2748', '查询操作', '分页查询进货信息', '2023-06-22 10:09:12', '1');
INSERT INTO `x_log` VALUES ('2749', '查询操作', '分页查询商品信息', '2023-06-22 10:09:12', '1');
INSERT INTO `x_log` VALUES ('2750', '查询操作', '查询商品类别信息', '2023-06-22 10:09:13', '1');
INSERT INTO `x_log` VALUES ('2751', '查询操作', '查询所有供应商', '2023-06-22 10:09:13', '1');
INSERT INTO `x_log` VALUES ('2752', '查询操作', '分页查询退货信息', '2023-06-22 10:09:13', '1');
INSERT INTO `x_log` VALUES ('2753', '查询操作', '分页查询商品信息', '2023-06-22 10:09:13', '1');
INSERT INTO `x_log` VALUES ('2754', '查询操作', '查询商品类别信息', '2023-06-22 10:09:18', '1');
INSERT INTO `x_log` VALUES ('2755', '查询操作', '查询所有供应商', '2023-06-22 10:09:18', '1');
INSERT INTO `x_log` VALUES ('2756', '查询操作', '分页查询进货信息', '2023-06-22 10:09:18', '1');
INSERT INTO `x_log` VALUES ('2757', '查询操作', '分页查询商品信息', '2023-06-22 10:09:18', '1');
INSERT INTO `x_log` VALUES ('2758', '查询操作', '查询商品类别信息', '2023-06-22 10:09:22', '1');
INSERT INTO `x_log` VALUES ('2759', '查询操作', '分页查询商品信息', '2023-06-22 10:09:22', '1');
INSERT INTO `x_log` VALUES ('2760', '查询操作', '查询商品:Nike经典童鞋', '2023-06-22 10:09:24', '1');
INSERT INTO `x_log` VALUES ('2761', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-22 10:09:46', '1');
INSERT INTO `x_log` VALUES ('2762', '查询操作', '查询商品:Nike经典童鞋', '2023-06-22 10:10:08', '1');
INSERT INTO `x_log` VALUES ('2763', '新增操作', '新增进货商品:Nike经典童鞋', '2023-06-22 10:10:23', '1');
INSERT INTO `x_log` VALUES ('2764', '查询操作', '分页查询商品信息', '2023-06-22 10:10:23', '1');
INSERT INTO `x_log` VALUES ('2765', '查询操作', '查询所有供应商', '2023-06-22 10:10:29', '1');
INSERT INTO `x_log` VALUES ('2766', '查询操作', '查询商品类别信息', '2023-06-22 10:10:29', '1');
INSERT INTO `x_log` VALUES ('2767', '查询操作', '分页查询进货信息', '2023-06-22 10:10:29', '1');
INSERT INTO `x_log` VALUES ('2768', '查询操作', '分页查询商品信息', '2023-06-22 10:10:29', '1');
INSERT INTO `x_log` VALUES ('2769', '新增操作', '新增退货商品:Nike经典童鞋', '2023-06-22 10:10:44', '1');
INSERT INTO `x_log` VALUES ('2770', '查询操作', '分页查询进货信息', '2023-06-22 10:10:44', '1');
INSERT INTO `x_log` VALUES ('2771', '查询操作', '查询商品类别信息', '2023-06-22 10:11:29', '1');
INSERT INTO `x_log` VALUES ('2772', '查询操作', '分页查询商品信息', '2023-06-22 10:11:29', '1');
INSERT INTO `x_log` VALUES ('2773', '查询操作', '查询商品:Nike经典童鞋', '2023-06-22 10:11:31', '1');
INSERT INTO `x_log` VALUES ('2774', '新增操作', '新增进货商品:Nike经典童鞋', '2023-06-22 10:11:46', '1');
INSERT INTO `x_log` VALUES ('2775', '查询操作', '分页查询商品信息', '2023-06-22 10:11:46', '1');
INSERT INTO `x_log` VALUES ('2776', '查询操作', '查询商品类别信息', '2023-06-22 10:12:55', '1');
INSERT INTO `x_log` VALUES ('2777', '查询操作', '分页查询商品信息', '2023-06-22 10:12:55', '1');
INSERT INTO `x_log` VALUES ('2778', '查询操作', '查询商品:直筒牛仔裤', '2023-06-22 10:12:59', '1');
INSERT INTO `x_log` VALUES ('2779', '查询操作', '查询商品类别信息', '2023-06-22 10:13:28', '1');
INSERT INTO `x_log` VALUES ('2780', '查询操作', '分页查询商品信息', '2023-06-22 10:13:28', '1');
INSERT INTO `x_log` VALUES ('2781', '查询操作', '查询商品:直筒牛仔裤', '2023-06-22 10:13:48', '1');
INSERT INTO `x_log` VALUES ('2782', '查询操作', '查询商品类别信息', '2023-06-22 10:15:13', '1');
INSERT INTO `x_log` VALUES ('2783', '查询操作', '分页查询商品信息', '2023-06-22 10:15:13', '1');
INSERT INTO `x_log` VALUES ('2784', '查询操作', '查询商品类别信息', '2023-06-22 10:15:49', '1');
INSERT INTO `x_log` VALUES ('2785', '查询操作', '分页查询商品信息', '2023-06-22 10:15:49', '1');
INSERT INTO `x_log` VALUES ('2786', '查询操作', '查询商品类别信息', '2023-06-22 10:26:44', '1');
INSERT INTO `x_log` VALUES ('2787', '查询操作', '分页查询商品信息', '2023-06-22 10:26:44', '1');
INSERT INTO `x_log` VALUES ('2788', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-22 10:26:44', '1');
INSERT INTO `x_log` VALUES ('2789', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-22 10:27:03', '1');
INSERT INTO `x_log` VALUES ('2790', '查询操作', '查询商品:直筒牛仔裤', '2023-06-22 10:27:05', '1');
INSERT INTO `x_log` VALUES ('2791', '查询操作', '查询商品类别信息', '2023-06-22 10:27:50', '1');
INSERT INTO `x_log` VALUES ('2792', '查询操作', '分页查询商品信息', '2023-06-22 10:27:50', '1');
INSERT INTO `x_log` VALUES ('2793', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-22 10:27:51', '1');
INSERT INTO `x_log` VALUES ('2794', '查询操作', '查询商品:直筒牛仔裤', '2023-06-22 10:27:53', '1');
INSERT INTO `x_log` VALUES ('2795', '新增操作', '新增进货商品:直筒牛仔裤', '2023-06-22 10:28:10', '1');
INSERT INTO `x_log` VALUES ('2796', '查询操作', '分页查询商品信息', '2023-06-22 10:28:10', '1');
INSERT INTO `x_log` VALUES ('2797', '查询操作', '查询所有供应商', '2023-06-22 10:28:44', '1');
INSERT INTO `x_log` VALUES ('2798', '查询操作', '查询商品类别信息', '2023-06-22 10:28:44', '1');
INSERT INTO `x_log` VALUES ('2799', '查询操作', '分页查询进货信息', '2023-06-22 10:28:44', '1');
INSERT INTO `x_log` VALUES ('2800', '查询操作', '分页查询商品信息', '2023-06-22 10:28:44', '1');
INSERT INTO `x_log` VALUES ('2801', '查询操作', '查询所有供应商', '2023-06-22 10:31:25', '1');
INSERT INTO `x_log` VALUES ('2802', '查询操作', '查询商品类别信息', '2023-06-22 10:31:25', '1');
INSERT INTO `x_log` VALUES ('2803', '查询操作', '分页查询进货信息', '2023-06-22 10:31:25', '1');
INSERT INTO `x_log` VALUES ('2804', '查询操作', '分页查询商品信息', '2023-06-22 10:31:25', '1');
INSERT INTO `x_log` VALUES ('2805', '查询操作', '分页查询进货信息', '2023-06-22 10:34:51', '1');
INSERT INTO `x_log` VALUES ('2806', '查询操作', '查询所有供应商', '2023-06-22 10:34:51', '1');
INSERT INTO `x_log` VALUES ('2807', '查询操作', '查询商品类别信息', '2023-06-22 10:34:51', '1');
INSERT INTO `x_log` VALUES ('2808', '查询操作', '分页查询商品信息', '2023-06-22 10:34:51', '1');
INSERT INTO `x_log` VALUES ('2809', '查询操作', '查询商品类别信息', '2023-06-22 10:34:58', '1');
INSERT INTO `x_log` VALUES ('2810', '查询操作', '查询所有供应商', '2023-06-22 10:34:58', '1');
INSERT INTO `x_log` VALUES ('2811', '查询操作', '分页查询退货信息', '2023-06-22 10:34:58', '1');
INSERT INTO `x_log` VALUES ('2812', '查询操作', '分页查询商品信息', '2023-06-22 10:34:58', '1');
INSERT INTO `x_log` VALUES ('2813', '修改操作', '退货单号TH1671702224585859074现在付款', '2023-06-22 10:35:06', '1');
INSERT INTO `x_log` VALUES ('2814', '查询操作', '分页查询退货信息', '2023-06-22 10:35:06', '1');
INSERT INTO `x_log` VALUES ('2815', '查询操作', '查询所有供应商', '2023-06-22 10:35:37', '1');
INSERT INTO `x_log` VALUES ('2816', '查询操作', '查询商品类别信息', '2023-06-22 10:35:37', '1');
INSERT INTO `x_log` VALUES ('2817', '查询操作', '分页查询退货信息', '2023-06-22 10:35:37', '1');
INSERT INTO `x_log` VALUES ('2818', '查询操作', '分页查询商品信息', '2023-06-22 10:35:37', '1');
INSERT INTO `x_log` VALUES ('2819', '查询操作', '查询所有供应商', '2023-06-22 10:36:57', '1');
INSERT INTO `x_log` VALUES ('2820', '查询操作', '查询商品类别信息', '2023-06-22 10:36:57', '1');
INSERT INTO `x_log` VALUES ('2821', '查询操作', '分页查询商品信息', '2023-06-22 10:36:57', '1');
INSERT INTO `x_log` VALUES ('2822', '查询操作', '分页查询进货信息', '2023-06-22 10:36:57', '1');
INSERT INTO `x_log` VALUES ('2823', '查询操作', '查询所有供应商', '2023-06-22 10:38:58', '1');
INSERT INTO `x_log` VALUES ('2824', '查询操作', '查询商品类别信息', '2023-06-22 10:38:58', '1');
INSERT INTO `x_log` VALUES ('2825', '查询操作', '分页查询进货信息', '2023-06-22 10:38:58', '1');
INSERT INTO `x_log` VALUES ('2826', '查询操作', '分页查询商品信息', '2023-06-22 10:38:58', '1');
INSERT INTO `x_log` VALUES ('2827', '修改操作', '进货单号JH1671706613862080513现在付款', '2023-06-22 10:39:04', '1');
INSERT INTO `x_log` VALUES ('2828', '查询操作', '分页查询进货信息', '2023-06-22 10:39:04', '1');
INSERT INTO `x_log` VALUES ('2829', '查询操作', '查询所有供应商', '2023-06-22 10:39:09', '1');
INSERT INTO `x_log` VALUES ('2830', '查询操作', '查询商品类别信息', '2023-06-22 10:39:09', '1');
INSERT INTO `x_log` VALUES ('2831', '查询操作', '分页查询进货信息', '2023-06-22 10:39:09', '1');
INSERT INTO `x_log` VALUES ('2832', '查询操作', '分页查询商品信息', '2023-06-22 10:39:09', '1');
INSERT INTO `x_log` VALUES ('2833', '查询操作', '查询商品类别信息', '2023-06-22 10:42:20', '1');
INSERT INTO `x_log` VALUES ('2834', '查询操作', '查询所有供应商', '2023-06-22 10:42:20', '1');
INSERT INTO `x_log` VALUES ('2835', '查询操作', '分页查询进货信息', '2023-06-22 10:42:20', '1');
INSERT INTO `x_log` VALUES ('2836', '查询操作', '分页查询商品信息', '2023-06-22 10:42:20', '1');
INSERT INTO `x_log` VALUES ('2837', '查询操作', '查询商品类别信息', '2023-06-22 10:42:23', '1');
INSERT INTO `x_log` VALUES ('2838', '查询操作', '分页查询商品信息', '2023-06-22 10:42:23', '1');
INSERT INTO `x_log` VALUES ('2839', '查询操作', '查询商品:OSCILL针织毛衣', '2023-06-22 10:42:26', '1');
INSERT INTO `x_log` VALUES ('2840', '新增操作', '新增进货商品:OSCILL针织毛衣', '2023-06-22 10:42:47', '1');
INSERT INTO `x_log` VALUES ('2841', '查询操作', '分页查询商品信息', '2023-06-22 10:42:47', '1');
INSERT INTO `x_log` VALUES ('2842', '查询操作', '查询商品类别信息', '2023-06-22 10:42:55', '1');
INSERT INTO `x_log` VALUES ('2843', '查询操作', '查询所有供应商', '2023-06-22 10:42:55', '1');
INSERT INTO `x_log` VALUES ('2844', '查询操作', '分页查询商品信息', '2023-06-22 10:42:55', '1');
INSERT INTO `x_log` VALUES ('2845', '查询操作', '分页查询进货信息', '2023-06-22 10:42:55', '1');
INSERT INTO `x_log` VALUES ('2846', '查询操作', '查询商品类别信息', '2023-06-22 10:43:06', '1');
INSERT INTO `x_log` VALUES ('2847', '查询操作', '查询所有供应商', '2023-06-22 10:43:06', '1');
INSERT INTO `x_log` VALUES ('2848', '查询操作', '分页查询进货信息', '2023-06-22 10:43:06', '1');
INSERT INTO `x_log` VALUES ('2849', '查询操作', '分页查询商品信息', '2023-06-22 10:43:06', '1');
INSERT INTO `x_log` VALUES ('2850', '查询操作', '查询商品类别信息', '2023-06-22 10:43:08', '1');
INSERT INTO `x_log` VALUES ('2851', '查询操作', '查询所有供应商', '2023-06-22 10:43:08', '1');
INSERT INTO `x_log` VALUES ('2852', '查询操作', '分页查询进货信息', '2023-06-22 10:43:08', '1');
INSERT INTO `x_log` VALUES ('2853', '查询操作', '分页查询商品信息', '2023-06-22 10:43:08', '1');
INSERT INTO `x_log` VALUES ('2854', '查询操作', '查询商品类别信息', '2023-06-22 10:43:13', '1');
INSERT INTO `x_log` VALUES ('2855', '查询操作', '查询所有供应商', '2023-06-22 10:43:13', '1');
INSERT INTO `x_log` VALUES ('2856', '查询操作', '分页查询进货信息', '2023-06-22 10:43:13', '1');
INSERT INTO `x_log` VALUES ('2857', '查询操作', '分页查询商品信息', '2023-06-22 10:43:13', '1');
INSERT INTO `x_log` VALUES ('2858', '新增操作', '新增退货商品:OSCILL针织毛衣', '2023-06-22 10:43:56', '1');
INSERT INTO `x_log` VALUES ('2859', '查询操作', '分页查询进货信息', '2023-06-22 10:43:56', '1');
INSERT INTO `x_log` VALUES ('2860', '查询操作', '查询商品类别信息', '2023-06-22 11:31:29', null);
INSERT INTO `x_log` VALUES ('2861', '查询操作', '分页查询商品信息', '2023-06-22 11:31:29', null);
INSERT INTO `x_log` VALUES ('2862', '查询操作', '查询商品:OSCILL针织毛衣', '2023-06-22 11:31:33', null);
INSERT INTO `x_log` VALUES ('2863', '查询操作', '查询商品:OSCILL针织毛衣', '2023-06-22 11:31:35', null);
INSERT INTO `x_log` VALUES ('2864', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-22 11:31:38', null);
INSERT INTO `x_log` VALUES ('2865', '查询操作', '查询商品类别信息', '2023-06-22 11:33:39', '1');
INSERT INTO `x_log` VALUES ('2866', '查询操作', '分页查询商品信息', '2023-06-22 11:33:39', '1');
INSERT INTO `x_log` VALUES ('2867', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-22 11:33:50', '1');
INSERT INTO `x_log` VALUES ('2868', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-22 11:33:57', '1');
INSERT INTO `x_log` VALUES ('2869', '新增操作', '新增进货商品:Nike阿甘系列童鞋', '2023-06-22 11:34:12', '1');
INSERT INTO `x_log` VALUES ('2870', '查询操作', '分页查询商品信息', '2023-06-22 11:34:12', '1');
INSERT INTO `x_log` VALUES ('2871', '查询操作', '查询商品类别信息', '2023-06-22 11:37:06', '1');
INSERT INTO `x_log` VALUES ('2872', '查询操作', '查询所有供应商', '2023-06-22 11:37:06', '1');
INSERT INTO `x_log` VALUES ('2873', '查询操作', '分页查询进货信息', '2023-06-22 11:37:06', '1');
INSERT INTO `x_log` VALUES ('2874', '查询操作', '分页查询商品信息', '2023-06-22 11:37:06', '1');
INSERT INTO `x_log` VALUES ('2875', '查询操作', '查询所有供应商', '2023-06-22 11:37:07', '1');
INSERT INTO `x_log` VALUES ('2876', '查询操作', '查询商品类别信息', '2023-06-22 11:37:07', '1');
INSERT INTO `x_log` VALUES ('2877', '查询操作', '分页查询商品信息', '2023-06-22 11:37:07', '1');
INSERT INTO `x_log` VALUES ('2878', '查询操作', '分页查询进货信息', '2023-06-22 11:37:07', '1');
INSERT INTO `x_log` VALUES ('2879', '查询操作', '查询商品类别信息', '2023-06-22 11:37:19', '1');
INSERT INTO `x_log` VALUES ('2880', '查询操作', '分页查询商品信息', '2023-06-22 11:37:19', '1');
INSERT INTO `x_log` VALUES ('2881', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-22 11:37:20', '1');
INSERT INTO `x_log` VALUES ('2882', '新增操作', '新增进货商品:Nike阿甘系列童鞋', '2023-06-22 11:39:17', '1');
INSERT INTO `x_log` VALUES ('2883', '查询操作', '分页查询商品信息', '2023-06-22 11:39:17', '1');
INSERT INTO `x_log` VALUES ('2884', '查询操作', '查询商品类别信息', '2023-06-22 11:39:42', '1');
INSERT INTO `x_log` VALUES ('2885', '查询操作', '查询所有供应商', '2023-06-22 11:39:42', '1');
INSERT INTO `x_log` VALUES ('2886', '查询操作', '分页查询进货信息', '2023-06-22 11:39:42', '1');
INSERT INTO `x_log` VALUES ('2887', '查询操作', '分页查询商品信息', '2023-06-22 11:39:42', '1');
INSERT INTO `x_log` VALUES ('2888', '新增操作', '新增退货商品:Nike阿甘系列童鞋', '2023-06-22 11:40:04', '1');
INSERT INTO `x_log` VALUES ('2889', '查询操作', '分页查询进货信息', '2023-06-22 11:40:04', '1');
INSERT INTO `x_log` VALUES ('2890', '查询操作', '查询商品类别信息', '2023-06-22 12:17:36', '1');
INSERT INTO `x_log` VALUES ('2891', '查询操作', '分页查询商品信息', '2023-06-22 12:17:36', '1');
INSERT INTO `x_log` VALUES ('2892', '查询操作', '查询所有供应商', '2023-06-22 12:17:37', '1');
INSERT INTO `x_log` VALUES ('2893', '查询操作', '查询商品类别信息', '2023-06-22 12:17:37', '1');
INSERT INTO `x_log` VALUES ('2894', '查询操作', '分页查询进货信息', '2023-06-22 12:17:37', '1');
INSERT INTO `x_log` VALUES ('2895', '查询操作', '分页查询商品信息', '2023-06-22 12:17:37', '1');
INSERT INTO `x_log` VALUES ('2896', '查询操作', '查询商品类别信息', '2023-06-22 12:17:40', '1');
INSERT INTO `x_log` VALUES ('2897', '查询操作', '查询所有供应商', '2023-06-22 12:17:40', '1');
INSERT INTO `x_log` VALUES ('2898', '查询操作', '分页查询进货信息', '2023-06-22 12:17:40', '1');
INSERT INTO `x_log` VALUES ('2899', '查询操作', '分页查询商品信息', '2023-06-22 12:17:40', '1');
INSERT INTO `x_log` VALUES ('2900', '查询操作', '查询所有供应商', '2023-06-22 12:17:40', '1');
INSERT INTO `x_log` VALUES ('2901', '查询操作', '查询商品类别信息', '2023-06-22 12:17:40', '1');
INSERT INTO `x_log` VALUES ('2902', '查询操作', '分页查询退货信息', '2023-06-22 12:17:40', '1');
INSERT INTO `x_log` VALUES ('2903', '查询操作', '分页查询商品信息', '2023-06-22 12:17:40', '1');
INSERT INTO `x_log` VALUES ('2904', '修改操作', '退货单号TH1671710581468082177现在付款', '2023-06-22 12:20:19', '1');
INSERT INTO `x_log` VALUES ('2905', '查询操作', '分页查询退货信息', '2023-06-22 12:20:19', '1');
INSERT INTO `x_log` VALUES ('2906', '查询操作', '查询商品类别信息', '2023-06-22 12:20:42', '1');
INSERT INTO `x_log` VALUES ('2907', '查询操作', '分页查询商品信息', '2023-06-22 12:20:42', '1');
INSERT INTO `x_log` VALUES ('2908', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-22 12:21:25', '1');
INSERT INTO `x_log` VALUES ('2909', '新增操作', '新增进货商品:Nike阿甘系列童鞋', '2023-06-22 12:21:44', '1');
INSERT INTO `x_log` VALUES ('2910', '查询操作', '分页查询商品信息', '2023-06-22 12:21:44', '1');
INSERT INTO `x_log` VALUES ('2911', '查询操作', '查询所有供应商', '2023-06-22 12:21:51', '1');
INSERT INTO `x_log` VALUES ('2912', '查询操作', '查询商品类别信息', '2023-06-22 12:21:51', '1');
INSERT INTO `x_log` VALUES ('2913', '查询操作', '分页查询进货信息', '2023-06-22 12:21:51', '1');
INSERT INTO `x_log` VALUES ('2914', '查询操作', '分页查询商品信息', '2023-06-22 12:21:51', '1');
INSERT INTO `x_log` VALUES ('2915', '查询操作', '查询所有供应商', '2023-06-22 12:21:59', '1');
INSERT INTO `x_log` VALUES ('2916', '查询操作', '查询商品类别信息', '2023-06-22 12:21:59', '1');
INSERT INTO `x_log` VALUES ('2917', '查询操作', '分页查询进货信息', '2023-06-22 12:21:59', '1');
INSERT INTO `x_log` VALUES ('2918', '查询操作', '分页查询商品信息', '2023-06-22 12:21:59', '1');
INSERT INTO `x_log` VALUES ('2919', '新增操作', '新增退货商品:Nike阿甘系列童鞋', '2023-06-22 12:22:16', '1');
INSERT INTO `x_log` VALUES ('2920', '查询操作', '分页查询进货信息', '2023-06-22 12:22:16', '1');
INSERT INTO `x_log` VALUES ('2921', '查询操作', '查询所有供应商', '2023-06-22 12:22:19', '1');
INSERT INTO `x_log` VALUES ('2922', '查询操作', '查询商品类别信息', '2023-06-22 12:22:19', '1');
INSERT INTO `x_log` VALUES ('2923', '查询操作', '分页查询退货信息', '2023-06-22 12:22:19', '1');
INSERT INTO `x_log` VALUES ('2924', '查询操作', '分页查询商品信息', '2023-06-22 12:22:19', '1');
INSERT INTO `x_log` VALUES ('2925', '查询操作', '分页查询退货信息', '2023-06-22 12:26:24', '1');
INSERT INTO `x_log` VALUES ('2926', '查询操作', '查询所有供应商', '2023-06-22 12:26:24', '1');
INSERT INTO `x_log` VALUES ('2927', '查询操作', '查询商品类别信息', '2023-06-22 12:26:24', '1');
INSERT INTO `x_log` VALUES ('2928', '查询操作', '分页查询商品信息', '2023-06-22 12:26:24', '1');
INSERT INTO `x_log` VALUES ('2929', '查询操作', '查询商品类别信息', '2023-06-22 12:26:26', '1');
INSERT INTO `x_log` VALUES ('2930', '查询操作', '分页查询商品信息', '2023-06-22 12:26:26', '1');
INSERT INTO `x_log` VALUES ('2931', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-22 12:26:28', '1');
INSERT INTO `x_log` VALUES ('2932', '新增操作', '新增进货商品:Nike阿甘系列童鞋', '2023-06-22 12:26:47', '1');
INSERT INTO `x_log` VALUES ('2933', '查询操作', '分页查询商品信息', '2023-06-22 12:26:47', '1');
INSERT INTO `x_log` VALUES ('2934', '查询操作', '查询商品类别信息', '2023-06-22 12:26:48', '1');
INSERT INTO `x_log` VALUES ('2935', '查询操作', '查询所有供应商', '2023-06-22 12:26:48', '1');
INSERT INTO `x_log` VALUES ('2936', '查询操作', '分页查询商品信息', '2023-06-22 12:26:48', '1');
INSERT INTO `x_log` VALUES ('2937', '查询操作', '分页查询进货信息', '2023-06-22 12:26:48', '1');
INSERT INTO `x_log` VALUES ('2938', '新增操作', '新增退货商品:Nike阿甘系列童鞋', '2023-06-22 12:26:55', '1');
INSERT INTO `x_log` VALUES ('2939', '查询操作', '分页查询进货信息', '2023-06-22 12:26:55', '1');
INSERT INTO `x_log` VALUES ('2940', '查询操作', '查询商品类别信息', '2023-06-22 12:26:57', '1');
INSERT INTO `x_log` VALUES ('2941', '查询操作', '查询所有供应商', '2023-06-22 12:26:57', '1');
INSERT INTO `x_log` VALUES ('2942', '查询操作', '分页查询进货信息', '2023-06-22 12:26:57', '1');
INSERT INTO `x_log` VALUES ('2943', '查询操作', '分页查询商品信息', '2023-06-22 12:26:57', '1');
INSERT INTO `x_log` VALUES ('2944', '查询操作', '查询商品类别信息', '2023-06-22 12:26:57', '1');
INSERT INTO `x_log` VALUES ('2945', '查询操作', '查询所有供应商', '2023-06-22 12:26:57', '1');
INSERT INTO `x_log` VALUES ('2946', '查询操作', '分页查询商品信息', '2023-06-22 12:26:57', '1');
INSERT INTO `x_log` VALUES ('2947', '查询操作', '分页查询退货信息', '2023-06-22 12:26:57', '1');
INSERT INTO `x_log` VALUES ('2948', '修改操作', '退货单号TH1671735327329050625现在付款', '2023-06-22 12:27:32', '1');
INSERT INTO `x_log` VALUES ('2949', '查询操作', '分页查询退货信息', '2023-06-22 12:27:32', '1');
INSERT INTO `x_log` VALUES ('2950', '查询操作', '查询所有供应商', '2023-06-22 12:27:50', '1');
INSERT INTO `x_log` VALUES ('2951', '查询操作', '查询商品类别信息', '2023-06-22 12:27:50', '1');
INSERT INTO `x_log` VALUES ('2952', '查询操作', '分页查询退货信息', '2023-06-22 12:27:50', '1');
INSERT INTO `x_log` VALUES ('2953', '查询操作', '分页查询商品信息', '2023-06-22 12:27:50', '1');
INSERT INTO `x_log` VALUES ('2954', '查询操作', '查询商品类别信息', '2023-06-22 21:25:46', '1');
INSERT INTO `x_log` VALUES ('2955', '查询操作', '查询所有供应商', '2023-06-22 21:25:46', '1');
INSERT INTO `x_log` VALUES ('2956', '查询操作', '分页查询退货信息', '2023-06-22 21:25:46', '1');
INSERT INTO `x_log` VALUES ('2957', '查询操作', '分页查询商品信息', '2023-06-22 21:25:46', '1');
INSERT INTO `x_log` VALUES ('2958', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-22 21:25:59', '1');
INSERT INTO `x_log` VALUES ('2959', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 21:25:59', '1');
INSERT INTO `x_log` VALUES ('2960', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 21:25:59', '1');
INSERT INTO `x_log` VALUES ('2961', '查询操作', '查询商品类别信息', '2023-06-22 21:26:08', '1');
INSERT INTO `x_log` VALUES ('2962', '查询操作', '分页查询商品信息', '2023-06-22 21:26:08', '1');
INSERT INTO `x_log` VALUES ('2963', '查询操作', '查询所有客户', '2023-06-22 21:26:08', '1');
INSERT INTO `x_log` VALUES ('2964', '查询操作', '查询所有客户', '2023-06-22 21:26:11', '1');
INSERT INTO `x_log` VALUES ('2965', '查询操作', '查询商品类别信息', '2023-06-22 21:26:11', '1');
INSERT INTO `x_log` VALUES ('2966', '查询操作', '分页查询商品信息', '2023-06-22 21:26:11', '1');
INSERT INTO `x_log` VALUES ('2967', '查询操作', '分页查询客户退货信息', '2023-06-22 21:26:11', '1');
INSERT INTO `x_log` VALUES ('2968', '查询操作', '查询商品类别信息', '2023-06-22 21:26:14', '1');
INSERT INTO `x_log` VALUES ('2969', '查询操作', '分页查询商品信息', '2023-06-22 21:26:14', '1');
INSERT INTO `x_log` VALUES ('2970', '查询操作', '分页查询商品销售统计', '2023-06-22 21:26:14', '1');
INSERT INTO `x_log` VALUES ('2971', '查询操作', '查询按日统计', '2023-06-22 21:26:24', '1');
INSERT INTO `x_log` VALUES ('2972', '查询操作', '查询按月统计', '2023-06-22 21:26:50', '1');
INSERT INTO `x_log` VALUES ('2973', '查询操作', '查询按日统计', '2023-06-22 21:27:06', '1');
INSERT INTO `x_log` VALUES ('2974', '查询操作', '查询按日统计', '2023-06-22 21:27:27', '1');
INSERT INTO `x_log` VALUES ('2975', '查询操作', '查询按日统计', '2023-06-22 21:27:38', '1');
INSERT INTO `x_log` VALUES ('2976', '查询操作', '查询按日统计', '2023-06-22 21:28:47', '1');
INSERT INTO `x_log` VALUES ('2977', '查询操作', '查询按日统计', '2023-06-22 21:43:31', '1');
INSERT INTO `x_log` VALUES ('2978', '查询操作', '查询按日统计', '2023-06-22 21:43:42', '1');
INSERT INTO `x_log` VALUES ('2979', '查询操作', '查询按日统计', '2023-06-22 21:43:55', '1');
INSERT INTO `x_log` VALUES ('2980', '查询操作', '查询按日统计', '2023-06-22 21:43:59', '1');
INSERT INTO `x_log` VALUES ('2981', '查询操作', '查询按日统计', '2023-06-22 21:44:25', '1');
INSERT INTO `x_log` VALUES ('2982', '查询操作', '查询按日统计', '2023-06-22 21:44:28', '1');
INSERT INTO `x_log` VALUES ('2983', '查询操作', '查询按日统计', '2023-06-22 21:44:46', '1');
INSERT INTO `x_log` VALUES ('2984', '查询操作', '查询按日统计', '2023-06-22 21:44:49', '1');
INSERT INTO `x_log` VALUES ('2985', '查询操作', '查询按日统计', '2023-06-22 21:46:22', '1');
INSERT INTO `x_log` VALUES ('2986', '查询操作', '查询按日统计', '2023-06-22 21:46:28', '1');
INSERT INTO `x_log` VALUES ('2987', '查询操作', '查询按日统计', '2023-06-22 21:46:40', '1');
INSERT INTO `x_log` VALUES ('2988', '查询操作', '查询按日统计', '2023-06-22 21:46:57', '1');
INSERT INTO `x_log` VALUES ('2989', '查询操作', '查询按日统计', '2023-06-22 21:47:04', '1');
INSERT INTO `x_log` VALUES ('2990', '查询操作', '查询按日统计', '2023-06-22 21:47:08', '1');
INSERT INTO `x_log` VALUES ('2991', '查询操作', '查询按月统计', '2023-06-22 21:47:57', '1');
INSERT INTO `x_log` VALUES ('2992', '查询操作', '查询按月统计', '2023-06-22 21:48:02', '1');
INSERT INTO `x_log` VALUES ('2993', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 21:48:14', '1');
INSERT INTO `x_log` VALUES ('2994', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 21:48:14', '1');
INSERT INTO `x_log` VALUES ('2995', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-22 21:48:14', '1');
INSERT INTO `x_log` VALUES ('2996', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 21:55:18', '1');
INSERT INTO `x_log` VALUES ('2997', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 21:55:18', '1');
INSERT INTO `x_log` VALUES ('2998', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-22 21:55:18', '1');
INSERT INTO `x_log` VALUES ('2999', '退出操作', '退出登录', '2023-06-22 21:56:37', '1');
INSERT INTO `x_log` VALUES ('3000', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-22 21:56:47', '1');
INSERT INTO `x_log` VALUES ('3001', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 21:56:47', '1');
INSERT INTO `x_log` VALUES ('3002', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 21:56:47', '1');
INSERT INTO `x_log` VALUES ('3003', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-22 22:03:49', '1');
INSERT INTO `x_log` VALUES ('3004', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 22:03:49', '1');
INSERT INTO `x_log` VALUES ('3005', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 22:03:49', '1');
INSERT INTO `x_log` VALUES ('3006', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-22 22:19:13', '1');
INSERT INTO `x_log` VALUES ('3007', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 22:19:13', '1');
INSERT INTO `x_log` VALUES ('3008', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 22:19:13', '1');
INSERT INTO `x_log` VALUES ('3009', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 22:23:02', '1');
INSERT INTO `x_log` VALUES ('3010', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-22 22:23:02', '1');
INSERT INTO `x_log` VALUES ('3011', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 22:23:02', '1');
INSERT INTO `x_log` VALUES ('3012', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-22 22:23:28', '1');
INSERT INTO `x_log` VALUES ('3013', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 22:23:28', '1');
INSERT INTO `x_log` VALUES ('3014', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 22:23:28', '1');
INSERT INTO `x_log` VALUES ('3015', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 22:24:34', '1');
INSERT INTO `x_log` VALUES ('3016', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 22:24:34', '1');
INSERT INTO `x_log` VALUES ('3017', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-22 22:24:34', '1');
INSERT INTO `x_log` VALUES ('3018', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-22 22:27:44', '1');
INSERT INTO `x_log` VALUES ('3019', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 22:27:44', '1');
INSERT INTO `x_log` VALUES ('3020', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 22:27:44', '1');
INSERT INTO `x_log` VALUES ('3021', '查询操作', '查询按日统计', '2023-06-22 22:29:00', '1');
INSERT INTO `x_log` VALUES ('3022', '查询操作', '查询按日统计', '2023-06-22 22:29:03', '1');
INSERT INTO `x_log` VALUES ('3023', '查询操作', '查询按日统计', '2023-06-22 22:33:41', '1');
INSERT INTO `x_log` VALUES ('3024', '查询操作', '查询按月统计', '2023-06-22 22:33:50', '1');
INSERT INTO `x_log` VALUES ('3025', '查询操作', '查询按月统计', '2023-06-22 22:33:53', '1');
INSERT INTO `x_log` VALUES ('3026', '查询操作', '查询按月统计', '2023-06-22 22:33:58', '1');
INSERT INTO `x_log` VALUES ('3027', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-22 22:34:08', '1');
INSERT INTO `x_log` VALUES ('3028', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 22:34:08', '1');
INSERT INTO `x_log` VALUES ('3029', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 22:34:08', '1');
INSERT INTO `x_log` VALUES ('3030', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 22:36:11', '1');
INSERT INTO `x_log` VALUES ('3031', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-22 22:36:11', '1');
INSERT INTO `x_log` VALUES ('3032', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 22:36:11', '1');
INSERT INTO `x_log` VALUES ('3033', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 22:36:17', '1');
INSERT INTO `x_log` VALUES ('3034', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-22 22:36:17', '1');
INSERT INTO `x_log` VALUES ('3035', '查询操作', '优衣库销售额查询按日统计', '2023-06-22 22:36:17', '1');
INSERT INTO `x_log` VALUES ('3036', '查询操作', '分页查询角色信息', '2023-06-24 10:01:31', '1');
INSERT INTO `x_log` VALUES ('3037', '查询操作', '分页查询角色信息', '2023-06-24 10:02:53', '1');
INSERT INTO `x_log` VALUES ('3038', '查询操作', '分页查询角色信息', '2023-06-24 10:03:10', '1');
INSERT INTO `x_log` VALUES ('3039', '查询操作', '分页查询角色信息', '2023-06-24 10:16:52', '1');
INSERT INTO `x_log` VALUES ('3040', '查询操作', '分页查询角色信息', '2023-06-24 10:28:06', '1');
INSERT INTO `x_log` VALUES ('3041', '查询操作', '查询角色:uniqlo', '2023-06-24 10:28:12', '1');
INSERT INTO `x_log` VALUES ('3042', '查询操作', '分页查询角色信息', '2023-06-25 19:16:03', '1');
INSERT INTO `x_log` VALUES ('3043', '查询操作', '查询角色:uniqlo', '2023-06-25 19:16:09', '1');
INSERT INTO `x_log` VALUES ('3044', '退出操作', '退出登录', '2023-06-25 19:18:02', '1');
INSERT INTO `x_log` VALUES ('3045', '查询操作', '查询商品类别信息', '2023-06-25 19:48:58', '1');
INSERT INTO `x_log` VALUES ('3046', '查询操作', '分页查询商品信息', '2023-06-25 19:48:58', '1');
INSERT INTO `x_log` VALUES ('3047', '查询操作', '查询所有角色', '2023-06-25 20:15:51', '1');
INSERT INTO `x_log` VALUES ('3048', '查询操作', '分页查询用户信息', '2023-06-25 20:15:51', '1');
INSERT INTO `x_log` VALUES ('3049', '查询操作', '查询商品类别信息', '2023-06-25 20:19:11', '1');
INSERT INTO `x_log` VALUES ('3050', '查询操作', '分页查询商品信息', '2023-06-25 20:19:11', '1');
INSERT INTO `x_log` VALUES ('3051', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-25 20:19:41', '1');
INSERT INTO `x_log` VALUES ('3052', '查询操作', '查询商品类别信息', '2023-06-25 20:51:11', '1');
INSERT INTO `x_log` VALUES ('3053', '查询操作', '分页查询商品信息', '2023-06-25 20:51:11', '1');
INSERT INTO `x_log` VALUES ('3054', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-25 20:51:32', '1');
INSERT INTO `x_log` VALUES ('3055', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-25 20:59:44', '1');
INSERT INTO `x_log` VALUES ('3056', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-25 21:00:45', '1');
INSERT INTO `x_log` VALUES ('3057', '查询操作', '查询所有角色', '2023-06-25 21:06:20', '1');
INSERT INTO `x_log` VALUES ('3058', '查询操作', '分页查询用户信息', '2023-06-25 21:06:20', '1');
INSERT INTO `x_log` VALUES ('3059', '查询操作', '查询商品类别信息', '2023-06-25 21:06:22', '1');
INSERT INTO `x_log` VALUES ('3060', '查询操作', '查询所有供应商', '2023-06-25 21:06:22', '1');
INSERT INTO `x_log` VALUES ('3061', '查询操作', '分页查询商品信息', '2023-06-25 21:06:22', '1');
INSERT INTO `x_log` VALUES ('3062', '查询操作', '分页查询进货信息', '2023-06-25 21:06:22', '1');
INSERT INTO `x_log` VALUES ('3063', '查询操作', '查询商品类别信息', '2023-06-25 21:13:00', '1');
INSERT INTO `x_log` VALUES ('3064', '查询操作', '查询所有供应商', '2023-06-25 21:13:00', '1');
INSERT INTO `x_log` VALUES ('3065', '查询操作', '分页查询商品信息', '2023-06-25 21:13:00', '1');
INSERT INTO `x_log` VALUES ('3066', '查询操作', '分页查询进货信息', '2023-06-25 21:13:00', '1');
INSERT INTO `x_log` VALUES ('3067', '查询操作', '查询进货商品:Nike经典童鞋', '2023-06-25 21:36:03', '1');
INSERT INTO `x_log` VALUES ('3068', '查询操作', '分页查询进货信息', '2023-06-25 21:46:28', '1');
INSERT INTO `x_log` VALUES ('3069', '查询操作', '分页查询进货信息', '2023-06-25 21:46:29', '1');
INSERT INTO `x_log` VALUES ('3070', '查询操作', '分页查询进货信息', '2023-06-25 21:46:30', '1');
INSERT INTO `x_log` VALUES ('3071', '查询操作', '分页查询进货信息', '2023-06-25 21:46:33', '1');
INSERT INTO `x_log` VALUES ('3072', '查询操作', '分页查询进货信息', '2023-06-25 21:46:33', '1');
INSERT INTO `x_log` VALUES ('3073', '查询操作', '查询商品类别信息', '2023-06-25 21:46:53', '1');
INSERT INTO `x_log` VALUES ('3074', '查询操作', '查询所有供应商', '2023-06-25 21:46:53', '1');
INSERT INTO `x_log` VALUES ('3075', '查询操作', '分页查询商品信息', '2023-06-25 21:46:53', '1');
INSERT INTO `x_log` VALUES ('3076', '查询操作', '分页查询退货信息', '2023-06-25 21:46:53', '1');
INSERT INTO `x_log` VALUES ('3077', '查询操作', '分页查询库存预警商品信息', '2023-06-25 22:03:24', null);
INSERT INTO `x_log` VALUES ('3078', '查询操作', '查询商品类别信息', '2023-06-25 22:03:24', null);
INSERT INTO `x_log` VALUES ('3079', '查询操作', '查询商品类别信息', '2023-06-25 22:03:27', null);
INSERT INTO `x_log` VALUES ('3080', '查询操作', '分页查询退货信息', '2023-06-25 22:03:27', null);
INSERT INTO `x_log` VALUES ('3081', '查询操作', '查询所有供应商', '2023-06-25 22:03:27', null);
INSERT INTO `x_log` VALUES ('3082', '查询操作', '分页查询商品信息', '2023-06-25 22:03:27', null);
INSERT INTO `x_log` VALUES ('3083', '查询操作', '查询按日统计', '2023-06-25 22:03:39', null);
INSERT INTO `x_log` VALUES ('3084', '查询操作', '查询按月统计', '2023-06-25 22:14:13', null);
INSERT INTO `x_log` VALUES ('3085', '查询操作', '查询按日统计', '2023-06-25 22:15:49', null);
INSERT INTO `x_log` VALUES ('3086', '查询操作', '查询按月统计', '2023-06-25 22:20:50', null);
INSERT INTO `x_log` VALUES ('3087', '查询操作', '查询商品类别信息', '2023-06-25 22:20:55', null);
INSERT INTO `x_log` VALUES ('3088', '查询操作', '分页查询商品信息', '2023-06-25 22:20:55', null);
INSERT INTO `x_log` VALUES ('3089', '查询操作', '分页查询商品销售统计', '2023-06-25 22:20:55', null);
INSERT INTO `x_log` VALUES ('3090', '查询操作', '查询商品类别信息', '2023-06-25 22:23:49', null);
INSERT INTO `x_log` VALUES ('3091', '查询操作', '分页查询商品信息', '2023-06-25 22:23:49', null);
INSERT INTO `x_log` VALUES ('3092', '查询操作', '分页查询商品销售统计', '2023-06-25 22:23:49', null);
INSERT INTO `x_log` VALUES ('3093', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-25 22:23:54', null);
INSERT INTO `x_log` VALUES ('3094', '查询操作', '优衣库销售额查询按日统计', '2023-06-25 22:23:54', null);
INSERT INTO `x_log` VALUES ('3095', '查询操作', '优衣库销售额查询按日统计', '2023-06-25 22:23:54', null);
INSERT INTO `x_log` VALUES ('3096', '查询操作', '查询商品类别信息', '2023-06-25 22:35:00', null);
INSERT INTO `x_log` VALUES ('3097', '查询操作', '分页查询商品信息', '2023-06-25 22:35:00', null);
INSERT INTO `x_log` VALUES ('3098', '查询操作', '分页查询角色信息', '2023-06-26 09:14:49', '1');
INSERT INTO `x_log` VALUES ('3099', '查询操作', '查询所有角色', '2023-06-26 09:14:51', '1');
INSERT INTO `x_log` VALUES ('3100', '查询操作', '分页查询用户信息', '2023-06-26 09:14:51', '1');
INSERT INTO `x_log` VALUES ('3101', '查询操作', '查询用户:uniqlo', '2023-06-26 09:14:55', '1');
INSERT INTO `x_log` VALUES ('3102', '查询操作', '查询用户:zhangsan', '2023-06-26 09:14:58', '1');
INSERT INTO `x_log` VALUES ('3103', '查询操作', '查询用户:zhangsan', '2023-06-26 09:15:41', '1');
INSERT INTO `x_log` VALUES ('3104', '查询操作', '查询用户:lisi', '2023-06-26 09:36:27', '1');
INSERT INTO `x_log` VALUES ('3105', '查询操作', '查询商品类别信息', '2023-06-26 10:44:39', '1');
INSERT INTO `x_log` VALUES ('3106', '查询操作', '分页查询商品信息', '2023-06-26 10:44:39', '1');
INSERT INTO `x_log` VALUES ('3107', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-26 10:44:40', '1');
INSERT INTO `x_log` VALUES ('3108', '查询操作', '查询商品类别信息', '2023-06-26 10:45:40', '1');
INSERT INTO `x_log` VALUES ('3109', '查询操作', '分页查询商品信息', '2023-06-26 10:45:40', '1');
INSERT INTO `x_log` VALUES ('3110', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-26 10:45:41', '1');
INSERT INTO `x_log` VALUES ('3111', '查询操作', '查询商品类别信息', '2023-06-26 10:46:53', '1');
INSERT INTO `x_log` VALUES ('3112', '查询操作', '分页查询商品信息', '2023-06-26 10:46:53', '1');
INSERT INTO `x_log` VALUES ('3113', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-26 10:46:53', '1');
INSERT INTO `x_log` VALUES ('3114', '查询操作', '查询商品类别信息', '2023-06-26 10:46:57', '1');
INSERT INTO `x_log` VALUES ('3115', '查询操作', '分页查询商品信息', '2023-06-26 10:46:57', '1');
INSERT INTO `x_log` VALUES ('3116', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-26 10:46:58', '1');
INSERT INTO `x_log` VALUES ('3117', '查询操作', '查询商品类别信息', '2023-06-26 10:47:02', '1');
INSERT INTO `x_log` VALUES ('3118', '查询操作', '查询所有客户', '2023-06-26 10:47:02', '1');
INSERT INTO `x_log` VALUES ('3119', '查询操作', '分页查询商品信息', '2023-06-26 10:47:02', '1');
INSERT INTO `x_log` VALUES ('3120', '查询操作', '查询商品类别信息', '2023-06-26 10:47:09', '1');
INSERT INTO `x_log` VALUES ('3121', '查询操作', '分页查询商品信息', '2023-06-26 10:47:09', '1');
INSERT INTO `x_log` VALUES ('3122', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-26 10:47:11', '1');
INSERT INTO `x_log` VALUES ('3123', '查询操作', '分页查询商品信息', '2023-06-26 10:47:32', '1');
INSERT INTO `x_log` VALUES ('3124', '查询操作', '查询商品:Nike经典童鞋', '2023-06-26 10:47:36', '1');
INSERT INTO `x_log` VALUES ('3125', '查询操作', '分页查询商品信息', '2023-06-26 10:47:58', '1');
INSERT INTO `x_log` VALUES ('3126', '查询操作', '查询商品:Nike经典童鞋', '2023-06-26 10:48:00', '1');
INSERT INTO `x_log` VALUES ('3127', '查询操作', '查询商品类别信息', '2023-06-26 10:48:19', '1');
INSERT INTO `x_log` VALUES ('3128', '查询操作', '查询所有客户', '2023-06-26 10:48:19', '1');
INSERT INTO `x_log` VALUES ('3129', '查询操作', '分页查询商品信息', '2023-06-26 10:48:19', '1');
INSERT INTO `x_log` VALUES ('3130', '查询操作', '分页查询客户退货信息', '2023-06-26 10:48:19', '1');
INSERT INTO `x_log` VALUES ('3131', '查询操作', '查询所有客户', '2023-06-26 10:48:20', '1');
INSERT INTO `x_log` VALUES ('3132', '查询操作', '查询商品类别信息', '2023-06-26 10:48:20', '1');
INSERT INTO `x_log` VALUES ('3133', '查询操作', '分页查询商品信息', '2023-06-26 10:48:20', '1');
INSERT INTO `x_log` VALUES ('3134', '查询操作', '查询按月统计', '2023-06-26 10:48:28', '1');
INSERT INTO `x_log` VALUES ('3135', '查询操作', '查询所有客户', '2023-06-26 10:52:39', '1');
INSERT INTO `x_log` VALUES ('3136', '查询操作', '查询商品类别信息', '2023-06-26 10:52:39', '1');
INSERT INTO `x_log` VALUES ('3137', '查询操作', '分页查询商品信息', '2023-06-26 10:52:39', '1');
INSERT INTO `x_log` VALUES ('3138', '查询操作', '查询商品类别信息', '2023-06-26 10:52:41', '1');
INSERT INTO `x_log` VALUES ('3139', '查询操作', '分页查询商品信息', '2023-06-26 10:52:41', '1');
INSERT INTO `x_log` VALUES ('3140', '查询操作', '查询商品类别信息', '2023-06-26 10:52:42', '1');
INSERT INTO `x_log` VALUES ('3141', '查询操作', '分页查询商品信息', '2023-06-26 10:52:42', '1');
INSERT INTO `x_log` VALUES ('3142', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-26 10:52:43', '1');
INSERT INTO `x_log` VALUES ('3143', '查询操作', '查询商品:Nike经典童鞋', '2023-06-26 10:52:47', '1');
INSERT INTO `x_log` VALUES ('3144', '查询操作', '查询商品类别信息', '2023-06-26 10:52:50', '1');
INSERT INTO `x_log` VALUES ('3145', '查询操作', '分页查询商品信息', '2023-06-26 10:52:50', '1');
INSERT INTO `x_log` VALUES ('3146', '查询操作', '查询商品:Nike经典童鞋', '2023-06-26 10:52:54', '1');
INSERT INTO `x_log` VALUES ('3147', '查询操作', '查询商品:Nike经典童鞋', '2023-06-26 10:52:58', '1');
INSERT INTO `x_log` VALUES ('3148', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-26 10:53:53', '1');
INSERT INTO `x_log` VALUES ('3149', '查询操作', '查询商品类别信息', '2023-06-26 10:53:58', '1');
INSERT INTO `x_log` VALUES ('3150', '查询操作', '分页查询商品信息', '2023-06-26 10:53:58', '1');
INSERT INTO `x_log` VALUES ('3151', '查询操作', '查询商品:Nike经典童鞋', '2023-06-26 10:54:00', '1');
INSERT INTO `x_log` VALUES ('3152', '查询操作', '查询商品:OCSILL长袜', '2023-06-26 10:54:05', '1');
INSERT INTO `x_log` VALUES ('3153', '查询操作', '查询商品类别信息', '2023-06-26 10:54:08', '1');
INSERT INTO `x_log` VALUES ('3154', '查询操作', '分页查询商品信息', '2023-06-26 10:54:08', '1');
INSERT INTO `x_log` VALUES ('3155', '查询操作', '查询按日统计', '2023-06-26 10:54:54', '1');
INSERT INTO `x_log` VALUES ('3156', '查询操作', '查询按月统计', '2023-06-26 10:55:04', '1');
INSERT INTO `x_log` VALUES ('3157', '查询操作', '查询商品类别信息', '2023-06-26 11:20:51', null);
INSERT INTO `x_log` VALUES ('3158', '查询操作', '分页查询商品信息', '2023-06-26 11:20:51', null);
INSERT INTO `x_log` VALUES ('3159', '查询操作', '查询所有供应商', '2023-06-26 11:20:55', null);
INSERT INTO `x_log` VALUES ('3160', '查询操作', '分页查询商品信息', '2023-06-26 11:20:55', null);
INSERT INTO `x_log` VALUES ('3161', '查询操作', '查询商品类别信息', '2023-06-26 11:20:55', null);
INSERT INTO `x_log` VALUES ('3162', '查询操作', '分页查询进货信息', '2023-06-26 11:20:55', null);
INSERT INTO `x_log` VALUES ('3163', '查询操作', '查询商品类别信息', '2023-06-26 11:26:57', null);
INSERT INTO `x_log` VALUES ('3164', '查询操作', '分页查询商品信息', '2023-06-26 11:26:57', null);
INSERT INTO `x_log` VALUES ('3165', '查询操作', '分页查询报损信息', '2023-06-26 11:26:57', null);
INSERT INTO `x_log` VALUES ('3166', '查询操作', '查询商品类别信息', '2023-06-26 11:27:02', null);
INSERT INTO `x_log` VALUES ('3167', '查询操作', '分页查询商品信息', '2023-06-26 11:27:02', null);
INSERT INTO `x_log` VALUES ('3168', '查询操作', '查询所有供应商', '2023-06-26 11:27:09', null);
INSERT INTO `x_log` VALUES ('3169', '查询操作', '查询商品类别信息', '2023-06-26 11:27:09', null);
INSERT INTO `x_log` VALUES ('3170', '查询操作', '分页查询商品信息', '2023-06-26 11:27:09', null);
INSERT INTO `x_log` VALUES ('3171', '查询操作', '分页查询供应商统计', '2023-06-26 11:27:09', null);
INSERT INTO `x_log` VALUES ('3172', '查询操作', '查询商品类别信息', '2023-06-26 11:27:11', null);
INSERT INTO `x_log` VALUES ('3173', '查询操作', '分页查询商品信息', '2023-06-26 11:27:11', null);
INSERT INTO `x_log` VALUES ('3174', '查询操作', '分页查询商品采购信息', '2023-06-26 11:27:11', null);
INSERT INTO `x_log` VALUES ('3175', '查询操作', '查询商品类别信息', '2023-06-26 11:27:12', null);
INSERT INTO `x_log` VALUES ('3176', '查询操作', '分页查询商品信息', '2023-06-26 11:27:12', null);
INSERT INTO `x_log` VALUES ('3177', '查询操作', '分页查询商品销售统计', '2023-06-26 11:27:12', null);
INSERT INTO `x_log` VALUES ('3178', '查询操作', '查询商品类别信息', '2023-06-26 11:27:19', null);
INSERT INTO `x_log` VALUES ('3179', '查询操作', '分页查询商品信息', '2023-06-26 11:27:19', null);
INSERT INTO `x_log` VALUES ('3180', '查询操作', '查询所有服饰类商品', '2023-06-26 11:29:35', null);
INSERT INTO `x_log` VALUES ('3181', '查询操作', '分页查询小程序端的商品信息', '2023-06-26 11:29:35', null);
INSERT INTO `x_log` VALUES ('3182', '查询操作', '分页查询小程序端用户评论信息', '2023-06-26 11:30:31', null);
INSERT INTO `x_log` VALUES ('3183', '查询操作', '查询所有供应商', '2023-06-26 12:04:38', null);
INSERT INTO `x_log` VALUES ('3184', '查询操作', '查询商品类别信息', '2023-06-26 12:04:38', null);
INSERT INTO `x_log` VALUES ('3185', '查询操作', '分页查询商品信息', '2023-06-26 12:04:38', null);
INSERT INTO `x_log` VALUES ('3186', '查询操作', '分页查询进货信息', '2023-06-26 12:04:38', null);
INSERT INTO `x_log` VALUES ('3187', '查询操作', '查询所有服饰类商品', '2023-06-26 12:04:54', null);
INSERT INTO `x_log` VALUES ('3188', '查询操作', '分页查询小程序端的商品信息', '2023-06-26 12:04:54', null);
INSERT INTO `x_log` VALUES ('3189', '查询操作', '分页查询小程序端用户评论信息', '2023-06-26 12:05:38', null);
INSERT INTO `x_log` VALUES ('3190', '查询操作', '查询商品类别信息', '2023-06-26 12:05:43', null);
INSERT INTO `x_log` VALUES ('3191', '查询操作', '分页查询客户', '2023-06-26 12:05:43', null);
INSERT INTO `x_log` VALUES ('3192', '查询操作', '分页查询小程序端用户评论信息', '2023-06-26 12:08:31', null);
INSERT INTO `x_log` VALUES ('3193', '查询操作', '查询商品类别信息', '2023-06-26 12:08:35', null);
INSERT INTO `x_log` VALUES ('3194', '查询操作', '分页查询商品信息', '2023-06-26 12:08:35', null);
INSERT INTO `x_log` VALUES ('3195', '查询操作', '查询按月统计', '2023-06-26 14:15:15', '1');
INSERT INTO `x_log` VALUES ('3196', '查询操作', '优衣库销售额查询按日统计', '2023-06-26 14:21:31', '1');
INSERT INTO `x_log` VALUES ('3197', '查询操作', '优衣库销售额查询按日统计', '2023-06-26 14:21:31', '1');
INSERT INTO `x_log` VALUES ('3198', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-26 14:21:31', '1');
INSERT INTO `x_log` VALUES ('3199', '查询操作', '查询按日统计', '2023-06-26 14:24:10', '1');
INSERT INTO `x_log` VALUES ('3200', '查询操作', '查询按月统计', '2023-06-26 14:24:57', '1');
INSERT INTO `x_log` VALUES ('3201', '查询操作', '查询按月统计', '2023-06-26 14:25:05', '1');
INSERT INTO `x_log` VALUES ('3202', '查询操作', '查询按日统计', '2023-06-26 14:46:06', '1');
INSERT INTO `x_log` VALUES ('3203', '查询操作', '查询按日统计', '2023-06-26 14:46:13', '1');
INSERT INTO `x_log` VALUES ('3204', '退出操作', '退出登录', '2023-06-26 15:26:36', '1');
INSERT INTO `x_log` VALUES ('3205', '查询操作', '优衣库销售额查询按日统计', '2023-06-26 15:31:06', '1');
INSERT INTO `x_log` VALUES ('3206', '查询操作', '优衣库销售额查询按日统计', '2023-06-26 15:31:06', '1');
INSERT INTO `x_log` VALUES ('3207', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-26 15:31:06', '1');
INSERT INTO `x_log` VALUES ('3208', '退出操作', '退出登录', '2023-06-26 15:40:10', '1');
INSERT INTO `x_log` VALUES ('3209', '查询操作', '查询所有角色', '2023-06-26 15:40:22', '1');
INSERT INTO `x_log` VALUES ('3210', '查询操作', '分页查询用户信息', '2023-06-26 15:40:22', '1');
INSERT INTO `x_log` VALUES ('3211', '查询操作', '查询用户:uniqlo', '2023-06-26 15:40:23', '1');
INSERT INTO `x_log` VALUES ('3212', '查询操作', '分页查询角色信息', '2023-06-26 15:40:34', '1');
INSERT INTO `x_log` VALUES ('3213', '查询操作', '查询所有角色', '2023-06-26 15:40:37', '1');
INSERT INTO `x_log` VALUES ('3214', '查询操作', '分页查询用户信息', '2023-06-26 15:40:37', '1');
INSERT INTO `x_log` VALUES ('3215', '查询操作', '查询所有用户', '2023-06-26 15:41:12', '1');
INSERT INTO `x_log` VALUES ('3216', '查询操作', '查询商品类别信息', '2023-06-26 15:41:27', '1');
INSERT INTO `x_log` VALUES ('3217', '查询操作', '分页查询商品信息', '2023-06-26 15:41:27', '1');
INSERT INTO `x_log` VALUES ('3218', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-26 15:41:32', '1');
INSERT INTO `x_log` VALUES ('3219', '查询操作', '查询所有服饰类商品', '2023-06-26 15:42:03', '1');
INSERT INTO `x_log` VALUES ('3220', '查询操作', '分页查询小程序端的商品信息', '2023-06-26 15:42:03', '1');
INSERT INTO `x_log` VALUES ('3221', '查询操作', '查询商品类别信息', '2023-06-26 15:45:34', '1');
INSERT INTO `x_log` VALUES ('3222', '查询操作', '查询所有供应商', '2023-06-26 15:45:34', '1');
INSERT INTO `x_log` VALUES ('3223', '查询操作', '分页查询商品信息', '2023-06-26 15:45:34', '1');
INSERT INTO `x_log` VALUES ('3224', '查询操作', '分页查询进货信息', '2023-06-26 15:45:34', '1');
INSERT INTO `x_log` VALUES ('3225', '查询操作', '查询商品类别信息', '2023-06-26 15:48:47', '1');
INSERT INTO `x_log` VALUES ('3226', '查询操作', '分页查询商品信息', '2023-06-26 15:48:47', '1');
INSERT INTO `x_log` VALUES ('3227', '查询操作', '查询商品类别信息', '2023-06-26 15:48:52', '1');
INSERT INTO `x_log` VALUES ('3228', '查询操作', '分页查询商品信息', '2023-06-26 15:48:52', '1');
INSERT INTO `x_log` VALUES ('3229', '查询操作', '查询所有供应商', '2023-06-26 15:48:52', '1');
INSERT INTO `x_log` VALUES ('3230', '查询操作', '分页查询进货信息', '2023-06-26 15:48:52', '1');
INSERT INTO `x_log` VALUES ('3231', '查询操作', '查询所有供应商', '2023-06-26 15:49:15', '1');
INSERT INTO `x_log` VALUES ('3232', '查询操作', '查询商品类别信息', '2023-06-26 15:49:15', '1');
INSERT INTO `x_log` VALUES ('3233', '查询操作', '分页查询进货信息', '2023-06-26 15:49:15', '1');
INSERT INTO `x_log` VALUES ('3234', '查询操作', '分页查询商品信息', '2023-06-26 15:49:15', '1');
INSERT INTO `x_log` VALUES ('3235', '查询操作', '查询所有供应商', '2023-06-26 15:49:21', '1');
INSERT INTO `x_log` VALUES ('3236', '查询操作', '查询商品类别信息', '2023-06-26 15:49:21', '1');
INSERT INTO `x_log` VALUES ('3237', '查询操作', '分页查询进货信息', '2023-06-26 15:49:21', '1');
INSERT INTO `x_log` VALUES ('3238', '查询操作', '分页查询商品信息', '2023-06-26 15:49:21', '1');
INSERT INTO `x_log` VALUES ('3239', '查询操作', '查询商品类别信息', '2023-06-26 15:49:22', '1');
INSERT INTO `x_log` VALUES ('3240', '查询操作', '分页查询商品信息', '2023-06-26 15:49:22', '1');
INSERT INTO `x_log` VALUES ('3241', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-26 15:49:23', '1');
INSERT INTO `x_log` VALUES ('3242', '查询操作', '查询所有供应商', '2023-06-26 15:49:28', '1');
INSERT INTO `x_log` VALUES ('3243', '查询操作', '查询商品类别信息', '2023-06-26 15:49:28', '1');
INSERT INTO `x_log` VALUES ('3244', '查询操作', '分页查询进货信息', '2023-06-26 15:49:28', '1');
INSERT INTO `x_log` VALUES ('3245', '查询操作', '分页查询商品信息', '2023-06-26 15:49:28', '1');
INSERT INTO `x_log` VALUES ('3246', '查询操作', '查询商品类别信息', '2023-06-26 15:50:11', '1');
INSERT INTO `x_log` VALUES ('3247', '查询操作', '分页查询商品信息', '2023-06-26 15:50:11', '1');
INSERT INTO `x_log` VALUES ('3248', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-26 15:50:12', '1');
INSERT INTO `x_log` VALUES ('3249', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-26 15:50:14', '1');
INSERT INTO `x_log` VALUES ('3250', '查询操作', '查询所有供应商', '2023-06-26 15:50:29', '1');
INSERT INTO `x_log` VALUES ('3251', '查询操作', '分页查询进货信息', '2023-06-26 15:50:29', '1');
INSERT INTO `x_log` VALUES ('3252', '查询操作', '查询商品类别信息', '2023-06-26 15:50:29', '1');
INSERT INTO `x_log` VALUES ('3253', '查询操作', '分页查询商品信息', '2023-06-26 15:50:29', '1');
INSERT INTO `x_log` VALUES ('3254', '修改操作', '进货单号JH1671702485890998274现在付款', '2023-06-26 15:50:45', '1');
INSERT INTO `x_log` VALUES ('3255', '查询操作', '分页查询进货信息', '2023-06-26 15:50:45', '1');
INSERT INTO `x_log` VALUES ('3256', '查询操作', '分页查询进货信息', '2023-06-26 15:50:52', '1');
INSERT INTO `x_log` VALUES ('3257', '查询操作', '查询商品类别信息', '2023-06-26 15:51:07', '1');
INSERT INTO `x_log` VALUES ('3258', '查询操作', '分页查询商品信息', '2023-06-26 15:51:07', '1');
INSERT INTO `x_log` VALUES ('3259', '查询操作', '查询商品类别信息', '2023-06-26 15:51:20', '1');
INSERT INTO `x_log` VALUES ('3260', '查询操作', '分页查询商品信息', '2023-06-26 15:51:20', '1');
INSERT INTO `x_log` VALUES ('3261', '查询操作', '查询商品类别信息', '2023-06-26 15:51:22', '1');
INSERT INTO `x_log` VALUES ('3262', '查询操作', '分页查询库存预警商品信息', '2023-06-26 15:51:22', '1');
INSERT INTO `x_log` VALUES ('3263', '查询操作', '查询商品类别信息', '2023-06-26 15:51:40', '1');
INSERT INTO `x_log` VALUES ('3264', '查询操作', '分页查询商品信息', '2023-06-26 15:51:40', '1');
INSERT INTO `x_log` VALUES ('3265', '查询操作', '分页查询报损信息', '2023-06-26 15:51:40', '1');
INSERT INTO `x_log` VALUES ('3266', '查询操作', '分页查询库存信息', '2023-06-26 15:51:42', '1');
INSERT INTO `x_log` VALUES ('3267', '查询操作', '查询商品类别信息', '2023-06-26 15:51:52', '1');
INSERT INTO `x_log` VALUES ('3268', '查询操作', '查询所有供应商', '2023-06-26 15:51:52', '1');
INSERT INTO `x_log` VALUES ('3269', '查询操作', '分页查询商品信息', '2023-06-26 15:51:52', '1');
INSERT INTO `x_log` VALUES ('3270', '查询操作', '分页查询供应商统计', '2023-06-26 15:51:52', '1');
INSERT INTO `x_log` VALUES ('3271', '查询操作', '查询商品类别信息', '2023-06-26 15:51:57', '1');
INSERT INTO `x_log` VALUES ('3272', '查询操作', '分页查询商品信息', '2023-06-26 15:51:57', '1');
INSERT INTO `x_log` VALUES ('3273', '查询操作', '查询所有客户', '2023-06-26 15:51:57', '1');
INSERT INTO `x_log` VALUES ('3274', '查询操作', '分页查询客户统计', '2023-06-26 15:51:57', '1');
INSERT INTO `x_log` VALUES ('3275', '查询操作', '查询所有供应商', '2023-06-26 15:51:58', '1');
INSERT INTO `x_log` VALUES ('3276', '查询操作', '查询商品类别信息', '2023-06-26 15:51:58', '1');
INSERT INTO `x_log` VALUES ('3277', '查询操作', '分页查询供应商统计', '2023-06-26 15:51:58', '1');
INSERT INTO `x_log` VALUES ('3278', '查询操作', '分页查询商品信息', '2023-06-26 15:51:58', '1');
INSERT INTO `x_log` VALUES ('3279', '查询操作', '查询所有客户', '2023-06-26 15:51:58', '1');
INSERT INTO `x_log` VALUES ('3280', '查询操作', '查询商品类别信息', '2023-06-26 15:51:58', '1');
INSERT INTO `x_log` VALUES ('3281', '查询操作', '分页查询客户统计', '2023-06-26 15:51:58', '1');
INSERT INTO `x_log` VALUES ('3282', '查询操作', '分页查询商品信息', '2023-06-26 15:51:58', '1');
INSERT INTO `x_log` VALUES ('3283', '查询操作', '查询商品类别信息', '2023-06-26 15:52:02', '1');
INSERT INTO `x_log` VALUES ('3284', '查询操作', '查询所有供应商', '2023-06-26 15:52:02', '1');
INSERT INTO `x_log` VALUES ('3285', '查询操作', '分页查询供应商统计', '2023-06-26 15:52:02', '1');
INSERT INTO `x_log` VALUES ('3286', '查询操作', '分页查询商品信息', '2023-06-26 15:52:02', '1');
INSERT INTO `x_log` VALUES ('3287', '查询操作', '分页查询供应商统计', '2023-06-26 15:52:12', '1');
INSERT INTO `x_log` VALUES ('3288', '查询操作', '查询商品类别信息', '2023-06-26 15:52:12', '1');
INSERT INTO `x_log` VALUES ('3289', '查询操作', '查询所有供应商', '2023-06-26 15:52:12', '1');
INSERT INTO `x_log` VALUES ('3290', '查询操作', '分页查询商品信息', '2023-06-26 15:52:12', '1');
INSERT INTO `x_log` VALUES ('3291', '查询操作', '查询商品类别信息', '2023-06-26 15:52:16', '1');
INSERT INTO `x_log` VALUES ('3292', '查询操作', '分页查询供应商信息', '2023-06-26 15:52:16', '1');
INSERT INTO `x_log` VALUES ('3293', '查询操作', '查询商品类别信息', '2023-06-26 15:52:51', '1');
INSERT INTO `x_log` VALUES ('3294', '查询操作', '查询所有供应商', '2023-06-26 15:52:51', '1');
INSERT INTO `x_log` VALUES ('3295', '查询操作', '分页查询进货信息', '2023-06-26 15:52:51', '1');
INSERT INTO `x_log` VALUES ('3296', '查询操作', '分页查询商品信息', '2023-06-26 15:52:51', '1');
INSERT INTO `x_log` VALUES ('3297', '查询操作', '查询商品类别信息', '2023-06-26 15:53:42', '1');
INSERT INTO `x_log` VALUES ('3298', '查询操作', '分页查询商品信息', '2023-06-26 15:53:42', '1');
INSERT INTO `x_log` VALUES ('3299', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-26 15:53:43', '1');
INSERT INTO `x_log` VALUES ('3300', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-26 15:53:46', '1');
INSERT INTO `x_log` VALUES ('3301', '查询操作', '查询按日统计', '2023-06-26 15:54:58', '1');
INSERT INTO `x_log` VALUES ('3302', '查询操作', '查询按日统计', '2023-06-26 15:55:14', '1');
INSERT INTO `x_log` VALUES ('3303', '查询操作', '查询按月统计', '2023-06-26 15:55:22', '1');
INSERT INTO `x_log` VALUES ('3304', '查询操作', '查询商品类别信息', '2023-06-26 15:55:59', '1');
INSERT INTO `x_log` VALUES ('3305', '查询操作', '分页查询供应商信息', '2023-06-26 15:55:59', '1');
INSERT INTO `x_log` VALUES ('3306', '查询操作', '查询商品类别信息', '2023-06-26 15:56:15', '1');
INSERT INTO `x_log` VALUES ('3307', '查询操作', '分页查询商品信息', '2023-06-26 15:56:15', '1');
INSERT INTO `x_log` VALUES ('3308', '查询操作', '查询所有服饰类商品', '2023-06-26 15:59:22', '1');
INSERT INTO `x_log` VALUES ('3309', '查询操作', '分页查询小程序端的商品信息', '2023-06-26 15:59:22', '1');
INSERT INTO `x_log` VALUES ('3310', '查询操作', '分页查询小程序端用户评论信息', '2023-06-26 15:59:26', '1');
INSERT INTO `x_log` VALUES ('3311', '查询操作', '分页查询小程序端客户订单信息', '2023-06-26 15:59:42', '1');
INSERT INTO `x_log` VALUES ('3312', '修改操作', '销售单号1667109271536070658现在发货', '2023-06-26 15:59:52', '1');
INSERT INTO `x_log` VALUES ('3313', '查询操作', '分页查询小程序端客户订单信息', '2023-06-26 15:59:52', '1');
INSERT INTO `x_log` VALUES ('3314', '查询操作', '优衣库销售额查询按日统计', '2023-06-26 16:00:02', '1');
INSERT INTO `x_log` VALUES ('3315', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-26 16:00:02', '1');
INSERT INTO `x_log` VALUES ('3316', '查询操作', '优衣库销售额查询按日统计', '2023-06-26 16:00:02', '1');
INSERT INTO `x_log` VALUES ('3317', '查询操作', '查询商品类别信息', '2023-06-26 16:07:01', '1');
INSERT INTO `x_log` VALUES ('3318', '查询操作', '分页查询商品信息', '2023-06-26 16:07:01', '1');
INSERT INTO `x_log` VALUES ('3319', '查询操作', '查询商品类别信息', '2023-06-26 16:07:04', '1');
INSERT INTO `x_log` VALUES ('3320', '查询操作', '分页查询商品信息', '2023-06-26 16:07:04', '1');
INSERT INTO `x_log` VALUES ('3321', '查询操作', '分页查询小程序端客户订单信息', '2023-06-26 16:07:10', '1');
INSERT INTO `x_log` VALUES ('3322', '查询操作', '查询商品类别信息', '2023-06-26 16:07:14', '1');
INSERT INTO `x_log` VALUES ('3323', '查询操作', '分页查询商品信息', '2023-06-26 16:07:14', '1');
INSERT INTO `x_log` VALUES ('3324', '查询操作', '分页查询小程序端用户评论信息', '2023-06-26 16:07:17', '1');
INSERT INTO `x_log` VALUES ('3325', '查询操作', '查询商品类别信息', '2023-06-26 16:15:28', '1');
INSERT INTO `x_log` VALUES ('3326', '查询操作', '分页查询商品信息', '2023-06-26 16:15:28', '1');
INSERT INTO `x_log` VALUES ('3327', '查询操作', '查询商品类别信息', '2023-06-26 17:12:47', '1');
INSERT INTO `x_log` VALUES ('3328', '查询操作', '分页查询供应商信息', '2023-06-26 17:12:47', '1');
INSERT INTO `x_log` VALUES ('3329', '查询操作', '查询商品类别信息', '2023-06-26 17:13:13', '1');
INSERT INTO `x_log` VALUES ('3330', '查询操作', '分页查询供应商信息', '2023-06-26 17:13:13', '1');
INSERT INTO `x_log` VALUES ('3331', '查询操作', '查询商品类别信息', '2023-06-26 17:14:21', '1');
INSERT INTO `x_log` VALUES ('3332', '查询操作', '分页查询供应商信息', '2023-06-26 17:14:21', '1');
INSERT INTO `x_log` VALUES ('3333', '查询操作', '查询商品类别信息', '2023-06-26 17:14:22', '1');
INSERT INTO `x_log` VALUES ('3334', '查询操作', '分页查询客户', '2023-06-26 17:14:22', '1');
INSERT INTO `x_log` VALUES ('3335', '查询操作', '查询商品类别信息', '2023-06-26 17:14:29', '1');
INSERT INTO `x_log` VALUES ('3336', '查询操作', '分页查询供应商信息', '2023-06-26 17:14:29', '1');
INSERT INTO `x_log` VALUES ('3337', '查询操作', '查询商品类别信息', '2023-06-26 17:14:31', '1');
INSERT INTO `x_log` VALUES ('3338', '查询操作', '分页查询客户', '2023-06-26 17:14:31', '1');
INSERT INTO `x_log` VALUES ('3339', '查询操作', '查询商品类别信息', '2023-06-26 17:14:40', '1');
INSERT INTO `x_log` VALUES ('3340', '查询操作', '分页查询供应商信息', '2023-06-26 17:14:40', '1');
INSERT INTO `x_log` VALUES ('3341', '查询操作', '查询商品类别信息', '2023-06-26 17:15:06', '1');
INSERT INTO `x_log` VALUES ('3342', '查询操作', '分页查询客户', '2023-06-26 17:15:06', '1');
INSERT INTO `x_log` VALUES ('3343', '查询操作', '查询商品类别信息', '2023-06-26 17:15:10', '1');
INSERT INTO `x_log` VALUES ('3344', '查询操作', '分页查询供应商信息', '2023-06-26 17:15:10', '1');
INSERT INTO `x_log` VALUES ('3345', '查询操作', '查询商品类别信息', '2023-06-26 17:15:41', '1');
INSERT INTO `x_log` VALUES ('3346', '查询操作', '分页查询客户', '2023-06-26 17:15:41', '1');
INSERT INTO `x_log` VALUES ('3347', '查询操作', '查询商品类别信息', '2023-06-26 17:16:16', '1');
INSERT INTO `x_log` VALUES ('3348', '查询操作', '分页查询供应商信息', '2023-06-26 17:16:16', '1');
INSERT INTO `x_log` VALUES ('3349', '查询操作', '查询商品类别信息', '2023-06-26 17:16:20', '1');
INSERT INTO `x_log` VALUES ('3350', '查询操作', '分页查询客户', '2023-06-26 17:16:20', '1');
INSERT INTO `x_log` VALUES ('3351', '查询操作', '查询商品类别信息', '2023-06-26 17:19:57', '1');
INSERT INTO `x_log` VALUES ('3352', '查询操作', '分页查询客户', '2023-06-26 17:19:57', '1');
INSERT INTO `x_log` VALUES ('3353', '查询操作', '查询商品类别信息', '2023-06-26 17:22:13', '1');
INSERT INTO `x_log` VALUES ('3354', '查询操作', '分页查询客户', '2023-06-26 17:22:13', '1');
INSERT INTO `x_log` VALUES ('3355', '查询操作', '查询商品类别信息', '2023-06-26 17:22:16', '1');
INSERT INTO `x_log` VALUES ('3356', '查询操作', '分页查询供应商信息', '2023-06-26 17:22:16', '1');
INSERT INTO `x_log` VALUES ('3357', '新增操作', '新增供应商:aaaaaaa', '2023-06-26 17:23:28', '1');
INSERT INTO `x_log` VALUES ('3358', '查询操作', '分页查询供应商信息', '2023-06-26 17:23:28', '1');
INSERT INTO `x_log` VALUES ('3359', '新增操作', '新增供应商:null', '2023-06-26 17:23:29', '1');
INSERT INTO `x_log` VALUES ('3360', '查询操作', '分页查询供应商信息', '2023-06-26 17:23:29', '1');
INSERT INTO `x_log` VALUES ('3361', '查询操作', '查询商品类别信息', '2023-06-26 17:23:52', '1');
INSERT INTO `x_log` VALUES ('3362', '查询操作', '分页查询供应商信息', '2023-06-26 17:23:52', '1');
INSERT INTO `x_log` VALUES ('3363', '查询操作', '查询商品类别信息', '2023-06-26 17:25:17', '1');
INSERT INTO `x_log` VALUES ('3364', '查询操作', '分页查询供应商信息', '2023-06-26 17:25:17', '1');
INSERT INTO `x_log` VALUES ('3365', '查询操作', '查询商品类别信息', '2023-06-26 17:25:20', '1');
INSERT INTO `x_log` VALUES ('3366', '查询操作', '分页查询客户', '2023-06-26 17:25:20', '1');
INSERT INTO `x_log` VALUES ('3367', '新增操作', '新增客户:44444444', '2023-06-26 17:25:57', '1');
INSERT INTO `x_log` VALUES ('3368', '查询操作', '分页查询客户', '2023-06-26 17:25:57', '1');
INSERT INTO `x_log` VALUES ('3369', '查询操作', '查询商品类别信息', '2023-06-26 23:17:27', '1');
INSERT INTO `x_log` VALUES ('3370', '查询操作', '分页查询客户', '2023-06-26 23:17:27', '1');
INSERT INTO `x_log` VALUES ('3371', '查询操作', '查询商品类别信息', '2023-06-26 23:17:43', '1');
INSERT INTO `x_log` VALUES ('3372', '查询操作', '分页查询商品信息', '2023-06-26 23:17:43', '1');
INSERT INTO `x_log` VALUES ('3373', '查询操作', '查询所有服饰类商品', '2023-06-26 23:18:32', '1');
INSERT INTO `x_log` VALUES ('3374', '查询操作', '分页查询小程序端的商品信息', '2023-06-26 23:18:32', '1');
INSERT INTO `x_log` VALUES ('3375', '查询操作', '查询商品类别信息', '2023-06-26 23:19:16', '1');
INSERT INTO `x_log` VALUES ('3376', '查询操作', '分页查询商品信息', '2023-06-26 23:19:16', '1');
INSERT INTO `x_log` VALUES ('3377', '查询操作', '查询所有服饰类商品', '2023-06-26 23:19:27', '1');
INSERT INTO `x_log` VALUES ('3378', '查询操作', '分页查询小程序端的商品信息', '2023-06-26 23:19:27', '1');
INSERT INTO `x_log` VALUES ('3379', '查询操作', '查询商品类别信息', '2023-06-26 23:21:14', '1');
INSERT INTO `x_log` VALUES ('3380', '查询操作', '分页查询商品信息', '2023-06-26 23:21:14', '1');
INSERT INTO `x_log` VALUES ('3381', '查询操作', '查询商品类别信息', '2023-06-26 23:24:33', '1');
INSERT INTO `x_log` VALUES ('3382', '查询操作', '分页查询商品信息', '2023-06-26 23:24:33', '1');
INSERT INTO `x_log` VALUES ('3383', '查询操作', '查询商品类别信息', '2023-06-26 23:26:18', '1');
INSERT INTO `x_log` VALUES ('3384', '查询操作', '分页查询商品信息', '2023-06-26 23:26:18', '1');
INSERT INTO `x_log` VALUES ('3385', '新增操作', '新增商品:aaaa', '2023-06-26 23:27:24', '1');
INSERT INTO `x_log` VALUES ('3386', '查询操作', '分页查询商品信息', '2023-06-26 23:27:24', '1');
INSERT INTO `x_log` VALUES ('3387', '查询操作', '查询所有服饰类商品', '2023-06-26 23:27:51', '1');
INSERT INTO `x_log` VALUES ('3388', '查询操作', '分页查询小程序端的商品信息', '2023-06-26 23:27:51', '1');
INSERT INTO `x_log` VALUES ('3389', '查询操作', '查询所有服饰类商品', '2023-06-26 23:30:21', '1');
INSERT INTO `x_log` VALUES ('3390', '查询操作', '分页查询小程序端的商品信息', '2023-06-26 23:30:21', '1');
INSERT INTO `x_log` VALUES ('3391', '查询操作', '查询商品类别信息', '2023-06-26 23:30:23', '1');
INSERT INTO `x_log` VALUES ('3392', '查询操作', '分页查询商品信息', '2023-06-26 23:30:23', '1');
INSERT INTO `x_log` VALUES ('3393', '查询操作', '查询商品类别信息', '2023-06-26 23:32:57', '1');
INSERT INTO `x_log` VALUES ('3394', '查询操作', '分页查询商品信息', '2023-06-26 23:32:57', '1');
INSERT INTO `x_log` VALUES ('3395', '查询操作', '查询商品类别信息', '2023-06-26 23:34:42', '1');
INSERT INTO `x_log` VALUES ('3396', '查询操作', '分页查询商品信息', '2023-06-26 23:34:42', '1');
INSERT INTO `x_log` VALUES ('3397', '查询操作', '查询商品类别信息', '2023-06-26 23:35:15', '1');
INSERT INTO `x_log` VALUES ('3398', '查询操作', '分页查询商品信息', '2023-06-26 23:35:15', '1');
INSERT INTO `x_log` VALUES ('3399', '新增操作', '新增商品:111111111', '2023-06-26 23:35:48', '1');
INSERT INTO `x_log` VALUES ('3400', '查询操作', '分页查询商品信息', '2023-06-26 23:35:48', '1');
INSERT INTO `x_log` VALUES ('3401', '查询操作', '查询商品类别信息', '2023-06-26 23:36:49', '1');
INSERT INTO `x_log` VALUES ('3402', '查询操作', '分页查询商品信息', '2023-06-26 23:36:49', '1');
INSERT INTO `x_log` VALUES ('3403', '新增操作', '新增商品:aaaaaaa', '2023-06-26 23:37:34', '1');
INSERT INTO `x_log` VALUES ('3404', '查询操作', '分页查询商品信息', '2023-06-26 23:37:34', '1');
INSERT INTO `x_log` VALUES ('3405', '查询操作', '查询商品类别信息', '2023-06-26 23:40:52', '1');
INSERT INTO `x_log` VALUES ('3406', '查询操作', '分页查询商品信息', '2023-06-26 23:40:52', '1');
INSERT INTO `x_log` VALUES ('3407', '新增操作', '新增商品:1111', '2023-06-26 23:41:32', '1');
INSERT INTO `x_log` VALUES ('3408', '查询操作', '分页查询商品信息', '2023-06-26 23:41:32', '1');
INSERT INTO `x_log` VALUES ('3409', '查询操作', '查询商品类别信息', '2023-06-26 23:43:53', '1');
INSERT INTO `x_log` VALUES ('3410', '查询操作', '分页查询商品信息', '2023-06-26 23:43:53', '1');
INSERT INTO `x_log` VALUES ('3411', '查询操作', '查询商品类别信息', '2023-06-26 23:44:07', '1');
INSERT INTO `x_log` VALUES ('3412', '查询操作', '分页查询商品信息', '2023-06-26 23:44:07', '1');
INSERT INTO `x_log` VALUES ('3413', '新增操作', '新增商品:6666', '2023-06-26 23:44:37', '1');
INSERT INTO `x_log` VALUES ('3414', '查询操作', '分页查询商品信息', '2023-06-26 23:44:37', '1');
INSERT INTO `x_log` VALUES ('3415', '查询操作', '查询商品类别信息', '2023-06-26 23:45:21', '1');
INSERT INTO `x_log` VALUES ('3416', '查询操作', '分页查询商品信息', '2023-06-26 23:45:21', '1');
INSERT INTO `x_log` VALUES ('3417', '查询操作', '查询商品类别信息', '2023-06-26 23:46:06', '1');
INSERT INTO `x_log` VALUES ('3418', '查询操作', '分页查询商品信息', '2023-06-26 23:46:06', '1');
INSERT INTO `x_log` VALUES ('3419', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-26 23:46:55', '1');
INSERT INTO `x_log` VALUES ('3420', '查询操作', '查询商品类别信息', '2023-06-26 23:52:16', '1');
INSERT INTO `x_log` VALUES ('3421', '查询操作', '分页查询商品信息', '2023-06-26 23:52:16', '1');
INSERT INTO `x_log` VALUES ('3422', '查询操作', '分页查询商品信息', '2023-06-26 23:52:20', '1');
INSERT INTO `x_log` VALUES ('3423', '查询操作', '分页查询商品信息', '2023-06-26 23:52:21', '1');
INSERT INTO `x_log` VALUES ('3424', '查询操作', '分页查询商品信息', '2023-06-26 23:52:22', '1');
INSERT INTO `x_log` VALUES ('3425', '查询操作', '查询商品类别信息', '2023-06-26 23:56:15', '1');
INSERT INTO `x_log` VALUES ('3426', '查询操作', '分页查询商品信息', '2023-06-26 23:56:15', '1');
INSERT INTO `x_log` VALUES ('3427', '查询操作', '分页查询商品信息', '2023-06-26 23:57:49', '1');
INSERT INTO `x_log` VALUES ('3428', '查询操作', '分页查询商品信息', '2023-06-26 23:57:52', '1');
INSERT INTO `x_log` VALUES ('3429', '查询操作', '查询商品类别信息', '2023-06-26 23:58:16', '1');
INSERT INTO `x_log` VALUES ('3430', '查询操作', '分页查询商品信息', '2023-06-26 23:58:16', '1');
INSERT INTO `x_log` VALUES ('3431', '查询操作', '分页查询商品信息', '2023-06-26 23:58:28', '1');
INSERT INTO `x_log` VALUES ('3432', '查询操作', '分页查询商品信息', '2023-06-26 23:58:30', '1');
INSERT INTO `x_log` VALUES ('3433', '查询操作', '查询商品类别信息', '2023-06-27 00:04:08', '1');
INSERT INTO `x_log` VALUES ('3434', '查询操作', '分页查询商品信息', '2023-06-27 00:04:08', '1');
INSERT INTO `x_log` VALUES ('3435', '查询操作', '分页查询商品信息', '2023-06-27 00:04:14', '1');
INSERT INTO `x_log` VALUES ('3436', '修改操作', '商品名称:qq牌甜糖上架小程序', '2023-06-27 00:04:19', '1');
INSERT INTO `x_log` VALUES ('3437', '查询操作', '分页查询商品信息', '2023-06-27 00:04:19', '1');
INSERT INTO `x_log` VALUES ('3438', '查询操作', '查询商品类别信息', '2023-06-27 00:04:48', '1');
INSERT INTO `x_log` VALUES ('3439', '查询操作', '分页查询商品信息', '2023-06-27 00:04:48', '1');
INSERT INTO `x_log` VALUES ('3440', '查询操作', '分页查询商品信息', '2023-06-27 00:04:51', '1');
INSERT INTO `x_log` VALUES ('3441', '修改操作', '商品名称:qq牌甜糖下架小程序', '2023-06-27 00:04:54', '1');
INSERT INTO `x_log` VALUES ('3442', '查询操作', '分页查询商品信息', '2023-06-27 00:04:54', '1');
INSERT INTO `x_log` VALUES ('3443', '查询操作', '分页查询商品信息', '2023-06-27 00:05:12', '1');
INSERT INTO `x_log` VALUES ('3444', '查询操作', '查询商品类别信息', '2023-06-27 00:07:48', '1');
INSERT INTO `x_log` VALUES ('3445', '查询操作', '分页查询商品信息', '2023-06-27 00:07:48', '1');
INSERT INTO `x_log` VALUES ('3446', '查询操作', '查询商品类别信息', '2023-06-27 00:07:50', '1');
INSERT INTO `x_log` VALUES ('3447', '查询操作', '分页查询商品信息', '2023-06-27 00:07:50', '1');
INSERT INTO `x_log` VALUES ('3448', '查询操作', '查询商品类别信息', '2023-06-27 00:07:53', '1');
INSERT INTO `x_log` VALUES ('3449', '查询操作', '分页查询商品信息', '2023-06-27 00:07:53', '1');
INSERT INTO `x_log` VALUES ('3450', '查询操作', '分页查询商品信息', '2023-06-27 00:08:13', '1');
INSERT INTO `x_log` VALUES ('3451', '修改操作', '商品名称:qq牌甜糖上架小程序', '2023-06-27 00:08:25', '1');
INSERT INTO `x_log` VALUES ('3452', '查询操作', '分页查询商品信息', '2023-06-27 00:08:25', '1');
INSERT INTO `x_log` VALUES ('3453', '修改操作', '商品名称:qq牌甜糖下架小程序', '2023-06-27 00:08:27', '1');
INSERT INTO `x_log` VALUES ('3454', '查询操作', '分页查询商品信息', '2023-06-27 00:08:27', '1');
INSERT INTO `x_log` VALUES ('3455', '查询操作', '分页查询商品信息', '2023-06-27 00:08:29', '1');
INSERT INTO `x_log` VALUES ('3456', '查询操作', '查询商品类别信息', '2023-06-27 00:08:33', '1');
INSERT INTO `x_log` VALUES ('3457', '查询操作', '分页查询商品信息', '2023-06-27 00:08:33', '1');
INSERT INTO `x_log` VALUES ('3458', '查询操作', '查询商品类别信息', '2023-06-27 00:09:09', '1');
INSERT INTO `x_log` VALUES ('3459', '查询操作', '分页查询商品信息', '2023-06-27 00:09:09', '1');
INSERT INTO `x_log` VALUES ('3460', '查询操作', '查询商品类别信息', '2023-06-27 00:09:11', '1');
INSERT INTO `x_log` VALUES ('3461', '查询操作', '分页查询商品信息', '2023-06-27 00:09:11', '1');
INSERT INTO `x_log` VALUES ('3462', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-27 00:10:39', '1');
INSERT INTO `x_log` VALUES ('3463', '查询操作', '优衣库销售额查询按日统计', '2023-06-27 00:10:39', '1');
INSERT INTO `x_log` VALUES ('3464', '查询操作', '优衣库销售额查询按日统计', '2023-06-27 00:10:39', '1');
INSERT INTO `x_log` VALUES ('3465', '查询操作', '查询按日统计', '2023-06-27 00:11:55', '1');
INSERT INTO `x_log` VALUES ('3466', '查询操作', '查询按月统计', '2023-06-27 00:12:05', '1');
INSERT INTO `x_log` VALUES ('3467', '查询操作', '查询商品类别信息', '2023-06-27 00:12:09', '1');
INSERT INTO `x_log` VALUES ('3468', '查询操作', '分页查询商品信息', '2023-06-27 00:12:09', '1');
INSERT INTO `x_log` VALUES ('3469', '查询操作', '分页查询商品销售统计', '2023-06-27 00:12:09', '1');
INSERT INTO `x_log` VALUES ('3470', '查询操作', '分页查询商品销售统计', '2023-06-27 00:15:50', '1');
INSERT INTO `x_log` VALUES ('3471', '查询操作', '查询商品类别信息', '2023-06-27 00:15:50', '1');
INSERT INTO `x_log` VALUES ('3472', '查询操作', '分页查询商品信息', '2023-06-27 00:15:50', '1');
INSERT INTO `x_log` VALUES ('3473', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-27 00:15:53', '1');
INSERT INTO `x_log` VALUES ('3474', '查询操作', '优衣库销售额查询按日统计', '2023-06-27 00:15:53', '1');
INSERT INTO `x_log` VALUES ('3475', '查询操作', '优衣库销售额查询按日统计', '2023-06-27 00:15:53', '1');
INSERT INTO `x_log` VALUES ('3476', '查询操作', '优衣库销售额查询按日统计', '2023-06-27 00:17:55', '1');
INSERT INTO `x_log` VALUES ('3477', '查询操作', '优衣库销售额查询按日统计', '2023-06-27 00:17:55', '1');
INSERT INTO `x_log` VALUES ('3478', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-27 00:17:55', '1');
INSERT INTO `x_log` VALUES ('3479', '查询操作', '查询商品类别信息', '2023-06-27 00:18:58', '1');
INSERT INTO `x_log` VALUES ('3480', '查询操作', '分页查询商品信息', '2023-06-27 00:18:58', '1');
INSERT INTO `x_log` VALUES ('3481', '查询操作', '查询商品类别信息', '2023-06-27 00:19:09', '1');
INSERT INTO `x_log` VALUES ('3482', '查询操作', '分页查询商品信息', '2023-06-27 00:19:09', '1');
INSERT INTO `x_log` VALUES ('3483', '查询操作', '查询所有供应商', '2023-06-27 00:19:09', '1');
INSERT INTO `x_log` VALUES ('3484', '查询操作', '分页查询供应商统计', '2023-06-27 00:19:09', '1');
INSERT INTO `x_log` VALUES ('3485', '查询操作', '分页查询供应商统计', '2023-06-27 00:19:13', '1');
INSERT INTO `x_log` VALUES ('3486', '查询操作', '查询商品类别信息', '2023-06-27 00:19:59', '1');
INSERT INTO `x_log` VALUES ('3487', '查询操作', '分页查询商品信息', '2023-06-27 00:19:59', '1');
INSERT INTO `x_log` VALUES ('3488', '查询操作', '查询商品类别信息', '2023-06-27 00:20:07', '1');
INSERT INTO `x_log` VALUES ('3489', '查询操作', '分页查询商品信息', '2023-06-27 00:20:07', '1');
INSERT INTO `x_log` VALUES ('3490', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-27 00:20:08', '1');
INSERT INTO `x_log` VALUES ('3491', '查询操作', '查询商品:直筒牛仔裤', '2023-06-27 00:20:29', '1');
INSERT INTO `x_log` VALUES ('3492', '查询操作', '查询所有供应商', '2023-06-27 00:23:49', '1');
INSERT INTO `x_log` VALUES ('3493', '查询操作', '查询商品类别信息', '2023-06-27 00:23:49', '1');
INSERT INTO `x_log` VALUES ('3494', '查询操作', '分页查询供应商统计', '2023-06-27 00:23:49', '1');
INSERT INTO `x_log` VALUES ('3495', '查询操作', '分页查询商品信息', '2023-06-27 00:23:49', '1');
INSERT INTO `x_log` VALUES ('3496', '查询操作', '查询商品类别信息', '2023-06-27 00:24:05', '1');
INSERT INTO `x_log` VALUES ('3497', '查询操作', '分页查询供应商信息', '2023-06-27 00:24:05', '1');
INSERT INTO `x_log` VALUES ('3498', '查询操作', '查询商品类别信息', '2023-06-27 00:26:07', '1');
INSERT INTO `x_log` VALUES ('3499', '查询操作', '分页查询商品信息', '2023-06-27 00:26:07', '1');
INSERT INTO `x_log` VALUES ('3500', '查询操作', '分页查询商品信息', '2023-06-27 00:26:25', '1');
INSERT INTO `x_log` VALUES ('3501', '查询操作', '查询商品:qq牌甜糖', '2023-06-27 00:26:27', '1');
INSERT INTO `x_log` VALUES ('3502', '查询操作', '查询商品:qq牌甜糖', '2023-06-27 00:26:37', '1');
INSERT INTO `x_log` VALUES ('3503', '修改操作', '修改商品:qq牌甜糖', '2023-06-27 00:26:56', '1');
INSERT INTO `x_log` VALUES ('3504', '查询操作', '分页查询商品信息', '2023-06-27 00:26:56', '1');
INSERT INTO `x_log` VALUES ('3505', '查询操作', '查询商品:qq牌甜糖', '2023-06-27 00:27:00', '1');
INSERT INTO `x_log` VALUES ('3506', '查询操作', '分页查询小程序端用户评论信息', '2023-06-27 10:04:11', '1');
INSERT INTO `x_log` VALUES ('3507', '查询操作', '分页查询小程序端用户评论信息', '2023-06-27 10:08:05', '1');
INSERT INTO `x_log` VALUES ('3508', '修改操作', '评论编号30审核失败', '2023-06-27 10:08:27', '1');
INSERT INTO `x_log` VALUES ('3509', '查询操作', '分页查询小程序端用户评论信息', '2023-06-27 10:08:27', '1');
INSERT INTO `x_log` VALUES ('3510', '修改操作', '评论编号22审核通过', '2023-06-27 10:08:31', '1');
INSERT INTO `x_log` VALUES ('3511', '查询操作', '分页查询小程序端用户评论信息', '2023-06-27 10:08:31', '1');
INSERT INTO `x_log` VALUES ('3512', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:10:51', '1');
INSERT INTO `x_log` VALUES ('3513', '查询操作', '分页查询小程序端用户评论信息', '2023-06-27 10:11:43', '1');
INSERT INTO `x_log` VALUES ('3514', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:14:59', '1');
INSERT INTO `x_log` VALUES ('3515', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:17:38', '1');
INSERT INTO `x_log` VALUES ('3516', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:17:52', '1');
INSERT INTO `x_log` VALUES ('3517', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:18:38', '1');
INSERT INTO `x_log` VALUES ('3518', '修改操作', '销售单号1673304115115663361现在发货', '2023-06-27 10:18:53', '1');
INSERT INTO `x_log` VALUES ('3519', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:18:53', '1');
INSERT INTO `x_log` VALUES ('3520', '修改操作', '销售单号1673306099252137985现在发货', '2023-06-27 10:18:56', '1');
INSERT INTO `x_log` VALUES ('3521', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:18:56', '1');
INSERT INTO `x_log` VALUES ('3522', '修改操作', '销售单号1673304115115663361已送达', '2023-06-27 10:19:27', '1');
INSERT INTO `x_log` VALUES ('3523', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:19:27', '1');
INSERT INTO `x_log` VALUES ('3524', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:20:35', '1');
INSERT INTO `x_log` VALUES ('3525', '修改操作', '销售单号1673364946566238209现在发货', '2023-06-27 10:20:37', '1');
INSERT INTO `x_log` VALUES ('3526', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:20:37', '1');
INSERT INTO `x_log` VALUES ('3527', '修改操作', '销售单号1673364946566238209已送达', '2023-06-27 10:20:39', '1');
INSERT INTO `x_log` VALUES ('3528', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:20:39', '1');
INSERT INTO `x_log` VALUES ('3529', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:24:08', '1');
INSERT INTO `x_log` VALUES ('3530', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:24:10', '1');
INSERT INTO `x_log` VALUES ('3531', '修改操作', '销售单号1673312734171312129现在发货', '2023-06-27 10:26:02', '1');
INSERT INTO `x_log` VALUES ('3532', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:26:02', '1');
INSERT INTO `x_log` VALUES ('3533', '修改操作', '销售单号1673312734171312129已送达', '2023-06-27 10:26:09', '1');
INSERT INTO `x_log` VALUES ('3534', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:26:09', '1');
INSERT INTO `x_log` VALUES ('3535', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:29:12', '1');
INSERT INTO `x_log` VALUES ('3536', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:30:46', '1');
INSERT INTO `x_log` VALUES ('3537', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:36:02', '1');
INSERT INTO `x_log` VALUES ('3538', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:36:05', '1');
INSERT INTO `x_log` VALUES ('3539', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:36:50', '1');
INSERT INTO `x_log` VALUES ('3540', '修改操作', '销售单号1673520486499938305现在发货', '2023-06-27 10:37:03', '1');
INSERT INTO `x_log` VALUES ('3541', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:37:03', '1');
INSERT INTO `x_log` VALUES ('3542', '修改操作', '销售单号1673520486499938305已送达', '2023-06-27 10:37:08', '1');
INSERT INTO `x_log` VALUES ('3543', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 10:37:08', '1');
INSERT INTO `x_log` VALUES ('3544', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 11:12:25', '1');
INSERT INTO `x_log` VALUES ('3545', '修改操作', '销售单号1673527779408945154现在发货', '2023-06-27 11:12:28', '1');
INSERT INTO `x_log` VALUES ('3546', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 11:12:28', '1');
INSERT INTO `x_log` VALUES ('3547', '修改操作', '销售单号1673527779408945154已送达', '2023-06-27 11:12:31', '1');
INSERT INTO `x_log` VALUES ('3548', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 11:12:31', '1');
INSERT INTO `x_log` VALUES ('3549', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 11:40:42', '1');
INSERT INTO `x_log` VALUES ('3550', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 11:41:20', '1');
INSERT INTO `x_log` VALUES ('3551', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 11:41:40', '1');
INSERT INTO `x_log` VALUES ('3552', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 12:01:41', '1');
INSERT INTO `x_log` VALUES ('3553', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 12:02:05', '1');
INSERT INTO `x_log` VALUES ('3554', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 12:02:08', '1');
INSERT INTO `x_log` VALUES ('3555', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 12:03:33', '1');
INSERT INTO `x_log` VALUES ('3556', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 12:03:36', '1');
INSERT INTO `x_log` VALUES ('3557', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 12:05:35', '1');
INSERT INTO `x_log` VALUES ('3558', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 12:05:39', '1');
INSERT INTO `x_log` VALUES ('3559', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 12:06:56', '1');
INSERT INTO `x_log` VALUES ('3560', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 12:07:24', '1');
INSERT INTO `x_log` VALUES ('3561', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 12:07:40', '1');
INSERT INTO `x_log` VALUES ('3562', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 12:09:45', '1');
INSERT INTO `x_log` VALUES ('3563', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 12:09:54', '1');
INSERT INTO `x_log` VALUES ('3564', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 12:12:20', '1');
INSERT INTO `x_log` VALUES ('3565', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 12:12:23', '1');
INSERT INTO `x_log` VALUES ('3566', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 12:12:36', '1');
INSERT INTO `x_log` VALUES ('3567', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 12:12:42', '1');
INSERT INTO `x_log` VALUES ('3568', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 12:16:14', '1');
INSERT INTO `x_log` VALUES ('3569', '查询操作', '优衣库销售额查询按日统计', '2023-06-27 12:16:17', '1');
INSERT INTO `x_log` VALUES ('3570', '查询操作', '优衣库销售额查询按日统计', '2023-06-27 12:16:17', '1');
INSERT INTO `x_log` VALUES ('3571', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-27 12:16:17', '1');
INSERT INTO `x_log` VALUES ('3572', '查询操作', '分页查询小程序端客户订单信息', '2023-06-27 12:23:11', '1');
INSERT INTO `x_log` VALUES ('3573', '查询操作', '优衣库销售额查询按日统计', '2023-06-27 12:23:16', '1');
INSERT INTO `x_log` VALUES ('3574', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-27 12:23:16', '1');
INSERT INTO `x_log` VALUES ('3575', '查询操作', '优衣库销售额查询按日统计', '2023-06-27 12:23:16', '1');
INSERT INTO `x_log` VALUES ('3576', '查询操作', '分页查询小程序端用户评论信息', '2023-06-27 12:23:19', '1');
INSERT INTO `x_log` VALUES ('3577', '查询操作', '查询商品类别信息', '2023-06-27 12:23:22', '1');
INSERT INTO `x_log` VALUES ('3578', '查询操作', '分页查询客户', '2023-06-27 12:23:22', '1');
INSERT INTO `x_log` VALUES ('3579', '查询操作', '查询商品类别信息', '2023-06-27 12:23:23', '1');
INSERT INTO `x_log` VALUES ('3580', '查询操作', '分页查询供应商信息', '2023-06-27 12:23:23', '1');
INSERT INTO `x_log` VALUES ('3581', '查询操作', '查询商品类别信息', '2023-06-27 12:23:24', '1');
INSERT INTO `x_log` VALUES ('3582', '查询操作', '分页查询商品信息', '2023-06-27 12:23:24', '1');
INSERT INTO `x_log` VALUES ('3583', '查询操作', '查询商品类别信息', '2023-06-27 12:23:25', '1');
INSERT INTO `x_log` VALUES ('3584', '查询操作', '分页查询供应商信息', '2023-06-27 12:23:25', '1');
INSERT INTO `x_log` VALUES ('3585', '查询操作', '查询商品类别信息', '2023-06-27 12:23:28', '1');
INSERT INTO `x_log` VALUES ('3586', '查询操作', '分页查询客户', '2023-06-27 12:23:28', '1');
INSERT INTO `x_log` VALUES ('3587', '查询操作', '查询商品类别信息', '2023-06-27 12:28:41', '1');
INSERT INTO `x_log` VALUES ('3588', '查询操作', '分页查询供应商信息', '2023-06-27 12:28:41', '1');
INSERT INTO `x_log` VALUES ('3589', '查询操作', '查询商品类别信息', '2023-06-27 12:28:56', '1');
INSERT INTO `x_log` VALUES ('3590', '查询操作', '分页查询商品信息', '2023-06-27 12:28:56', '1');
INSERT INTO `x_log` VALUES ('3591', '查询操作', '查询商品类别信息', '2023-06-27 12:29:03', '1');
INSERT INTO `x_log` VALUES ('3592', '查询操作', '分页查询商品信息', '2023-06-27 12:29:03', '1');
INSERT INTO `x_log` VALUES ('3593', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-27 12:29:04', '1');
INSERT INTO `x_log` VALUES ('3594', '查询操作', '查询商品类别信息', '2023-06-27 14:55:23', '1');
INSERT INTO `x_log` VALUES ('3595', '查询操作', '分页查询商品信息', '2023-06-27 14:55:23', '1');
INSERT INTO `x_log` VALUES ('3596', '查询操作', '查询商品类别信息', '2023-06-27 14:55:27', '1');
INSERT INTO `x_log` VALUES ('3597', '查询操作', '分页查询供应商信息', '2023-06-27 14:55:27', '1');
INSERT INTO `x_log` VALUES ('3598', '查询操作', '查询商品类别信息', '2023-06-27 14:55:28', '1');
INSERT INTO `x_log` VALUES ('3599', '查询操作', '分页查询商品信息', '2023-06-27 14:55:28', '1');
INSERT INTO `x_log` VALUES ('3600', '查询操作', '查询商品类别信息', '2023-06-27 14:55:34', '1');
INSERT INTO `x_log` VALUES ('3601', '查询操作', '分页查询商品信息', '2023-06-27 14:55:34', '1');
INSERT INTO `x_log` VALUES ('3602', '查询操作', '查询商品类别信息', '2023-06-27 14:55:44', '1');
INSERT INTO `x_log` VALUES ('3603', '查询操作', '分页查询商品信息', '2023-06-27 14:55:44', '1');
INSERT INTO `x_log` VALUES ('3604', '查询操作', '优衣库销售额查询按日统计', '2023-06-27 14:56:02', '1');
INSERT INTO `x_log` VALUES ('3605', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-06-27 14:56:02', '1');
INSERT INTO `x_log` VALUES ('3606', '查询操作', '优衣库销售额查询按日统计', '2023-06-27 14:56:02', '1');
INSERT INTO `x_log` VALUES ('3607', '查询操作', '查询商品类别信息', '2023-06-27 14:56:14', '1');
INSERT INTO `x_log` VALUES ('3608', '查询操作', '分页查询客户', '2023-06-27 14:56:14', '1');
INSERT INTO `x_log` VALUES ('3609', '退出操作', '退出登录', '2023-06-27 15:37:06', '1');
INSERT INTO `x_log` VALUES ('3610', '查询操作', '分页查询小程序端用户评论信息', '2023-06-28 12:41:32', '1');
INSERT INTO `x_log` VALUES ('3611', '查询操作', '分页查询进货信息', '2023-06-28 15:12:18', null);
INSERT INTO `x_log` VALUES ('3612', '查询操作', '查询所有供应商', '2023-06-28 15:12:18', null);
INSERT INTO `x_log` VALUES ('3613', '查询操作', '查询商品类别信息', '2023-06-28 15:12:18', null);
INSERT INTO `x_log` VALUES ('3614', '查询操作', '分页查询商品信息', '2023-06-28 15:12:18', null);
INSERT INTO `x_log` VALUES ('3615', '查询操作', '查询商品类别信息', '2023-06-28 15:48:47', null);
INSERT INTO `x_log` VALUES ('3616', '查询操作', '分页查询商品信息', '2023-06-28 15:48:47', null);
INSERT INTO `x_log` VALUES ('3617', '查询操作', '查询商品:Nike阿甘系列童鞋', '2023-06-28 15:48:48', null);
INSERT INTO `x_log` VALUES ('3618', '查询操作', '查询商品类别信息', '2023-06-29 08:27:42', '1');
INSERT INTO `x_log` VALUES ('3619', '查询操作', '查询所有供应商', '2023-06-29 08:27:42', '1');
INSERT INTO `x_log` VALUES ('3620', '查询操作', '分页查询进货信息', '2023-06-29 08:27:42', '1');
INSERT INTO `x_log` VALUES ('3621', '查询操作', '分页查询商品信息', '2023-06-29 08:27:42', '1');
INSERT INTO `x_log` VALUES ('3622', '查询操作', '分页查询进货信息', '2023-06-29 08:27:58', '1');
INSERT INTO `x_log` VALUES ('3623', '查询操作', '查询商品类别信息', '2023-06-29 08:28:22', '1');
INSERT INTO `x_log` VALUES ('3624', '查询操作', '分页查询进货信息', '2023-06-29 08:28:22', '1');
INSERT INTO `x_log` VALUES ('3625', '查询操作', '查询所有供应商', '2023-06-29 08:28:22', '1');
INSERT INTO `x_log` VALUES ('3626', '查询操作', '分页查询商品信息', '2023-06-29 08:28:22', '1');
INSERT INTO `x_log` VALUES ('3627', '查询操作', '分页查询进货信息', '2023-06-29 08:28:31', '1');
INSERT INTO `x_log` VALUES ('3628', '查询操作', '查询所有角色', '2023-06-30 18:53:49', '1');
INSERT INTO `x_log` VALUES ('3629', '查询操作', '分页查询用户信息', '2023-06-30 18:53:49', '1');
INSERT INTO `x_log` VALUES ('3630', '查询操作', '分页查询角色信息', '2023-06-30 18:55:31', '1');
INSERT INTO `x_log` VALUES ('3631', '查询操作', '查询所有用户', '2023-06-30 18:55:33', '1');
INSERT INTO `x_log` VALUES ('3632', '查询操作', '查询商品类别信息', '2023-07-03 01:01:47', '1');
INSERT INTO `x_log` VALUES ('3633', '查询操作', '分页查询商品信息', '2023-07-03 01:01:47', '1');
INSERT INTO `x_log` VALUES ('3634', '查询操作', '分页查询小程序端客户订单信息', '2023-07-03 01:02:31', '1');
INSERT INTO `x_log` VALUES ('3635', '查询操作', '分页查询小程序端用户评论信息', '2023-07-03 01:03:43', '1');
INSERT INTO `x_log` VALUES ('3636', '查询操作', '优衣库销售额查询按日统计', '2023-07-03 01:04:18', '1');
INSERT INTO `x_log` VALUES ('3637', '查询操作', '优衣库销售额查询按日统计', '2023-07-03 01:04:18', '1');
INSERT INTO `x_log` VALUES ('3638', '查询操作', '优衣库销售额查询按日统计之商品类别', '2023-07-03 01:04:18', '1');
INSERT INTO `x_log` VALUES ('3639', '查询操作', '查询商品类别信息', '2023-07-03 10:01:57', '1');
INSERT INTO `x_log` VALUES ('3640', '查询操作', '分页查询商品信息', '2023-07-03 10:01:57', '1');

-- ----------------------------
-- Table structure for x_menu
-- ----------------------------
DROP TABLE IF EXISTS `x_menu`;
CREATE TABLE `x_menu` (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `component` varchar(100) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `redirect` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `is_leaf` varchar(1) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of x_menu
-- ----------------------------
INSERT INTO `x_menu` VALUES ('1', 'Layout', '/sys', '/sys/user', 'sysManage', '系统管理', 'el-icon-s-tools', '0', 'N', '0');
INSERT INTO `x_menu` VALUES ('2', 'sys/user', 'user', null, 'userList', '用户管理', 'el-icon-user-solid', '1', 'Y', '0');
INSERT INTO `x_menu` VALUES ('3', 'sys/role', 'role', null, 'roleList', '角色管理', 'el-icon-user', '1', 'Y', '0');
INSERT INTO `x_menu` VALUES ('4', 'Layout', '/test', '/test/test1', 'test', '功能测试', '\r\nuserMannger', '0', 'N', '1');
INSERT INTO `x_menu` VALUES ('5', 'test/test1', 'test1', '', 'test1', '测试点一', '\r\n', '4', 'Y', '1');
INSERT INTO `x_menu` VALUES ('6', 'test/test2', 'test2', '', 'test2', '测试点二', '\r\n', '4', 'Y', '1');
INSERT INTO `x_menu` VALUES ('12', 'Layout', '/goodsrun', '/goodsrun/purchase', 'goodsrun', '进货管理', 'el-icon-document', '0', 'N', '0');
INSERT INTO `x_menu` VALUES ('13', 'goodsrun/purchase', 'purchase', '', 'purchase', '进货入库', 'el-icon-s-order', '12', 'Y', '0');
INSERT INTO `x_menu` VALUES ('14', 'goodsrun/return', 'ruturn', null, 'ruturn', '退货出库', 'el-icon-s-home', '12', 'Y', '0');
INSERT INTO `x_menu` VALUES ('15', 'goodsrun/purchaseList', 'purchaseList', null, 'purchaseList', '进货单据查询', 'el-icon-s-data', '12', 'Y', '0');
INSERT INTO `x_menu` VALUES ('16', 'goodsrun/returnList', 'returnList', null, 'returnList', '退货单据查询', 'el-icon-s-data', '12', 'Y', '0');
INSERT INTO `x_menu` VALUES ('17', 'Layout', '/goodssale', '/goodssale/sale', 'goodssale', '销售管理', 'el-icon-goods', '0', 'N', '0');
INSERT INTO `x_menu` VALUES ('18', 'goodssale/sale', 'sale', null, 'sale', '销售出库', 'el-icon-s-order', '17', 'Y', '0');
INSERT INTO `x_menu` VALUES ('19', 'goodssale/saleReturn', 'saleReturn', null, 'saleReturn', '客户退货', 'el-icon-s-home', '17', 'Y', '0');
INSERT INTO `x_menu` VALUES ('20', 'goodssale/saleList', 'saleList', null, 'saleList', '销售单据查询', 'el-icon-s-data', '17', 'Y', '0');
INSERT INTO `x_menu` VALUES ('21', 'goodssale/saleReturnList', 'saleReturnList', null, 'saleReturnList', '客户退货查询', 'el-icon-s-data', '17', 'Y', '0');
INSERT INTO `x_menu` VALUES ('22', 'Layout', '/goodsstock', '/goodsstock/damage', 'goodsstock', '库存管理', 'el-icon-menu', '0', 'N', '0');
INSERT INTO `x_menu` VALUES ('23', 'goodsstock/damage', 'damage', null, 'damage', '商品报损', 'el-icon-warning-outline', '22', 'Y', '0');
INSERT INTO `x_menu` VALUES ('24', 'goodsstock/overflow', 'overflow', null, 'overflow', '商品报溢', 'el-icon-warning', '22', 'Y', '0');
INSERT INTO `x_menu` VALUES ('25', 'goodsstock/warn', 'warn', null, 'warn', '库存预警', 'el-icon-bell', '22', 'Y', '0');
INSERT INTO `x_menu` VALUES ('26', 'goodsstock/damageList', 'damageList', null, 'damageList', '报损报溢查询', 'el-icon-s-data', '22', 'Y', '0');
INSERT INTO `x_menu` VALUES ('27', 'goodsstock/stockList', 'stockList', null, 'stockList', '当前库存查询', 'el-icon-s-data', '22', 'Y', '0');
INSERT INTO `x_menu` VALUES ('28', 'Layout', '/report', '/report/supplierReport', 'report', '统计报表', 'el-icon-document-copy', '0', 'N', '0');
INSERT INTO `x_menu` VALUES ('29', 'report/supplierReport', 'supplierReport', null, 'supplierReport', '供应商统计', 'el-icon-s-check', '28', 'Y', '0');
INSERT INTO `x_menu` VALUES ('30', 'report/customerReport', 'customerReport', null, 'customerReport', '客户统计', 'el-icon-s-custom', '28', 'Y', '0');
INSERT INTO `x_menu` VALUES ('31', 'report/purchaseReport', 'purchaseReport', null, 'purchaseReport', '商品采购统计', 'el-icon-s-data', '28', 'Y', '0');
INSERT INTO `x_menu` VALUES ('32', 'report/saleReport', 'saleReport', null, 'saleReport', '商品销售统计', 'el-icon-s-data', '28', 'Y', '0');
INSERT INTO `x_menu` VALUES ('33', 'report/dayReport', 'dayReport', null, 'dayReport', '按日统计分析', 'el-icon-s-data', '28', 'Y', '0');
INSERT INTO `x_menu` VALUES ('34', 'report/monthReport', 'monthReport', null, 'monthReport', '按月统计分析', 'el-icon-s-data', '28', 'Y', '0');
INSERT INTO `x_menu` VALUES ('35', 'Layout', '/basedata', '/basedata/goods', 'baseData', '基本资料', 'el-icon-share', '0', 'N', '0');
INSERT INTO `x_menu` VALUES ('36', 'basedata/goods', 'goods', null, 'goods', '商品管理', 'el-icon-cherry', '35', 'Y', '0');
INSERT INTO `x_menu` VALUES ('37', 'basedata/customer', 'customer', null, 'customer', '客户管理', 'el-icon-s-custom', '35', 'Y', '0');
INSERT INTO `x_menu` VALUES ('38', 'basedata/supplier', 'supplier', null, 'supplier', '供应商管理', 'el-icon-s-check', '35', 'Y', '0');
INSERT INTO `x_menu` VALUES ('39', 'sys/log', 'log', null, 'log', '系统日志', 'el-icon-view', '1', 'Y', '0');
INSERT INTO `x_menu` VALUES ('40', 'sys/pwd', 'pwd', null, 'pwd', '修改密码', 'el-icon-lock', '1', 'Y', '0');
INSERT INTO `x_menu` VALUES ('41', 'sys/logout', 'logout', null, 'logout', '安全退出', 'el-icon-switch-button', '1', 'Y', '0');
INSERT INTO `x_menu` VALUES ('42', 'Layout', '/wxbasedata', '/wxbasedata/goodsData', 'wxbasedata', '基本信息', 'el-icon-share', '0', 'N', '0');
INSERT INTO `x_menu` VALUES ('43', 'wxbasedata/goodsData', 'goodsData', null, 'goodsData', '上架商品', 'el-icon-grape', '42', 'Y', '0');
INSERT INTO `x_menu` VALUES ('44', 'Layout', '/wxgoodssale', '/wxgoodssale/goodsOrder', 'wxgoodssale', '销量管理', 'el-icon-goods', '0', 'N', '0');
INSERT INTO `x_menu` VALUES ('45', 'wxgoodssale/goodsOrder', 'goodsOrder', null, 'goodsOrder', '订单管理', 'el-icon-document', '44', 'Y', '0');
INSERT INTO `x_menu` VALUES ('46', 'wxgoodssale/saleReport', 'saleReport', null, 'saleReport', '销售报表', 'el-icon-s-data', '44', 'Y', '0');
INSERT INTO `x_menu` VALUES ('48', 'wxbasedata/comments', 'comments', null, 'comments', '评论管理', 'el-icon-s-comment', '42', 'Y', '0');

-- ----------------------------
-- Table structure for x_overflow_list
-- ----------------------------
DROP TABLE IF EXISTS `x_overflow_list`;
CREATE TABLE `x_overflow_list` (
  `overflow_list_id` int NOT NULL AUTO_INCREMENT COMMENT '商品报溢单id，主键',
  `overflow_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品报溢单号',
  `overflow_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '报溢日期',
  `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `user_id` int DEFAULT NULL COMMENT '用户id，外键',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  PRIMARY KEY (`overflow_list_id`) USING BTREE,
  KEY `FK3bu8hj2xniqwbrtg6ls6b8ej2` (`user_id`) USING BTREE,
  CONSTRAINT `x_overflow_list_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `x_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x_overflow_list
-- ----------------------------
INSERT INTO `x_overflow_list` VALUES ('1', 'BY1550565907039', '2019-02-19', '', '1', null, null, null, null);
INSERT INTO `x_overflow_list` VALUES ('3', 'BY1643410272023158786', '2023-04-02', '报溢是指在货品盘点时实物数额大于账面数额的一种记账方式。', null, '2023-04-05 08:28:37', '2023-04-05 08:28:37', null, null);
INSERT INTO `x_overflow_list` VALUES ('4', 'BY1644203761560358913', '2023-04-05', '', null, '2023-04-07 13:01:39', '2023-04-07 13:01:39', null, null);
INSERT INTO `x_overflow_list` VALUES ('5', 'BY1645689905884110850', '2023-04-11', '记账数量抱错', null, '2023-04-11 15:27:04', '2023-04-11 15:27:04', null, null);

-- ----------------------------
-- Table structure for x_overflow_list_goods
-- ----------------------------
DROP TABLE IF EXISTS `x_overflow_list_goods`;
CREATE TABLE `x_overflow_list_goods` (
  `overflow_list_goods_id` int NOT NULL AUTO_INCREMENT COMMENT '商品报溢单商品列表id，主键',
  `goods_id` int DEFAULT NULL COMMENT '商品编号id，外键',
  `goods_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品编码',
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `goods_model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品型号',
  `goods_unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品单位',
  `goods_num` int DEFAULT NULL COMMENT '报溢数量',
  `price` float NOT NULL COMMENT '商品单价',
  `total` float NOT NULL COMMENT '总金额',
  `overflow_list_id` int DEFAULT NULL COMMENT '商品报溢单id，外键',
  `goods_type_id` int DEFAULT NULL COMMENT '商品类别id，外键',
  PRIMARY KEY (`overflow_list_goods_id`) USING BTREE,
  KEY `FKd3s9761mgl456tn2xb0d164h7` (`overflow_list_id`) USING BTREE,
  KEY `FK20rudkne4kc8uftcenkrng1mn` (`goods_type_id`) USING BTREE,
  KEY `goods_id` (`goods_id`) USING BTREE,
  CONSTRAINT `x_overflow_list_goods_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `x_goods` (`goods_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `x_overflow_list_goods_ibfk_2` FOREIGN KEY (`overflow_list_id`) REFERENCES `x_overflow_list` (`overflow_list_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `x_overflow_list_goods_ibfk_3` FOREIGN KEY (`goods_type_id`) REFERENCES `x_goods_type` (`goods_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x_overflow_list_goods
-- ----------------------------
INSERT INTO `x_overflow_list_goods` VALUES ('1', '1', '0001', '陶华碧老干妈香辣脆油辣椒', '红色装', '瓶', '5', '8.5', '42.5', '1', '10');
INSERT INTO `x_overflow_list_goods` VALUES ('3', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'AFS JEEP', '条', '10', '9', '90', '3', '8');
INSERT INTO `x_overflow_list_goods` VALUES ('4', '34', '0025', '西服套装男三件套秋季新款商务修身职业正装男士西装新郎结婚礼服', '三件套秋', '件', '10', '189', '1890', '4', '7');
INSERT INTO `x_overflow_list_goods` VALUES ('5', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '10', '13', '130', '5', '8');

-- ----------------------------
-- Table structure for x_purchase_list
-- ----------------------------
DROP TABLE IF EXISTS `x_purchase_list`;
CREATE TABLE `x_purchase_list` (
  `purchase_list_id` int NOT NULL AUTO_INCREMENT COMMENT '进货单id，主键',
  `purchase_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '进货单号',
  `amount_paid` float NOT NULL COMMENT '实付金额',
  `amount_payable` float NOT NULL COMMENT '应付金额',
  `purchase_date` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收货日期',
  `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `state` int DEFAULT NULL COMMENT '状态',
  `supplier_id` int DEFAULT NULL COMMENT '供应商id，外键',
  `user_id` int DEFAULT NULL COMMENT '用户id，外键',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  PRIMARY KEY (`purchase_list_id`) USING BTREE,
  KEY `supplier_id` (`supplier_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `x_purchase_list_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `x_supplier` (`supplier_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `x_purchase_list_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `x_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x_purchase_list
-- ----------------------------
INSERT INTO `x_purchase_list` VALUES ('124', 'JH1550048597876', '86', '86', '2019-02-13', '', '1', null, '1', null, null, null, null);
INSERT INTO `x_purchase_list` VALUES ('130', 'JH1564882213808', '910', '911', '2019-08-04', 'aaaaa', '1', null, '1', null, null, null, null);
INSERT INTO `x_purchase_list` VALUES ('132', 'JH1678773946331', '170', '170', '2023-03-14', '', '1', null, '1', null, null, null, null);
INSERT INTO `x_purchase_list` VALUES ('133', 'JH1679624178277', '1680', '1680', '2023-03-24', '', '1', null, '1', null, null, null, null);
INSERT INTO `x_purchase_list` VALUES ('168', 'JH1640988502079012866', '500', '500', '2023-03-28', '无', '1', '11', '1', null, '2023-04-01 14:04:09', null, null);
INSERT INTO `x_purchase_list` VALUES ('169', 'JH1640988966543654913', '100', '100', '2023-03-27', '无', '1', '6', '1', null, '2023-04-01 14:09:02', null, null);
INSERT INTO `x_purchase_list` VALUES ('170', 'JH1641012937402019841', '10', '10', '2023-03-21', '暂时没有', '1', '6', '1', null, '2023-04-01 14:42:34', null, null);
INSERT INTO `x_purchase_list` VALUES ('171', 'JH1641016038817161218', '1', '0', '2023-03-22', '...', '2', '5', '1', null, null, null, null);
INSERT INTO `x_purchase_list` VALUES ('172', 'JH1641303835197300738', '9', '9', '2023-03-29', 'nihao', '1', '1', '1', '2023-03-30 12:58:23', '2023-04-01 14:44:37', null, null);
INSERT INTO `x_purchase_list` VALUES ('173', 'JH1641306203200634882', '9', '9', '2023-03-13', 'zaijian', '1', '4', '1', '2023-03-30 13:07:47', '2023-04-01 15:50:39', null, null);
INSERT INTO `x_purchase_list` VALUES ('174', 'JH1641307575413362689', '7', '49', '2023-03-14', 'nihaozaijian', '1', '5', '1', '2023-03-30 13:13:15', '2023-03-30 13:13:15', null, null);
INSERT INTO `x_purchase_list` VALUES ('175', 'JH1641308353335058433', '88', '88', '2023-03-20', 'cc', '1', '1', '1', '2023-03-30 13:16:20', '2023-03-30 13:16:20', null, null);
INSERT INTO `x_purchase_list` VALUES ('176', 'JH1641309000826597378', '891', '891', '2023-03-15', 'jjj', '1', '7', '1', '2023-03-30 13:18:55', '2023-04-02 16:20:31', null, null);
INSERT INTO `x_purchase_list` VALUES ('177', 'JH1641309199602999298', '9', '81', '2023-03-21', 'www', '1', '9', '1', '2023-03-30 13:19:42', '2023-03-30 13:19:42', null, null);
INSERT INTO `x_purchase_list` VALUES ('178', 'JH1641327244333514753', '9', '81', '2023-03-13', '666', '2', '8', '1', '2023-03-30 14:31:24', '2023-03-30 14:31:24', null, null);
INSERT INTO `x_purchase_list` VALUES ('179', 'JH1642812025843982337', '10000', '10000', '2023-03-31', '精品女装', '1', '7', null, '2023-04-03 16:51:24', '2023-04-03 16:51:24', null, null);
INSERT INTO `x_purchase_list` VALUES ('180', 'JH1642812358821388290', '0', '77280', '2023-03-31', '家用洗衣粉，即可清洁', '2', '5', null, '2023-04-03 16:52:43', '2023-04-03 16:52:43', null, null);
INSERT INTO `x_purchase_list` VALUES ('181', 'JH1643500748554297345', '100', '100', '2023-04-04', '4.5', '1', '7', null, '2023-04-05 14:28:08', '2023-04-09 08:53:04', null, null);
INSERT INTO `x_purchase_list` VALUES ('182', 'JH1644159392274853890', '24', '24', '2023-04-06', '四川正在加绒纺织品', '1', '8', null, '2023-04-07 10:05:21', '2023-04-07 10:05:21', null, null);
INSERT INTO `x_purchase_list` VALUES ('183', 'JH1644160506445574146', '24', '24', '2023-04-06', '四川正在加绒纺织品', '1', '8', null, '2023-04-07 10:09:46', '2023-04-07 10:09:46', null, null);
INSERT INTO `x_purchase_list` VALUES ('184', 'JH1644161608499052546', '30', '30', '2023-04-02', 'ccc', '1', '6', null, '2023-04-07 10:14:09', '2023-04-07 10:14:09', null, null);
INSERT INTO `x_purchase_list` VALUES ('185', 'JH1644162004550307842', '0', '60', '2023-04-06', 'aaa', '2', '7', null, '2023-04-07 10:15:44', '2023-04-07 10:15:44', null, null);
INSERT INTO `x_purchase_list` VALUES ('186', 'JH1644166138594787330', '0', '50', '2023-04-03', '666', '2', '8', null, '2023-04-07 10:32:09', '2023-04-07 10:32:09', null, null);
INSERT INTO `x_purchase_list` VALUES ('187', 'JH1644166406992506881', '60', '60', '2023-04-03', 'qqq', '1', '1', null, '2023-04-07 10:33:13', '2023-04-07 10:33:13', null, null);
INSERT INTO `x_purchase_list` VALUES ('188', 'JH1644167457862791169', '100', '100', '2023-04-04', 'aaa', '1', '10', null, '2023-04-07 10:37:24', '2023-04-07 10:37:24', null, null);
INSERT INTO `x_purchase_list` VALUES ('189', 'JH1644167742941167618', '60', '60', '2023-04-06', 'ccc', '1', '8', null, '2023-04-07 10:38:32', '2023-04-07 10:38:32', null, null);
INSERT INTO `x_purchase_list` VALUES ('190', 'JH1644168267426414593', '50', '50', '2023-04-04', 'jjjj', '1', '6', null, '2023-04-07 10:40:37', '2023-04-07 10:40:37', null, null);
INSERT INTO `x_purchase_list` VALUES ('191', 'JH1644168820311179265', '0', '120', '2023-04-05', 'kkkkk', '2', '7', null, '2023-04-07 10:42:49', '2023-04-07 10:42:49', null, null);
INSERT INTO `x_purchase_list` VALUES ('192', 'JH1644172915906437121', '50', '50', '2023-04-03', '反反复复烦烦烦', '1', '7', null, '2023-04-07 10:59:05', '2023-04-07 10:59:05', null, null);
INSERT INTO `x_purchase_list` VALUES ('193', 'JH1644174867763544065', '0', '60', '2023-04-03', '踩踩踩', '2', '7', null, '2023-04-07 11:06:50', '2023-04-07 11:06:50', null, null);
INSERT INTO `x_purchase_list` VALUES ('194', 'JH1644180173679697922', '130', '130', '2023-04-03', 'ccc', '1', '7', null, '2023-04-07 11:27:55', '2023-04-07 11:27:55', null, null);
INSERT INTO `x_purchase_list` VALUES ('195', 'JH1644198143520817153', '0', '18900', '2023-04-03', '热销西装男服', '2', '11', null, '2023-04-07 12:39:20', '2023-04-07 12:39:20', null, null);
INSERT INTO `x_purchase_list` VALUES ('196', 'JH1644198352858529793', '0', '18900', '2023-04-03', '男士喜爱', '2', '10', null, '2023-04-07 12:40:10', '2023-04-07 12:40:10', null, null);
INSERT INTO `x_purchase_list` VALUES ('197', 'JH1644874242600960002', '4000', '4600', '2023-04-03', '0409', '1', '7', null, '2023-04-09 09:25:54', '2023-04-09 09:25:54', null, null);
INSERT INTO `x_purchase_list` VALUES ('198', 'JH1645398535990652930', '20', '26', '2023-04-09', 'hexiaodiduishile', '2', '8', null, '2023-04-10 20:09:16', '2023-04-10 20:09:16', null, null);
INSERT INTO `x_purchase_list` VALUES ('199', 'JH1645402015904018433', '0', '13', '2023-04-08', 'xiaodihaixiu', '2', '8', null, '2023-04-10 20:23:05', '2023-04-10 20:23:05', null, null);
INSERT INTO `x_purchase_list` VALUES ('200', 'JH1645413737138204673', '0', '13', '2023-04-09', 'xiaodikanwanyigeshipin', '2', '8', null, '2023-04-10 21:09:40', '2023-04-10 21:09:40', null, null);
INSERT INTO `x_purchase_list` VALUES ('201', 'JH1645417210428764162', '20', '39', '2023-04-09', 'xiaodizairenzhenkanshipin', '1', '7', null, '2023-04-10 21:23:28', '2023-04-10 21:23:28', null, null);
INSERT INTO `x_purchase_list` VALUES ('202', 'JH1645658015110213633', '338', '338', '2023-04-10', 'xiaodihaibuxuexi', '1', '8', null, '2023-04-11 13:20:20', '2023-04-11 13:20:20', null, null);
INSERT INTO `x_purchase_list` VALUES ('203', 'JH1645659437386145793', '0', '39', '2023-04-10', 'xiaodirangwomaishu', '2', '6', null, '2023-04-11 13:25:59', '2023-04-11 13:25:59', null, null);
INSERT INTO `x_purchase_list` VALUES ('204', 'JH1645662860848373761', '65', '65', '2023-04-11', 'ccc', '1', '5', null, '2023-04-11 13:39:36', '2023-04-26 20:57:40', null, '1');
INSERT INTO `x_purchase_list` VALUES ('205', 'JH1645677200104169474', '0', '130', '2023-04-10', 'xiaodihaizaikanshouji', '2', '8', null, '2023-04-11 14:36:34', '2023-04-11 14:36:34', null, null);
INSERT INTO `x_purchase_list` VALUES ('206', 'JH1645677824862490625', '0', '130', '2023-04-11', 'cccc', '2', '8', null, '2023-04-11 14:39:03', '2023-04-11 14:39:03', null, null);
INSERT INTO `x_purchase_list` VALUES ('207', 'JH1646071075117441026', '13', '13', '2023-04-12', 'vvv', '1', '5', '1', '2023-04-12 16:41:41', '2023-04-12 17:35:39', null, '1');
INSERT INTO `x_purchase_list` VALUES ('208', 'JH1646085571894476802', '100', '400', '2023-04-12', 'xiaodizaishujiao', '1', '8', '1', '2023-04-12 17:39:18', '2023-04-12 17:39:18', '1', '1');
INSERT INTO `x_purchase_list` VALUES ('209', 'JH1646400632311754753', '130', '130', '2023-04-13', 'xiaodiyaohuijiale', '1', '8', '1', '2023-04-13 14:31:14', '2023-04-13 14:54:26', '1', '1');
INSERT INTO `x_purchase_list` VALUES ('210', 'JH1650463750482550786', '13', '13', '2023-04-24', '0424', '1', '6', '1', '2023-04-24 19:36:37', '2023-04-24 19:36:37', '1', '1');
INSERT INTO `x_purchase_list` VALUES ('211', 'JH1655735093058834433', '0', '10000', '2023-05-08', '无', '2', '5', '1', '2023-05-09 08:43:03', '2023-05-09 08:43:03', '1', '1');
INSERT INTO `x_purchase_list` VALUES ('212', 'JH1664552666877607938', '0', '100', '2023-06-02', '测试0602', '2', '1', '1', '2023-06-02 16:40:56', '2023-06-02 16:40:56', '1', '1');
INSERT INTO `x_purchase_list` VALUES ('213', 'JH1666974692221313025', '0', '100', '2023-06-09', 'test0609', '2', '4', '1', '2023-06-09 09:05:12', '2023-06-09 09:05:12', '1', '1');
INSERT INTO `x_purchase_list` VALUES ('217', 'JH1671702485890998274', '39000', '39000', '2023-06-19', 'tianzhuding', '1', '11', '1', '2023-06-22 10:11:46', '2023-06-26 15:50:45', '1', '1');
INSERT INTO `x_purchase_list` VALUES ('218', 'JH1671706613862080513', '79000', '79000', '2023-06-19', '款项未清', '1', '11', '1', '2023-06-22 10:28:10', '2023-06-22 10:39:04', '1', '1');
INSERT INTO `x_purchase_list` VALUES ('220', 'JH1671723231937781762', '0', '390', '2023-06-11', '无', '2', '11', '1', '2023-06-22 11:34:12', '2023-06-22 11:34:12', '1', '1');

-- ----------------------------
-- Table structure for x_purchase_list_goods
-- ----------------------------
DROP TABLE IF EXISTS `x_purchase_list_goods`;
CREATE TABLE `x_purchase_list_goods` (
  `purchase_list_goods_id` int NOT NULL AUTO_INCREMENT COMMENT '进货单商品列表id，主键',
  `goods_id` int DEFAULT NULL COMMENT '商品编号id，外键',
  `goods_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品编码',
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `goods_model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品型号',
  `goods_unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品单位',
  `goods_num` int NOT NULL COMMENT '进货数量',
  `price` float NOT NULL COMMENT '商品单价',
  `total` float NOT NULL COMMENT '总金额',
  `purchase_list_id` int DEFAULT NULL COMMENT '进货单id，外键',
  `goods_type_id` int DEFAULT NULL COMMENT '商品类别id，外键',
  PRIMARY KEY (`purchase_list_goods_id`) USING BTREE,
  KEY `goods_id` (`goods_id`) USING BTREE,
  KEY `purchase_list_id` (`purchase_list_id`) USING BTREE,
  KEY `goods_type_id` (`goods_type_id`) USING BTREE,
  CONSTRAINT `x_purchase_list_goods_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `x_goods` (`goods_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `x_purchase_list_goods_ibfk_2` FOREIGN KEY (`purchase_list_id`) REFERENCES `x_purchase_list` (`purchase_list_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `x_purchase_list_goods_ibfk_3` FOREIGN KEY (`goods_type_id`) REFERENCES `x_goods_type` (`goods_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x_purchase_list_goods
-- ----------------------------
INSERT INTO `x_purchase_list_goods` VALUES ('126', '17', '0009', '休闲零食坚果特产精品干果无漂白大个开心果', '240g装', '袋', '4', '20', '80', '124', '11');
INSERT INTO `x_purchase_list_goods` VALUES ('127', '16', '0008', '奕森奶油桃肉蜜饯果脯果干桃肉干休闲零食品', '128g装', '盒', '2', '3', '6', '124', '11');
INSERT INTO `x_purchase_list_goods` VALUES ('131', '28', '0019', 'Golden Field/金河田 Q8电脑音响台式多媒体家用音箱低音炮重低音x', 'Q8', '台', '10', '70', '700', '130', '17');
INSERT INTO `x_purchase_list_goods` VALUES ('133', '1', '0001', '陶华碧老干妈香辣脆油辣椒', '红色装', '瓶', '20', '8.5', '170', '132', '10');
INSERT INTO `x_purchase_list_goods` VALUES ('134', '33', '0024', '卓图女装立领针织格子印花拼接高腰A字裙2017秋冬新款碎花连衣裙', 'A字裙', '件', '10', '168', '1680', '133', '6');
INSERT INTO `x_purchase_list_goods` VALUES ('161', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'AFS JEEP', '条', '10', '50', '500', '168', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('162', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'AFS JEEP', '条', '10', '10', '100', '169', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('163', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'AFS JEEP', '条', '1', '10', '10', '170', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('164', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'AFS JEEP', '条', '1', '1', '1', '171', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('165', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'AFS JEEP', '条', '3', '3', '3', '172', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('166', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'AFS JEEP', '条', '3', '3', '3', '173', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('167', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'AFS JEEP', '条', '7', '7', '7', '174', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('168', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'AFS JEEP', '条', '1', '88', '88', '175', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('169', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'AFS JEEP', '条', '9', '99', '9', '176', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('170', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'AFS JEEP', '条', '9', '9', '9', '177', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('171', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'AFS JEEP', '条', '9', '9', '9', '178', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('172', '33', '0024', '卓图女装立领针织格子印花拼接高腰A字裙2017秋冬新款碎花连衣裙', 'A字裙', '件', '100', '100', '10000', '179', '6');
INSERT INTO `x_purchase_list_goods` VALUES ('173', '31', '0022', 'TCL XQB55-36SP 5.5公斤全自动波轮迷你小型洗衣机家用单脱抗菌', 'XQB55-36SP', '台', '168', '460', '0', '180', '13');
INSERT INTO `x_purchase_list_goods` VALUES ('174', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'AFS JEEP', '条', '10', '10', '0', '181', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('175', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '2', '12', '24', '182', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('176', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '2', '12', '24', '183', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('177', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '3', '10', '30', '184', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('178', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '5', '12', '0', '185', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('179', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '5', '10', '0', '186', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('180', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '5', '12', '60', '187', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('181', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '10', '10', '100', '188', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('182', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '5', '12', '60', '189', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('183', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '5', '10', '50', '190', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('184', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '10', '12', '0', '191', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('185', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '5', '10', '50', '192', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('186', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '5', '12', '0', '193', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('187', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '10', '13', '130', '194', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('188', '34', '0025', '西服套装男三件套秋季新款商务修身职业正装男士西装新郎结婚礼服', '三件套秋', '件', '100', '189', '0', '195', '7');
INSERT INTO `x_purchase_list_goods` VALUES ('189', '34', '0025', '西服套装男三件套秋季新款商务修身职业正装男士西装新郎结婚礼服', '三件套秋', '件', '100', '189', '0', '196', '7');
INSERT INTO `x_purchase_list_goods` VALUES ('190', '31', '0022', 'TCL XQB55-36SP 5.5公斤全自动波轮迷你小型洗衣机家用单脱抗菌', 'XQB55-36SP', '台', '10', '460', '4600', '197', '13');
INSERT INTO `x_purchase_list_goods` VALUES ('191', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '2', '13', '26', '198', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('192', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '1', '13', '13', '199', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('193', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '1', '13', '13', '200', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('194', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '3', '13', '39', '201', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('195', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '26', '13', '338', '202', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('196', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '3', '13', '39', '203', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('197', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '5', '13', '65', '204', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('198', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '10', '13', '130', '205', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('199', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '10', '13', '130', '206', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('200', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '1', '13', '13', '207', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('201', '32', '0023', '台湾进口膨化零食品张君雅小妹妹日式串烧丸子80g*2', '80g*2', '袋', '100', '4', '400', '208', '9');
INSERT INTO `x_purchase_list_goods` VALUES ('202', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '10', '13', '130', '209', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('203', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '1', '13', '13', '210', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('204', '55', '0027', 'qq牌甜糖', '1314g装', '袋', '100', '100', '10000', '211', '9');
INSERT INTO `x_purchase_list_goods` VALUES ('205', '55', '0027', 'qq牌甜糖', '1314g装', '袋', '1', '100', '100', '212', '9');
INSERT INTO `x_purchase_list_goods` VALUES ('206', '55', '0027', 'qq牌甜糖', '1314g装', '袋', '1', '100', '100', '213', '9');
INSERT INTO `x_purchase_list_goods` VALUES ('210', '66', '0036', 'Nike经典童鞋', '百搭热潮008', '双', '1000', '39', '39000', '217', '24');
INSERT INTO `x_purchase_list_goods` VALUES ('211', '65', '0035', '直筒牛仔裤', '百搭热潮007', '条', '1000', '79', '79000', '218', '8');
INSERT INTO `x_purchase_list_goods` VALUES ('213', '67', '0037', 'Nike阿甘系列童鞋', '百搭热潮009', '双', '10', '39', '390', '220', '24');

-- ----------------------------
-- Table structure for x_return_list
-- ----------------------------
DROP TABLE IF EXISTS `x_return_list`;
CREATE TABLE `x_return_list` (
  `return_list_id` int NOT NULL AUTO_INCREMENT COMMENT '退货单id，主键',
  `return_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退货单号',
  `return_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退货日期',
  `amount_paid` float NOT NULL COMMENT '实退金额',
  `amount_payable` float NOT NULL COMMENT '应退金额',
  `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `state` int DEFAULT NULL COMMENT '状态,1表示已退，2表示未退',
  `supplier_id` int DEFAULT NULL COMMENT '供应商id，外键',
  `user_id` int DEFAULT NULL COMMENT '用户id，外键',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  PRIMARY KEY (`return_list_id`) USING BTREE,
  KEY `FK4qxjj8bvj2etne243xluni0vn` (`supplier_id`) USING BTREE,
  KEY `FK904juw2v1hm2av0ig26gae9jb` (`user_id`) USING BTREE,
  CONSTRAINT `x_return_list_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `x_supplier` (`supplier_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `x_return_list_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `x_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x_return_list
-- ----------------------------
INSERT INTO `x_return_list` VALUES ('1', 'TH1549940820089', '2019-02-12', '42.5', '42.5', '', '1', '1', '1', null, null, null, null);
INSERT INTO `x_return_list` VALUES ('6', 'TH1642458641190277121', '2023-03-31', '10', '90', '款项未结清', '1', '1', null, '2023-04-02 17:27:10', '2023-04-02 17:27:10', null, null);
INSERT INTO `x_return_list` VALUES ('7', 'TH1644162626892746753', '2023-03-27', '120', '120', '服装质量有问题', '1', '8', null, '2023-04-07 10:18:12', '2023-04-13 14:58:45', null, '1');
INSERT INTO `x_return_list` VALUES ('8', 'TH1644202912012546049', '2023-04-02', '18900', '18900', '', '1', '8', null, '2023-04-07 12:58:17', '2023-04-07 12:58:17', null, null);
INSERT INTO `x_return_list` VALUES ('9', 'TH1669878773524856833', '2023-06-17', '3900', '3900', '待收款中', '0', '10', '1', '2023-06-17 09:24:59', '2023-06-17 09:24:59', '1', '1');
INSERT INTO `x_return_list` VALUES ('10', 'TH1669885894593228802', '2023-06-17', '3900', '3900', '待收款中', '0', '10', '1', '2023-06-17 09:53:17', '2023-06-17 09:53:17', '1', '1');
INSERT INTO `x_return_list` VALUES ('11', 'TH1669886244096208897', '2023-06-17', '0', '3900', '待收款中', '0', '10', '1', '2023-06-17 09:54:40', '2023-06-17 09:54:40', '1', '1');
INSERT INTO `x_return_list` VALUES ('12', 'TH1670073092064096257', '2023-06-17', '0', '3900', '待收款中', '0', '10', '1', '2023-06-17 22:17:08', '2023-06-17 22:17:08', '1', '1');
INSERT INTO `x_return_list` VALUES ('13', 'TH1670074684381229057', '2023-06-17', '0', '3900', '待收款中', '0', '10', '1', '2023-06-17 22:23:28', '2023-06-17 22:23:28', '1', '1');
INSERT INTO `x_return_list` VALUES ('14', 'TH1670075190705025025', '2023-06-17', '0', '390', '待收款中', '0', '10', '1', '2023-06-17 22:25:29', '2023-06-17 22:25:29', '1', '1');
INSERT INTO `x_return_list` VALUES ('15', 'TH1671702224585859074', '2023-06-22', '39000', '39000', '款项结清', '1', '11', '1', '2023-06-22 10:10:44', '2023-06-22 10:35:06', '1', '1');
INSERT INTO `x_return_list` VALUES ('16', 'TH1671710581468082177', '2023-06-22', '3900', '3900', '款项结清', '1', '10', '1', '2023-06-22 10:43:56', '2023-06-22 12:20:19', '1', '1');
INSERT INTO `x_return_list` VALUES ('17', 'TH1671724707544260609', '2023-06-22', '0', '300', '待收款中', '0', '11', '1', '2023-06-22 11:40:04', '2023-06-22 11:40:04', '1', '1');
INSERT INTO `x_return_list` VALUES ('18', 'TH1671735327329050625', '2023-06-22', '0', '0', '无需退款', '1', '11', '1', '2023-06-22 12:22:16', '2023-06-22 12:27:32', '1', '1');
INSERT INTO `x_return_list` VALUES ('19', 'TH1671736496495448066', '2023-06-22', '0', '0', '无需退款', '1', '15', '1', '2023-06-22 12:26:55', '2023-06-22 12:26:55', '1', '1');

-- ----------------------------
-- Table structure for x_return_list_goods
-- ----------------------------
DROP TABLE IF EXISTS `x_return_list_goods`;
CREATE TABLE `x_return_list_goods` (
  `return_list_goods_id` int NOT NULL AUTO_INCREMENT COMMENT '退货单商品列表id，主键',
  `goods_id` int DEFAULT NULL COMMENT '商品编号id，外键',
  `goods_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品编码',
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `goods_model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品型号',
  `goods_unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品单位',
  `goods_num` int DEFAULT NULL COMMENT '商品数量',
  `price` float NOT NULL COMMENT '商品单价',
  `total` float NOT NULL COMMENT '总金额',
  `return_list_id` int DEFAULT NULL COMMENT '退货单id，外键',
  `goods_type_id` int DEFAULT NULL COMMENT '商品类别id，外键',
  PRIMARY KEY (`return_list_goods_id`) USING BTREE,
  KEY `FKemclu281vyvyk063c3foafq1w` (`return_list_id`) USING BTREE,
  KEY `FKpxnqi9jfkw6wdm1uox2kkr0wk` (`goods_type_id`) USING BTREE,
  KEY `goods_id` (`goods_id`) USING BTREE,
  CONSTRAINT `x_return_list_goods_ibfk_1` FOREIGN KEY (`return_list_id`) REFERENCES `x_return_list` (`return_list_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `x_return_list_goods_ibfk_2` FOREIGN KEY (`goods_id`) REFERENCES `x_goods` (`goods_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `x_return_list_goods_ibfk_3` FOREIGN KEY (`goods_type_id`) REFERENCES `x_goods_type` (`goods_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x_return_list_goods
-- ----------------------------
INSERT INTO `x_return_list_goods` VALUES ('1', '1', '0001', '陶华碧老干妈香辣脆油辣椒', '红色装', '瓶', '5', '8.5', '42.5', '1', '10');
INSERT INTO `x_return_list_goods` VALUES ('6', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'AFS JEEP', '条', '10', '9', '10', '6', '8');
INSERT INTO `x_return_list_goods` VALUES ('7', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '条', '10', '12', '0', '7', '8');
INSERT INTO `x_return_list_goods` VALUES ('8', '34', '0025', '西服套装男三件套秋季新款商务修身职业正装男士西装新郎结婚礼服', '三件套秋', '件', '100', '189', '18900', '8', '7');
INSERT INTO `x_return_list_goods` VALUES ('9', '67', '0037', 'Nike阿甘系列童鞋', '百搭热潮009', '双', '100', '39', '3900', '9', '24');
INSERT INTO `x_return_list_goods` VALUES ('10', '67', '0037', 'Nike阿甘系列童鞋', '百搭热潮009', '双', '100', '39', '3900', '13', '24');
INSERT INTO `x_return_list_goods` VALUES ('11', '67', '0037', 'Nike阿甘系列童鞋', '百搭热潮009', '双', '10', '39', '390', '14', '24');
INSERT INTO `x_return_list_goods` VALUES ('12', '66', '0036', 'Nike经典童鞋', '百搭热潮008', '双', '1000', '39', '39000', '15', '24');
INSERT INTO `x_return_list_goods` VALUES ('13', '64', '0034', 'OSCILL针织毛衣', '百搭热潮006', '件', '100', '39', '0', '16', '26');
INSERT INTO `x_return_list_goods` VALUES ('14', '67', '0037', 'Nike阿甘系列童鞋', '百搭热潮009', '双', '10', '39', '300', '17', '24');
INSERT INTO `x_return_list_goods` VALUES ('15', '67', '0037', 'Nike阿甘系列童鞋', '百搭热潮009', '双', '10', '39', '0', '18', '24');
INSERT INTO `x_return_list_goods` VALUES ('16', '67', '0037', 'Nike阿甘系列童鞋', '百搭热潮009', '双', '1', '39', '0', '19', '24');

-- ----------------------------
-- Table structure for x_role
-- ----------------------------
DROP TABLE IF EXISTS `x_role`;
CREATE TABLE `x_role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL,
  `role_desc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of x_role
-- ----------------------------
INSERT INTO `x_role` VALUES ('2', 'hr', '人事专员');
INSERT INTO `x_role` VALUES ('3', 'normal', '供销存员工');
INSERT INTO `x_role` VALUES ('7', 'admin', '超级管理员');
INSERT INTO `x_role` VALUES ('10', 'uniqlo', '小程序管理员');

-- ----------------------------
-- Table structure for x_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `x_role_menu`;
CREATE TABLE `x_role_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `menu_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=949 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of x_role_menu
-- ----------------------------
INSERT INTO `x_role_menu` VALUES ('854', '7', '1');
INSERT INTO `x_role_menu` VALUES ('855', '7', '2');
INSERT INTO `x_role_menu` VALUES ('856', '7', '3');
INSERT INTO `x_role_menu` VALUES ('857', '7', '39');
INSERT INTO `x_role_menu` VALUES ('858', '7', '40');
INSERT INTO `x_role_menu` VALUES ('859', '7', '41');
INSERT INTO `x_role_menu` VALUES ('860', '7', '4');
INSERT INTO `x_role_menu` VALUES ('861', '7', '5');
INSERT INTO `x_role_menu` VALUES ('862', '7', '6');
INSERT INTO `x_role_menu` VALUES ('863', '7', '12');
INSERT INTO `x_role_menu` VALUES ('864', '7', '13');
INSERT INTO `x_role_menu` VALUES ('865', '7', '14');
INSERT INTO `x_role_menu` VALUES ('866', '7', '15');
INSERT INTO `x_role_menu` VALUES ('867', '7', '16');
INSERT INTO `x_role_menu` VALUES ('868', '7', '17');
INSERT INTO `x_role_menu` VALUES ('869', '7', '18');
INSERT INTO `x_role_menu` VALUES ('870', '7', '19');
INSERT INTO `x_role_menu` VALUES ('871', '7', '20');
INSERT INTO `x_role_menu` VALUES ('872', '7', '21');
INSERT INTO `x_role_menu` VALUES ('873', '7', '22');
INSERT INTO `x_role_menu` VALUES ('874', '7', '23');
INSERT INTO `x_role_menu` VALUES ('875', '7', '24');
INSERT INTO `x_role_menu` VALUES ('876', '7', '25');
INSERT INTO `x_role_menu` VALUES ('877', '7', '26');
INSERT INTO `x_role_menu` VALUES ('878', '7', '27');
INSERT INTO `x_role_menu` VALUES ('879', '7', '28');
INSERT INTO `x_role_menu` VALUES ('880', '7', '29');
INSERT INTO `x_role_menu` VALUES ('881', '7', '30');
INSERT INTO `x_role_menu` VALUES ('882', '7', '31');
INSERT INTO `x_role_menu` VALUES ('883', '7', '32');
INSERT INTO `x_role_menu` VALUES ('884', '7', '33');
INSERT INTO `x_role_menu` VALUES ('885', '7', '34');
INSERT INTO `x_role_menu` VALUES ('886', '7', '35');
INSERT INTO `x_role_menu` VALUES ('887', '7', '36');
INSERT INTO `x_role_menu` VALUES ('888', '7', '37');
INSERT INTO `x_role_menu` VALUES ('889', '7', '38');
INSERT INTO `x_role_menu` VALUES ('890', '7', '42');
INSERT INTO `x_role_menu` VALUES ('891', '7', '43');
INSERT INTO `x_role_menu` VALUES ('892', '7', '48');
INSERT INTO `x_role_menu` VALUES ('893', '7', '44');
INSERT INTO `x_role_menu` VALUES ('894', '7', '45');
INSERT INTO `x_role_menu` VALUES ('895', '7', '46');
INSERT INTO `x_role_menu` VALUES ('902', '10', '40');
INSERT INTO `x_role_menu` VALUES ('903', '10', '41');
INSERT INTO `x_role_menu` VALUES ('904', '10', '42');
INSERT INTO `x_role_menu` VALUES ('905', '10', '43');
INSERT INTO `x_role_menu` VALUES ('906', '10', '48');
INSERT INTO `x_role_menu` VALUES ('907', '10', '44');
INSERT INTO `x_role_menu` VALUES ('908', '10', '45');
INSERT INTO `x_role_menu` VALUES ('909', '10', '46');
INSERT INTO `x_role_menu` VALUES ('910', '10', '1');
INSERT INTO `x_role_menu` VALUES ('911', '3', '40');
INSERT INTO `x_role_menu` VALUES ('912', '3', '41');
INSERT INTO `x_role_menu` VALUES ('913', '3', '12');
INSERT INTO `x_role_menu` VALUES ('914', '3', '13');
INSERT INTO `x_role_menu` VALUES ('915', '3', '14');
INSERT INTO `x_role_menu` VALUES ('916', '3', '15');
INSERT INTO `x_role_menu` VALUES ('917', '3', '16');
INSERT INTO `x_role_menu` VALUES ('918', '3', '17');
INSERT INTO `x_role_menu` VALUES ('919', '3', '18');
INSERT INTO `x_role_menu` VALUES ('920', '3', '19');
INSERT INTO `x_role_menu` VALUES ('921', '3', '20');
INSERT INTO `x_role_menu` VALUES ('922', '3', '21');
INSERT INTO `x_role_menu` VALUES ('923', '3', '22');
INSERT INTO `x_role_menu` VALUES ('924', '3', '23');
INSERT INTO `x_role_menu` VALUES ('925', '3', '24');
INSERT INTO `x_role_menu` VALUES ('926', '3', '25');
INSERT INTO `x_role_menu` VALUES ('927', '3', '26');
INSERT INTO `x_role_menu` VALUES ('928', '3', '27');
INSERT INTO `x_role_menu` VALUES ('929', '3', '28');
INSERT INTO `x_role_menu` VALUES ('930', '3', '29');
INSERT INTO `x_role_menu` VALUES ('931', '3', '30');
INSERT INTO `x_role_menu` VALUES ('932', '3', '31');
INSERT INTO `x_role_menu` VALUES ('933', '3', '32');
INSERT INTO `x_role_menu` VALUES ('934', '3', '33');
INSERT INTO `x_role_menu` VALUES ('935', '3', '34');
INSERT INTO `x_role_menu` VALUES ('936', '3', '35');
INSERT INTO `x_role_menu` VALUES ('937', '3', '36');
INSERT INTO `x_role_menu` VALUES ('938', '3', '37');
INSERT INTO `x_role_menu` VALUES ('939', '3', '38');
INSERT INTO `x_role_menu` VALUES ('940', '3', '1');
INSERT INTO `x_role_menu` VALUES ('941', '2', '2');
INSERT INTO `x_role_menu` VALUES ('942', '2', '3');
INSERT INTO `x_role_menu` VALUES ('943', '2', '40');
INSERT INTO `x_role_menu` VALUES ('944', '2', '41');
INSERT INTO `x_role_menu` VALUES ('945', '2', '37');
INSERT INTO `x_role_menu` VALUES ('946', '2', '38');
INSERT INTO `x_role_menu` VALUES ('947', '2', '1');
INSERT INTO `x_role_menu` VALUES ('948', '2', '35');

-- ----------------------------
-- Table structure for x_sale_list
-- ----------------------------
DROP TABLE IF EXISTS `x_sale_list`;
CREATE TABLE `x_sale_list` (
  `sale_list_id` int NOT NULL AUTO_INCREMENT COMMENT '销售单id，主键',
  `sale_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '销售单号',
  `amount_paid` float NOT NULL COMMENT '实付金额',
  `amount_payable` float NOT NULL COMMENT '应付金额',
  `sale_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '销售单创建日期',
  `state` int DEFAULT NULL COMMENT '状态',
  `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `customer_id` int DEFAULT NULL COMMENT '客户id，外键',
  `user_id` int DEFAULT NULL COMMENT '用户id，外键',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  PRIMARY KEY (`sale_list_id`) USING BTREE,
  KEY `FKox4qfs87eu3fvwdmrvelqhi8e` (`customer_id`) USING BTREE,
  KEY `FK34bnujemrdqimbhg133enp8k8` (`user_id`) USING BTREE,
  CONSTRAINT `x_sale_list_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `x_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `x_sale_list_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `x_customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x_sale_list
-- ----------------------------
INSERT INTO `x_sale_list` VALUES ('7', 'XS1642776895146364930', '890', '890', '2023-04-01', '1', '销售成功hhh', '3', null, '2023-04-03 14:31:48', '2023-04-03 14:31:48', null, null);
INSERT INTO `x_sale_list` VALUES ('8', 'XS1642811371578695682', '1780', '0', '2023-04-01', '2', '你好再见', '3', null, '2023-04-03 16:48:48', '2023-04-03 16:48:48', null, null);
INSERT INTO `x_sale_list` VALUES ('9', 'XS1642812567915831298', '14900', '0', '2023-04-02', '2', '热销女装', '4', null, '2023-04-03 16:53:33', '2023-04-03 16:53:33', null, null);
INSERT INTO `x_sale_list` VALUES ('10', 'XS1642870381879164930', '534', '0', '2023-04-01', '2', '....', '4', null, '2023-04-03 20:43:17', '2023-04-03 20:43:17', null, null);
INSERT INTO `x_sale_list` VALUES ('11', 'XS1644178167237840897', '4450', '4450', '2023-04-03', '1', '杀杀杀', '1', null, '2023-04-07 11:19:57', '2023-04-09 08:35:41', null, null);
INSERT INTO `x_sale_list` VALUES ('12', 'XS1644179257618468866', '445', '445', '2023-03-28', '1', '3333', '3', null, '2023-04-07 11:24:17', '2023-04-07 11:24:17', null, null);
INSERT INTO `x_sale_list` VALUES ('13', 'XS1644179891654696962', '445', '0', '2023-04-02', '2', '踩踩踩', '3', null, '2023-04-07 11:26:48', '2023-04-07 11:26:48', null, null);
INSERT INTO `x_sale_list` VALUES ('14', 'XS1644202762879873025', '59800', '0', '2023-04-04', '2', '', '3', null, '2023-04-07 12:57:41', '2023-04-07 12:57:41', null, null);
INSERT INTO `x_sale_list` VALUES ('15', 'XS1644873321619881986', '7290', '0', '2023-04-07', '2', '0409', '3', null, '2023-04-09 09:22:15', '2023-04-09 09:22:15', null, null);
INSERT INTO `x_sale_list` VALUES ('16', 'XS1644874342513475586', '21870', '2000', '2023-04-03', '1', 'cccc', '1', null, '2023-04-09 09:26:18', '2023-04-09 09:26:18', null, null);
INSERT INTO `x_sale_list` VALUES ('17', 'XS1645353315668213761', '2990', '100', '2023-04-09', '1', '纯纯粹粹', '1', null, '2023-04-10 17:09:34', '2023-04-10 17:09:34', null, null);
INSERT INTO `x_sale_list` VALUES ('18', 'XS1645354272040828929', '2990', '0', '2023-04-01', '2', '0410', '3', null, '2023-04-10 17:13:22', '2023-04-10 17:13:22', null, null);
INSERT INTO `x_sale_list` VALUES ('19', 'XS1645355365537894401', '2990', '0', '2023-04-08', '2', '你好再见', '3', null, '2023-04-10 17:17:43', '2023-04-10 17:17:43', null, null);
INSERT INTO `x_sale_list` VALUES ('20', 'XS1645356185511743489', '890', '10', '2023-04-09', '2', 'xiaodishuidaowudian', '4', null, '2023-04-10 17:20:59', '2023-04-10 17:20:59', null, null);
INSERT INTO `x_sale_list` VALUES ('21', 'XS1645357260859985921', '890', '0', '2023-04-08', '2', 'xiaodihaimeishuixing', '3', null, '2023-04-10 17:25:15', '2023-04-10 17:25:15', null, null);
INSERT INTO `x_sale_list` VALUES ('22', 'XS1645360203222884353', '729', '0', '2023-04-08', '2', 'xiaodiyaoqile', '1', null, '2023-04-10 17:36:56', '2023-04-10 17:36:56', '1', '1');
INSERT INTO `x_sale_list` VALUES ('23', 'XS1645361378450087938', '729', '729', '2023-04-07', '1', 'xiaodishengqile', '3', null, '2023-04-10 17:41:37', '2023-04-10 17:41:37', '1', '1');
INSERT INTO `x_sale_list` VALUES ('24', 'XS1645361623154171906', '298', '0', '2023-04-06', '2', 'xiaodi', '1', null, '2023-04-10 17:42:35', '2023-04-10 17:42:35', null, null);
INSERT INTO `x_sale_list` VALUES ('25', 'XS1645362068769611778', '298', '0', '2023-04-06', '2', 'yinweiduxinleibutingxiaodidehua', '4', null, '2023-04-10 17:44:21', '2023-04-10 17:44:21', null, null);
INSERT INTO `x_sale_list` VALUES ('26', 'XS1645362595393839105', '298', '0', '2023-04-06', '2', 'xiaodibuhuiyuanliangduxinleide', '4', null, '2023-04-10 17:46:27', '2023-04-10 17:46:27', null, null);
INSERT INTO `x_sale_list` VALUES ('27', 'XS1645363191207358466', '298', '200', '2023-04-06', '1', 'buxingjiuyaoyuanliangwoqiuqiunile', '4', null, '2023-04-10 17:48:49', '2023-04-10 17:48:49', null, null);
INSERT INTO `x_sale_list` VALUES ('28', 'XS1645363699728969729', '729', '0', '2023-04-06', '2', 'butinghuadexiaohaimeiyoutangchi', '1', null, '2023-04-10 17:50:50', '2023-04-10 17:50:50', null, null);
INSERT INTO `x_sale_list` VALUES ('29', 'XS1645363781396262914', '729', '0', '2023-04-06', '2', 'tinghuatinghuawww', '4', null, '2023-04-10 17:51:10', '2023-04-10 17:51:10', null, null);
INSERT INTO `x_sale_list` VALUES ('30', 'XS1645379092929499138', '89', '0', '2023-04-07', '2', 'wodexiaodizaiwodezuobiandezuobian', '3', null, '2023-04-10 18:52:00', '2023-04-10 18:52:00', null, null);
INSERT INTO `x_sale_list` VALUES ('31', 'XS1645380927035760641', '89', '1', '2023-04-07', '1', 'xiaodibuhaohaotingke', '4', null, '2023-04-10 18:59:17', '2023-04-10 18:59:17', null, null);
INSERT INTO `x_sale_list` VALUES ('32', 'XS1645381612842192897', '89', '0', '2023-04-06', '2', 'xiaodibuhuiyuanliangduxinlei', '4', null, '2023-04-10 19:02:01', '2023-04-10 19:02:01', null, null);
INSERT INTO `x_sale_list` VALUES ('33', 'XS1645395161295556609', '89', '0', '2023-04-09', '1', 'weishenme', '3', null, '2023-04-10 19:55:51', '2023-04-10 19:55:51', null, null);
INSERT INTO `x_sale_list` VALUES ('34', 'XS1645395596806918145', '89', '0', '2023-04-08', '1', 'meiyouweishenm', '1', null, '2023-04-10 19:57:35', '2023-04-10 19:57:35', null, null);
INSERT INTO `x_sale_list` VALUES ('35', 'XS1645395901124644866', '89', '0', '2023-04-08', '2', 'zhexiazhendeduiniyiidanmimimeioyulewww', '4', null, '2023-04-10 19:58:47', '2023-04-10 19:58:47', null, null);
INSERT INTO `x_sale_list` VALUES ('36', 'XS1645397805439365122', '89', '0', '2023-04-06', '2', 'xiaodizaikandianshi', '3', null, '2023-04-10 20:06:21', '2023-04-10 20:06:21', null, null);
INSERT INTO `x_sale_list` VALUES ('37', 'XS1645419884154925057', '890', '890', '2023-04-09', '1', 'xiaodixuedaodishiwugeshipinle', '3', null, '2023-04-10 21:34:05', '2023-04-10 21:34:05', null, null);
INSERT INTO `x_sale_list` VALUES ('38', 'XS1645653691252547585', '298', '0', '2023-04-10', '2', 'xiaodizaipianrentabuxiangchulai', '1', null, '2023-04-11 13:03:09', '2023-04-11 13:03:09', null, null);
INSERT INTO `x_sale_list` VALUES ('39', 'XS1645654067020242945', '89', '0', '2023-04-10', '2', 'xiaodibuxiangxiachuang', '3', null, '2023-04-11 13:04:39', '2023-04-11 13:04:39', null, null);
INSERT INTO `x_sale_list` VALUES ('40', 'XS1645655169887313922', '89', '0', '2023-04-09', '2', 'xiaodishuowonianqingbiepa', '4', null, '2023-04-11 13:09:02', '2023-04-11 13:09:02', null, null);
INSERT INTO `x_sale_list` VALUES ('41', 'XS1645655400863440898', '89', '0', '2023-04-10', '2', 'xiaodiyoufabiaoqing', '1', null, '2023-04-11 13:09:57', '2023-04-11 13:09:57', null, null);
INSERT INTO `x_sale_list` VALUES ('42', 'XS1645656835760009217', '89', '0', '2023-04-09', '2', 'xiaodiyouzaishuowohebierensanbudeshiqing', '1', null, '2023-04-11 13:15:39', '2023-04-11 13:15:39', null, null);
INSERT INTO `x_sale_list` VALUES ('43', 'XS1645691147880439809', '89', '0', '2023-04-09', '2', 'xiaodiyinggaizaixuexileba', '3', null, '2023-04-11 15:32:00', '2023-04-11 15:32:00', null, null);
INSERT INTO `x_sale_list` VALUES ('44', 'XS1646085810198052866', '750', '750', '2023-04-12', '1', 'xiaodizaishuijiao', '4', '1', '2023-04-12 17:40:15', '2023-04-13 15:02:10', '1', '1');
INSERT INTO `x_sale_list` VALUES ('45', 'XS1646085999839313921', '150', '10', '2023-04-10', '1', 'buxiel', '1', '1', '2023-04-12 17:41:00', '2023-04-12 17:41:00', '1', '1');
INSERT INTO `x_sale_list` VALUES ('46', 'XS1646088970480287746', '890', '0', '2023-04-11', '2', 'xiaodigaixingle', '3', '1', '2023-04-12 17:52:48', '2023-04-12 17:52:48', '1', '1');
INSERT INTO `x_sale_list` VALUES ('47', 'XS1646705194713169921', '890', '0', '2023-03-16', '2', 'ccc', '4', '1', '2023-04-14 10:41:27', '2023-04-14 10:41:27', '1', '1');
INSERT INTO `x_sale_list` VALUES ('48', 'XS1649683590305005570', '150', '0', '2023-04-20', '2', 'meiyouhuixiaoxi', '4', '1', '2023-04-22 15:56:32', '2023-04-22 15:56:32', '1', '1');
INSERT INTO `x_sale_list` VALUES ('50', 'XS1671687771135909889', '129', '0', '2023-06-20', '2', '', '10', '1', '2023-06-22 09:13:18', '2023-06-22 09:13:18', '1', '1');
INSERT INTO `x_sale_list` VALUES ('51', 'XS1673161036035506178', '890', '0', '2023-06-26', '2', '无', '4', '1', '2023-06-26 10:47:31', '2023-06-26 10:47:31', '1', '1');
INSERT INTO `x_sale_list` VALUES ('52', 'XS1673161145284542466', '7900', '0', '2023-06-13', '2', '无', '8', '1', '2023-06-26 10:47:58', '2023-06-26 10:47:58', '1', '1');

-- ----------------------------
-- Table structure for x_sale_list_goods
-- ----------------------------
DROP TABLE IF EXISTS `x_sale_list_goods`;
CREATE TABLE `x_sale_list_goods` (
  `sale_list_goods_id` int NOT NULL AUTO_INCREMENT COMMENT '销售单商品列表id，主键',
  `goods_id` int DEFAULT NULL COMMENT '商品编号id，外键',
  `goods_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品编码',
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `goods_model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品型号',
  `goods_num` int DEFAULT NULL COMMENT '销售数量',
  `goods_unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品单位',
  `price` float NOT NULL COMMENT '商品单价',
  `total` float NOT NULL COMMENT '总金额',
  `sale_list_id` int DEFAULT NULL COMMENT '销售单id，外键',
  `goods_type_id` int DEFAULT NULL COMMENT '商品类别id，外键',
  PRIMARY KEY (`sale_list_goods_id`) USING BTREE,
  KEY `FK20ehd6ta9geyql4hxtdsnhbox` (`sale_list_id`) USING BTREE,
  KEY `FK39ej927qf0ldkykafj2nhyu3u` (`goods_type_id`) USING BTREE,
  KEY `goods_id` (`goods_id`) USING BTREE,
  CONSTRAINT `x_sale_list_goods_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `x_goods` (`goods_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `x_sale_list_goods_ibfk_2` FOREIGN KEY (`sale_list_id`) REFERENCES `x_sale_list` (`sale_list_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `x_sale_list_goods_ibfk_3` FOREIGN KEY (`goods_type_id`) REFERENCES `x_goods_type` (`goods_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x_sale_list_goods
-- ----------------------------
INSERT INTO `x_sale_list_goods` VALUES ('8', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'AFS JEEP', '10', '条', '89', '890', '7', '8');
INSERT INTO `x_sale_list_goods` VALUES ('9', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'AFS JEEP', '20', '条', '89', '0', '8', '8');
INSERT INTO `x_sale_list_goods` VALUES ('10', '33', '0024', '卓图女装立领针织格子印花拼接高腰A字裙2017秋冬新款碎花连衣裙', 'A字裙', '50', '件', '298', '0', '9', '6');
INSERT INTO `x_sale_list_goods` VALUES ('11', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'AFS JEEP', '6', '条', '89', '0', '10', '8');
INSERT INTO `x_sale_list_goods` VALUES ('12', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '50', '条', '89', '0', '11', '8');
INSERT INTO `x_sale_list_goods` VALUES ('13', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '5', '条', '89', '445', '12', '8');
INSERT INTO `x_sale_list_goods` VALUES ('14', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '5', '条', '89', '0', '13', '8');
INSERT INTO `x_sale_list_goods` VALUES ('15', '34', '0025', '西服套装男三件套秋季新款商务修身职业正装男士西装新郎结婚礼服', '三件套秋', '200', '件', '299', '0', '14', '7');
INSERT INTO `x_sale_list_goods` VALUES ('16', '31', '0022', 'TCL XQB55-36SP 5.5公斤全自动波轮迷你小型洗衣机家用单脱抗菌', 'XQB55-36SP', '10', '台', '729', '7290', '15', '13');
INSERT INTO `x_sale_list_goods` VALUES ('17', '31', '0022', 'TCL XQB55-36SP 5.5公斤全自动波轮迷你小型洗衣机家用单脱抗菌', 'XQB55-36SP', '30', '台', '729', '21870', '16', '13');
INSERT INTO `x_sale_list_goods` VALUES ('18', '34', '0025', '西服套装男三件套秋季新款商务修身职业正装男士西装新郎结婚礼服', '三件套秋', '10', '件', '299', '2990', '17', '7');
INSERT INTO `x_sale_list_goods` VALUES ('19', '34', '0025', '西服套装男三件套秋季新款商务修身职业正装男士西装新郎结婚礼服', '三件套秋', '10', '件', '299', '2990', '18', '7');
INSERT INTO `x_sale_list_goods` VALUES ('20', '34', '0025', '西服套装男三件套秋季新款商务修身职业正装男士西装新郎结婚礼服', '三件套秋', '10', '件', '299', '2990', '19', '7');
INSERT INTO `x_sale_list_goods` VALUES ('21', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '10', '条', '89', '890', '20', '8');
INSERT INTO `x_sale_list_goods` VALUES ('22', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '10', '条', '89', '890', '21', '8');
INSERT INTO `x_sale_list_goods` VALUES ('23', '31', '0022', 'TCL XQB55-36SP 5.5公斤全自动波轮迷你小型洗衣机家用单脱抗菌', 'XQB55-36SP', '1', '台', '729', '729', '22', '13');
INSERT INTO `x_sale_list_goods` VALUES ('24', '31', '0022', 'TCL XQB55-36SP 5.5公斤全自动波轮迷你小型洗衣机家用单脱抗菌', 'XQB55-36SP', '1', '台', '729', '729', '23', '13');
INSERT INTO `x_sale_list_goods` VALUES ('25', '33', '0024', '卓图女装立领针织格子印花拼接高腰A字裙2017秋冬新款碎花连衣裙', 'A字裙', '1', '件', '298', '298', '24', '6');
INSERT INTO `x_sale_list_goods` VALUES ('26', '33', '0024', '卓图女装立领针织格子印花拼接高腰A字裙2017秋冬新款碎花连衣裙', 'A字裙', '1', '件', '298', '298', '25', '6');
INSERT INTO `x_sale_list_goods` VALUES ('27', '33', '0024', '卓图女装立领针织格子印花拼接高腰A字裙2017秋冬新款碎花连衣裙', 'A字裙', '1', '件', '298', '298', '26', '6');
INSERT INTO `x_sale_list_goods` VALUES ('28', '33', '0024', '卓图女装立领针织格子印花拼接高腰A字裙2017秋冬新款碎花连衣裙', 'A字裙', '1', '件', '298', '298', '27', '6');
INSERT INTO `x_sale_list_goods` VALUES ('29', '31', '0022', 'TCL XQB55-36SP 5.5公斤全自动波轮迷你小型洗衣机家用单脱抗菌', 'XQB55-36SP', '1', '台', '729', '729', '28', '13');
INSERT INTO `x_sale_list_goods` VALUES ('30', '31', '0022', 'TCL XQB55-36SP 5.5公斤全自动波轮迷你小型洗衣机家用单脱抗菌', 'XQB55-36SP', '1', '台', '729', '729', '29', '13');
INSERT INTO `x_sale_list_goods` VALUES ('31', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '1', '条', '89', '89', '30', '8');
INSERT INTO `x_sale_list_goods` VALUES ('32', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '1', '条', '89', '89', '31', '8');
INSERT INTO `x_sale_list_goods` VALUES ('33', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '1', '条', '89', '89', '32', '8');
INSERT INTO `x_sale_list_goods` VALUES ('34', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '1', '条', '89', '89', '33', '8');
INSERT INTO `x_sale_list_goods` VALUES ('35', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '1', '条', '89', '89', '34', '8');
INSERT INTO `x_sale_list_goods` VALUES ('36', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '1', '条', '89', '89', '35', '8');
INSERT INTO `x_sale_list_goods` VALUES ('37', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '1', '条', '89', '89', '36', '8');
INSERT INTO `x_sale_list_goods` VALUES ('38', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '10', '条', '89', '890', '37', '8');
INSERT INTO `x_sale_list_goods` VALUES ('39', '33', '0024', '卓图女装立领针织格子印花拼接高腰A字裙2017秋冬新款碎花连衣裙', 'A字裙', '1', '件', '298', '298', '38', '6');
INSERT INTO `x_sale_list_goods` VALUES ('40', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '1', '条', '89', '89', '39', '8');
INSERT INTO `x_sale_list_goods` VALUES ('41', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '1', '条', '89', '89', '40', '8');
INSERT INTO `x_sale_list_goods` VALUES ('42', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '1', '条', '89', '89', '41', '8');
INSERT INTO `x_sale_list_goods` VALUES ('43', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '1', '条', '89', '89', '42', '8');
INSERT INTO `x_sale_list_goods` VALUES ('44', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '1', '条', '89', '89', '43', '8');
INSERT INTO `x_sale_list_goods` VALUES ('45', '32', '0023', '台湾进口膨化零食品张君雅小妹妹日式串烧丸子80g*2', '80g*2', '50', '袋', '15', '750', '44', '9');
INSERT INTO `x_sale_list_goods` VALUES ('46', '32', '0023', '台湾进口膨化零食品张君雅小妹妹日式串烧丸子80g*2', '80g*2', '10', '袋', '15', '150', '45', '9');
INSERT INTO `x_sale_list_goods` VALUES ('47', '35', '0026', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '10', '条', '89', '890', '46', '8');
INSERT INTO `x_sale_list_goods` VALUES ('48', '35', '0026', '加加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', '条', '10', '条', '89', '890', '47', '8');
INSERT INTO `x_sale_list_goods` VALUES ('49', '32', '0023', '台湾进口膨化零食品张君雅小妹妹日式串烧丸子80g*2', '80g*2', '10', '袋', '15', '150', '48', '9');
INSERT INTO `x_sale_list_goods` VALUES ('51', '28', '0019', 'Golden Field/金河田 Q8电脑音响台式多媒体家用音箱低音炮重低音', 'Q8', '1', '台', '129', '129', '50', '17');
INSERT INTO `x_sale_list_goods` VALUES ('52', '67', '0037', 'Nike阿甘系列童鞋', '百搭热潮009', '10', '双', '89', '890', '51', '24');
INSERT INTO `x_sale_list_goods` VALUES ('53', '66', '0036', 'Nike经典童鞋', '百搭热潮008', '100', '双', '79', '7900', '52', '24');

-- ----------------------------
-- Table structure for x_stock_list
-- ----------------------------
DROP TABLE IF EXISTS `x_stock_list`;
CREATE TABLE `x_stock_list` (
  `stock_list_id` int NOT NULL AUTO_INCREMENT,
  `sale_num` int DEFAULT NULL,
  `average_price` float DEFAULT NULL,
  `stock_value` float DEFAULT NULL,
  `goods_id` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  PRIMARY KEY (`stock_list_id`),
  KEY `goods_id` (`goods_id`) USING BTREE,
  CONSTRAINT `x_stock_list_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `x_goods` (`goods_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of x_stock_list
-- ----------------------------
INSERT INTO `x_stock_list` VALUES ('1', '112', '13', '7209', '35', '2023-04-07 10:40:37', '2023-04-07 10:40:37', '1', '1');
INSERT INTO `x_stock_list` VALUES ('2', '30', '189', '20930', '34', '2023-04-07 12:39:20', '2023-04-07 12:39:20', '1', '1');
INSERT INTO `x_stock_list` VALUES ('3', '34', '460', '201204', '31', '2023-04-09 09:25:54', '2023-04-09 09:25:54', '1', '1');
INSERT INTO `x_stock_list` VALUES ('4', '70', '4', '450', '32', '2023-04-12 17:39:18', '2023-04-12 17:39:18', '1', '1');
INSERT INTO `x_stock_list` VALUES ('5', '0', '100', '220400', '55', '2023-05-09 08:43:03', '2023-05-09 08:43:03', '1', '1');
INSERT INTO `x_stock_list` VALUES ('6', '10', '39', '53400', '67', '2023-06-17 08:40:00', '2023-06-17 08:40:00', '1', '1');
INSERT INTO `x_stock_list` VALUES ('7', '100', '39', '71100', '66', '2023-06-22 10:10:23', '2023-06-22 10:10:23', '1', '1');
INSERT INTO `x_stock_list` VALUES ('8', '0', '79', '149000', '65', '2023-06-22 10:28:10', '2023-06-22 10:28:10', '1', '1');
INSERT INTO `x_stock_list` VALUES ('9', '0', '39', '0', '64', '2023-06-22 10:42:47', '2023-06-22 10:42:47', '1', '1');

-- ----------------------------
-- Table structure for x_supplier
-- ----------------------------
DROP TABLE IF EXISTS `x_supplier`;
CREATE TABLE `x_supplier` (
  `supplier_id` int NOT NULL AUTO_INCREMENT COMMENT '供应商id，主键',
  `supplier_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '供应商名称',
  `supplier_type_id` int DEFAULT NULL,
  `contacts` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人',
  `phone_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人电话',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '供应商地址',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `bank_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bank_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`supplier_id`) USING BTREE,
  KEY `supplier_type_id` (`supplier_type_id`) USING BTREE,
  CONSTRAINT `x_supplier_type_ibfk_1` FOREIGN KEY (`supplier_type_id`) REFERENCES `x_goods_type` (`goods_type_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x_supplier
-- ----------------------------
INSERT INTO `x_supplier` VALUES ('1', '四川耀荣汇商贸有限公司', '3', '张三', '13558873068', '中国四川成都金牛区金泉街道淳风路133号3层附340号', '四川耀荣汇商贸有限公司 经销批发的大枣、山楂、枣夹核、枸杞、农副产品畅销消费者市场', null, null, null, null, '中国工商银行', '621700381002696707');
INSERT INTO `x_supplier` VALUES ('4', '四川省郫县豆瓣股份有限公司', '3', '李四', '13888888888', '中国四川成都郫都区中国川菜产业园区永安路333号', '四川省郫县豆瓣股份有限公司，主营“鹃城牌”郫县豆瓣', null, null, null, null, '中国农业银行', '6217003815026896707');
INSERT INTO `x_supplier` VALUES ('5', '四川食萃食品有限公司', '3', '王五', '13555555555', '中国四川德阳中江县南华镇积水村8社', '四川食萃食品有限公司是一家集餐饮川菜调料研发、生产、销售为一体的现代派企业', null, null, null, null, '中国工商银行', '6217003870026896707');
INSERT INTO `x_supplier` VALUES ('6', '四川岳老大食品有限责任公司 ', '3', '岳小平', '13981670066', '中国四川巴中巴州区宕梁办事处插旗山村九社', '四川岳老大食品有限责任公司是一家专业从事宾馆、酒店和休闲食品研发、生产销售为一体的现代化民营企业', null, null, null, null, '中国工商银行', '6217003816026896707');
INSERT INTO `x_supplier` VALUES ('7', '四川天味食品集团股份有限公司', '3', '侯定述', '028-82808141', '中国四川成都双流区西航港街道腾飞一路333号', '中国调味品协会理事单位、农业产业化国家重点龙头企业', null, null, null, null, '中国工商银行', '6217053810026896707');
INSERT INTO `x_supplier` VALUES ('8', '四川老廖家风味食品有限公司', '3', '廖天发', '18808276999', '中国四川巴中经开区巴州工业园产业大道18号', '公司是集科研、生产、销售为一体的肉类食品加工民营企业', null, null, null, null, '中国工商银行', '6217004810026896707');
INSERT INTO `x_supplier` VALUES ('9', '山东九日进出口数码有限公司', '5', '张相志', '0631-5782006', '中国山东威海环翠区张村镇钱江街-16-7号', '公司所有产品均是通过正规通关渠道进口，海关、商检相关手续齐全', null, null, null, null, '中国工商银行', '6217003210026896707');
INSERT INTO `x_supplier` VALUES ('10', '深圳市朱雀君电子商务有限公司', '2', '陈松鑫', '0755-28500676', '中国广东深圳罗湖区南湖街道东门南路2006号宝丰大厦', '深圳市朱雀君有限公司是一家专业进出口企业，专注于进口食品流通供应链业务，经营全球进口食品', null, null, null, null, '中国农业银行', '6217103810026896707');
INSERT INTO `x_supplier` VALUES ('11', '绍兴市博创商贸有限公司', '2', '徐晓坚', '0575-88136229', '中国浙江绍兴城南工贸园区3幢一层', '绍兴市博创商贸有限公司是明治,丽芝士,皇冠,宏亚,AJI,张君雅,EGO,等国内外大品牌区域总代,同时还销售各类进口食品,所售食品为原装进口', null, null, null, null, '中国农业银行', '6217003410026896707');
INSERT INTO `x_supplier` VALUES ('12', '临安高朋食品有限公司', '3', '王仲鱼', '0571-61132098', '中国浙江杭州临安市玲珑街道上蟠龙桥2号', '依托上海市场，聚焦在坚果炒货、炭烤海鲜、果脯蜜饯、果干脆片、特色糖果等五大核心领域', null, null, null, null, '中国农业银行', '6217001810026896707');
INSERT INTO `x_supplier` VALUES ('14', '四川朝阳家具电器有限公司', '4', '赵惜春', '15033798864', '中国四川成都金牛区金泉街道淳风路130号3层附340号', '主营各种智能家居电器', '2023-05-09 13:47:43', '2023-05-09 13:47:43', '1', '1', '中国农业银行', '6217003810056896707');
INSERT INTO `x_supplier` VALUES ('15', '四川智鑫服装批发市场', '2', '杜希两', '15033948861', '中国四川巴中巴州区宕梁办事处插旗山村九社街区', '保质保量，老会员拥有极大促销价格', '2023-05-09 13:51:35', '2023-05-09 13:51:35', '1', '1', '中国农业银行', '6217083810026896707');
INSERT INTO `x_supplier` VALUES ('16', '四川安南袜子批发市场', '2', '王晓燕', '15033946689', '中国四川巴中巴州区宕梁办事处插旗山村五号', '保质保量，老会员拥有极大促销价格', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for x_unit
-- ----------------------------
DROP TABLE IF EXISTS `x_unit`;
CREATE TABLE `x_unit` (
  `unit_id` int NOT NULL AUTO_INCREMENT COMMENT '商品单位id，主键',
  `unit_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品单位名称',
  PRIMARY KEY (`unit_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of x_unit
-- ----------------------------
INSERT INTO `x_unit` VALUES ('1', '元');
INSERT INTO `x_unit` VALUES ('6', '户');
INSERT INTO `x_unit` VALUES ('7', '斤');
INSERT INTO `x_unit` VALUES ('8', '台');
INSERT INTO `x_unit` VALUES ('9', '瓶');
INSERT INTO `x_unit` VALUES ('10', '袋');
INSERT INTO `x_unit` VALUES ('11', '盒');
INSERT INTO `x_unit` VALUES ('12', '条');
INSERT INTO `x_unit` VALUES ('13', '吨');
INSERT INTO `x_unit` VALUES ('14', '个');
INSERT INTO `x_unit` VALUES ('15', '件');
INSERT INTO `x_unit` VALUES ('16', '双');

-- ----------------------------
-- Table structure for x_user
-- ----------------------------
DROP TABLE IF EXISTS `x_user`;
CREATE TABLE `x_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `deleted` int NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of x_user
-- ----------------------------
INSERT INTO `x_user` VALUES ('1', 'admin', '$2a$10$UNMWhR8Ioh7tw.NGjXRGeOMzw7rWal58812uQtoVIsqA6XFF3LDMy', 'super@aliyun.com', '18677778889', '1', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '0', null, null, null, null);
INSERT INTO `x_user` VALUES ('9', 'lisi', '$2a$10$UNMWhR8Ioh7tw.NGjXRGeOMzw7rWal58812uQtoVIsqA6XFF3LDMy', 'cc@qq.com', '15613231147', '1', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '0', null, null, null, null);
INSERT INTO `x_user` VALUES ('14', 'zhangsan', '$2a$10$mADWa1w.vQ3lkjHH0cpKr.YzVrmKXMA6kYknD39618RWBTfgMXnHe', '1689696447@qq.com', '15613231147', '1', null, '0', null, null, null, null);
INSERT INTO `x_user` VALUES ('20', 'ccccccccc', '$2a$10$OEDDzkxLIUEx6.fVs1cdTeXRixw.6i5EBMxAXvjorzZinQgE1DJrS', '1689696447@qq.com', '15613221122', '1', null, '1', null, null, null, null);
INSERT INTO `x_user` VALUES ('21', 'uniqlo', '$2a$10$Me91vmaaPk.UQmPCGWoemOg4M0cz6I/7j00lwYsaC2zTfsmVIk3RW', '1689696445@qq.com', '15613231165', '1', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '0', null, null, null, null);

-- ----------------------------
-- Table structure for x_user_role
-- ----------------------------
DROP TABLE IF EXISTS `x_user_role`;
CREATE TABLE `x_user_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of x_user_role
-- ----------------------------
INSERT INTO `x_user_role` VALUES ('16', '1', '7');
INSERT INTO `x_user_role` VALUES ('17', '14', '2');
INSERT INTO `x_user_role` VALUES ('20', '21', '10');
INSERT INTO `x_user_role` VALUES ('21', '9', '3');

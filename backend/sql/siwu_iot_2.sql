/*
 Navicat Premium Data Transfer

 Source Server         : 本机数据库
 Source Server Type    : MySQL
 Source Server Version : 50726 (5.7.26)
 Source Host           : localhost:3306
 Source Schema         : siwu_iot_2

 Target Server Type    : MySQL
 Target Server Version : 50726 (5.7.26)
 File Encoding         : 65001

 Date: 28/10/2024 09:25:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for big_screen_biz_component
-- ----------------------------
DROP TABLE IF EXISTS `big_screen_biz_component`;
CREATE TABLE `big_screen_biz_component`  (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '业务组件中文名称',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '业务组件编码，唯一标识符',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分组',
  `cover_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '封面图片文件路径',
  `vue_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'vue组件内容',
  `setting_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '组件配置内容',
  `order_num` bigint(64) NOT NULL DEFAULT 0 COMMENT '排序',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(64) NULL DEFAULT 2 COMMENT '创建人',
  `update_by` bigint(64) NULL DEFAULT 2 COMMENT '更新人',
  `module_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模块编码',
  `del_flag` tinyint(2) NOT NULL DEFAULT 0 COMMENT '删除标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '业务组件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of big_screen_biz_component
-- ----------------------------

-- ----------------------------
-- Table structure for big_screen_file
-- ----------------------------
DROP TABLE IF EXISTS `big_screen_file`;
CREATE TABLE `big_screen_file`  (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '模块/类型',
  `original_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '原文件名',
  `new_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '新文件名',
  `extension` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '后缀名(如: txt、png、doc、java等)',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '路径',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '访问路径',
  `size` bigint(64) NOT NULL DEFAULT 0 COMMENT '文件大小',
  `download_count` int(11) NOT NULL DEFAULT 0 COMMENT '下载次数',
  `user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '上传用户',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_by` bigint(64) NULL DEFAULT 2 COMMENT '创建人',
  `update_by` bigint(64) NULL DEFAULT 2 COMMENT '更新人',
  `del_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除标记0:保留，1:删除',
  `bucket` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'gc-starter' COMMENT '桶名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 301 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '文件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of big_screen_file
-- ----------------------------
INSERT INTO `big_screen_file` VALUES (1, 'sncpdrkuzy', 'bg_header.png', '1666271024439635970.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024439635970.png', 9492, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (2, 'sncpdrkuzy', 'bg_top.png', '1666271024540299265.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024540299265.png', 24278, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (3, 'sncpdrkuzy', 'title-bg.png', '1666271024552882178.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024552882178.png', 31439, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (4, 'sncpdrkuzy', '.DS_Store', '1666271024557076482.', '', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024557076482.', 8196, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (5, 'sncpdrkuzy', 'snav_center.png', '1666271024561270786.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024561270786.png', 1104, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (6, 'sncpdrkuzy', 'bg_map_pic.png', '1666271024565465089.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024565465089.png', 36850, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (7, 'sncpdrkuzy', 'box_bg.png', '1666271024573853698.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024573853698.png', 3844, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (8, 'sncpdrkuzy', 'bg_extra_btm.png', '1666271024578048002.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024578048002.png', 3359, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (9, 'sncpdrkuzy', 'bg_slide.png', '1666271024582242306.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024582242306.png', 143148, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (10, 'sncpdrkuzy', 'title08.png', '1666271024586436610.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024586436610.png', 102235, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (11, 'sncpdrkuzy', 'bg_ball_green.png', '1666271024603213826.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024603213826.png', 23987, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (12, 'sncpdrkuzy', 'snav_btm.png', '1666271024615796738.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024615796738.png', 1382, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (13, 'sncpdrkuzy', 'bg_ball_blue.png', '1666271024619991042.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024619991042.png', 23867, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (14, 'sncpdrkuzy', 'title07.png', '1666271024628379650.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024628379650.png', 21104, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (15, 'sncpdrkuzy', 'title06.png', '1666271024640962561.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024640962561.png', 108193, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (16, 'sncpdrkuzy', 'title04.png', '1666271024645156865.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024645156865.png', 26379, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (17, 'sncpdrkuzy', 'title05.png', '1666271024649351169.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024649351169.png', 18180, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (18, 'sncpdrkuzy', 'title01.png', '1666271024653545474.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024653545474.png', 49927, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (19, 'sncpdrkuzy', 'title02.png', '1666271024657739777.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024657739777.png', 28343, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (20, 'sncpdrkuzy', 'bg_num1.png', '1666271024666128386.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024666128386.png', 2693, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (21, 'sncpdrkuzy', 'snav_top.png', '1666271024670322690.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024670322690.png', 1790, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (22, 'sncpdrkuzy', 'bg_map.png', '1666271024674516993.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024674516993.png', 198727, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (23, 'sncpdrkuzy', 'title03png.png', '1666271024687099905.png', 'png', '/root/bigscreen/file/修饰', 'http://gcpaas.gccloud.com/bigScreenServer/static/修饰/1666271024687099905.png', 28338, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (24, '31ldkh3gt8', 'bg31的副本.jpg', '1666271024695488514.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024695488514.jpg', 59819, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (25, '31ldkh3gt8', 'bg45.jpg', '1666271024712265729.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024712265729.jpg', 182164, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (26, '31ldkh3gt8', 'bg44.jpg', '1666271024720654337.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024720654337.jpg', 1273537, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (27, '31ldkh3gt8', 'bg3的副本.jpg', '1666271024758403073.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024758403073.jpg', 176002, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (28, '31ldkh3gt8', 'bg40.jpg', '1666271024770985986.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024770985986.jpg', 427784, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (29, '31ldkh3gt8', '.DS_Store', '1666271024783568897.', '', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024783568897.', 10244, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (30, '31ldkh3gt8', 'bg41.jpg', '1666271024787763201.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024787763201.jpg', 262636, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (31, '31ldkh3gt8', 'bg17的副本.jpg', '1666271024796151810.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024796151810.jpg', 89880, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (32, '31ldkh3gt8', 'bg43.jpg', '1666271024804540417.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024804540417.jpg', 403532, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (33, '31ldkh3gt8', 'bg42.jpg', '1666271024817123329.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024817123329.jpg', 263448, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (34, '31ldkh3gt8', 'bg19.jpg', '1666271024833900545.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024833900545.jpg', 91708, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (35, '31ldkh3gt8', 'bg25.jpg', '1666271024838094849.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024838094849.jpg', 345490, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (36, '31ldkh3gt8', 'bg31.jpg', '1666271024850677761.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024850677761.jpg', 284132, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (37, '31ldkh3gt8', 'bg30.jpg', '1666271024859066370.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024859066370.jpg', 379740, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (38, '31ldkh3gt8', 'bg24.jpg', '1666271024871649282.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024871649282.jpg', 179711, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (39, '31ldkh3gt8', 'bg18.jpg', '1666271024884232193.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024884232193.jpg', 242656, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (40, '31ldkh3gt8', 'bg32.jpg', '1666271024905203714.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024905203714.jpg', 44780, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (41, '31ldkh3gt8', 'bg26.jpg', '1666271024921980929.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024921980929.jpg', 103649, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (42, '31ldkh3gt8', 'bg37的副本.jpg', '1666271024926175234.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024926175234.jpg', 15741, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (43, '31ldkh3gt8', 'bg27.jpg', '1666271024930369538.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024930369538.jpg', 30636, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (44, '31ldkh3gt8', 'bg33.jpg', '1666271024934563842.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024934563842.jpg', 128840, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (45, '31ldkh3gt8', 'bg9.jpg', '1666271024942952449.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024942952449.jpg', 505740, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (46, '31ldkh3gt8', 'bg37.jpg', '1666271024959729665.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024959729665.jpg', 488925, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (47, '31ldkh3gt8', 'bg23.jpg', '1666271024980701185.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024980701185.jpg', 38300, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (48, '31ldkh3gt8', 'bg27的副本.jpg', '1666271024989089793.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024989089793.jpg', 152042, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (49, '31ldkh3gt8', 'bg39的副本.jpg', '1666271024997478401.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271024997478401.jpg', 161836, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (50, '31ldkh3gt8', 'bg22.jpg', '1666271025005867009.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025005867009.jpg', 68381, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (51, '31ldkh3gt8', 'bg36.jpg', '1666271025010061313.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025010061313.jpg', 164452, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (52, '31ldkh3gt8', 'bg8.jpg', '1666271025018449922.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025018449922.jpg', 135707, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (53, '31ldkh3gt8', 'bg20.jpg', '1666271025031032833.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025031032833.jpg', 60870, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (54, '31ldkh3gt8', 'bg34.jpg', '1666271025039421442.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025039421442.jpg', 1254385, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (55, '31ldkh3gt8', 'bg7的副本.jpg', '1666271025060392961.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025060392961.jpg', 80317, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (56, '31ldkh3gt8', 'bg35.jpg', '1666271025068781569.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025068781569.jpg', 173792, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (57, '31ldkh3gt8', 'bg21.jpg', '1666271025077170177.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025077170177.jpg', 197456, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (58, '31ldkh3gt8', 'bg6.jpg', '1666271025085558786.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025085558786.jpg', 342805, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (59, '31ldkh3gt8', 'bg38.jpg', '1666271025098141697.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025098141697.jpg', 170088, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (60, '31ldkh3gt8', 'bg10.jpg', '1666271025110724610.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025110724610.jpg', 669648, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (61, '31ldkh3gt8', 'bg11.jpg', '1666271025135890434.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025135890434.jpg', 728210, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (62, '31ldkh3gt8', 'bg39.jpg', '1666271025156861954.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025156861954.jpg', 225146, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (63, '31ldkh3gt8', 'bg7.jpg', '1666271025169444866.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025169444866.jpg', 785786, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (64, '31ldkh3gt8', 'bg5.jpg', '1666271025194610690.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025194610690.jpg', 249919, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (65, '31ldkh3gt8', 'bg13.jpg', '1666271025211387905.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025211387905.jpg', 91909, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (66, '31ldkh3gt8', 'bg30的副本.jpg', '1666271025219776513.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025219776513.jpg', 26266, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (67, '31ldkh3gt8', 'bg18的副本.jpg', '1666271025228165122.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025228165122.jpg', 162025, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (68, '31ldkh3gt8', 'bg12.jpg', '1666271025232359426.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025232359426.jpg', 288703, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (69, '31ldkh3gt8', 'bg4.jpg', '1666271025240748034.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025240748034.jpg', 215001, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (70, '31ldkh3gt8', 'bg16.jpg', '1666271025249136641.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025249136641.jpg', 46399, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (71, '31ldkh3gt8', 'bg17.jpg', '1666271025257525249.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025257525249.jpg', 84604, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (72, '31ldkh3gt8', 'bg1.jpg', '1666271025261719554.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025261719554.jpg', 592253, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (73, '31ldkh3gt8', 'bg3.jpg', '1666271025274302465.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025274302465.jpg', 194521, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (74, '31ldkh3gt8', 'bg15.jpg', '1666271025286885377.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025286885377.jpg', 219789, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (75, '31ldkh3gt8', 'bg29.jpg', '1666271025295273986.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025295273986.jpg', 80296, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (76, '31ldkh3gt8', 'bg28.jpg', '1666271025299468290.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025299468290.jpg', 160867, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (77, '31ldkh3gt8', 'bg14.jpg', '1666271025307856897.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025307856897.jpg', 94614, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (78, '31ldkh3gt8', 'bg2.jpg', '1666271025324634113.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025324634113.jpg', 305794, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (79, '31ldkh3gt8', 'bg36的副本.jpg', '1666271025333022721.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025333022721.jpg', 11085, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (80, '31ldkh3gt8', 'bg28的副本.jpg', '1666271025341411330.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025341411330.jpg', 156110, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (81, '31ldkh3gt8', 'bg10的副本.jpg', '1666271025353994242.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025353994242.jpg', 199865, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (82, '31ldkh3gt8', 'bg34的副本.jpg', '1666271025362382850.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025362382850.jpg', 67370, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (83, '31ldkh3gt8', 'bg38的副本.jpg', '1666271025370771458.jpg', 'jpg', '/root/bigscreen/file/背景', 'http://gcpaas.gccloud.com/bigScreenServer/static/背景/1666271025370771458.jpg', 24880, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (84, 'other', '.DS_Store', '1666271025379160065.', '', '/root/bigscreen/file', 'http://gcpaas.gccloud.com/bigScreenServer/static/1666271025379160065.', 12292, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (85, 'rh399cokhk', 'm-ustcall03-20200515125441.png', '1666271025383354370.png', 'png', '/root/bigscreen/file/LOGO', 'http://gcpaas.gccloud.com/bigScreenServer/static/LOGO/1666271025383354370.png', 10039, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (86, 'rh399cokhk', '.DS_Store', '1666271025387548674.', '', '/root/bigscreen/file/LOGO', 'http://gcpaas.gccloud.com/bigScreenServer/static/LOGO/1666271025387548674.', 6148, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (87, 'rh399cokhk', '001-20200121173405.jpg', '1666271025395937281.jpg', 'jpg', '/root/bigscreen/file/LOGO', 'http://gcpaas.gccloud.com/bigScreenServer/static/LOGO/1666271025395937281.jpg', 34797, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (88, 'rh399cokhk', 'm-ustcall-20200515125441.png', '1666271025404325890.png', 'png', '/root/bigscreen/file/LOGO', 'http://gcpaas.gccloud.com/bigScreenServer/static/LOGO/1666271025404325890.png', 13504, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (89, 'rh399cokhk', 'm-ustcall01-20200515125441.png', '1666271025408520194.png', 'png', '/root/bigscreen/file/LOGO', 'http://gcpaas.gccloud.com/bigScreenServer/static/LOGO/1666271025408520194.png', 4359, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (90, 'rh399cokhk', 'm-ustcall02-20200515125441.png', '1666271025408520195.png', 'png', '/root/bigscreen/file/LOGO', 'http://gcpaas.gccloud.com/bigScreenServer/static/LOGO/1666271025408520195.png', 3902, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (91, 'rh399cokhk', 'm-ustc-20200515125441.png', '1666271025412714498.png', 'png', '/root/bigscreen/file/LOGO', 'http://gcpaas.gccloud.com/bigScreenServer/static/LOGO/1666271025412714498.png', 9944, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (92, 'paioqlhtby', 'icon02.png', '1666271025421103105.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025421103105.png', 4525, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (93, 'paioqlhtby', 'icon16.png', '1666271025421103106.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025421103106.png', 5081, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (94, 'paioqlhtby', 'icon17.png', '1666271025425297409.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025425297409.png', 6330, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (95, 'paioqlhtby', 'icon03.png', '1666271025429491713.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025429491713.png', 5314, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (96, 'paioqlhtby', 'a1.png', '1666271025433686017.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025433686017.png', 22757, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (97, 'paioqlhtby', 'biancheng.png', '1666271025437880322.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025437880322.png', 13938, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (98, 'paioqlhtby', 'zixun0.png', '1666271025442074626.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025442074626.png', 11562, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (99, 'paioqlhtby', 'a3.png', '1666271025446268929.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025446268929.png', 30246, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (100, 'paioqlhtby', 'icon15.png', '1666271025450463234.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025450463234.png', 5311, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (101, 'paioqlhtby', 'icon01.png', '1666271025454657538.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025454657538.png', 5332, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (102, 'paioqlhtby', 'a2.png', '1666271025458851842.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025458851842.png', 21520, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (103, 'paioqlhtby', 'hezuo.png', '1666271025463046146.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025463046146.png', 16464, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (104, 'paioqlhtby', 'icon_fault_o.png', '1666271025463046147.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025463046147.png', 2325, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (105, 'paioqlhtby', '.DS_Store', '1666271025467240449.', '', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025467240449.', 14340, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (106, 'paioqlhtby', 'icon10.png', '1666271025475629058.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025475629058.png', 4419, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (107, 'paioqlhtby', 'icon04.png', '1666271025479823362.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025479823362.png', 5133, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (108, 'paioqlhtby', 'icon05.png', '1666271025484017666.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025484017666.png', 6010, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (109, 'paioqlhtby', 'icon11.png', '1666271025488211969.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025488211969.png', 4959, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (110, 'paioqlhtby', 'jiaoyu0.png', '1666271025488211970.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025488211970.png', 12726, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (111, 'paioqlhtby', 'a5.png', '1666271025492406274.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025492406274.png', 29668, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (112, 'paioqlhtby', 'icon_app9.png', '1666271025500794882.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025500794882.png', 4162, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (113, 'paioqlhtby', 'icon07.png', '1666271025504989186.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025504989186.png', 5575, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (114, 'paioqlhtby', 'wangluo1.png', '1666271025504989187.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025504989187.png', 17020, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (115, 'paioqlhtby', 'icon13.png', '1666271025509183490.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025509183490.png', 5195, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (116, 'paioqlhtby', 'icon12.png', '1666271025513377793.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025513377793.png', 4723, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (117, 'paioqlhtby', 'icon06.png', '1666271025517572097.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025517572097.png', 4296, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (118, 'paioqlhtby', 'icon_app8.png', '1666271025517572098.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025517572098.png', 4312, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (119, 'paioqlhtby', 'a4.png', '1666271025521766402.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025521766402.png', 17930, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (120, 'paioqlhtby', 'ico_gj.png', '1666271025525960705.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025525960705.png', 1849, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (121, 'paioqlhtby', 'icon_top2.png', '1666271025530155010.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025530155010.png', 1782, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (122, 'paioqlhtby', 'icon-nb3.png', '1666271025534349313.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025534349313.png', 803, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (123, 'paioqlhtby', 'jiance.png', '1666271025534349314.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025534349314.png', 12570, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (124, 'paioqlhtby', 'wsc.png', '1666271025538543618.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025538543618.png', 8972, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (125, 'paioqlhtby', 'sms_ico01.png', '1666271025546932226.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025546932226.png', 14668, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (126, 'paioqlhtby', 'icon-nb2.png', '1666271025551126530.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025551126530.png', 1186, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (127, 'paioqlhtby', 'icon_top3.png', '1666271025555320834.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025555320834.png', 2001, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (128, 'paioqlhtby', 'gongzimingxi.png', '1666271025559515137.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025559515137.png', 12876, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (129, 'paioqlhtby', 'icon_top1.png', '1666271025563709441.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025563709441.png', 2109, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (130, 'paioqlhtby', 'sms_ico02.png', '1666271025563709442.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025563709442.png', 14958, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (131, 'paioqlhtby', 'sms_ico03.png', '1666271025567903746.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025567903746.png', 16228, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (132, 'paioqlhtby', 'hetong1.png', '1666271025572098049.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025572098049.png', 12827, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (133, 'paioqlhtby', 'wodemaidan.png', '1666271025576292354.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025576292354.png', 12624, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (134, 'paioqlhtby', 'app_icon04.png', '1666271025580486658.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025580486658.png', 3238, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (135, 'paioqlhtby', 'app_icon00.png', '1666271025584680961.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025584680961.png', 3351, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (136, 'paioqlhtby', 'index_ico05.png', '1666271025584680962.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025584680962.png', 17070, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (137, 'paioqlhtby', 'icon_top4.png', '1666271025588875265.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025588875265.png', 1533, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (138, 'paioqlhtby', 'icon_top5.png', '1666271025593069569.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025593069569.png', 1690, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (139, 'paioqlhtby', 'app_icon01.png', '1666271025597263874.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025597263874.png', 4121, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (140, 'paioqlhtby', 'app_icon03.png', '1666271025597263875.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025597263875.png', 3378, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (141, 'paioqlhtby', 'index_ico06.png', '1666271025601458177.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025601458177.png', 17270, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (142, 'paioqlhtby', 'icon_top6.png', '1666271025605652482.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025605652482.png', 1917, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (143, 'paioqlhtby', 'index_ico07.png', '1666271025605652483.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025605652483.png', 16672, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (144, 'paioqlhtby', 'app_icon02.png', '1666271025614041090.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025614041090.png', 3749, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (145, 'paioqlhtby', 'zoushi1.png', '1666271025614041091.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025614041091.png', 12684, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (146, 'paioqlhtby', 'platform_icon_7.png', '1666271025618235393.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025618235393.png', 6624, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (147, 'paioqlhtby', 'platform_icon_6.png', '1666271025622429698.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025622429698.png', 8534, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (148, 'paioqlhtby', 'liuchengshenpi.png', '1666271025626624002.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025626624002.png', 13977, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (149, 'paioqlhtby', 'platform_icon_4.png', '1666271025630818306.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025630818306.png', 7506, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (150, 'paioqlhtby', 'line_icon04.png', '1666271025630818307.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025630818307.png', 4030, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (151, 'paioqlhtby', 'yijianfankui.png', '1666271025635012610.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025635012610.png', 13776, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (152, 'paioqlhtby', 'line_icon05.png', '1666271025639206913.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025639206913.png', 3462, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (153, 'paioqlhtby', 'platform_icon_5.png', '1666271025643401218.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025643401218.png', 5773, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (154, 'paioqlhtby', 'index_ico08.png', '1666271025643401219.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025643401219.png', 20624, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (155, 'paioqlhtby', 'renwu1.png', '1666271025647595521.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025647595521.png', 12754, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (156, 'paioqlhtby', 'platform_icon_1.png', '1666271025651789825.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025651789825.png', 3871, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (157, 'paioqlhtby', 'line_icon01.png', '1666271025655984129.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025655984129.png', 2838, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (158, 'paioqlhtby', 'ziyuan.png', '1666271025660178433.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025660178433.png', 16236, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (159, 'paioqlhtby', 'global_list_icon_2.png', '1666271025660178434.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025660178434.png', 3723, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (160, 'paioqlhtby', 'xinyong.png', '1666271025664372738.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025664372738.png', 17162, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (161, 'paioqlhtby', 'global_list_icon_3.png', '1666271025668567041.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025668567041.png', 3334, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (162, 'paioqlhtby', 'jiaohuan.png', '1666271025672761345.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025672761345.png', 14417, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (163, 'paioqlhtby', 'platform_icon_2.png', '1666271025676955650.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025676955650.png', 5328, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (164, 'paioqlhtby', 'line_icon02.png', '1666271025681149953.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025681149953.png', 3886, 0, '', '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (165, 'paioqlhtby', 'global_list_icon_1.png', '1666271025685344257.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025685344257.png', 3474, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (166, 'paioqlhtby', 'line_icon03.png', '1666271025689538561.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025689538561.png', 3246, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (167, 'paioqlhtby', 'platform_icon_3.png', '1666271025689538562.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025689538562.png', 4671, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (168, 'paioqlhtby', 'anquan.png', '1666271025693732866.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025693732866.png', 14371, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (169, 'paioqlhtby', 'anquanyinsi.png', '1666271025697927170.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025697927170.png', 7072, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (170, 'paioqlhtby', 'icon_app5.png', '1666271025697927171.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025697927171.png', 5585, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (171, 'paioqlhtby', 'icon_app4.png', '1666271025702121474.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025702121474.png', 4620, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (172, 'paioqlhtby', 'anquanzhongxin1.png', '1666271025706315777.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025706315777.png', 14111, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (173, 'paioqlhtby', 'icon_app6.png', '1666271025710510081.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025710510081.png', 5188, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (174, 'paioqlhtby', 'ico1.png', '1666271025710510082.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025710510082.png', 1493, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (175, 'paioqlhtby', 'ico_normal.png', '1666271025714704386.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025714704386.png', 1832, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (176, 'paioqlhtby', 'icon20.png', '1666271025718898690.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025718898690.png', 5460, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (177, 'paioqlhtby', 'icon08.png', '1666271025723092994.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025723092994.png', 5217, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (178, 'paioqlhtby', 'icon09.png', '1666271025723092995.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025723092995.png', 5322, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (179, 'paioqlhtby', 'icon_app7.png', '1666271025727287297.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025727287297.png', 4205, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (180, 'paioqlhtby', 'icon_fault_b.png', '1666271025731481602.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025731481602.png', 2349, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (181, 'paioqlhtby', 'huochepiao1.png', '1666271025731481603.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025731481603.png', 13323, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (182, 'paioqlhtby', 'icon_app3.png', '1666271025735675905.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025735675905.png', 4681, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (183, 'paioqlhtby', 'module2_icon2.png', '1666271025739870210.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025739870210.png', 2260, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (184, 'paioqlhtby', 'icon19.png', '1666271025744064514.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025744064514.png', 5541, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (185, 'paioqlhtby', 'icon18.png', '1666271025744064515.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025744064515.png', 5303, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (186, 'paioqlhtby', 'module2_icon3.png', '1666271025748258817.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025748258817.png', 2217, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (187, 'paioqlhtby', 'icon_app2.png', '1666271025752453121.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025752453121.png', 4843, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (188, 'paioqlhtby', 'qingdan.png', '1666271025752453122.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025752453122.png', 12660, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (189, 'paioqlhtby', 'module2_icon1.png', '1666271025756647426.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025756647426.png', 3129, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (190, 'paioqlhtby', 'icon_app1.png', '1666271025760841729.png', 'png', '/root/bigscreen/file/2D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/2D图标/1666271025760841729.png', 4655, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (191, 'undrwm4bdz', 'preview-3_1.png', '1666271025769230337.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025769230337.png', 39880, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (192, 'undrwm4bdz', 'preview-6.png', '1666271025773424641.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025773424641.png', 35576, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (193, 'undrwm4bdz', '数据展示1.png', '1666271025781813249.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025781813249.png', 17628, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (194, 'undrwm4bdz', 'preview-7.png', '1666271025786007553.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025786007553.png', 41798, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (195, 'undrwm4bdz', 'b10的副本.png', '1666271025790201858.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025790201858.png', 78523, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (196, 'undrwm4bdz', 'preview-42的副本.png', '1666271025798590465.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025798590465.png', 38354, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (197, 'undrwm4bdz', '数据展示2.png', '1666271025802784769.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025802784769.png', 10716, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (198, 'undrwm4bdz', 'preview-5.png', '1666271025806979073.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025806979073.png', 40124, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (199, 'undrwm4bdz', 'icon29.png', '1666271025811173377.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025811173377.png', 163255, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (200, 'undrwm4bdz', '数据展示3.png', '1666271025819561986.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025819561986.png', 20502, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (201, 'undrwm4bdz', 'preview-1_1.png', '1666271025827950594.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025827950594.png', 44545, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (202, 'undrwm4bdz', 'icon_nc.png', '1666271025832144898.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025832144898.png', 742779, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (203, 'undrwm4bdz', 'b12的副本.png', '1666271025857310721.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025857310721.png', 74891, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (204, 'undrwm4bdz', 'new-icon08.png', '1666271025869893633.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025869893633.png', 5068, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (205, 'undrwm4bdz', '数据展示7.png', '1666271025869893634.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025869893634.png', 12421, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (206, 'undrwm4bdz', '.DS_Store', '1666271025874087938.', '', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025874087938.', 12292, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (207, 'undrwm4bdz', 'Planet.png', '1666271025878282241.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025878282241.png', 3172152, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (208, 'undrwm4bdz', 'preview-49.png', '1666271025937002497.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025937002497.png', 52482, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (209, 'undrwm4bdz', 'preview-48.png', '1666271025953779713.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025953779713.png', 39831, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (210, 'undrwm4bdz', '数据展示6.png', '1666271025962168322.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025962168322.png', 46270, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (211, 'undrwm4bdz', 'ai2.png', '1666271025966362626.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025966362626.png', 350554, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (212, 'undrwm4bdz', 'b9.png', '1666271025983139842.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025983139842.png', 67470, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (213, 'undrwm4bdz', '数据展示4.png', '1666271025995722753.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025995722753.png', 37532, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (214, 'undrwm4bdz', '数据展示5.png', '1666271025999917058.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271025999917058.png', 79998, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (215, 'undrwm4bdz', 'preview-31_1.png', '1666271026004111361.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026004111361.png', 39052, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (216, 'undrwm4bdz', 'b8.png', '1666271026008305666.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026008305666.png', 71876, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (217, 'undrwm4bdz', '14.png', '1666271026016694273.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026016694273.png', 48368, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (218, 'undrwm4bdz', 'preview-10.png', '1666271026020888578.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026020888578.png', 39124, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (219, 'undrwm4bdz', 'preview-11.png', '1666271026025082882.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026025082882.png', 39014, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (220, 'undrwm4bdz', '15.png', '1666271026029277185.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026029277185.png', 221855, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (221, 'undrwm4bdz', '17.png', '1666271026037665793.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026037665793.png', 163463, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (222, 'undrwm4bdz', 'preview-34_1.png', '1666271026046054402.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026046054402.png', 26947, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (223, 'undrwm4bdz', 'preview-13.png', '1666271026050248706.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026050248706.png', 42659, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (224, 'undrwm4bdz', 'preview-2_1.png', '1666271026054443010.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026054443010.png', 49991, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (225, 'undrwm4bdz', 'preview-12.png', '1666271026058637314.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026058637314.png', 41573, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (226, 'undrwm4bdz', '16.png', '1666271026062831617.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026062831617.png', 142081, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (227, 'undrwm4bdz', 'icon_sj.png', '1666271026071220225.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026071220225.png', 770485, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (228, 'undrwm4bdz', 'icon_fwq2.png', '1666271026087997442.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026087997442.png', 355447, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (229, 'undrwm4bdz', 'preview-30_1.png', '1666271026096386049.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026096386049.png', 21932, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (230, 'undrwm4bdz', 'preview-4_1.png', '1666271026108968962.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026108968962.png', 27134, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (231, 'undrwm4bdz', 'g6.png', '1666271026113163266.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026113163266.png', 37057, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (232, 'undrwm4bdz', 'icon_dw.png', '1666271026117357570.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026117357570.png', 466773, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (233, 'undrwm4bdz', 'B09.png', '1666271026125746177.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026125746177.png', 165312, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (234, 'undrwm4bdz', 'B08.png', '1666271026146717698.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026146717698.png', 23865, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (235, 'undrwm4bdz', 'preview-14.png', '1666271026150912002.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026150912002.png', 76526, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (236, 'undrwm4bdz', 'g7.png', '1666271026155106306.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026155106306.png', 33658, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (237, 'undrwm4bdz', 'preview-16_1.png', '1666271026163494914.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026163494914.png', 40571, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (238, 'undrwm4bdz', '21.png', '1666271026167689217.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026167689217.png', 47490, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (239, 'undrwm4bdz', 'B05.png', '1666271026176077825.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026176077825.png', 133475, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (240, 'undrwm4bdz', 'B11.png', '1666271026192855042.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026192855042.png', 56308, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (241, 'undrwm4bdz', 'B10.png', '1666271026197049346.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026197049346.png', 95755, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (242, 'undrwm4bdz', 'B04.png', '1666271026205437954.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026205437954.png', 177564, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (243, 'undrwm4bdz', '20.png', '1666271026218020865.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026218020865.png', 90570, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (244, 'undrwm4bdz', 'b11的副本.png', '1666271026226409473.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026226409473.png', 72376, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (245, 'undrwm4bdz', 'icon_ljt.png', '1666271026234798081.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026234798081.png', 626648, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (246, 'undrwm4bdz', '22.png', '1666271026247380993.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026247380993.png', 80604, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (247, 'undrwm4bdz', 'B12.png', '1666271026259963906.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026259963906.png', 49493, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (248, 'undrwm4bdz', 'B06.png', '1666271026264158210.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026264158210.png', 306481, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (249, 'undrwm4bdz', 'B07.png', '1666271026272546818.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026272546818.png', 105128, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (250, 'undrwm4bdz', 'B13.png', '1666271026280935425.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026280935425.png', 66513, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (251, 'undrwm4bdz', '23.png', '1666271026285129729.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026285129729.png', 29245, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (252, 'undrwm4bdz', 'new_icon_box01.png', '1666271026289324034.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026289324034.png', 10668, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (253, 'undrwm4bdz', 'B03.png', '1666271026293518338.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026293518338.png', 95186, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (254, 'undrwm4bdz', 'B02.png', '1666271026297712642.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026297712642.png', 58502, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (255, 'undrwm4bdz', 'b16.png', '1666271026301906945.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026301906945.png', 83925, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (256, 'undrwm4bdz', '18.png', '1666271026310295553.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026310295553.png', 87953, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (257, 'undrwm4bdz', '24.png', '1666271026331267074.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026331267074.png', 116136, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (258, 'undrwm4bdz', 'new_icon_box02.png', '1666271026339655682.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026339655682.png', 9143, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (259, 'undrwm4bdz', 'b14.png', '1666271026343849985.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026343849985.png', 73280, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (260, 'undrwm4bdz', 'b15.png', '1666271026348044289.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026348044289.png', 69502, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (261, 'undrwm4bdz', 'B01.png', '1666271026356432897.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026356432897.png', 48943, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (262, 'undrwm4bdz', 'new_icon_box03.png', '1666271026360627202.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026360627202.png', 10643, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (263, 'undrwm4bdz', 'icon_wy.png', '1666271026364821506.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026364821506.png', 737806, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (264, 'undrwm4bdz', 'preview-45_1.png', '1666271026381598721.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026381598721.png', 43322, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (265, 'undrwm4bdz', 'new-icon07.png', '1666271026389987329.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026389987329.png', 5023, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (266, 'undrwm4bdz', 'b5.png', '1666271026394181634.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026394181634.png', 80308, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (267, 'undrwm4bdz', '数据展示.png', '1666271026398375938.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026398375938.png', 14402, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (268, 'undrwm4bdz', '数据展示8.png', '1666271026402570242.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026402570242.png', 31907, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (269, 'undrwm4bdz', 'preview-46.png', '1666271026406764546.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026406764546.png', 43302, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (270, 'undrwm4bdz', 'icon23.png', '1666271026410958850.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026410958850.png', 88569, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (271, 'undrwm4bdz', 'preview-47.png', '1666271026419347457.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026419347457.png', 63379, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (272, 'undrwm4bdz', '数据展示9.png', '1666271026423541762.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026423541762.png', 9760, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (273, 'undrwm4bdz', 'b4.png', '1666271026427736065.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026427736065.png', 79695, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (274, 'undrwm4bdz', 'new-icon06.png', '1666271026436124673.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026436124673.png', 5020, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (275, 'undrwm4bdz', 'new-icon04.png', '1666271026436124674.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026436124674.png', 4992, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (276, 'undrwm4bdz', 'b6.png', '1666271026440318977.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026440318977.png', 76723, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (277, 'undrwm4bdz', 'icon21.png', '1666271026444513281.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026444513281.png', 313130, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (278, 'undrwm4bdz', 'b7.png', '1666271026457096194.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026457096194.png', 65361, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (279, 'undrwm4bdz', 'new-icon05.png', '1666271026469679105.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026469679105.png', 5076, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (280, 'undrwm4bdz', 'icon_shuju.png', '1666271026473873409.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026473873409.png', 343159, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (281, 'undrwm4bdz', 'b3.png', '1666271026482262017.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026482262017.png', 75758, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (282, 'undrwm4bdz', 'new-icon01.png', '1666271026499039234.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026499039234.png', 5006, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (283, 'undrwm4bdz', 'preview-9.png', '1666271026503233537.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026503233537.png', 46257, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (284, 'undrwm4bdz', 'icon31.png', '1666271026507427841.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026507427841.png', 85235, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (285, 'undrwm4bdz', 'icon25.png', '1666271026515816449.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026515816449.png', 139486, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (286, 'undrwm4bdz', 'icon24.png', '1666271026528399362.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026528399362.png', 182437, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (287, 'undrwm4bdz', 'icon30.png', '1666271026536787969.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026536787969.png', 88771, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (288, 'undrwm4bdz', 'preview-8.png', '1666271026545176578.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026545176578.png', 38947, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (289, 'undrwm4bdz', 'b2.png', '1666271026549370882.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026549370882.png', 82200, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (290, 'undrwm4bdz', '数据展示10.png', '1666271026557759489.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026557759489.png', 27754, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (291, 'undrwm4bdz', 'icon_aq.png', '1666271026561953794.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026561953794.png', 737240, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (292, 'undrwm4bdz', 'new-icon02.png', '1666271026578731009.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026578731009.png', 5054, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (293, 'undrwm4bdz', 'preview-43.png', '1666271026578731010.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026578731010.png', 38240, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (294, 'undrwm4bdz', 'icon26.png', '1666271026582925314.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026582925314.png', 85132, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (295, 'undrwm4bdz', 'icon32.png', '1666271026587119618.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026587119618.png', 394728, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (296, 'undrwm4bdz', 'icon27.png', '1666271026599702530.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026599702530.png', 67884, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (297, 'undrwm4bdz', 'preview-42.png', '1666271026608091138.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026608091138.png', 38354, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (298, 'undrwm4bdz', 'new-icon03.png', '1666271026612285442.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026612285442.png', 5161, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (299, 'undrwm4bdz', 'b1.png', '1666271026616479745.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026616479745.png', 71354, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');
INSERT INTO `big_screen_file` VALUES (300, 'undrwm4bdz', '数据展示11.png', '1666271026620674049.png', 'png', '/root/bigscreen/file/3D图标', 'http://gcpaas.gccloud.com/bigScreenServer/static/3D图标/1666271026620674049.png', 21076, 0, '', '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0, 'gc-starter');

-- ----------------------------
-- Table structure for big_screen_map
-- ----------------------------
DROP TABLE IF EXISTS `big_screen_map`;
CREATE TABLE `big_screen_map`  (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级地图id',
  `map_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地图编码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地图名称',
  `geo_json` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '地图geoJson',
  `level` tinyint(2) NOT NULL DEFAULT 0 COMMENT '地图级别 0-世界 1-国家 2-省 3-市 4-区县',
  `uploaded_geo_json` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否已上传geoJson 0-否 1-是',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(64) NULL DEFAULT 2 COMMENT '创建人',
  `update_by` bigint(64) NULL DEFAULT 2 COMMENT '更新人',
  `del_flag` tinyint(2) NOT NULL DEFAULT 0 COMMENT '删除标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '地图数据维护表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of big_screen_map
-- ----------------------------

-- ----------------------------
-- Table structure for big_screen_page
-- ----------------------------
DROP TABLE IF EXISTS `big_screen_page`;
CREATE TABLE `big_screen_page`  (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '页面中文名称',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '页面编码，页面唯一标识符',
  `cover_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '封面图片文件路径',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'custom' COMMENT '页面类型',
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '页面配置',
  `parent_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '父级目录编码',
  `order_num` bigint(64) NOT NULL DEFAULT 0 COMMENT '排序',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备忘',
  `app_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '所属应用编码',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(64) NULL DEFAULT 2 COMMENT '创建人',
  `update_by` bigint(64) NULL DEFAULT 2 COMMENT '更新人',
  `del_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除标识符 1 删除 0未删',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '页面基本信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of big_screen_page
-- ----------------------------

-- ----------------------------
-- Table structure for big_screen_page_preview
-- ----------------------------
DROP TABLE IF EXISTS `big_screen_page_preview`;
CREATE TABLE `big_screen_page_preview`  (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '页面编码，页面唯一标识符',
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '页面配置',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '页面预览缓存表，每日定时删除' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of big_screen_page_preview
-- ----------------------------

-- ----------------------------
-- Table structure for big_screen_page_template
-- ----------------------------
DROP TABLE IF EXISTS `big_screen_page_template`;
CREATE TABLE `big_screen_page_template`  (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '模板名称',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '模板分类',
  `config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '模板配置',
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '缩略图',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '备注',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(64) NULL DEFAULT 2 COMMENT '创建人',
  `update_by` bigint(64) NULL DEFAULT 2 COMMENT '更新人',
  `del_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除标记0:保留，1:删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '页面模板表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of big_screen_page_template
-- ----------------------------

-- ----------------------------
-- Table structure for big_screen_type
-- ----------------------------
DROP TABLE IF EXISTS `big_screen_type`;
CREATE TABLE `big_screen_type`  (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `order_num` bigint(64) NOT NULL DEFAULT 0 COMMENT '排序',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(64) NULL DEFAULT 2 COMMENT '创建人',
  `update_by` bigint(64) NULL DEFAULT 2 COMMENT '更新人',
  `del_flag` tinyint(2) NOT NULL DEFAULT 0 COMMENT '删除标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '大屏、资源库、组件库分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of big_screen_type
-- ----------------------------
INSERT INTO `big_screen_type` VALUES (1, '修饰', 'sncpdrkuzy', 'resourceCatalog', 0, '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0);
INSERT INTO `big_screen_type` VALUES (2, '背景', '31ldkh3gt8', 'resourceCatalog', 0, '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0);
INSERT INTO `big_screen_type` VALUES (3, 'LOGO', 'rh399cokhk', 'resourceCatalog', 0, '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0);
INSERT INTO `big_screen_type` VALUES (4, '2D图标', 'paioqlhtby', 'resourceCatalog', 0, '2023-06-07 10:29:04', '2023-06-07 10:29:04', 2, 2, 0);
INSERT INTO `big_screen_type` VALUES (5, '3D图标', 'undrwm4bdz', 'resourceCatalog', 0, '2023-06-07 10:29:05', '2023-06-07 10:29:05', 2, 2, 0);

-- ----------------------------
-- Table structure for ds_category_tree
-- ----------------------------
DROP TABLE IF EXISTS `ds_category_tree`;
CREATE TABLE `ds_category_tree`  (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'id序列',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `parent_id` bigint(64) NULL DEFAULT NULL COMMENT '父级ID',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `del_flag` tinyint(2) NOT NULL DEFAULT 0 COMMENT '删除标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据集种类树' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ds_category_tree
-- ----------------------------

-- ----------------------------
-- Table structure for ds_dataset
-- ----------------------------
DROP TABLE IF EXISTS `ds_dataset`;
CREATE TABLE `ds_dataset`  (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NULL DEFAULT NULL COMMENT '种类ID',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '描述',
  `dataset_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据集类型（自定义数据集 custom、模型数据集model、原始数据集original、API数据集api、JSON数据集 json）',
  `module_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NULL DEFAULT NULL COMMENT '模块编码',
  `editable` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否可编辑，0 不可编辑 1 可编辑',
  `source_id` bigint(32) NULL DEFAULT NULL COMMENT '数据源ID',
  `cache` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否对执行结构缓存 0 不缓存 1 缓存',
  `config` longtext CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NULL COMMENT '数据集配置',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `del_flag` tinyint(2) NOT NULL DEFAULT 0 COMMENT '删除标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_mysql500_ci COMMENT = '数据集表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ds_dataset
-- ----------------------------

-- ----------------------------
-- Table structure for ds_dataset_label
-- ----------------------------
DROP TABLE IF EXISTS `ds_dataset_label`;
CREATE TABLE `ds_dataset_label`  (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dataset_id` bigint(32) NULL DEFAULT NULL COMMENT '数据集ID',
  `label_id` bigint(32) NULL DEFAULT NULL COMMENT '标签ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_mysql500_ci COMMENT = '数据集与标签关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ds_dataset_label
-- ----------------------------

-- ----------------------------
-- Table structure for ds_datasource
-- ----------------------------
DROP TABLE IF EXISTS `ds_datasource`;
CREATE TABLE `ds_datasource`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `source_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据源名称',
  `source_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据源类型',
  `driver_class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '连接驱动',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '连接url',
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主机',
  `port` int(16) NULL DEFAULT NULL COMMENT '端口',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '密码',
  `module_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块编码',
  `editable` tinyint(2) NULL DEFAULT 0 COMMENT '是否可编辑，0 不可编辑 1 可编辑',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `del_flag` tinyint(2) NOT NULL DEFAULT 0 COMMENT '删除标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据源配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ds_datasource
-- ----------------------------

-- ----------------------------
-- Table structure for ds_label
-- ----------------------------
DROP TABLE IF EXISTS `ds_label`;
CREATE TABLE `ds_label`  (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `label_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NULL DEFAULT NULL COMMENT '标签名称',
  `label_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NULL DEFAULT NULL COMMENT '标签类型',
  `label_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NULL DEFAULT NULL COMMENT '标签描述',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(64) NULL DEFAULT 2 COMMENT '创建人',
  `update_by` bigint(64) NULL DEFAULT 2 COMMENT '更新人',
  `del_flag` tinyint(2) NOT NULL DEFAULT 0 COMMENT '删除标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_mysql500_ci COMMENT = '标签' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ds_label
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-10-28 09:22:47', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-10-28 09:22:47', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-10-28 09:22:47', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-10-28 09:22:47', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-10-28 09:22:47', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-10-28 09:22:47', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-28 09:22:47', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-28 09:22:47', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-28 09:22:47', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-28 09:22:47', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-28 09:22:47', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-28 09:22:47', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-28 09:22:47', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-28 09:22:47', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-28 09:22:47', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-28 09:22:47', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-10-28 09:22:47', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由名称',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2000 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-10-28 09:22:47', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-10-28 09:22:47', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-10-28 09:22:47', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2024-10-28 09:22:47', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-10-28 09:22:47', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-10-28 09:22:47', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-10-28 09:22:47', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-10-28 09:22:47', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-10-28 09:22:47', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-10-28 09:22:47', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-10-28 09:22:47', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-10-28 09:22:47', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-10-28 09:22:47', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-10-28 09:22:47', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-10-28 09:22:47', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-10-28 09:22:47', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-10-28 09:22:47', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-10-28 09:22:47', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-10-28 09:22:47', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-10-28 09:22:47', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-10-28 09:22:47', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-10-28 09:22:47', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-10-28 09:22:47', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-10-28 09:22:47', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-10-28 09:22:47', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-10-28 09:22:47', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-10-28 09:22:47', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-10-28 09:22:47', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-10-28 09:22:47', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2024-10-28 09:22:47', '', NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-10-28 09:22:47', 'admin', '2024-10-28 09:22:47', '', NULL, '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-10-28 09:22:47', 'admin', '2024-10-28 09:22:47', '', NULL, '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

SET FOREIGN_KEY_CHECKS = 1;

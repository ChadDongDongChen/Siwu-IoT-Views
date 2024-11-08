/*
 Navicat Premium Data Transfer

 Source Server         : 本机数据库
 Source Server Type    : MySQL
 Source Server Version : 50726 (5.7.26)
 Source Host           : localhost:3306
 Source Schema         : siwuiot

 Target Server Type    : MySQL
 Target Server Version : 50726 (5.7.26)
 File Encoding         : 65001

 Date: 28/10/2024 14:37:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `editable` tinyint(2) NULL DEFAULT 0 COMMENT '是否可编辑，0 不可编辑 1 可编辑',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(64) NULL DEFAULT 2 COMMENT '创建人',
  `update_by` bigint(64) NULL DEFAULT 2 COMMENT '更新人',
  `del_flag` tinyint(2) NOT NULL DEFAULT 0 COMMENT '删除标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1850740337922695171 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据源配置表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

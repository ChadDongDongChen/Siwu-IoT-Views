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

 Date: 28/10/2024 14:38:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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

SET FOREIGN_KEY_CHECKS = 1;

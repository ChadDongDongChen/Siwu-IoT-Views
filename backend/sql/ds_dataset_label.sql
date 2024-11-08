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

 Date: 28/10/2024 14:37:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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

SET FOREIGN_KEY_CHECKS = 1;

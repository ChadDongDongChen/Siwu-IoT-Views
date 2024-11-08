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

 Date: 28/10/2024 14:37:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
  `editable` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否可编辑，0 不可编辑 1 可编辑',
  `source_id` bigint(32) NULL DEFAULT NULL COMMENT '数据源ID',
  `cache` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否对执行结构缓存 0 不缓存 1 缓存',
  `config` longtext CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NULL COMMENT '数据集配置',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(64) NULL DEFAULT 2 COMMENT '创建人',
  `update_by` bigint(64) NULL DEFAULT 2 COMMENT '更新人',
  `del_flag` tinyint(2) NOT NULL DEFAULT 0 COMMENT '删除标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1849723533622575106 CHARACTER SET = utf8 COLLATE = utf8_general_mysql500_ci COMMENT = '数据集表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

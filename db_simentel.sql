/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 50740
 Source Host           : localhost:3306
 Source Schema         : db_simentel

 Target Server Type    : MySQL
 Target Server Version : 50740
 File Encoding         : 65001

 Date: 20/03/2023 08:40:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aauth_group_to_group
-- ----------------------------
DROP TABLE IF EXISTS `aauth_group_to_group`;
CREATE TABLE `aauth_group_to_group`  (
  `group_id` int(11) UNSIGNED NOT NULL,
  `subgroup_id` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`group_id`, `subgroup_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of aauth_group_to_group
-- ----------------------------

-- ----------------------------
-- Table structure for aauth_groups
-- ----------------------------
DROP TABLE IF EXISTS `aauth_groups`;
CREATE TABLE `aauth_groups`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `definition` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aauth_groups
-- ----------------------------
INSERT INTO `aauth_groups` VALUES (1, 'Admin', 'Superadmin Group');
INSERT INTO `aauth_groups` VALUES (2, 'Public', 'Public Group');
INSERT INTO `aauth_groups` VALUES (3, 'Default', 'Default Access Group');
INSERT INTO `aauth_groups` VALUES (4, 'User', 'Member Access Group');

-- ----------------------------
-- Table structure for aauth_login_attempts
-- ----------------------------
DROP TABLE IF EXISTS `aauth_login_attempts`;
CREATE TABLE `aauth_login_attempts`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timestamp` datetime NULL DEFAULT NULL,
  `login_attempts` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aauth_login_attempts
-- ----------------------------
INSERT INTO `aauth_login_attempts` VALUES (46, '::1', '2023-03-14 14:54:44', 1);

-- ----------------------------
-- Table structure for aauth_perm_to_group
-- ----------------------------
DROP TABLE IF EXISTS `aauth_perm_to_group`;
CREATE TABLE `aauth_perm_to_group`  (
  `perm_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of aauth_perm_to_group
-- ----------------------------

-- ----------------------------
-- Table structure for aauth_perm_to_user
-- ----------------------------
DROP TABLE IF EXISTS `aauth_perm_to_user`;
CREATE TABLE `aauth_perm_to_user`  (
  `perm_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`, `perm_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of aauth_perm_to_user
-- ----------------------------

-- ----------------------------
-- Table structure for aauth_perms
-- ----------------------------
DROP TABLE IF EXISTS `aauth_perms`;
CREATE TABLE `aauth_perms`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `definition` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 185 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aauth_perms
-- ----------------------------
INSERT INTO `aauth_perms` VALUES (1, 'menu_dashboard', NULL);
INSERT INTO `aauth_perms` VALUES (2, 'menu_crud_builder', NULL);
INSERT INTO `aauth_perms` VALUES (3, 'menu_api_builder', NULL);
INSERT INTO `aauth_perms` VALUES (4, 'menu_page_builder', NULL);
INSERT INTO `aauth_perms` VALUES (5, 'menu_form_builder', NULL);
INSERT INTO `aauth_perms` VALUES (6, 'menu_menu', NULL);
INSERT INTO `aauth_perms` VALUES (7, 'menu_auth', NULL);
INSERT INTO `aauth_perms` VALUES (8, 'menu_user', NULL);
INSERT INTO `aauth_perms` VALUES (9, 'menu_group', NULL);
INSERT INTO `aauth_perms` VALUES (10, 'menu_access', NULL);
INSERT INTO `aauth_perms` VALUES (11, 'menu_permission', NULL);
INSERT INTO `aauth_perms` VALUES (12, 'menu_api_documentation', NULL);
INSERT INTO `aauth_perms` VALUES (13, 'menu_web_documentation', NULL);
INSERT INTO `aauth_perms` VALUES (14, 'menu_settings', NULL);
INSERT INTO `aauth_perms` VALUES (15, 'user_list', NULL);
INSERT INTO `aauth_perms` VALUES (16, 'user_update_status', NULL);
INSERT INTO `aauth_perms` VALUES (17, 'user_export', NULL);
INSERT INTO `aauth_perms` VALUES (18, 'user_add', NULL);
INSERT INTO `aauth_perms` VALUES (19, 'user_update', NULL);
INSERT INTO `aauth_perms` VALUES (20, 'user_update_profile', NULL);
INSERT INTO `aauth_perms` VALUES (21, 'user_update_password', NULL);
INSERT INTO `aauth_perms` VALUES (22, 'user_profile', NULL);
INSERT INTO `aauth_perms` VALUES (23, 'user_view', NULL);
INSERT INTO `aauth_perms` VALUES (24, 'user_delete', NULL);
INSERT INTO `aauth_perms` VALUES (25, 'blog_list', NULL);
INSERT INTO `aauth_perms` VALUES (26, 'blog_export', NULL);
INSERT INTO `aauth_perms` VALUES (27, 'blog_add', NULL);
INSERT INTO `aauth_perms` VALUES (28, 'blog_update', NULL);
INSERT INTO `aauth_perms` VALUES (29, 'blog_view', NULL);
INSERT INTO `aauth_perms` VALUES (30, 'blog_delete', NULL);
INSERT INTO `aauth_perms` VALUES (31, 'form_list', NULL);
INSERT INTO `aauth_perms` VALUES (32, 'form_export', NULL);
INSERT INTO `aauth_perms` VALUES (33, 'form_add', NULL);
INSERT INTO `aauth_perms` VALUES (34, 'form_update', NULL);
INSERT INTO `aauth_perms` VALUES (35, 'form_view', NULL);
INSERT INTO `aauth_perms` VALUES (36, 'form_manage', NULL);
INSERT INTO `aauth_perms` VALUES (37, 'form_delete', NULL);
INSERT INTO `aauth_perms` VALUES (38, 'crud_list', NULL);
INSERT INTO `aauth_perms` VALUES (39, 'crud_export', NULL);
INSERT INTO `aauth_perms` VALUES (40, 'crud_add', NULL);
INSERT INTO `aauth_perms` VALUES (41, 'crud_update', NULL);
INSERT INTO `aauth_perms` VALUES (42, 'crud_view', NULL);
INSERT INTO `aauth_perms` VALUES (43, 'crud_delete', NULL);
INSERT INTO `aauth_perms` VALUES (44, 'rest_list', NULL);
INSERT INTO `aauth_perms` VALUES (45, 'rest_export', NULL);
INSERT INTO `aauth_perms` VALUES (46, 'rest_add', NULL);
INSERT INTO `aauth_perms` VALUES (47, 'rest_update', NULL);
INSERT INTO `aauth_perms` VALUES (48, 'rest_view', NULL);
INSERT INTO `aauth_perms` VALUES (49, 'rest_delete', NULL);
INSERT INTO `aauth_perms` VALUES (50, 'group_list', NULL);
INSERT INTO `aauth_perms` VALUES (51, 'group_export', NULL);
INSERT INTO `aauth_perms` VALUES (52, 'group_add', NULL);
INSERT INTO `aauth_perms` VALUES (53, 'group_update', NULL);
INSERT INTO `aauth_perms` VALUES (54, 'group_view', NULL);
INSERT INTO `aauth_perms` VALUES (55, 'group_delete', NULL);
INSERT INTO `aauth_perms` VALUES (56, 'permission_list', NULL);
INSERT INTO `aauth_perms` VALUES (57, 'permission_export', NULL);
INSERT INTO `aauth_perms` VALUES (58, 'permission_add', NULL);
INSERT INTO `aauth_perms` VALUES (59, 'permission_update', NULL);
INSERT INTO `aauth_perms` VALUES (60, 'permission_view', NULL);
INSERT INTO `aauth_perms` VALUES (61, 'permission_delete', NULL);
INSERT INTO `aauth_perms` VALUES (62, 'access_list', NULL);
INSERT INTO `aauth_perms` VALUES (63, 'access_add', NULL);
INSERT INTO `aauth_perms` VALUES (64, 'access_update', NULL);
INSERT INTO `aauth_perms` VALUES (65, 'menu_list', NULL);
INSERT INTO `aauth_perms` VALUES (66, 'menu_add', NULL);
INSERT INTO `aauth_perms` VALUES (67, 'menu_update', NULL);
INSERT INTO `aauth_perms` VALUES (68, 'menu_delete', NULL);
INSERT INTO `aauth_perms` VALUES (69, 'menu_save_ordering', NULL);
INSERT INTO `aauth_perms` VALUES (70, 'menu_type_add', NULL);
INSERT INTO `aauth_perms` VALUES (71, 'page_list', NULL);
INSERT INTO `aauth_perms` VALUES (72, 'page_export', NULL);
INSERT INTO `aauth_perms` VALUES (73, 'page_add', NULL);
INSERT INTO `aauth_perms` VALUES (74, 'page_update', NULL);
INSERT INTO `aauth_perms` VALUES (75, 'page_view', NULL);
INSERT INTO `aauth_perms` VALUES (76, 'page_delete', NULL);
INSERT INTO `aauth_perms` VALUES (77, 'blog_list', NULL);
INSERT INTO `aauth_perms` VALUES (78, 'blog_export', NULL);
INSERT INTO `aauth_perms` VALUES (79, 'blog_add', NULL);
INSERT INTO `aauth_perms` VALUES (80, 'blog_update', NULL);
INSERT INTO `aauth_perms` VALUES (81, 'blog_view', NULL);
INSERT INTO `aauth_perms` VALUES (82, 'blog_delete', NULL);
INSERT INTO `aauth_perms` VALUES (83, 'setting', NULL);
INSERT INTO `aauth_perms` VALUES (84, 'setting_update', NULL);
INSERT INTO `aauth_perms` VALUES (85, 'dashboard', NULL);
INSERT INTO `aauth_perms` VALUES (86, 'extension_list', NULL);
INSERT INTO `aauth_perms` VALUES (87, 'extension_activate', NULL);
INSERT INTO `aauth_perms` VALUES (88, 'extension_deactivate', NULL);
INSERT INTO `aauth_perms` VALUES (89, 'database_list', '');
INSERT INTO `aauth_perms` VALUES (90, 'database_add', '');
INSERT INTO `aauth_perms` VALUES (91, 'database_view', '');
INSERT INTO `aauth_perms` VALUES (92, 'kawasan_add', '');
INSERT INTO `aauth_perms` VALUES (93, 'kawasan_update', '');
INSERT INTO `aauth_perms` VALUES (94, 'kawasan_view', '');
INSERT INTO `aauth_perms` VALUES (95, 'kawasan_delete', '');
INSERT INTO `aauth_perms` VALUES (96, 'kawasan_list', '');
INSERT INTO `aauth_perms` VALUES (97, 'menu_menu_superuser', '');
INSERT INTO `aauth_perms` VALUES (98, 'menu_main_menu', '');
INSERT INTO `aauth_perms` VALUES (99, 'menu_jenis_kawasan', '');
INSERT INTO `aauth_perms` VALUES (100, 'kecamatan_add', '');
INSERT INTO `aauth_perms` VALUES (101, 'kecamatan_update', '');
INSERT INTO `aauth_perms` VALUES (102, 'kecamatan_view', '');
INSERT INTO `aauth_perms` VALUES (103, 'kecamatan_delete', '');
INSERT INTO `aauth_perms` VALUES (104, 'kecamatan_list', '');
INSERT INTO `aauth_perms` VALUES (105, 'zona_add', '');
INSERT INTO `aauth_perms` VALUES (106, 'zona_update', '');
INSERT INTO `aauth_perms` VALUES (107, 'zona_view', '');
INSERT INTO `aauth_perms` VALUES (108, 'zona_delete', '');
INSERT INTO `aauth_perms` VALUES (109, 'zona_list', '');
INSERT INTO `aauth_perms` VALUES (110, 'menu_zona', '');
INSERT INTO `aauth_perms` VALUES (111, 'menu_kecamatan', '');
INSERT INTO `aauth_perms` VALUES (112, 'kelurahan_add', '');
INSERT INTO `aauth_perms` VALUES (113, 'kelurahan_update', '');
INSERT INTO `aauth_perms` VALUES (114, 'kelurahan_view', '');
INSERT INTO `aauth_perms` VALUES (115, 'kelurahan_delete', '');
INSERT INTO `aauth_perms` VALUES (116, 'kelurahan_list', '');
INSERT INTO `aauth_perms` VALUES (117, 'menu_kelurahan', '');
INSERT INTO `aauth_perms` VALUES (118, 'tipe_site_add', '');
INSERT INTO `aauth_perms` VALUES (119, 'tipe_site_update', '');
INSERT INTO `aauth_perms` VALUES (120, 'tipe_site_view', '');
INSERT INTO `aauth_perms` VALUES (121, 'tipe_site_delete', '');
INSERT INTO `aauth_perms` VALUES (122, 'tipe_site_list', '');
INSERT INTO `aauth_perms` VALUES (123, 'menu_tipe_site', '');
INSERT INTO `aauth_perms` VALUES (124, 'operator_add', '');
INSERT INTO `aauth_perms` VALUES (125, 'operator_update', '');
INSERT INTO `aauth_perms` VALUES (126, 'operator_view', '');
INSERT INTO `aauth_perms` VALUES (127, 'operator_delete', '');
INSERT INTO `aauth_perms` VALUES (128, 'operator_list', '');
INSERT INTO `aauth_perms` VALUES (129, 'menu_operator', '');
INSERT INTO `aauth_perms` VALUES (176, 'menara_view', '');
INSERT INTO `aauth_perms` VALUES (177, 'menara_delete', '');
INSERT INTO `aauth_perms` VALUES (183, 'pemohon_list', '');
INSERT INTO `aauth_perms` VALUES (182, 'pemohon_delete', '');
INSERT INTO `aauth_perms` VALUES (181, 'pemohon_view', '');
INSERT INTO `aauth_perms` VALUES (180, 'pemohon_update', '');
INSERT INTO `aauth_perms` VALUES (179, 'pemohon_add', '');
INSERT INTO `aauth_perms` VALUES (140, 'agama_add', '');
INSERT INTO `aauth_perms` VALUES (141, 'agama_update', '');
INSERT INTO `aauth_perms` VALUES (142, 'agama_view', '');
INSERT INTO `aauth_perms` VALUES (143, 'agama_delete', '');
INSERT INTO `aauth_perms` VALUES (144, 'agama_list', '');
INSERT INTO `aauth_perms` VALUES (145, 'menu_agama', '');
INSERT INTO `aauth_perms` VALUES (146, 'menu_pemohon', '');
INSERT INTO `aauth_perms` VALUES (147, 'chat_list', '');
INSERT INTO `aauth_perms` VALUES (148, 'permission_edit', '');
INSERT INTO `aauth_perms` VALUES (178, 'menara_list', '');
INSERT INTO `aauth_perms` VALUES (175, 'menara_update', '');
INSERT INTO `aauth_perms` VALUES (174, 'menara_add', '');
INSERT INTO `aauth_perms` VALUES (184, 'pemohon_export', '');

-- ----------------------------
-- Table structure for aauth_pms
-- ----------------------------
DROP TABLE IF EXISTS `aauth_pms`;
CREATE TABLE `aauth_pms`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) UNSIGNED NOT NULL,
  `receiver_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date_sent` datetime NULL DEFAULT NULL,
  `date_read` datetime NULL DEFAULT NULL,
  `pm_deleted_sender` int(1) NULL DEFAULT NULL,
  `pm_deleted_receiver` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aauth_pms
-- ----------------------------

-- ----------------------------
-- Table structure for aauth_user
-- ----------------------------
DROP TABLE IF EXISTS `aauth_user`;
CREATE TABLE `aauth_user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `definition` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aauth_user
-- ----------------------------

-- ----------------------------
-- Table structure for aauth_user_to_group
-- ----------------------------
DROP TABLE IF EXISTS `aauth_user_to_group`;
CREATE TABLE `aauth_user_to_group`  (
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`, `group_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of aauth_user_to_group
-- ----------------------------
INSERT INTO `aauth_user_to_group` VALUES (1, 1);
INSERT INTO `aauth_user_to_group` VALUES (2, 4);
INSERT INTO `aauth_user_to_group` VALUES (4, 4);

-- ----------------------------
-- Table structure for aauth_user_variables
-- ----------------------------
DROP TABLE IF EXISTS `aauth_user_variables`;
CREATE TABLE `aauth_user_variables`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `data_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aauth_user_variables
-- ----------------------------

-- ----------------------------
-- Table structure for aauth_users
-- ----------------------------
DROP TABLE IF EXISTS `aauth_users`;
CREATE TABLE `aauth_users`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `oauth_uid` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `oauth_provider` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pass` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `full_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `banned` tinyint(1) NULL DEFAULT 0,
  `last_login` datetime NULL DEFAULT NULL,
  `last_activity` datetime NULL DEFAULT NULL,
  `date_created` datetime NULL DEFAULT NULL,
  `forgot_exp` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `remember_time` datetime NULL DEFAULT NULL,
  `remember_exp` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `verification_code` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `top_secret` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip_address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of aauth_users
-- ----------------------------
INSERT INTO `aauth_users` VALUES (1, 'superadmin@semarangkota.go.id', NULL, NULL, 'daec36d48b237c7f8881b2a7349218a66c374aaf2ba646460bef0ea60b5d2745', 'superadmin', 'superadmin', '', 0, '2023-03-14 08:22:03', '2023-03-14 08:22:03', '2022-12-21 02:47:44', NULL, '2023-01-05 00:00:00', 'XRNsHbD473yUx6f0', NULL, NULL, '::1');
INSERT INTO `aauth_users` VALUES (2, 'member@gmail.com', NULL, NULL, '552ded78b5ffd0ad319ca0442b14da99c0a6207d70614d6add64cdde87ddc213', 'member', 'Member', 'default.png', 0, '2023-01-03 09:40:25', '2023-01-03 09:40:25', '2023-01-03 08:05:47', NULL, NULL, NULL, NULL, NULL, '::1');
INSERT INTO `aauth_users` VALUES (4, 'akangadnan@gmail.com', NULL, NULL, 'd5fbb241bdbfa6fd2d1317d54efe02264a4fff88fa24a2fa0027ac06c05c730e', 'user73745218933', 'Akang Adnan', NULL, 0, NULL, NULL, '2023-02-13 13:35:24', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for agama
-- ----------------------------
DROP TABLE IF EXISTS `agama`;
CREATE TABLE `agama`  (
  `agama_id` int(12) NOT NULL AUTO_INCREMENT,
  `agama_nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `agama_user_created` int(12) NULL DEFAULT NULL,
  `agama_created_at` datetime NULL DEFAULT NULL,
  `agama_user_updated` int(12) NULL DEFAULT NULL,
  `agama_updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`agama_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agama
-- ----------------------------
INSERT INTO `agama` VALUES (1, 'Islam', 1, '2023-02-10 07:55:24', NULL, NULL);
INSERT INTO `agama` VALUES (2, 'Kristen', 1, '2023-02-10 07:55:29', NULL, NULL);
INSERT INTO `agama` VALUES (3, 'Katholik', 1, '2023-02-10 07:55:35', NULL, NULL);
INSERT INTO `agama` VALUES (4, 'Hindu', 1, '2023-02-10 07:55:39', NULL, NULL);
INSERT INTO `agama` VALUES (5, 'Budha', 1, '2023-02-10 07:55:44', NULL, NULL);
INSERT INTO `agama` VALUES (6, 'Kong Hu Chu', 1, '2023-02-10 07:55:50', NULL, NULL);
INSERT INTO `agama` VALUES (7, 'Protestan', 1, '2023-02-10 07:55:56', NULL, NULL);

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tags` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `viewers` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES (1, 'Hello Wellcome To Cicool Builder', 'Hello-Wellcome-To-Ciool-Builder', 'greetings from our team I hope to be happy! ', 'wellcome.jpg', 'greetings', '1', 'publish', 'admin', 0, '2022-12-21 02:47:44', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for blog_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category`  (
  `category_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_category
-- ----------------------------
INSERT INTO `blog_category` VALUES (1, 'Technology', '');
INSERT INTO `blog_category` VALUES (2, 'Lifestyle', '');

-- ----------------------------
-- Table structure for captcha
-- ----------------------------
DROP TABLE IF EXISTS `captcha`;
CREATE TABLE `captcha`  (
  `captcha_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `word` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`captcha_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 170 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of captcha
-- ----------------------------
INSERT INTO `captcha` VALUES (118, 1677649271, '::1', 'IYTL');
INSERT INTO `captcha` VALUES (115, 1677649147, '::1', 'N52O');
INSERT INTO `captcha` VALUES (117, 1677649268, '::1', 'CAI7');
INSERT INTO `captcha` VALUES (116, 1677649162, '::1', 'RHZ2');
INSERT INTO `captcha` VALUES (137, 1677650965, '::1', 'IPVH');
INSERT INTO `captcha` VALUES (135, 1677650837, '::1', 'M8J0');
INSERT INTO `captcha` VALUES (134, 1677650570, '::1', 'PEMV');
INSERT INTO `captcha` VALUES (132, 1677650416, '::1', 'VI78');
INSERT INTO `captcha` VALUES (131, 1677650414, '::1', '2K5M');
INSERT INTO `captcha` VALUES (130, 1677650331, '::1', 'D4QM');
INSERT INTO `captcha` VALUES (129, 1677650328, '::1', 'PXW8');
INSERT INTO `captcha` VALUES (128, 1677650321, '::1', '1DI1');
INSERT INTO `captcha` VALUES (127, 1677650319, '::1', '9QY8');
INSERT INTO `captcha` VALUES (136, 1677650911, '::1', 'ZBCC');
INSERT INTO `captcha` VALUES (138, 1677651139, '::1', 'IMLR');
INSERT INTO `captcha` VALUES (140, 1677651229, '::1', 'U93F');
INSERT INTO `captcha` VALUES (159, 1677652921, '::1', 'Z787');
INSERT INTO `captcha` VALUES (158, 1677652808, '::1', '0Z44');
INSERT INTO `captcha` VALUES (157, 1677652808, '::1', 'XX6P');
INSERT INTO `captcha` VALUES (148, 1677652802, '::1', '9Z9S');
INSERT INTO `captcha` VALUES (147, 1677652800, '::1', 'BJRL');
INSERT INTO `captcha` VALUES (141, 1677651727, '::1', 'AWDC');
INSERT INTO `captcha` VALUES (146, 1677652284, '::1', 'DI3J');
INSERT INTO `captcha` VALUES (144, 1677651975, '::1', 'TXQV');
INSERT INTO `captcha` VALUES (143, 1677651969, '::1', 'NZXR');
INSERT INTO `captcha` VALUES (166, 1677654894, '::1', '0FE2');
INSERT INTO `captcha` VALUES (164, 1677654786, '::1', 'MVHT');
INSERT INTO `captcha` VALUES (160, 1677654575, '::1', '2R1L');
INSERT INTO `captcha` VALUES (163, 1677654655, '::1', '30PS');
INSERT INTO `captcha` VALUES (162, 1677654640, '::1', 'T63U');
INSERT INTO `captcha` VALUES (165, 1677654872, '::1', 'OK5B');
INSERT INTO `captcha` VALUES (168, 1677654945, '::1', 'WKXY');
INSERT INTO `captcha` VALUES (167, 1677654914, '::1', 'YY5B');
INSERT INTO `captcha` VALUES (169, 1677654962, '::1', 'W10Z');
INSERT INTO `captcha` VALUES (98, 1677647793, '::1', 'G361');
INSERT INTO `captcha` VALUES (99, 1677647796, '::1', '0311');
INSERT INTO `captcha` VALUES (100, 1677647831, '::1', '3L2K');
INSERT INTO `captcha` VALUES (101, 1677647833, '::1', 'DZDK');
INSERT INTO `captcha` VALUES (102, 1677647855, '::1', 'MM0Y');
INSERT INTO `captcha` VALUES (105, 1677647858, '::1', '38BS');
INSERT INTO `captcha` VALUES (106, 1677647861, '::1', 'L0TI');
INSERT INTO `captcha` VALUES (107, 1677647862, '::1', '5ZYA');
INSERT INTO `captcha` VALUES (108, 1677647945, '::1', 'I8EZ');
INSERT INTO `captcha` VALUES (109, 1677647954, '::1', 'G64X');
INSERT INTO `captcha` VALUES (110, 1677647978, '::1', 'UU8T');
INSERT INTO `captcha` VALUES (111, 1677647986, '::1', '4KK7');
INSERT INTO `captcha` VALUES (112, 1677648012, '::1', '087M');
INSERT INTO `captcha` VALUES (113, 1677648063, '::1', 'CRVV');
INSERT INTO `captcha` VALUES (114, 1677648442, '::1', 'H81X');
INSERT INTO `captcha` VALUES (119, 1677649302, '::1', 'URJN');
INSERT INTO `captcha` VALUES (120, 1677649448, '::1', 'EP3F');
INSERT INTO `captcha` VALUES (122, 1677649451, '::1', 'Q0CM');
INSERT INTO `captcha` VALUES (123, 1677649452, '::1', 'T7RR');
INSERT INTO `captcha` VALUES (124, 1677649468, '::1', '6S06');
INSERT INTO `captcha` VALUES (125, 1677649471, '::1', 'I5B9');
INSERT INTO `captcha` VALUES (126, 1677649485, '::1', '3UOK');
INSERT INTO `captcha` VALUES (139, 1677651141, '::1', 'NYZ2');

-- ----------------------------
-- Table structure for cc_options
-- ----------------------------
DROP TABLE IF EXISTS `cc_options`;
CREATE TABLE `cc_options`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cc_options
-- ----------------------------
INSERT INTO `cc_options` VALUES (1, 'enable_api_builder', NULL);
INSERT INTO `cc_options` VALUES (2, 'enable_crud_builder', NULL);
INSERT INTO `cc_options` VALUES (3, 'enable_form_builder', NULL);
INSERT INTO `cc_options` VALUES (4, 'enable_page_builder', NULL);
INSERT INTO `cc_options` VALUES (5, 'enable_disqus', NULL);
INSERT INTO `cc_options` VALUES (6, 'disqus_id', 'cicool');
INSERT INTO `cc_options` VALUES (7, 'site_name', 'SIMENTEL Kota Semarang');
INSERT INTO `cc_options` VALUES (8, 'email', 'akangadnan@gmail.com');
INSERT INTO `cc_options` VALUES (9, 'author', '');
INSERT INTO `cc_options` VALUES (10, 'site_description', '');
INSERT INTO `cc_options` VALUES (11, 'keywords', 'simentel, web aplikasi, sistem informasi, menara, telekomunikasi, web application, information system, tower, Sistem Menara Telekomunikasi Kota Semarang, kota semarang, semarang');
INSERT INTO `cc_options` VALUES (12, 'landing_page_id', 'default');
INSERT INTO `cc_options` VALUES (13, 'timezone', 'Asia/Jakarta');
INSERT INTO `cc_options` VALUES (14, 'active_theme', 'cicool');
INSERT INTO `cc_options` VALUES (15, 'limit_pagination', '15');
INSERT INTO `cc_options` VALUES (16, 'google_id', '');
INSERT INTO `cc_options` VALUES (17, 'google_secret', '');
INSERT INTO `cc_options` VALUES (18, 'chat_fb_url', '');
INSERT INTO `cc_options` VALUES (19, 'logo', '20221222094950-2022-12-22setting094931.png');
INSERT INTO `cc_options` VALUES (20, 'chat_fb_key', '0b88a0fb3c4a783d45ad0fc917800f23');

-- ----------------------------
-- Table structure for cc_session
-- ----------------------------
DROP TABLE IF EXISTS `cc_session`;
CREATE TABLE `cc_session`  (
  `id` int(11) NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `timestamp` int(10) NOT NULL,
  `data` blob NOT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cc_session
-- ----------------------------

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `chat_uid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_one` int(11) NOT NULL,
  `user_two` int(11) NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat
-- ----------------------------

-- ----------------------------
-- Table structure for chat_contact
-- ----------------------------
DROP TABLE IF EXISTS `chat_contact`;
CREATE TABLE `chat_contact`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of chat_contact
-- ----------------------------

-- ----------------------------
-- Table structure for chat_message
-- ----------------------------
DROP TABLE IF EXISTS `chat_message`;
CREATE TABLE `chat_message`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `message_user_id` int(11) NOT NULL,
  `chat_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat_message
-- ----------------------------

-- ----------------------------
-- Table structure for crud
-- ----------------------------
DROP TABLE IF EXISTS `crud`;
CREATE TABLE `crud`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subject` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `javascript` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `style` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `javascript_setting_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `javascript_setting_update` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `javascript_setting_create` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `javascript_setting_list` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `primary_key` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `page_read` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `page_create` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `page_update` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud
-- ----------------------------
INSERT INTO `crud` VALUES (1, 'Kawasan', 'Kawasan', 'kawasan', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'kawasan_id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (2, 'Kecamatan', 'Kecamatan', 'kecamatan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kecamatan_id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (3, 'Zona', 'Zona', 'zona', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zona_id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (4, 'Kelurahan', 'Kelurahan', 'kelurahan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kelurahan_id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (5, 'Tipe Site', 'Tipe Site', 'tipe_site', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tipe_site_id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (6, 'Operator', 'Operator', 'operator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'operator_id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (15, 'Menara', 'Menara', 'menara', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'menara_id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (16, 'Pemohon', 'Pemohon', 'pemohon', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'pemohon_id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (9, 'Agama', 'Agama', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'agama_id', 'yes', 'yes', 'yes');

-- ----------------------------
-- Table structure for crud_action
-- ----------------------------
DROP TABLE IF EXISTS `crud_action`;
CREATE TABLE `crud_action`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) NULL DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `crud_id` int(11) NOT NULL,
  `action` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `meta` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_action
-- ----------------------------

-- ----------------------------
-- Table structure for crud_custom_option
-- ----------------------------
DROP TABLE IF EXISTS `crud_custom_option`;
CREATE TABLE `crud_custom_option`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `crud_field_id` int(11) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `option_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_label` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_custom_option
-- ----------------------------
INSERT INTO `crud_custom_option` VALUES (11, 458, 8, '2', 'Perempuan');
INSERT INTO `crud_custom_option` VALUES (10, 458, 8, '1', 'Laki-Laki');
INSERT INTO `crud_custom_option` VALUES (17, 513, 15, '2', 'Tidak Aktif');
INSERT INTO `crud_custom_option` VALUES (16, 513, 15, '1', 'Aktif');
INSERT INTO `crud_custom_option` VALUES (15, 482, 16, '2', 'Perempuan');
INSERT INTO `crud_custom_option` VALUES (14, 482, 16, '1', 'Laki-Laki');

-- ----------------------------
-- Table structure for crud_field
-- ----------------------------
DROP TABLE IF EXISTS `crud_field`;
CREATE TABLE `crud_field`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `crud_id` int(11) NOT NULL,
  `field_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `field_label` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `input_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `help_block` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `placeholder` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `auto_generate_help_block` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wrapper_class` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `show_column` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_add_form` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_update_form` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_detail_page` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `relation_table` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `relation_value` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `relation_label` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 516 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_field
-- ----------------------------
INSERT INTO `crud_field` VALUES (16, 1, 'kawasan_user_updated', 'kawasan_user_updated', 'current_user_id', '', '', '', NULL, '', '', 'yes', '', 6, '', '', '');
INSERT INTO `crud_field` VALUES (15, 1, 'kawasan_updated_at', 'kawasan_updated_at', 'datetime', '', '', '', NULL, '', '', 'yes', '', 5, '', '', '');
INSERT INTO `crud_field` VALUES (14, 1, 'kawasan_user_created', 'kawasan_user_created', 'current_user_id', '', '', 'yes', NULL, '', 'yes', '', '', 4, '', '', '');
INSERT INTO `crud_field` VALUES (13, 1, 'kawasan_created_at', 'kawasan_created_at', 'datetime', '', '', 'yes', NULL, '', 'yes', '', '', 3, '', '', '');
INSERT INTO `crud_field` VALUES (12, 1, 'kawasan_nama', 'Input Kawasan', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (11, 1, 'kawasan_id', 'ID', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (17, 2, 'kecamatan_id', 'ID', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (18, 2, 'kecamatan_nama', 'Nama Kecamatan', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (19, 2, 'kecamatan_created_at', 'kecamatan_created_at', 'datetime', '', '', 'yes', NULL, '', 'yes', '', '', 3, '', '', '');
INSERT INTO `crud_field` VALUES (20, 2, 'kecamatan_user_created', 'kecamatan_user_created', 'current_user_id', '', '', 'yes', NULL, '', 'yes', '', '', 4, '', '', '');
INSERT INTO `crud_field` VALUES (21, 2, 'kecamatan_updated_at', 'kecamatan_updated_at', 'datetime', '', '', 'yes', NULL, '', '', 'yes', '', 5, '', '', '');
INSERT INTO `crud_field` VALUES (22, 2, 'kecamatan_user_updated', 'kecamatan_user_updated', 'current_user_id', '', '', 'yes', NULL, '', '', 'yes', '', 6, '', '', '');
INSERT INTO `crud_field` VALUES (23, 3, 'zona_id', 'ID', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (24, 3, 'kecamatan_id', 'Nama Kecamatan', 'chained', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, 'kecamatan', 'kecamatan_id', 'kecamatan_nama');
INSERT INTO `crud_field` VALUES (25, 3, 'zona_nama', 'Nama Zona', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (26, 3, 'zona_longitude', 'Longitude', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (27, 3, 'zona_latitude', 'Latitude', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (28, 3, 'zona_radius', 'Radius', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (29, 3, 'zona_user_created', 'zona_user_created', 'current_user_id', '', '', 'yes', NULL, '', 'yes', '', '', 7, '', '', '');
INSERT INTO `crud_field` VALUES (30, 3, 'zona_created_at', 'zona_created_at', 'datetime', '', '', 'yes', NULL, '', 'yes', '', '', 8, '', '', '');
INSERT INTO `crud_field` VALUES (31, 3, 'zona_user_updated', 'zona_user_updated', 'current_user_id', '', '', 'yes', NULL, '', '', 'yes', '', 9, '', '', '');
INSERT INTO `crud_field` VALUES (32, 3, 'zona_updated_at', 'zona_updated_at', 'datetime', '', '', 'yes', NULL, '', '', 'yes', '', 10, '', '', '');
INSERT INTO `crud_field` VALUES (33, 4, 'kelurahan_id', 'ID', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (34, 4, 'kecamatan_id', 'Nama Kecamatan', 'chained', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, 'kecamatan', 'kecamatan_id', 'kecamatan_nama');
INSERT INTO `crud_field` VALUES (35, 4, 'kelurahan_nama', 'Nama Kelurahan', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (36, 4, 'kelurahan_created_at', 'kelurahan_created_at', 'datetime', '', '', 'yes', NULL, '', 'yes', '', '', 4, '', '', '');
INSERT INTO `crud_field` VALUES (37, 4, 'kelurahan_user_created', 'kelurahan_user_created', 'current_user_id', '', '', 'yes', NULL, '', 'yes', '', '', 5, '', '', '');
INSERT INTO `crud_field` VALUES (38, 4, 'kelurahan_updated_at', 'kelurahan_updated_at', 'datetime', '', '', 'yes', NULL, '', '', 'yes', '', 6, '', '', '');
INSERT INTO `crud_field` VALUES (39, 4, 'kelurahan_user_updated', 'kelurahan_user_updated', 'current_user_id', '', '', 'yes', NULL, '', '', 'yes', '', 7, '', '', '');
INSERT INTO `crud_field` VALUES (40, 5, 'tipe_site_id', 'ID', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (41, 5, 'tipe_site_nama', 'Tipe Site', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (42, 5, 'tipe_site_created_at', 'tipe_site_created_at', 'datetime', '', '', 'yes', NULL, '', 'yes', '', '', 3, '', '', '');
INSERT INTO `crud_field` VALUES (43, 5, 'tipe_site_user_created', 'tipe_site_user_created', 'current_user_id', '', '', 'yes', NULL, '', 'yes', '', '', 4, '', '', '');
INSERT INTO `crud_field` VALUES (44, 5, 'tipe_site_updated_at', 'tipe_site_updated_at', 'datetime', '', '', 'yes', NULL, '', '', 'yes', '', 5, '', '', '');
INSERT INTO `crud_field` VALUES (45, 5, 'tipe_site_user_updated', 'tipe_site_user_updated', 'current_user_id', '', '', 'yes', NULL, '', '', 'yes', '', 6, '', '', '');
INSERT INTO `crud_field` VALUES (46, 6, 'operator_id', 'ID', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (47, 6, 'operator_nama', 'Nama Operator', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (48, 6, 'operator_created_at', 'operator_created_at', 'datetime', '', '', 'yes', NULL, '', 'yes', '', '', 3, '', '', '');
INSERT INTO `crud_field` VALUES (49, 6, 'operator_user_created', 'operator_user_created', 'current_user_id', '', '', 'yes', NULL, '', 'yes', '', '', 4, '', '', '');
INSERT INTO `crud_field` VALUES (50, 6, 'operator_update_at', 'operator_update_at', 'datetime', '', '', 'yes', NULL, '', '', 'yes', '', 5, '', '', '');
INSERT INTO `crud_field` VALUES (51, 6, 'operator_user_updated', 'operator_user_updated', 'current_user_id', '', '', 'yes', NULL, '', '', 'yes', '', 6, '', '', '');
INSERT INTO `crud_field` VALUES (206, 11, 'pemohon_id', 'pemohon_id', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (205, 11, 'menara_id', 'menara_id', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (204, 10, 'kawasan_id', 'kawasan_id', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 25, '', '', '');
INSERT INTO `crud_field` VALUES (201, 10, 'menara_user_created', 'menara_user_created', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 22, '', '', '');
INSERT INTO `crud_field` VALUES (199, 10, 'menara_imb', 'menara_imb', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 20, '', '', '');
INSERT INTO `crud_field` VALUES (203, 10, 'menara_created_at', 'menara_created_at', 'datetime', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 24, '', '', '');
INSERT INTO `crud_field` VALUES (202, 10, 'menara_status', 'menara_status', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 23, '', '', '');
INSERT INTO `crud_field` VALUES (200, 10, 'menara_tgl_imb', 'menara_tgl_imb', 'datetime', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 21, '', '', '');
INSERT INTO `crud_field` VALUES (198, 10, 'menara_luas_area', 'menara_luas_area', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 19, '', '', '');
INSERT INTO `crud_field` VALUES (195, 10, 'menara_nama_penyewa', 'menara_nama_penyewa', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 16, '', '', '');
INSERT INTO `crud_field` VALUES (196, 10, 'menara_pemilik', 'menara_pemilik', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 17, '', '', '');
INSERT INTO `crud_field` VALUES (197, 10, 'menara_kondisi', 'menara_kondisi', 'editor_wysiwyg', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 18, '', '', '');
INSERT INTO `crud_field` VALUES (194, 10, 'menara_image', 'menara_image', 'file', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 15, '', '', '');
INSERT INTO `crud_field` VALUES (191, 10, 'menara_latitude', 'menara_latitude', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (192, 10, 'menara_longitude', 'menara_longitude', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (193, 10, 'menara_ketinggian', 'menara_ketinggian', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 14, '', '', '');
INSERT INTO `crud_field` VALUES (190, 10, 'menara_file_berkas', 'menara_file_berkas', 'file', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (189, 10, 'menara_rw', 'menara_rw', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (186, 10, 'menara_nama', 'menara_nama', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (187, 10, 'menara_alamat', 'menara_alamat', 'editor_wysiwyg', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (188, 10, 'menara_rt', 'menara_rt', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (465, 8, 'pemohon_created_at', 'pemohon_created_at', 'input', '', '', '', NULL, '', 'yes', '', '', 11, '', '', '');
INSERT INTO `crud_field` VALUES (464, 8, 'agama_id', 'Agama', 'select', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 10, 'agama', 'agama_id', 'agama_nama');
INSERT INTO `crud_field` VALUES (463, 8, 'kelurahan_id', 'Kelurahan', 'chained', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 9, 'kelurahan', 'kelurahan_id', 'kelurahan_nama');
INSERT INTO `crud_field` VALUES (460, 8, 'pemohon_rt', 'RT', 'number', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (461, 8, 'pemohon_rw', 'RW', 'number', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (462, 8, 'kecamatan_id', 'Kecamatan', 'select', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 8, 'kecamatan', 'kecamatan_id', 'kecamatan_nama');
INSERT INTO `crud_field` VALUES (459, 8, 'pemohon_alamat', 'Alamat', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (87, 9, 'agama_id', 'ID', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (88, 9, 'agama_nama', 'Nama Agama', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (89, 9, 'agama_user_created', 'agama_user_created', 'current_user_id', '', '', 'yes', NULL, '', 'yes', '', '', 3, '', '', '');
INSERT INTO `crud_field` VALUES (90, 9, 'agama_created_at', 'agama_created_at', 'datetime', '', '', 'yes', NULL, '', 'yes', '', '', 4, '', '', '');
INSERT INTO `crud_field` VALUES (91, 9, 'agama_user_updated', 'agama_user_updated', 'current_user_id', '', '', 'yes', NULL, '', '', 'yes', '', 5, '', '', '');
INSERT INTO `crud_field` VALUES (92, 9, 'agama_updated_at', 'agama_updated_at', 'datetime', '', '', 'yes', NULL, '', '', 'yes', '', 6, '', '', '');
INSERT INTO `crud_field` VALUES (458, 8, 'pemohon_jenkel', 'Jenis Kelamin', 'custom_select', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (457, 8, 'pemohon_nama', 'Nama Pemohon', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (456, 8, 'user_id', 'user_id', 'input', '', '', 'yes', NULL, '', '', '', '', 2, '', '', '');
INSERT INTO `crud_field` VALUES (455, 8, 'pemohon_id', 'ID', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (184, 10, 'tipesite_id', 'tipesite_id', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (185, 10, 'operator_id', 'operator_id', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (183, 10, 'kelurahan_id', 'kelurahan_id', 'chained', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, 'kecamatan', 'kecamatan_id', 'kecamatan_nama');
INSERT INTO `crud_field` VALUES (180, 10, 'menara_id', 'ID', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (181, 10, 'pemohon_id', 'Pemohon', 'select', '', '', 'yes', NULL, '', 'yes', 'yes', '', 2, 'pemohon', 'pemohon_id', 'pemohon_nama');
INSERT INTO `crud_field` VALUES (182, 10, 'kecamatan_id', 'kecamatan_id', 'select', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, 'kecamatan', 'kecamatan_id', 'kecamatan_nama');
INSERT INTO `crud_field` VALUES (207, 11, 'kecamatan_id', 'kecamatan_id', 'chained', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, 'kecamatan', 'kecamatan_id', 'kecamatan_nama');
INSERT INTO `crud_field` VALUES (208, 11, 'kelurahan_id', 'kelurahan_id', 'select', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, 'kelurahan', 'kelurahan_id', 'kelurahan_nama');
INSERT INTO `crud_field` VALUES (209, 11, 'tipesite_id', 'tipesite_id', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (210, 11, 'operator_id', 'operator_id', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (211, 11, 'menara_nama', 'menara_nama', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (212, 11, 'menara_alamat', 'menara_alamat', 'editor_wysiwyg', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (213, 11, 'menara_rt', 'menara_rt', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (214, 11, 'menara_rw', 'menara_rw', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (215, 11, 'menara_file_berkas', 'menara_file_berkas', 'file', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (216, 11, 'menara_latitude', 'menara_latitude', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (217, 11, 'menara_longitude', 'menara_longitude', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (218, 11, 'menara_ketinggian', 'menara_ketinggian', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 14, '', '', '');
INSERT INTO `crud_field` VALUES (219, 11, 'menara_image', 'menara_image', 'file', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 15, '', '', '');
INSERT INTO `crud_field` VALUES (220, 11, 'menara_nama_penyewa', 'menara_nama_penyewa', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 16, '', '', '');
INSERT INTO `crud_field` VALUES (221, 11, 'menara_pemilik', 'menara_pemilik', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 17, '', '', '');
INSERT INTO `crud_field` VALUES (222, 11, 'menara_kondisi', 'menara_kondisi', 'editor_wysiwyg', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 18, '', '', '');
INSERT INTO `crud_field` VALUES (223, 11, 'menara_luas_area', 'menara_luas_area', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 19, '', '', '');
INSERT INTO `crud_field` VALUES (224, 11, 'menara_imb', 'menara_imb', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 20, '', '', '');
INSERT INTO `crud_field` VALUES (225, 11, 'menara_tgl_imb', 'menara_tgl_imb', 'datetime', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 21, '', '', '');
INSERT INTO `crud_field` VALUES (226, 11, 'menara_user_created', 'menara_user_created', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 22, '', '', '');
INSERT INTO `crud_field` VALUES (227, 11, 'menara_status', 'menara_status', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 23, '', '', '');
INSERT INTO `crud_field` VALUES (228, 11, 'menara_created_at', 'menara_created_at', 'datetime', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 24, '', '', '');
INSERT INTO `crud_field` VALUES (229, 11, 'kawasan_id', 'kawasan_id', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 25, '', '', '');
INSERT INTO `crud_field` VALUES (230, 12, 'menara_id', 'menara_id', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (231, 12, 'pemohon_id', 'pemohon_id', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (232, 12, 'kecamatan_id', 'kecamatan_id', 'chained', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, 'kelurahan', 'kelurahan_id', 'kelurahan_nama');
INSERT INTO `crud_field` VALUES (233, 12, 'kelurahan_id', 'kelurahan_id', 'select', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, 'kelurahan', 'kelurahan_id', 'kelurahan_nama');
INSERT INTO `crud_field` VALUES (234, 12, 'tipesite_id', 'tipesite_id', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (235, 12, 'operator_id', 'operator_id', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (236, 12, 'menara_nama', 'menara_nama', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (237, 12, 'menara_alamat', 'menara_alamat', 'editor_wysiwyg', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (238, 12, 'menara_rt', 'menara_rt', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (239, 12, 'menara_rw', 'menara_rw', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (240, 12, 'menara_file_berkas', 'menara_file_berkas', 'file', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (241, 12, 'menara_latitude', 'menara_latitude', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (242, 12, 'menara_longitude', 'menara_longitude', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (243, 12, 'menara_ketinggian', 'menara_ketinggian', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 14, '', '', '');
INSERT INTO `crud_field` VALUES (244, 12, 'menara_image', 'menara_image', 'file', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 15, '', '', '');
INSERT INTO `crud_field` VALUES (245, 12, 'menara_nama_penyewa', 'menara_nama_penyewa', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 16, '', '', '');
INSERT INTO `crud_field` VALUES (246, 12, 'menara_pemilik', 'menara_pemilik', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 17, '', '', '');
INSERT INTO `crud_field` VALUES (247, 12, 'menara_kondisi', 'menara_kondisi', 'editor_wysiwyg', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 18, '', '', '');
INSERT INTO `crud_field` VALUES (248, 12, 'menara_luas_area', 'menara_luas_area', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 19, '', '', '');
INSERT INTO `crud_field` VALUES (249, 12, 'menara_imb', 'menara_imb', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 20, '', '', '');
INSERT INTO `crud_field` VALUES (250, 12, 'menara_tgl_imb', 'menara_tgl_imb', 'datetime', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 21, '', '', '');
INSERT INTO `crud_field` VALUES (251, 12, 'menara_user_created', 'menara_user_created', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 22, '', '', '');
INSERT INTO `crud_field` VALUES (252, 12, 'menara_status', 'menara_status', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 23, '', '', '');
INSERT INTO `crud_field` VALUES (253, 12, 'menara_created_at', 'menara_created_at', 'datetime', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 24, '', '', '');
INSERT INTO `crud_field` VALUES (254, 12, 'kawasan_id', 'kawasan_id', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 25, '', '', '');
INSERT INTO `crud_field` VALUES (255, 13, 'menara_id', 'menara_id', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (256, 13, 'pemohon_id', 'pemohon_id', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (257, 13, 'kecamatan_id', 'kecamatan_id', 'chained', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, 'kecamatan', 'kecamatan_id', 'kecamatan_nama');
INSERT INTO `crud_field` VALUES (258, 13, 'kelurahan_id', 'kelurahan_id', 'select', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, 'kelurahan', 'kelurahan_id', 'kelurahan_nama');
INSERT INTO `crud_field` VALUES (259, 13, 'tipesite_id', 'tipesite_id', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (260, 13, 'operator_id', 'operator_id', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (261, 13, 'menara_nama', 'menara_nama', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (262, 13, 'menara_alamat', 'menara_alamat', 'editor_wysiwyg', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (263, 13, 'menara_rt', 'menara_rt', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (264, 13, 'menara_rw', 'menara_rw', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (265, 13, 'menara_file_berkas', 'menara_file_berkas', 'file', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (266, 13, 'menara_latitude', 'menara_latitude', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (267, 13, 'menara_longitude', 'menara_longitude', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (268, 13, 'menara_ketinggian', 'menara_ketinggian', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 14, '', '', '');
INSERT INTO `crud_field` VALUES (269, 13, 'menara_image', 'menara_image', 'file', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 15, '', '', '');
INSERT INTO `crud_field` VALUES (270, 13, 'menara_nama_penyewa', 'menara_nama_penyewa', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 16, '', '', '');
INSERT INTO `crud_field` VALUES (271, 13, 'menara_pemilik', 'menara_pemilik', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 17, '', '', '');
INSERT INTO `crud_field` VALUES (272, 13, 'menara_kondisi', 'menara_kondisi', 'editor_wysiwyg', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 18, '', '', '');
INSERT INTO `crud_field` VALUES (273, 13, 'menara_luas_area', 'menara_luas_area', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 19, '', '', '');
INSERT INTO `crud_field` VALUES (274, 13, 'menara_imb', 'menara_imb', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 20, '', '', '');
INSERT INTO `crud_field` VALUES (275, 13, 'menara_tgl_imb', 'menara_tgl_imb', 'datetime', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 21, '', '', '');
INSERT INTO `crud_field` VALUES (276, 13, 'menara_user_created', 'menara_user_created', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 22, '', '', '');
INSERT INTO `crud_field` VALUES (277, 13, 'menara_status', 'menara_status', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 23, '', '', '');
INSERT INTO `crud_field` VALUES (278, 13, 'menara_created_at', 'menara_created_at', 'datetime', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 24, '', '', '');
INSERT INTO `crud_field` VALUES (279, 13, 'kawasan_id', 'kawasan_id', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 25, '', '', '');
INSERT INTO `crud_field` VALUES (324, 14, 'menara_imb', 'menara_imb', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 20, '', '', '');
INSERT INTO `crud_field` VALUES (323, 14, 'menara_luas_area', 'menara_luas_area', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 19, '', '', '');
INSERT INTO `crud_field` VALUES (322, 14, 'menara_kondisi', 'menara_kondisi', 'editor_wysiwyg', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 18, '', '', '');
INSERT INTO `crud_field` VALUES (321, 14, 'menara_pemilik', 'menara_pemilik', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 17, '', '', '');
INSERT INTO `crud_field` VALUES (320, 14, 'menara_nama_penyewa', 'menara_nama_penyewa', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 16, '', '', '');
INSERT INTO `crud_field` VALUES (319, 14, 'menara_image', 'menara_image', 'file', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 15, '', '', '');
INSERT INTO `crud_field` VALUES (318, 14, 'menara_ketinggian', 'menara_ketinggian', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 14, '', '', '');
INSERT INTO `crud_field` VALUES (317, 14, 'menara_longitude', 'menara_longitude', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (316, 14, 'menara_latitude', 'menara_latitude', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (315, 14, 'menara_file_berkas', 'menara_file_berkas', 'file', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (314, 14, 'menara_rw', 'menara_rw', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (313, 14, 'menara_rt', 'menara_rt', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (312, 14, 'menara_alamat', 'menara_alamat', 'editor_wysiwyg', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (311, 14, 'menara_nama', 'menara_nama', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (310, 14, 'operator_id', 'operator_id', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (309, 14, 'tipesite_id', 'tipesite_id', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (308, 14, 'kelurahan_id', 'kelurahan_id', 'chained', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, 'kelurahan', 'kelurahan_id', 'kelurahan_nama');
INSERT INTO `crud_field` VALUES (307, 14, 'kecamatan_id', 'kecamatan_id', 'select', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, 'kecamatan', 'kecamatan_id', 'kecamatan_nama');
INSERT INTO `crud_field` VALUES (306, 14, 'pemohon_id', 'pemohon_id', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (305, 14, 'menara_id', 'menara_id', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (325, 14, 'menara_tgl_imb', 'menara_tgl_imb', 'datetime', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 21, '', '', '');
INSERT INTO `crud_field` VALUES (326, 14, 'menara_user_created', 'menara_user_created', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 22, '', '', '');
INSERT INTO `crud_field` VALUES (327, 14, 'menara_status', 'menara_status', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 23, '', '', '');
INSERT INTO `crud_field` VALUES (328, 14, 'menara_created_at', 'menara_created_at', 'datetime', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 24, '', '', '');
INSERT INTO `crud_field` VALUES (329, 14, 'kawasan_id', 'kawasan_id', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 25, '', '', '');
INSERT INTO `crud_field` VALUES (466, 8, 'pemohon_user_id', 'pemohon_user_id', 'current_user_id', '', '', '', NULL, '', 'yes', '', '', 12, '', '', '');
INSERT INTO `crud_field` VALUES (515, 15, 'kawasan_id', 'Kawasan', 'select', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 25, 'kawasan', 'kawasan_id', 'kawasan_nama');
INSERT INTO `crud_field` VALUES (513, 15, 'menara_status', 'Status', 'custom_select', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 23, '', '', '');
INSERT INTO `crud_field` VALUES (514, 15, 'menara_created_at', 'menara_created_at', 'datetime', '', '', 'yes', NULL, '', 'yes', '', '', 24, '', '', '');
INSERT INTO `crud_field` VALUES (512, 15, 'menara_user_created', 'menara_user_created', 'number', '', '', 'yes', NULL, '', 'yes', '', '', 22, '', '', '');
INSERT INTO `crud_field` VALUES (511, 15, 'menara_tgl_imb', 'Tanggal IMB', 'date', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 21, '', '', '');
INSERT INTO `crud_field` VALUES (510, 15, 'menara_imb', 'IMB', 'input', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 20, '', '', '');
INSERT INTO `crud_field` VALUES (506, 15, 'menara_nama_penyewa', 'Nama Penyewa', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 16, '', '', '');
INSERT INTO `crud_field` VALUES (507, 15, 'menara_pemilik', 'Pemilik Menara', 'input', '', 'Masukkan nama perusahaan penyewa menara', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 17, '', '', '');
INSERT INTO `crud_field` VALUES (508, 15, 'menara_kondisi', 'Kondisi', 'input', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 18, '', '', '');
INSERT INTO `crud_field` VALUES (509, 15, 'menara_luas_area', 'Luas Area', 'input', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 19, '', '', '');
INSERT INTO `crud_field` VALUES (505, 15, 'menara_image', 'Foto', 'file_multiple', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 15, '', '', '');
INSERT INTO `crud_field` VALUES (503, 15, 'menara_longitude', 'Longitude', 'input', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (504, 15, 'menara_ketinggian', 'Ketinggian Menara (m)', 'input', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 14, '', '', '');
INSERT INTO `crud_field` VALUES (500, 15, 'menara_rw', 'RW', 'input', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (496, 15, 'operator_id', 'Operator', 'select_multiple', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 6, 'operator', 'operator_id', 'operator_nama');
INSERT INTO `crud_field` VALUES (497, 15, 'menara_nama', 'Nama Menara', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (502, 15, 'menara_latitude', 'Latitude', 'input', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (501, 15, 'menara_file_berkas', 'File', 'file', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (499, 15, 'menara_rt', 'RT', 'input', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (498, 15, 'menara_alamat', 'Alamat Menara', 'textarea', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (495, 15, 'tipesite_id', 'Tipe Site', 'select', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 5, 'tipe_site', 'tipe_site_id', 'tipe_site_nama');
INSERT INTO `crud_field` VALUES (492, 15, 'pemohon_id', 'Pemohon', 'select', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 2, 'pemohon', 'pemohon_id', 'pemohon_nama');
INSERT INTO `crud_field` VALUES (493, 15, 'kecamatan_id', 'Kecamatan', 'select', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 3, 'kecamatan', 'kecamatan_id', 'kecamatan_nama');
INSERT INTO `crud_field` VALUES (494, 15, 'kelurahan_id', 'Kelurahan', 'chained', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 4, 'kelurahan', 'kelurahan_id', 'kelurahan_nama');
INSERT INTO `crud_field` VALUES (491, 15, 'menara_id', 'ID', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (488, 16, 'agama_id', 'Agama', 'select', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 10, 'agama', 'agama_id', 'agama_nama');
INSERT INTO `crud_field` VALUES (487, 16, 'kelurahan_id', 'Kelurahan', 'chained', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 9, 'kelurahan', 'kelurahan_id', 'kelurahan_nama');
INSERT INTO `crud_field` VALUES (486, 16, 'kecamatan_id', 'Kecamatan', 'select', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 8, 'kecamatan', 'kecamatan_id', 'kecamatan_nama');
INSERT INTO `crud_field` VALUES (485, 16, 'pemohon_rw', 'RW', 'number', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (484, 16, 'pemohon_rt', 'RT', 'number', '', '', 'yes', NULL, '', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (483, 16, 'pemohon_alamat', 'Alamat Pemohon', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (482, 16, 'pemohon_jenkel', 'jenis Kelamin', 'custom_select', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (481, 16, 'pemohon_nama', 'NamaPemohon', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (480, 16, 'user_id', 'user_id', 'email', '', '', 'yes', NULL, '', 'yes', '', '', 2, '', '', '');
INSERT INTO `crud_field` VALUES (479, 16, 'pemohon_id', 'pemohon_id', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (489, 16, 'pemohon_created_at', 'pemohon_created_at', 'datetime', '', '', 'yes', NULL, '', 'yes', '', '', 11, '', '', '');
INSERT INTO `crud_field` VALUES (490, 16, 'pemohon_user_id', 'pemohon_user_id', 'current_user_id', '', '', 'yes', NULL, '', 'yes', '', '', 12, '', '', '');

-- ----------------------------
-- Table structure for crud_field_condition
-- ----------------------------
DROP TABLE IF EXISTS `crud_field_condition`;
CREATE TABLE `crud_field_condition`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `crud_field_id` int(11) NOT NULL,
  `reff` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `crud_id` int(11) NOT NULL,
  `cond_field` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cond_operator` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cond_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_field_condition
-- ----------------------------

-- ----------------------------
-- Table structure for crud_field_configuration
-- ----------------------------
DROP TABLE IF EXISTS `crud_field_configuration`;
CREATE TABLE `crud_field_configuration`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `crud_field_id` int(11) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `group_config` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `config_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `config_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_field_configuration
-- ----------------------------

-- ----------------------------
-- Table structure for crud_field_validation
-- ----------------------------
DROP TABLE IF EXISTS `crud_field_validation`;
CREATE TABLE `crud_field_validation`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `crud_field_id` int(11) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `validation_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `validation_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 609 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_field_validation
-- ----------------------------
INSERT INTO `crud_field_validation` VALUES (11, 18, 2, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (10, 18, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (9, 12, 1, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (8, 12, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (12, 24, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (13, 25, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (14, 25, 3, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (15, 26, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (16, 26, 3, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (17, 27, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (18, 27, 3, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (19, 28, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (20, 28, 3, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (21, 34, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (22, 35, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (23, 35, 4, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (24, 41, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (25, 41, 5, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (26, 47, 6, 'required', '');
INSERT INTO `crud_field_validation` VALUES (27, 47, 6, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (206, 202, 10, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (131, 150, 7, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (130, 149, 7, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (129, 149, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (128, 148, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (127, 147, 7, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (126, 147, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (125, 146, 7, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (124, 146, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (123, 144, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (122, 143, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (121, 142, 7, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (120, 142, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (119, 141, 7, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (118, 141, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (117, 140, 7, 'allowed_extension', 'PDF,DOC,DOCX,XLS,XLSX');
INSERT INTO `crud_field_validation` VALUES (116, 139, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (115, 138, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (114, 137, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (113, 136, 7, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (112, 136, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (111, 135, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (110, 134, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (109, 133, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (108, 132, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (107, 131, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (558, 463, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (557, 462, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (556, 461, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (555, 460, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (554, 459, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (553, 458, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (552, 457, 8, 'max_length', '65');
INSERT INTO `crud_field_validation` VALUES (71, 88, 9, 'required', '');
INSERT INTO `crud_field_validation` VALUES (72, 88, 9, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (551, 457, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (205, 202, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (204, 201, 10, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (203, 201, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (202, 200, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (201, 199, 10, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (200, 199, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (199, 198, 10, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (198, 198, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (197, 197, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (196, 196, 10, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (195, 196, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (194, 195, 10, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (193, 195, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (192, 194, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (191, 193, 10, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (190, 193, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (189, 192, 10, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (188, 192, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (187, 191, 10, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (186, 191, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (185, 190, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (184, 189, 10, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (183, 189, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (182, 188, 10, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (181, 188, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (180, 187, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (179, 186, 10, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (178, 186, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (177, 185, 10, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (176, 185, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (175, 184, 10, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (174, 184, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (173, 183, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (172, 182, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (171, 181, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (207, 203, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (208, 204, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (209, 204, 10, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (210, 206, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (211, 206, 11, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (212, 207, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (213, 207, 11, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (214, 208, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (215, 208, 11, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (216, 209, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (217, 209, 11, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (218, 210, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (219, 210, 11, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (220, 211, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (221, 211, 11, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (222, 212, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (223, 213, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (224, 213, 11, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (225, 214, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (226, 214, 11, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (227, 215, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (228, 216, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (229, 216, 11, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (230, 217, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (231, 217, 11, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (232, 218, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (233, 218, 11, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (234, 219, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (235, 220, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (236, 220, 11, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (237, 221, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (238, 221, 11, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (239, 222, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (240, 223, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (241, 223, 11, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (242, 224, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (243, 224, 11, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (244, 225, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (245, 226, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (246, 226, 11, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (247, 227, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (248, 227, 11, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (249, 228, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (250, 229, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (251, 229, 11, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (252, 231, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (253, 231, 12, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (254, 232, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (255, 233, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (256, 234, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (257, 234, 12, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (258, 235, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (259, 235, 12, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (260, 236, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (261, 236, 12, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (262, 237, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (263, 238, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (264, 238, 12, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (265, 239, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (266, 239, 12, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (267, 240, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (268, 241, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (269, 241, 12, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (270, 242, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (271, 242, 12, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (272, 243, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (273, 243, 12, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (274, 244, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (275, 245, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (276, 245, 12, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (277, 246, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (278, 246, 12, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (279, 247, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (280, 248, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (281, 248, 12, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (282, 249, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (283, 249, 12, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (284, 250, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (285, 251, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (286, 251, 12, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (287, 252, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (288, 252, 12, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (289, 253, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (290, 254, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (291, 254, 12, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (292, 256, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (293, 256, 13, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (294, 257, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (295, 258, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (296, 258, 13, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (297, 259, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (298, 259, 13, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (299, 260, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (300, 260, 13, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (301, 261, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (302, 261, 13, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (303, 262, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (304, 263, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (305, 263, 13, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (306, 264, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (307, 264, 13, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (308, 265, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (309, 266, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (310, 266, 13, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (311, 267, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (312, 267, 13, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (313, 268, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (314, 268, 13, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (315, 269, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (316, 270, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (317, 270, 13, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (318, 271, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (319, 271, 13, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (320, 272, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (321, 273, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (322, 273, 13, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (323, 274, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (324, 274, 13, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (325, 275, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (326, 276, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (327, 276, 13, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (328, 277, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (329, 277, 13, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (330, 278, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (331, 279, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (332, 279, 13, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (406, 324, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (405, 323, 14, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (404, 323, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (403, 322, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (402, 321, 14, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (401, 321, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (400, 320, 14, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (399, 320, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (398, 319, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (397, 318, 14, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (396, 318, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (395, 317, 14, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (394, 317, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (393, 316, 14, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (392, 316, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (391, 315, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (390, 314, 14, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (389, 314, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (388, 313, 14, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (387, 313, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (386, 312, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (385, 311, 14, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (384, 311, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (383, 310, 14, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (382, 310, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (381, 309, 14, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (380, 309, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (379, 308, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (378, 307, 14, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (377, 307, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (376, 306, 14, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (375, 306, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (407, 324, 14, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (408, 325, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (409, 326, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (410, 326, 14, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (411, 327, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (412, 327, 14, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (413, 328, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (414, 329, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (415, 329, 14, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (607, 510, 15, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (606, 509, 15, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (605, 509, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (604, 508, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (603, 507, 15, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (602, 507, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (601, 506, 15, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (600, 506, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (599, 504, 15, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (598, 504, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (597, 503, 15, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (596, 503, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (595, 502, 15, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (593, 500, 15, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (594, 502, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (592, 500, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (591, 499, 15, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (590, 499, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (589, 498, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (588, 497, 15, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (587, 497, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (586, 496, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (585, 495, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (584, 494, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (583, 493, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (582, 492, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (559, 464, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (579, 486, 16, 'required', '');
INSERT INTO `crud_field_validation` VALUES (578, 485, 16, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (577, 485, 16, 'required', '');
INSERT INTO `crud_field_validation` VALUES (576, 484, 16, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (575, 484, 16, 'required', '');
INSERT INTO `crud_field_validation` VALUES (574, 483, 16, 'required', '');
INSERT INTO `crud_field_validation` VALUES (573, 482, 16, 'required', '');
INSERT INTO `crud_field_validation` VALUES (572, 481, 16, 'max_length', '65');
INSERT INTO `crud_field_validation` VALUES (571, 481, 16, 'required', '');
INSERT INTO `crud_field_validation` VALUES (580, 487, 16, 'required', '');
INSERT INTO `crud_field_validation` VALUES (581, 488, 16, 'required', '');
INSERT INTO `crud_field_validation` VALUES (608, 515, 15, 'required', '');

-- ----------------------------
-- Table structure for crud_function
-- ----------------------------
DROP TABLE IF EXISTS `crud_function`;
CREATE TABLE `crud_function`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `crud_id` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_function
-- ----------------------------

-- ----------------------------
-- Table structure for crud_input_chained
-- ----------------------------
DROP TABLE IF EXISTS `crud_input_chained`;
CREATE TABLE `crud_input_chained`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `chain_field` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chain_field_eq` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `crud_field_id` int(11) NULL DEFAULT NULL,
  `crud_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_input_chained
-- ----------------------------
INSERT INTO `crud_input_chained` VALUES (1, 'kecamatan_id', 'kecamatan_id', 24, 3);
INSERT INTO `crud_input_chained` VALUES (2, 'kecamatan_id', 'kecamatan_id', 34, 4);
INSERT INTO `crud_input_chained` VALUES (35, 'kecamatan_id', 'kecamatan_id', 494, 15);
INSERT INTO `crud_input_chained` VALUES (34, 'kecamatan_id', 'kecamatan_id', 487, 16);
INSERT INTO `crud_input_chained` VALUES (32, 'kecamatan_id', 'kelurahan_id', 463, 8);
INSERT INTO `crud_input_chained` VALUES (26, 'kecamatan_id', 'kecamatan_id', 308, 14);

-- ----------------------------
-- Table structure for crud_input_type
-- ----------------------------
DROP TABLE IF EXISTS `crud_input_type`;
CREATE TABLE `crud_input_type`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `relation` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custom_value` int(11) NOT NULL,
  `validation_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_input_type
-- ----------------------------
INSERT INTO `crud_input_type` VALUES (1, 'input', '0', 0, 'input');
INSERT INTO `crud_input_type` VALUES (2, 'textarea', '0', 0, 'text');
INSERT INTO `crud_input_type` VALUES (3, 'select', '1', 0, 'select');
INSERT INTO `crud_input_type` VALUES (4, 'editor_wysiwyg', '0', 0, 'editor');
INSERT INTO `crud_input_type` VALUES (5, 'password', '0', 0, 'password');
INSERT INTO `crud_input_type` VALUES (6, 'email', '0', 0, 'email');
INSERT INTO `crud_input_type` VALUES (7, 'address_map', '0', 0, 'address_map');
INSERT INTO `crud_input_type` VALUES (8, 'file', '0', 0, 'file');
INSERT INTO `crud_input_type` VALUES (9, 'file_multiple', '0', 0, 'file_multiple');
INSERT INTO `crud_input_type` VALUES (10, 'datetime', '0', 0, 'datetime');
INSERT INTO `crud_input_type` VALUES (11, 'date', '0', 0, 'date');
INSERT INTO `crud_input_type` VALUES (12, 'timestamp', '0', 0, 'timestamp');
INSERT INTO `crud_input_type` VALUES (13, 'number', '0', 0, 'number');
INSERT INTO `crud_input_type` VALUES (14, 'yes_no', '0', 0, 'yes_no');
INSERT INTO `crud_input_type` VALUES (15, 'time', '0', 0, 'time');
INSERT INTO `crud_input_type` VALUES (16, 'year', '0', 0, 'year');
INSERT INTO `crud_input_type` VALUES (17, 'select_multiple', '1', 0, 'select_multiple');
INSERT INTO `crud_input_type` VALUES (18, 'checkboxes', '1', 0, 'checkboxes');
INSERT INTO `crud_input_type` VALUES (19, 'options', '1', 0, 'options');
INSERT INTO `crud_input_type` VALUES (20, 'true_false', '0', 0, 'true_false');
INSERT INTO `crud_input_type` VALUES (21, 'current_user_username', '0', 0, 'user_username');
INSERT INTO `crud_input_type` VALUES (22, 'current_user_id', '0', 0, 'current_user_id');
INSERT INTO `crud_input_type` VALUES (23, 'custom_option', '0', 1, 'custom_option');
INSERT INTO `crud_input_type` VALUES (24, 'custom_checkbox', '0', 1, 'custom_checkbox');
INSERT INTO `crud_input_type` VALUES (25, 'custom_select_multiple', '0', 1, 'custom_select_multiple');
INSERT INTO `crud_input_type` VALUES (26, 'custom_select', '0', 1, 'custom_select');
INSERT INTO `crud_input_type` VALUES (27, 'chained', '1', 0, 'chained');

-- ----------------------------
-- Table structure for crud_input_validation
-- ----------------------------
DROP TABLE IF EXISTS `crud_input_validation`;
CREATE TABLE `crud_input_validation`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `validation` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `input_able` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group_input` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `input_placeholder` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `call_back` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `input_validation` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_input_validation
-- ----------------------------
INSERT INTO `crud_input_validation` VALUES (1, 'required', 'no', 'input, file, number, text, datetime, select, password, email, editor, date, yes_no, time, year, select_multiple, options, checkboxes, true_false, address_map, custom_option, custom_checkbox, custom_select_multiple, custom_select, file_multiple, chained', '', '', '');
INSERT INTO `crud_input_validation` VALUES (2, 'max_length', 'yes', 'input, number, text, select, password, email, editor, yes_no, time, year, select_multiple, options, checkboxes, address_map', '', '', 'numeric');
INSERT INTO `crud_input_validation` VALUES (3, 'min_length', 'yes', 'input, number, text, select, password, email, editor, time, year, select_multiple, address_map', '', '', 'numeric');
INSERT INTO `crud_input_validation` VALUES (4, 'valid_email', 'no', 'input, email', '', '', '');
INSERT INTO `crud_input_validation` VALUES (5, 'valid_emails', 'no', 'input, email', '', '', '');
INSERT INTO `crud_input_validation` VALUES (6, 'regex', 'yes', 'input, number, text, datetime, select, password, email, editor, date, yes_no, time, year, select_multiple, options, checkboxes', '', 'yes', 'callback_valid_regex');
INSERT INTO `crud_input_validation` VALUES (7, 'decimal', 'no', 'input, number, text, select', '', '', '');
INSERT INTO `crud_input_validation` VALUES (8, 'allowed_extension', 'yes', 'file, file_multiple', 'ex : jpg,png,..', '', 'callback_valid_extension_list');
INSERT INTO `crud_input_validation` VALUES (9, 'max_width', 'yes', 'file, file_multiple', '', '', 'numeric');
INSERT INTO `crud_input_validation` VALUES (10, 'max_height', 'yes', 'file, file_multiple', '', '', 'numeric');
INSERT INTO `crud_input_validation` VALUES (11, 'max_size', 'yes', 'file, file_multiple', '... kb', '', 'numeric');
INSERT INTO `crud_input_validation` VALUES (12, 'max_item', 'yes', 'file_multiple', '', '', 'numeric');
INSERT INTO `crud_input_validation` VALUES (13, 'valid_url', 'no', 'input, text', '', '', '');
INSERT INTO `crud_input_validation` VALUES (14, 'alpha', 'no', 'input, text, select, password, editor, yes_no', '', '', '');
INSERT INTO `crud_input_validation` VALUES (15, 'alpha_numeric', 'no', 'input, number, text, select, password, editor', '', '', '');
INSERT INTO `crud_input_validation` VALUES (16, 'alpha_numeric_spaces', 'no', 'input, number, text,select, password, editor', '', '', '');
INSERT INTO `crud_input_validation` VALUES (17, 'valid_number', 'no', 'input, number, text, password, editor, true_false', '', 'yes', '');
INSERT INTO `crud_input_validation` VALUES (18, 'valid_datetime', 'no', 'input, datetime, text', '', 'yes', '');
INSERT INTO `crud_input_validation` VALUES (19, 'valid_date', 'no', 'input, datetime, date, text', '', 'yes', '');
INSERT INTO `crud_input_validation` VALUES (20, 'valid_max_selected_option', 'yes', 'select_multiple, custom_select_multiple, custom_checkbox, checkboxes', '', 'yes', 'numeric');
INSERT INTO `crud_input_validation` VALUES (21, 'valid_min_selected_option', 'yes', 'select_multiple, custom_select_multiple, custom_checkbox, checkboxes', '', 'yes', 'numeric');
INSERT INTO `crud_input_validation` VALUES (22, 'valid_alpha_numeric_spaces_underscores', 'no', 'input, text,select, password, editor', '', 'yes', '');
INSERT INTO `crud_input_validation` VALUES (23, 'matches', 'yes', 'input, number, text, password, email', 'any field', 'no', 'callback_valid_alpha_numeric_spaces_underscores');
INSERT INTO `crud_input_validation` VALUES (24, 'valid_json', 'no', 'input, text, editor', '', 'yes', ' ');
INSERT INTO `crud_input_validation` VALUES (25, 'valid_url', 'no', 'input, text, editor', '', 'no', ' ');
INSERT INTO `crud_input_validation` VALUES (26, 'exact_length', 'yes', 'input, text, number', '0 - 99999*', 'no', 'numeric');
INSERT INTO `crud_input_validation` VALUES (27, 'alpha_dash', 'no', 'input, text', '', 'no', '');
INSERT INTO `crud_input_validation` VALUES (28, 'integer', 'no', 'input, text, number', '', 'no', '');
INSERT INTO `crud_input_validation` VALUES (29, 'differs', 'yes', 'input, text, number, email, password, editor, options, select', 'any field', 'no', 'callback_valid_alpha_numeric_spaces_underscores');
INSERT INTO `crud_input_validation` VALUES (30, 'is_natural', 'no', 'input, text, number', '', 'no', '');
INSERT INTO `crud_input_validation` VALUES (31, 'is_natural_no_zero', 'no', 'input, text, number', '', 'no', '');
INSERT INTO `crud_input_validation` VALUES (32, 'less_than', 'yes', 'input, text, number', '', 'no', 'numeric');
INSERT INTO `crud_input_validation` VALUES (33, 'less_than_equal_to', 'yes', 'input, text, number', '', 'no', 'numeric');
INSERT INTO `crud_input_validation` VALUES (34, 'greater_than', 'yes', 'input, text, number', '', 'no', 'numeric');
INSERT INTO `crud_input_validation` VALUES (35, 'greater_than_equal_to', 'yes', 'input, text, number', '', 'no', 'numeric');
INSERT INTO `crud_input_validation` VALUES (36, 'in_list', 'yes', 'input, text, number, select, options', '', 'no', 'callback_valid_multiple_value');
INSERT INTO `crud_input_validation` VALUES (37, 'valid_ip', 'no', 'input, text', '', 'no', '');

-- ----------------------------
-- Table structure for dashboard
-- ----------------------------
DROP TABLE IF EXISTS `dashboard`;
CREATE TABLE `dashboard`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dashboard
-- ----------------------------

-- ----------------------------
-- Table structure for form
-- ----------------------------
DROP TABLE IF EXISTS `form`;
CREATE TABLE `form`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subject` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form
-- ----------------------------

-- ----------------------------
-- Table structure for form_custom_attribute
-- ----------------------------
DROP TABLE IF EXISTS `form_custom_attribute`;
CREATE TABLE `form_custom_attribute`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_field_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `attribute_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attribute_label` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form_custom_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for form_custom_option
-- ----------------------------
DROP TABLE IF EXISTS `form_custom_option`;
CREATE TABLE `form_custom_option`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_field_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `option_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_label` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form_custom_option
-- ----------------------------

-- ----------------------------
-- Table structure for form_field
-- ----------------------------
DROP TABLE IF EXISTS `form_field`;
CREATE TABLE `form_field`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `field_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `input_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `field_label` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `placeholder` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `show_detail_page` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_update_form` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_add_form` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_column` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `auto_generate_help_block` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `help_block` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `relation_table` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `relation_value` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `relation_label` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form_field
-- ----------------------------

-- ----------------------------
-- Table structure for form_field_validation
-- ----------------------------
DROP TABLE IF EXISTS `form_field_validation`;
CREATE TABLE `form_field_validation`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_field_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `validation_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `validation_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form_field_validation
-- ----------------------------

-- ----------------------------
-- Table structure for kawasan
-- ----------------------------
DROP TABLE IF EXISTS `kawasan`;
CREATE TABLE `kawasan`  (
  `kawasan_id` int(12) NOT NULL AUTO_INCREMENT,
  `kawasan_nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kawasan_created_at` datetime NULL DEFAULT NULL,
  `kawasan_user_created` int(12) NULL DEFAULT NULL,
  `kawasan_updated_at` datetime NULL DEFAULT NULL,
  `kawasan_user_updated` int(12) NULL DEFAULT NULL,
  PRIMARY KEY (`kawasan_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kawasan
-- ----------------------------
INSERT INTO `kawasan` VALUES (1, 'Permukiman', '2022-12-22 10:39:40', 1, NULL, NULL);
INSERT INTO `kawasan` VALUES (2, 'Pertanian', '2022-12-22 10:39:40', 1, NULL, NULL);
INSERT INTO `kawasan` VALUES (3, 'Pendidikan', '2022-12-22 10:39:40', 1, NULL, NULL);
INSERT INTO `kawasan` VALUES (4, 'Industri', '2022-12-22 10:39:40', 1, NULL, NULL);
INSERT INTO `kawasan` VALUES (5, 'Perdagangan', '2022-12-22 10:39:40', 1, NULL, NULL);
INSERT INTO `kawasan` VALUES (6, 'Perkantoran', '2022-12-22 10:39:40', 1, NULL, NULL);
INSERT INTO `kawasan` VALUES (7, 'Lainnya', '2022-12-22 10:39:40', 1, NULL, NULL);

-- ----------------------------
-- Table structure for kecamatan
-- ----------------------------
DROP TABLE IF EXISTS `kecamatan`;
CREATE TABLE `kecamatan`  (
  `kecamatan_id` int(12) NOT NULL AUTO_INCREMENT,
  `kecamatan_nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kecamatan_created_at` datetime NULL DEFAULT NULL,
  `kecamatan_user_created` int(12) NULL DEFAULT NULL,
  `kecamatan_updated_at` datetime NULL DEFAULT NULL,
  `kecamatan_user_updated` int(12) NULL DEFAULT NULL,
  PRIMARY KEY (`kecamatan_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kecamatan
-- ----------------------------
INSERT INTO `kecamatan` VALUES (1, 'Semarang Barat', '2022-12-22 10:32:32', 1, NULL, NULL);
INSERT INTO `kecamatan` VALUES (2, 'Semarang Timur', '2022-12-22 10:32:32', 1, NULL, NULL);
INSERT INTO `kecamatan` VALUES (3, 'Semarang Tengah', '2022-12-22 10:32:32', 1, NULL, NULL);
INSERT INTO `kecamatan` VALUES (4, 'Banyumanik', '2022-12-22 10:32:32', 1, NULL, NULL);
INSERT INTO `kecamatan` VALUES (5, 'Candisari', '2022-12-22 10:32:32', 1, NULL, NULL);
INSERT INTO `kecamatan` VALUES (6, 'Gajahmungkur', '2022-12-22 10:32:32', 1, NULL, NULL);
INSERT INTO `kecamatan` VALUES (7, 'Gayamsari', '2022-12-22 10:32:32', 1, NULL, NULL);
INSERT INTO `kecamatan` VALUES (8, 'Genuk', '2022-12-22 10:32:32', 1, NULL, NULL);
INSERT INTO `kecamatan` VALUES (9, 'Gunungpati', '2022-12-22 10:32:32', 1, NULL, NULL);
INSERT INTO `kecamatan` VALUES (10, 'Mijen', '2022-12-22 10:32:32', 1, NULL, NULL);
INSERT INTO `kecamatan` VALUES (11, 'Ngaliyan', '2022-12-22 10:32:32', 1, NULL, NULL);
INSERT INTO `kecamatan` VALUES (12, 'Pedurungan', '2022-12-22 10:32:32', 1, NULL, NULL);
INSERT INTO `kecamatan` VALUES (13, 'Semarang Selatan', '2022-12-22 10:32:32', 1, NULL, NULL);
INSERT INTO `kecamatan` VALUES (14, 'Semarang Utara', '2022-12-22 10:32:32', 1, NULL, NULL);
INSERT INTO `kecamatan` VALUES (15, 'Tembalang', '2022-12-22 10:32:32', 1, NULL, NULL);
INSERT INTO `kecamatan` VALUES (16, 'Tugu', '2022-12-22 10:32:32', 1, NULL, NULL);
INSERT INTO `kecamatan` VALUES (17, 'Zonk', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for kelurahan
-- ----------------------------
DROP TABLE IF EXISTS `kelurahan`;
CREATE TABLE `kelurahan`  (
  `kelurahan_id` int(12) NOT NULL AUTO_INCREMENT,
  `kecamatan_id` int(12) NOT NULL,
  `kelurahan_nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kelurahan_created_at` datetime NULL DEFAULT NULL,
  `kelurahan_user_created` int(12) NULL DEFAULT NULL,
  `kelurahan_updated_at` datetime NULL DEFAULT NULL,
  `kelurahan_user_updated` int(12) NULL DEFAULT NULL,
  PRIMARY KEY (`kelurahan_id`) USING BTREE,
  INDEX `kecamatan_id`(`kecamatan_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 178 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kelurahan
-- ----------------------------
INSERT INTO `kelurahan` VALUES (1, 4, 'Pudakpayung', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (2, 4, 'Gedawang', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (3, 4, 'Jabungan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (4, 4, 'Padangsari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (5, 4, 'Banyumanik', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (6, 4, 'Srondol Wetan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (7, 4, 'Pedalangan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (8, 4, 'Sumurboto', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (9, 4, 'Srondol Kulon', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (10, 4, 'Tinjomoyo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (11, 4, 'Ngesrep', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (12, 5, 'Candi', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (13, 5, 'Jatingaleh', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (14, 5, 'Jomblang', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (15, 5, 'Kaliwiru', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (16, 5, 'Karanganyar Gunung', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (17, 5, 'Tegalsari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (18, 5, 'Wonotingal', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (19, 6, 'Bendang Duwur', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (20, 6, 'Bendan Ngisor', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (21, 6, 'Bendungan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (22, 6, 'Gajahmungkur', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (23, 6, 'Krangrejo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (24, 6, 'Lempongsari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (25, 6, 'Petompon', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (26, 6, 'Sampangan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (27, 7, 'Gayamsari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (28, 7, 'Kaligawe', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (29, 7, 'Pandean Lamper', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (30, 7, 'Sambirejo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (31, 7, 'Sawahbesar', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (32, 7, 'Siwalan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (33, 7, 'Tambakrejo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (34, 8, 'Bangetayu Kulon', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (35, 8, 'Bangetayu Wetan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (36, 8, 'Banjardowo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (37, 8, 'Gebangsari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (38, 8, 'Genuksari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (39, 8, 'Karangroto', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (40, 8, 'Kudu', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (41, 8, 'Muktiharjo Lor', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (42, 8, 'Penggaron Lor', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (43, 8, 'Sembungharjo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (44, 8, 'Terboyo Kulon', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (45, 8, 'Terboyo Wetan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (46, 8, 'Trimulyo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (47, 9, 'Cepoko', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (48, 9, 'Gunungpati', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (49, 9, 'Jatirejo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (50, 9, 'Kalisegoro', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (51, 9, 'Kandri', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (52, 9, 'Mangunsari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (53, 9, 'Ngijo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (54, 9, 'Nongkosawit', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (55, 9, 'Pakintelan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (56, 9, 'Patemon', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (57, 9, 'Plalangan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (58, 9, 'Pongangan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (59, 9, 'Sadeng', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (60, 9, 'Sekaran', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (61, 9, 'Sukorejo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (62, 9, 'Sumurejo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (63, 10, 'Bubakan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (64, 10, 'Cangkiran', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (65, 10, 'Jatibaran', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (66, 10, 'Jatisari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (67, 10, 'Karangmalang', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (68, 10, 'Kedungpani', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (69, 10, 'Mijen', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (70, 10, 'Ngadirgo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (71, 10, 'Pesantren', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (72, 10, 'Polaman', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (73, 10, 'Purwosari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (74, 10, 'Tambangan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (75, 10, 'Wonolopo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (76, 10, 'Wonoplumbon', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (77, 11, 'Bambankerep', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (78, 11, 'Beringin', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (79, 11, 'Gondoriyo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (80, 11, 'Kalipancur', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (81, 11, 'Ngaliyan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (82, 11, 'Podorejo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (83, 11, 'Purwoyoso', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (84, 11, 'Tambak Aji', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (85, 11, 'Wonosari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (86, 11, 'Wates', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (87, 12, 'Gemah', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (88, 12, 'Kalicari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (89, 12, 'Muktiharjo Kidul', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (90, 12, 'Palebon', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (91, 12, 'Pedurungan Kidul', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (92, 12, 'Pedurungan Lor', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (93, 12, 'Pedurungan Tengah', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (94, 12, 'Penggaron Kidul', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (95, 12, 'Plamongan Sari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (96, 12, 'Tlogomulyo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (97, 12, 'Tlogosari Kulon', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (98, 12, 'Tlogosari Wetan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (99, 1, 'Bojongsalaman', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (100, 1, 'Bongsari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (101, 1, 'Cabean', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (102, 1, 'Gisikdrono', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (103, 1, 'Kalibanteng Kidul', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (104, 1, 'Kalibanteng Kulon', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (105, 1, 'Karangayu', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (106, 1, 'Kembangarum', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (107, 1, 'Krapyak', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (108, 1, 'Krobokan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (109, 1, 'Manyaran', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (110, 1, 'Ngemplaksimongan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (111, 1, 'Salamanmloyo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (112, 1, 'Tambakharjo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (113, 1, 'Tawangmas', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (114, 1, 'Tawangsari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (115, 13, 'Barusari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (116, 13, 'Bulustalan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (117, 13, 'Lamper Kidul', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (118, 13, 'Lamper Lor', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (119, 13, 'Lamper Tengah', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (120, 13, 'Mugassari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (121, 13, 'Peterongan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (122, 13, 'Pleburan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (123, 13, 'Randusari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (124, 13, 'Wonodri', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (125, 3, 'Bangunharjo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (126, 3, 'Brumbungan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (127, 3, 'Gabahan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (128, 3, 'Jagalan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (129, 3, 'Karangkidul', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (130, 3, 'Kauman', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (131, 3, 'Kembangsari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (132, 3, 'Kranggan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (133, 3, 'Miroto', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (134, 3, 'Pandansari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (135, 3, 'Pekunden', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (136, 3, 'Pendrikan Kidul', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (137, 3, 'Pendrikan Lor', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (138, 3, 'Purwodinatan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (139, 3, 'Sekayu', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (140, 2, 'Bugangan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (141, 2, 'Karangtempel', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (142, 2, 'Karangturi', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (143, 2, 'Kebonagung', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (144, 2, 'Kemijen', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (145, 2, 'Mlatibaru', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (146, 2, 'Mlatiharjo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (147, 2, 'Rejomulyo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (148, 2, 'Rejosari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (149, 2, 'Sarirejo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (150, 2, 'Bandarharjo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (151, 15, 'Bulu Lor', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (152, 14, 'Dadapsari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (153, 14, 'Kuningan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (154, 14, 'Panggung Kidul', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (155, 14, 'Panggung Lor', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (156, 14, 'Plombokan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (157, 14, 'Purwosari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (158, 14, 'Tanjungmas', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (159, 15, 'Bulusan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (160, 15, 'Jangli', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (161, 15, 'Kedungmundu', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (162, 15, 'Kramas', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (163, 15, 'Mangunharjo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (164, 15, 'Meteseh', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (165, 15, 'Rowosari', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (166, 15, 'Sambiroto', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (167, 15, 'Sendangguwo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (168, 15, 'Sendangmulyo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (169, 15, 'Tandang', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (170, 15, 'Tembalang', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (171, 16, 'Jerakah', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (172, 16, 'Karanganyar', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (173, 16, 'Mangkang Kulon', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (174, 16, 'Mangkang Wetan', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (175, 16, 'Mangunharjo', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (176, 16, 'Randu Garut', '2022-12-22 10:38:45', 1, NULL, NULL);
INSERT INTO `kelurahan` VALUES (177, 16, 'Tugurejo', '2022-12-22 10:38:45', 1, NULL, NULL);

-- ----------------------------
-- Table structure for keys
-- ----------------------------
DROP TABLE IF EXISTS `keys`;
CREATE TABLE `keys`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL,
  `is_private_key` tinyint(1) NOT NULL,
  `ip_addresses` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date_created` timestamp NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of keys
-- ----------------------------
INSERT INTO `keys` VALUES (1, 0, '154ACDB9C3E22E07583040BE8B5F7014', 0, 0, 0, NULL, '2022-12-21 02:47:44');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------

-- ----------------------------
-- Table structure for menara
-- ----------------------------
DROP TABLE IF EXISTS `menara`;
CREATE TABLE `menara`  (
  `menara_id` int(12) NOT NULL AUTO_INCREMENT,
  `pemohon_id` int(12) NULL DEFAULT NULL,
  `kecamatan_id` int(12) NULL DEFAULT NULL,
  `kelurahan_id` int(12) NULL DEFAULT NULL,
  `tipesite_id` int(12) NULL DEFAULT NULL,
  `operator_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menara_nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `menara_alamat` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `menara_rt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menara_rw` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menara_file_berkas` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `menara_latitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menara_longitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menara_ketinggian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menara_image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `menara_nama_penyewa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menara_pemilik` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menara_kondisi` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `menara_luas_area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menara_imb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menara_tgl_imb` datetime NULL DEFAULT NULL,
  `menara_user_created` int(12) NULL DEFAULT NULL,
  `menara_status` int(12) NULL DEFAULT NULL,
  `menara_created_at` datetime NULL DEFAULT NULL,
  `kawasan_id` int(12) NULL DEFAULT NULL,
  PRIMARY KEY (`menara_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 330 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menara
-- ----------------------------
INSERT INTO `menara` VALUES (1, 1, 4, 1, 1, 'SMART', 'TOWER EXISTING DIAN SWASTATIKA_01', 'Concrete', '0', '0', NULL, '-7.0966111111111', '110.41441666667', '72', '201903021157591.png', 'PT Indoprima mikroselindo', 'PT Dian Swatatika', 'Tower DIAN SWATATIKA ini berada di area lahan kosong dekat makam, sisi sebelah utara makam, sisi sebelah barat lahan kosong, sisi sebelah selatan jalan lokal dan sisi sebelah timur ladang', '14 X 14 Meter', '', NULL, 1, 1, '2019-03-02 11:57:59', 1);
INSERT INTO `menara` VALUES (2, 1, 4, 6, 1, 'SMART dan ESIA', 'TOWER EXISTING DIAN SWASTATIKA_01', 'Concrete', '0', '0', NULL, '-7.0621388888889', '110.41838888889', '52', '201903021206182.png', 'PT Indoprima mikroselindo dan PT Bakrie Telecom', 'PT Dian Swatatika', 'Tower DIAN SWATATIKA ini berada di area rumah penduduk dekat ruko, sisi sebelah utara jalan lokal, sisi sebelah barat ruko, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '8 X 16 Meter', '', NULL, 1, 1, '2019-03-02 12:06:18', 1);
INSERT INTO `menara` VALUES (3, 1, 4, 4, 1, 'ESIA', 'TOWER EXISTING BAKRIE TELECOM_02', 'Macadam', '0', '0', NULL, '-7.0733611111111', '110.42191666667', '52', '20190302120839Screenshot_1.png', '', 'PT Bakrie Telecom', 'Tower BAKRIE TELECOM ini berada di area pepohonan, sisi sebelah utara menara NTS, sisi sebelah barat pepohonan, sisi sebelah selatan maenara TBG dan sisi sebelah timur jalan lokal.', '10 X 12  Meter', '', NULL, 1, 1, '2019-03-02 12:08:39', 1);
INSERT INTO `menara` VALUES (4, 1, 4, 1, 1, 'HCPT', 'TOWER EXISTING HCPT_03', 'Aspalth', '0', '0', NULL, '-7.0887222222222', '110.41552777778', '22', '20190302121722Screenshot_2.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area lahan kosong, sisi sebelah utara lahan kosong, sisi sebelah barat jalan lokal, sisi sebelah selatan lahan kosong dan sisi sebelah timur rumah penduduk', '6 X 6  Meter', '', NULL, 1, 1, '2019-03-02 12:17:22', 1);
INSERT INTO `menara` VALUES (5, 1, 4, 10, 1, 'HCPT', 'TOWER EXISTING HCPT_03', 'Macadam', '0', '0', NULL, '-7.02975', '110.40780555556', '32', '20190302122415Screenshot_3.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area pepohonan, sisi sebelah utara pepohonan, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur pepohonan', '8 X 8  Meter', '', NULL, 1, 1, '2019-03-02 12:24:15', 1);
INSERT INTO `menara` VALUES (6, 1, 4, 0, 1, 'HCPT', 'TOWER EXISTING HCPT_03', 'Macadam', '0', '0', NULL, '-7.0804166666667', '110.4115', '3', '20190302122646Screenshot_4.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara lahan kosong, sisi sebelah barat jalan raya, sisi sebelah selatan Showroom dan sisi sebelah timur rumah penduduk', 'Area Graha Pena', '', NULL, 1, 0, '2019-03-02 12:26:46', 1);
INSERT INTO `menara` VALUES (7, 1, 4, 9, 2, 'HCPT', 'TOWER EXISTING HCPT_03', 'Concrete', '0', '0', NULL, '-7.0475', '110.41886111111', '2', '20190302122803Screenshot_5.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', 'Area Ponpes Darussalam', '', NULL, 1, 1, '2019-03-02 12:28:03', 1);
INSERT INTO `menara` VALUES (8, 1, 4, 7, 1, 'HCPT dan XL', 'TOWER EXISTING HCPT_03', 'Macadam', '0', '0', NULL, '-7.0585555555556', '110.4305', '42', '20190302122951Screenshot_6.png', 'PT Xl Axiata', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di lahan kosong, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur jalan lokal', '8 X 8 Meter', '', NULL, 1, 1, '2019-03-02 12:29:51', 1);
INSERT INTO `menara` VALUES (9, 1, 4, 1, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_04', 'Aspalth', '0', '0', NULL, '-7.10575', '110.41247222222', '72', '20190302123206Screenshot_7.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '10 X 18  Meter', '', NULL, 1, 1, '2019-03-02 12:32:06', 1);
INSERT INTO `menara` VALUES (10, 1, 4, 4, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_04', 'Aspalth', '0', '0', NULL, '-7.0751388888889', '110.42436111111', '52', '20190302123308Screenshot_8.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat lahan kosong, sisi sebelah selatan rumah penduduk dan sisi sebelah timur jalan lokal', '12 X 14  Meter', '', NULL, 1, 1, '2019-03-02 12:33:08', 1);
INSERT INTO `menara` VALUES (11, 1, 4, 6, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_04', 'Macadam', '0', '0', NULL, '-7.0728611111111', '110.41205555556', '52', '20190302123415Screenshot_9.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area lahan kosong, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan lahan kosong,  sisi sebelah timur jalan lokal', '10 X 8  Meter', '', NULL, 1, 1, '2019-03-02 12:34:15', 1);
INSERT INTO `menara` VALUES (12, 1, 4, 0, 1, 'INDOSAT dan XL', 'TOWER EXISTING INDOSAT_04', 'Paving Block', '0', '0', NULL, '-7.0688333333333', '110.43411111111', '32', '20190302123533Screenshot_10.png', 'PT Xl Axiata', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area pepohonan, sisi sebelah utara rumah penduduk, sisi sebelah barat dan sisi sebelah selatan pepohonan,  sisi sebelah timur jalan lokal', '12 X 12  Meter', '', NULL, 1, 0, '2019-03-02 12:35:33', 1);
INSERT INTO `menara` VALUES (13, 1, 4, 7, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_04', 'Paving Block', '0', '0', NULL, '-7.0588055555556', '110.42238888889', '42', '20190302123659Screenshot_11.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan  sisi sebelah timur rumah penduduk', '19 X 10  Meter', '', NULL, 1, 1, '2019-03-02 12:36:59', 1);
INSERT INTO `menara` VALUES (14, 1, 4, 8, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_04', 'Aspalth', '0', '0', NULL, '-7.0455277777778', '110.42363888889', '72', '20190302165930Screenshot_12.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara Grapari Telkomsel, sisi sebelah barat jalan lokal, sisi sebelah selatan dan  sisi sebelah timur rumah penduduk', 'Area Grapari Indosat', '', NULL, 1, 1, '2019-03-02 16:59:30', 1);
INSERT INTO `menara` VALUES (15, 1, 16, 177, 2, 'HCPT', 'TOWER EXISTING HCPT_01', 'Concrete', '0', '0', NULL, '-6.9839166666667', '110.35611111111', '3', '20190302170423Screenshot_13.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan raya dan sisi sebelah timur rumah penduduk', 'Area Bengkel', '', NULL, 1, 1, '2019-03-02 17:04:23', 1);
INSERT INTO `menara` VALUES (16, 1, 16, 176, 1, 'HCPT', 'TOWER EXISTING HCPT_02', 'Macadam', '0', '0', NULL, '-6.9743611111111', '110.31575', '2', '20190302170548Screenshot_14.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat industri, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', '7 X 7 Meter', '', NULL, 1, 1, '2019-03-02 17:05:48', 1);
INSERT INTO `menara` VALUES (17, 1, 16, 177, 1, 'HCPT', 'TOWER EXISTING HCPT_03', 'Paving Block', '0', '0', NULL, '-6.9938611111111', '110.35144444444', '32', '20190302170831Screenshot_15.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '6 X 6 Meter', '', NULL, 1, 1, '2019-03-02 17:08:31', 1);
INSERT INTO `menara` VALUES (18, 1, 16, 176, 1, 'SMART', 'TOWER EXISTING INDOPRIMA MIKROSELINDO_01', 'Paving Block', '0', '0', NULL, '-6.97175', '110.319', '52', '20190302170943Screenshot_16.png', '', 'PT Indoprima Mikroselindo', 'Tower INDOPRIMA MIKROSELINDO ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', '16 X 12 Meter', '', NULL, 1, 1, '2019-03-02 17:09:43', 1);
INSERT INTO `menara` VALUES (19, 1, 16, 171, 1, 'FREN', 'TOWER EXISTING KOPNATEL JAYA_01', 'Macadam', '0', '0', NULL, '-6.9833888888889', '110.36330555556', '52', '20190302171117Screenshot_17.png', 'PT Mobile 8', 'PT Kopnatel Jaya', 'Tower KOPNATEL JAYA ini berada di area rumah penduduk dekat pepohonan, sisi sebelah utara jalan lokal, sisi sebelah barat rumah penduduk, sisi sebelah selatan lahan kosong dan sisi sebelah timur pepohonan', '12 X 12 Meter', '', NULL, 1, 1, '2019-03-02 17:11:17', 1);
INSERT INTO `menara` VALUES (20, 1, 16, 171, 1, 'NTS', 'TOWER EXISTING NTS_01', 'Soil', '0', '0', NULL, '-6.9807222222222', '110.36480555556', '52', '20190302171352Screenshot_18.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area pertambakan, sisi sebelah utara dan sisi sebelah barat tambak, sisi sebelah selatan jalan lokal dan sisi sebelah timur tambak', '10 X 8 Meter', '', NULL, 1, 1, '2019-03-02 17:13:52', 1);
INSERT INTO `menara` VALUES (21, 1, 16, 177, 1, 'TSEL, FLEXI, HCPT dan NTS', 'TOWER EXISTING PT LINGGARJATI_01', 'Paving Block', '0', '0', NULL, '-6.9776388888889', '110.34588888889', '42', '20190302171627Screenshot_19.png', 'PT Telkomsel, PT Telkom Flexi, PT Hutchison CP Telecomunication dan PT Natrindo Telephone Seluler', 'PT Linggarjati', 'Tower LINGGARJATI ini berada di area lahan kosong dekat rumah penduduk, sisi sebelah utara lahan kosong, sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur lahan kosong', '12 X 9 Meter', '', NULL, 1, 1, '2019-03-02 17:16:27', 1);
INSERT INTO `menara` VALUES (22, 1, 16, 177, 1, 'CERIA', 'TOWER EXISTING STI_01', 'Paving Block', '0', '0', NULL, '-6.9831111111111', '110.35802777778', '22', '20190302171803Screenshot_20.png', '', 'PT Sampoerna Telekomunikasi Indonesia', 'Tower STI ini berada di area pepohonan dekat rumah penduduk, sisi sebelah utara dan sisi sebelah barat pepohonan, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', '10 X 28 Meter', '', NULL, 1, 1, '2019-03-02 17:18:03', 1);
INSERT INTO `menara` VALUES (23, 1, 16, 171, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_01', 'Paving Block', '0', '0', NULL, '-6.9850555555556', '110.35894444444', '17', '20190302171918Screenshot_21.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara jalan lokal,  sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '10 X 17 Meter', '', NULL, 1, 1, '2019-03-02 17:19:18', 1);
INSERT INTO `menara` VALUES (24, 1, 2, 150, 2, 'XL', 'TOWER EXISTING XL AXIATA_01', 'Concrete', '0', '0', NULL, '-6.9701666666667', '110.43055555556', '10', '20190302172421Screenshot_22.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area pertokoan, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur ruko', 'Area Ruko Padang Jaya', '', NULL, 1, 1, '2019-03-02 17:24:21', 1);
INSERT INTO `menara` VALUES (25, 1, 0, 0, 1, 'XL', 'TOWER EXISTING XL AXIATA_02', 'Macadam', '0', '0', NULL, '-6.9631666666667', '110.43641666667', '10', '20190302173136Screenshot_23.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area perindustrian, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur industri', '6 X 6 Meter', '', NULL, 1, 1, '2019-03-02 17:31:36', 1);
INSERT INTO `menara` VALUES (26, 1, 2, 149, 1, 'XL', 'TOWER EXISTING XL AXIATA_02', 'Paving Block', '0', '0', NULL, '-6.9839166666667', '110.43266666667', '32', '20190302173249Screenshot_24.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', '8 X 10 Meter', '', NULL, 1, 1, '2019-03-02 17:32:49', 1);
INSERT INTO `menara` VALUES (27, 1, 2, 144, 1, 'ESIA dan SMART', 'TOWER EXISTING BAKRIE TELECOM_01', 'Concrete', '0', '0', NULL, '-6.9600277777778', '110.43833333333', '62', '20190302173504Screenshot_25.png', 'PT Indoprima Mikroselindo', 'PT Bakrie Telecom', 'Tower Bakrie Telecom ini berada di area lahan kosong, sisi sebelah utara dan sisi sebelah barat lahan kosong, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', '8 X 12 Meter', '', NULL, 1, 1, '2019-03-02 17:35:04', 1);
INSERT INTO `menara` VALUES (28, 1, 2, 146, 2, 'ESIA', 'TOWER EXISTING BAKRIE TELECOM_02', 'Concrete', '0', '0', NULL, '-6.9711944444444', '110.44127777778', '2', '20190302173836Screenshot_26.png', '', 'PT Bakrie Telecom', 'Tower Bakrie Telecom ini berada di area pertokoan, sisi sebelah utara rumah penduduk, sisi sebelah barat ruko, sisi sebelah selatan jalan lokal dan sisi sebelah timur ruko', 'Area Meubel Pardesi', '', NULL, 1, 1, '2019-03-02 17:38:36', 4);
INSERT INTO `menara` VALUES (29, 1, 2, 141, 1, 'ESIA', 'TOWER EXISTING BAKRIE TELECOM_03', 'Concrete', '0', '0', NULL, '-6.9883055555556', '110.43569444444', '3', '20190302174257Screenshot_27.png', '', 'PT Bakrie Telecom', 'Tower BAKRIE TELECOM ini berada di area Universitas, sisi sebelah utara kampus, sisi sebelah barat jalan lokal, sisi sebelah selatan kampus dan sisi sebelah timur ruma penduduk', 'Area STKIP Semarang', '', NULL, 1, 1, '2019-03-02 17:42:57', 3);
INSERT INTO `menara` VALUES (30, 1, 2, 146, 2, 'NTS', 'TOWER EXISTING NTS_01', 'Concrete', '0', '0', NULL, '-6.9712222222222', '110.44130555556', '10', '20190302174604Screenshot_28.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area pertokoan, sisi sebelah utara rumah penduduk, sisi sebelah barat ruko, sisi sebelah selatan jalan lokal dan sisi sebelah timur ruko', 'Area Meubel Pardesi', '', NULL, 1, 1, '2019-03-02 17:46:04', 4);
INSERT INTO `menara` VALUES (31, 1, 2, 148, 2, 'NTS', 'TOWER EXISTING NTS_02', 'Concrete', '0', '0', NULL, '-6.9779166666667', '110.43530555556', '10', '20190302174833Screenshot_29.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area pertokoan, sisi sebelah utara ruko, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur ruko', 'Area Bengkel AHASS', '', NULL, 1, 1, '2019-03-02 17:48:33', 4);
INSERT INTO `menara` VALUES (32, 1, 2, 145, 2, 'NTS', 'TOWER EXISTING NTS_02', 'Concrete', '0', '0', NULL, '-6.9652222222222', '110.43433333333', '10', '20190302175000Screenshot_30.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area pertokoan dekat rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat ruko, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', 'Area CV Panca Darma', '', NULL, 1, 1, '2019-03-02 17:50:00', 1);
INSERT INTO `menara` VALUES (33, 1, 2, 140, 2, 'HCPT dan XL', 'TOWER EXISTING HCPT_01', 'Concrete', '0', '0', NULL, '-6.9718611111111', '110.43991666667', '10', '20190302175318Screenshot_31.png', 'PT Xl Axiata', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area pertokoan, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan ruko, sisi sebelah timur jalan lokal', 'Area Ruko', '', NULL, 1, 1, '2019-03-02 17:53:18', 4);
INSERT INTO `menara` VALUES (34, 1, 2, 148, 2, 'HCPT', 'TOWER EXISTING HCPT_02', 'Concrete', '0', '0', NULL, '-6.9778611111111', '110.43527777778', '2', '20190302175743Screenshot_32.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area pertokoan, sisi sebelah utara ruko, sisi sebelah barat jalan lokal, sisi sebelah selatan dan  sisi sebelah timur ruko', 'Area Bengkel AHASS', '', NULL, 1, 1, '2019-03-02 17:57:43', 4);
INSERT INTO `menara` VALUES (35, 1, 2, 141, 2, 'HCPT', 'TOWER EXISTING HCPT_03', 'Concrete', '0', '0', NULL, '-6.9881111111111', '110.43588888889', '3', '20190302180025Screenshot_33.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area Universitas, sisi sebelah utara kampus, sisi sebelah barat jalan lokal, sisi sebelah selatan kampus dan  sisi sebelah timur rumah penduduk', 'Area STKIP Semarang', '', NULL, 1, 1, '2019-03-02 18:00:25', 3);
INSERT INTO `menara` VALUES (36, 1, 2, 149, 2, 'HCPT', 'TOWER EXISTING HCPT_04', 'Concrete', '0', '0', NULL, '-7.1082777777778', '110.46183333333', '5', '20190302180313Screenshot_34.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area pertokoan, sisi sebelah utara rumah penduduk, sisi sebelah barat ruko, sisi sebelah selatan jalan raya dan  sisi sebelah timur ruko', 'Area Bengkel Mojopahit Jaya', '', NULL, 1, 1, '2019-03-02 18:03:13', 4);
INSERT INTO `menara` VALUES (37, 1, 2, 141, 1, 'INDOSAT dan NTS', 'TOWER EXISTING INDOSAT_01', 'Paving Block', '0', '0', NULL, '-6.9848888888889', '110.43461111111', '42', '20190302180503Screenshot_35.png', 'PT Natrindo Telephone Seluler', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat kantor, sisi sebelah selatan jalan lokal dan sisi sebelah timur lahan parkir', '12 X 12 Meter', '', NULL, 1, 1, '2019-03-02 18:05:03', 1);
INSERT INTO `menara` VALUES (38, 1, 2, 141, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_01', 'Paving Block', '0', '0', NULL, '-6.9856944444444', '110.43563888889', '42', '20190302180723Screenshot_36.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan gudang dan sisi sebelah timur rumah penduduk', '5 X 4 Meter', '', NULL, 1, 1, '2019-03-02 18:07:23', 1);
INSERT INTO `menara` VALUES (39, 1, 2, 145, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_01', 'Concrete', '0', '0', NULL, '-6.9683333333333', '110.434', '52', '20190302180945Screenshot_37.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '12 X 8 Meter', '', NULL, 1, 1, '2019-03-02 18:09:45', 1);
INSERT INTO `menara` VALUES (40, 1, 2, 145, 1, 'FLEXI', 'TOWER EXISTING TELKOM FLEXI_01', 'Paving Block', '0', '0', NULL, '-6.9664722222222', '110.43455555556', '42', '20190302181125Screenshot_38.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '8 X 22 Meter', '', NULL, 1, 1, '2019-03-02 18:11:25', 1);
INSERT INTO `menara` VALUES (41, 1, 13, 123, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_01', 'Concrete', '0', '0', NULL, '-6.9914444444444', '110.42197222222', '32', '20190302182600Screenshot_39.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan Kantor STIE dan sisi sebelah timur kantor STIE', '6 x 6 meter', '', NULL, 1, 1, '2019-03-02 18:26:00', 3);
INSERT INTO `menara` VALUES (42, 1, 13, 124, 1, 'TELKOMSEL ,FLEXI dan NTS', 'TOWER EXISTING TELKOMSEL_01', 'Paving Block', '0', '0', NULL, '-7.0019444444444', '110.42625', '42', '20190302182746Screenshot_40.png', 'PT Telkom dan PT Natrindo Telepon Seluler', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', '8 x 10 meter', '', NULL, 1, 1, '2019-03-02 18:27:46', 1);
INSERT INTO `menara` VALUES (43, 1, 13, 121, 2, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_01', 'Concrete', '0', '0', NULL, '-6.9947222222222', '110.43216666667', '10', '20190302183029Screenshot_41.png', '', 'PT Telekomunikasi Selular', 'Tower HCPT ini berada di atas area pertokoan bangkong, sisi sebelah utara ruko, sisi sebelah barat jalan lokal dan sisi sebelah selatan ruko, sisi sebelah timur ruko', 'Area Ruko Bangkong', '', NULL, 1, 1, '2019-03-02 18:30:29', 4);
INSERT INTO `menara` VALUES (44, 1, 0, 0, 2, 'HCPT', 'TOWER EXISTING HCPT_02', 'Concrete', '0', '0', NULL, '-7.0041666666667', '110.42855555556', '3', '20190302183309Screenshot_42.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan rumah penduduk, sisi sebelah timur jalan lokal', 'Area Rumah Penduduk', '', NULL, 1, 1, '2019-03-02 18:33:09', 1);
INSERT INTO `menara` VALUES (45, 1, 13, 0, 2, 'HCPT', 'TOWER EXISTING HCPT_02', 'Concrete', '0', '0', NULL, '-6.9969444444444', '110.41680555556', '3', '20190302183714Screenshot_43.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara, sisi sebelah barat rumah penduduk dan sisi sebelah selatan jalan lokal, sisi sebelah timur rumah penduduk', 'Area Arindo Jaya Mandiri', '', NULL, 1, 1, '2019-03-02 18:37:14', 1);
INSERT INTO `menara` VALUES (46, 1, 13, 123, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_01', 'Concrete', '0', '0', NULL, '-6.9914444444444', '110.42197222222', '32', '20190303100645Screenshot_44.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan Kantor STIE dan sisi sebelah timur kantor STIE', '6 x 6 meter', '', NULL, 1, 1, '2019-03-03 10:06:45', 3);
INSERT INTO `menara` VALUES (47, 1, 13, 124, 1, 'TELKOMSEL ,FLEXI dan NTS', 'TOWER EXISTING TELKOMSEL_01', 'Paving Block', '0', '0', NULL, '-7.0019444444444', '110.42625', '42', '20190303100909Screenshot_45.png', 'PT Telkom dan PT Natrindo Telepon Seluler', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', '8 x 10 meter', '', NULL, 1, 1, '2019-03-03 10:09:09', 1);
INSERT INTO `menara` VALUES (48, 1, 13, 121, 2, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_01', 'Concrete', '0', '0', NULL, '-6.9947222222222', '110.43216666667', '10', '20190303101053Screenshot_46.png', '', 'PT Telekomunikasi Selular', 'Tower HCPT ini berada di atas area pertokoan bangkong, sisi sebelah utara ruko, sisi sebelah barat jalan lokal dan sisi sebelah selatan ruko, sisi sebelah timur ruko', 'Area Ruko Bangkong', '', NULL, 1, 1, '2019-03-03 10:10:53', 4);
INSERT INTO `menara` VALUES (49, 1, 13, 121, 2, 'HCPT', 'TOWER EXISTING HCPT_02', 'Concrete', '0', '0', NULL, '-7.0041666666667', '110.42855555556', '3', '20190303101342Screenshot_47.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan rumah penduduk, sisi sebelah timur jalan lokal', 'Area Rumah Penduduk', '', NULL, 1, 1, '2019-03-03 10:13:42', 1);
INSERT INTO `menara` VALUES (50, 1, 13, 120, 2, 'HCPT', 'TOWER EXISTING HCPT_02', 'Concrete', '0', '0', NULL, '-6.9969444444444', '110.41680555556', '3', '20190303101513Screenshot_48.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara, sisi sebelah barat rumah penduduk dan sisi sebelah selatan jalan lokal, sisi sebelah timur rumah penduduk', 'Area Arindo Jaya Mandiri', '', NULL, 1, 1, '2019-03-03 10:15:13', 4);
INSERT INTO `menara` VALUES (51, 1, 13, 121, 1, 'HCPT', 'TOWER EXISTING HCPT_02', 'Concrete', '0', '0', NULL, '-6.9951944444444', '110.43283333333', '10', '20190303101617Screenshot_49.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di atas area pertokoan bangkong, sisi sebelah utara jalan lokal, sisi sebelah barat ruko dan sisi sebelah selatan ruko, sisi sebelah timur ruko', 'Area Ruko bangkong', '', NULL, 1, 1, '2019-03-03 10:16:17', 1);
INSERT INTO `menara` VALUES (52, 1, 13, 115, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_03', 'Macadam', '0', '0', NULL, '-6.9856944444444', '110.40883333333', '52', '20190303101833Screenshot_50.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara Apotek, sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', '10 X 12 Meter', '', NULL, 1, 1, '2019-03-03 10:18:33', 1);
INSERT INTO `menara` VALUES (53, 1, 13, 123, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_03', 'Concrete', '0', '0', NULL, '-6.9951111111111', '110.41261111111', '52', '20190303101936Screenshot_51.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat rumah penduduk, sisi sebelah selatan rumah penduduk dan sisi sebelah timur jalan lokal', '8 X 9 Meter', '', NULL, 1, 1, '2019-03-03 10:19:36', 1);
INSERT INTO `menara` VALUES (54, 1, 13, 124, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_03', 'Aspalth', '0', '0', NULL, '-7.0003333333333', '110.42819444444', '62', '20190303102043Screenshot_52.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat Kantor Muhamadiyah, sisi sebelah selatan lahan parkir dan sisi sebelah timur jalan lokal', '4 X 4 Meter', '', NULL, 1, 1, '2019-03-03 10:20:43', 1);
INSERT INTO `menara` VALUES (55, 1, 13, 121, 2, 'INDOSAT', 'TOWER EXISTING INDOSAT_03', 'Concrete', '0', '0', NULL, '-6.9946111111111', '110.43258333333', '10', '20190303102202Screenshot_53.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di atas area pertokoan bangkong, sisi sebelah utara jalan lokal, sisi sebelah barat ruko dan sisi sebelah selatan ruko, sisi sebelah timur ruko ', 'Area Ruko Bangkong', '', NULL, 1, 1, '2019-03-03 10:22:02', 4);
INSERT INTO `menara` VALUES (56, 1, 13, 121, 1, 'NTS', 'TOWER EXISTING NTS_04', 'Concrete', '0', '0', NULL, '-6.9961388888889', '110.43477777778', '52', '20190303102515Screenshot_54.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal industri, sisi sebelah timur jalan lokal', '9 X 10 Meter', '643.3/2306/2008', NULL, 1, 1, '2019-03-03 10:25:15', 1);
INSERT INTO `menara` VALUES (57, 1, 13, 123, 6, 'NTS', 'TOWER EXISTING NTS_04', 'Concrete', '0', '0', NULL, '-6.9952222222222', '110.41383333333', '22', '20190303102732Screenshot_55.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area rumah penduduk, sisi sebelah utara STIE dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal , sisi sebelah timur jalan lokal', '6 X 6 Meter', '', NULL, 1, 1, '2019-03-03 10:27:32', 1);
INSERT INTO `menara` VALUES (58, 1, 13, 121, 1, 'ESIA', 'TOWER EXISTING BAKRIE TELECOM_05', 'Paving Block', '0', '0', NULL, '-6.9952222222222', '110.41383333333', '42', '20190303102923Screenshot_56.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area rumah penduduk, sisi sebelah utara STIE dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal , sisi sebelah timur jalan lokal', 'Area Grapari Esia', '', NULL, 1, 1, '2019-03-03 10:29:23', 1);
INSERT INTO `menara` VALUES (59, 1, 13, 121, 1, 'ESIA', 'TOWER EXISTING BAKRIE TELECOM_05', 'Paving Block', '0', '0', NULL, '-6.9964166666667', '110.43208333333', '42', '20190303103226Screenshot_57.png', '', 'PT Bakrie Telecom', 'Tower BAKRIE TELECOM ini berada di area rumah penduduk dekat perkantoran, sisi sebelah utara kantor, sisi sebelah barat jalan raya, sisi sebelah selatan Bank Jateng dan sisi sebelah timur rumah penduduk', 'Area Grapari Esia', '', NULL, 1, 1, '2019-03-03 10:32:26', 4);
INSERT INTO `menara` VALUES (60, 1, 13, 115, 1, 'XL', 'TOWER EXISTING XL AXIATA_06', 'Macadam', '0', '0', NULL, '-6.9856944444444', '110.40783333333', '72', '20190303103413Screenshot_58.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area rumah penduduk dekat perkantoran, sisi sebelah utara jalan lokal, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur rumah kantor TNI', '6 X 10 Meter', '', NULL, 1, 1, '2019-03-03 10:34:13', 1);
INSERT INTO `menara` VALUES (61, 1, 13, 124, 1, 'XL', 'TOWER EXISTING XL AXIATA_06', 'Aspalth', '0', '0', NULL, '-7.0005277777778', '110.43027777778', '22', '20190303103609Screenshot_59.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area pemukiman penduduk dekat, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan rumah penduduk dan sisi sebelah timur rumah penduduk', '6 x 6 Meter', '', NULL, 1, 1, '2019-03-03 10:36:09', 1);
INSERT INTO `menara` VALUES (62, 1, 13, 121, 2, 'XL', 'TOWER EXISTING XL AXIATA_06', 'Concrete', '0', '0', NULL, '-6.9944444444444', '110.43119444444', '22', '20190303103718Screenshot_60.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di atas pertokoan, sisi sebelah utara jalan lokal, sisi sebelah barat ruko, sisi sebelah selatan ruko dan sisi sebelah timur ruko', 'Area Pertokoan', '', NULL, 1, 1, '2019-03-03 10:37:18', 4);
INSERT INTO `menara` VALUES (63, 1, 13, 115, 1, 'ESIA ,SMART dan TELKOMSEL', 'TOWER POLTABES_07', 'aspalth', '0', '0', NULL, '-6.9928055555556', '110.40555555556', '72', '20190303104253Screenshot_61.png', 'PT Bakrie Telecom, PT Primasel dan PT Telekomunikasi  selular', 'Menara Poltabes', 'Menara Poltabes berada di area lahan kepolisian dekat dengan rumah dinas, sisi sebelah utara kantor kepolisian, sisi sebelah barat rumah dinas, sisi sebelah selatan jalan lokal dan sisi sebelah timur lahan parkir', 'area lahan poltabes semarang', '', NULL, 1, 1, '2019-03-03 10:42:53', 6);
INSERT INTO `menara` VALUES (64, 1, 10, 71, 1, 'HCPT', 'TOWER EXISTING HCPT_01', 'Macadam', '0', '0', NULL, '-7.0232222222222', '110.33466666667', '72', '20190303104802Screenshot_62.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area pepohonan dekat rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat lahan kosong, sisi sebelah selatan pepohonan dan sisi sebelah timur jalan lokal', '10 X 10  Meter', '', NULL, 1, 1, '2019-03-03 10:48:02', 1);
INSERT INTO `menara` VALUES (65, 1, 10, 71, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_01', 'Macadam', '0', '0', NULL, '-7.0235555555556', '110.335', '72', '20190303105105Screenshot_63.png', '', 'PT Indonesian Satelindo', 'Tower HCPT ini berada di area pepohonan dekat rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat lahan kosong, sisi sebelah selatan pepohonan dan sisi sebelah timur jalan lokal', '10 X 10  Meter', '', NULL, 1, 1, '2019-03-03 10:51:05', 1);
INSERT INTO `menara` VALUES (66, 1, 10, 68, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_02', 'Paving Block', '0', '0', NULL, '-7.0385277777778', '110.30066666667', '72', '20190303105255Screenshot_64.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area pepohonan, sisi sebelah utara dan sisi sebelah barat pepohonan, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', '12 X 16  Meter', '', NULL, 1, 1, '2019-03-03 10:52:55', 1);
INSERT INTO `menara` VALUES (67, 1, 10, 74, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_02', 'Paving Block', '0', '0', NULL, '-7.0792222222222', '110.309', '72', '20190303105416Screenshot_65.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area pepohonan dekat rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan rumah penduduk dan sisi sebelah timur pepohonan', '12 X 10  Meter', '', NULL, 1, 1, '2019-03-03 10:54:16', 1);
INSERT INTO `menara` VALUES (68, 1, 10, 71, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_02', 'Paving Block', '0', '0', NULL, '-7.0396111111111', '110.32986111111', '72', '20190303105624Screenshot_66.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di lahan kosong, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur lahan kosong', '12 X 16  Meter', '', NULL, 1, 1, '2019-03-03 10:56:24', 1);
INSERT INTO `menara` VALUES (69, 1, 10, 71, 1, 'TELKOMSEL dan FLEXI', 'TOWER EXISTING TELKOMSEL_01', 'Macadam', '0', '0', NULL, '-7.0281666666667', '110.33358333333', '72', '20190303105732Screenshot_67.png', 'PT Telekomunikasi Indonesia', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di lahan kosong, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan lahan kosong dan sisi sebelah timur jalan lokal', '16 X 12  Meter', '', NULL, 1, 1, '2019-03-03 10:57:32', 1);
INSERT INTO `menara` VALUES (70, 1, 10, 68, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_01', 'Paving Block', '0', '0', NULL, '-7.0419444444444', '110.33677777778', '72', '20190303105838Screenshot_68.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area pepohonan, sisi sebelah utara jalan lokal, sisi sebelah barat dan sisi sebelah selatan pepohonan, sisi sebelah timur musholla', '14 X 12  Meter', '', NULL, 1, 1, '2019-03-03 10:58:38', 1);
INSERT INTO `menara` VALUES (71, 1, 10, 70, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_01', 'Paving Block', '0', '0', NULL, '-7.0517777777778', '110.31594444444', '72', '20190303105941Screenshot_69.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal, sisi sebelah timur rumah penduduk', '14 X 14  Meter', '', NULL, 1, 1, '2019-03-03 10:59:41', 1);
INSERT INTO `menara` VALUES (72, 1, 10, 67, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_01', 'Macadam', '0', '0', NULL, '-7.0950833333333', '110.34311111111', '72', '20190303110055Screenshot_70.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area pepohonan, sisi sebelah utara jalan raya, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur pepohonan', '13 X 10  Meter', '', NULL, 1, 1, '2019-03-03 11:00:55', 1);
INSERT INTO `menara` VALUES (73, 1, 10, 64, 1, 'TELKOMSEL dan FLEXI', 'TOWER EXISTING TELKOMSEL_01', 'Paving Block', '0', '0', NULL, '-7.0890833333333', '110.30797222222', '72', '20190303110315Screenshot_71.png', 'PT Telkom', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di lahan kosong, sisi sebelah utara rumah penduduk, sisi sebelah barat dan sisi sebelah selatan lahan kosong, sisi sebelah timur jalan lokal', '14 X 14  Meter', '', NULL, 1, 1, '2019-03-03 11:03:15', 1);
INSERT INTO `menara` VALUES (74, 1, 10, 71, 1, 'XL', 'TOWER EXISTING XL AXIATA_01', 'Soil', '0', '0', NULL, '-7.0328333333333', '110.33325', '72', '20190303110433Screenshot_72.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area lahan kosong, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan lahan kosong dan sisi sebelah timur jalan lokal', '16 X 16  Meter', '', NULL, 1, 1, '2019-03-03 11:04:33', 1);
INSERT INTO `menara` VALUES (75, 1, 10, 69, 1, 'XL, HCPT dan CERIA', 'TOWER EXISTING XL AXIATA_01', 'Concrete', '0', '0', NULL, '-7.0568888888889', '110.31363888889', '72', '20190303111317Screenshot_73.png', 'PT Hutchison CP Telecomunication dan PT Sampoerna Telekomunikasi Indonesia', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area pepohonan, sisi sebelah utara jalan lokal, sisi sebelah barat rumah penduduk, sisi sebelah selatan pepohonan dan sisi sebelah timur rumah penduduk', '8 X 10  Meter', '', NULL, 1, 1, '2019-03-03 11:13:17', 1);
INSERT INTO `menara` VALUES (76, 1, 10, 74, 1, 'XL', 'TOWER EXISTING XL AXIATA_01', 'Aspalth', '0', '0', NULL, '-7.0882777777778', '110.31338888889', '52', '20190303111512Screenshot_74.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area pepohonan dekat rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat pepohonan, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', '14 X 12  Meter', '', NULL, 1, 1, '2019-03-03 11:15:12', 1);
INSERT INTO `menara` VALUES (77, 1, 10, 68, 1, 'ESIA', 'TOWER EXISTING BAKRIE TELECOM_01', 'Macadam', '0', '0', NULL, '-7.0413888888889', '110.33702777778', '52', '20190303111718Screenshot_75.png', '', 'PT Bakrie Telecom', 'Tower BAKRIE TELECOM ini berada di area pepohonan sisi sebelah utara dan sisi sebelah barat pepohonan, sisi sebelah selatan makam dan sisi sebelah timur jalan lokal', '10 X 12  Meter', '', NULL, 1, 1, '2019-03-03 11:17:18', 1);
INSERT INTO `menara` VALUES (78, 1, 10, 70, 1, 'FLEXI dan ESIA', 'TOWER EXISTING INDONUSA_01', 'Aspalth', '0', '0', NULL, '-7.0514166666667', '110.31561111111', '72', '20190303111826Screenshot_76.png', 'PT Telkom dan PT Bakrie Telecom', 'PT Indonusa', 'Tower INDONUSA ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan dan sisi sebelah timur jalan lokal', '16 X 8  Meter', '', NULL, 1, 1, '2019-03-03 11:18:26', 1);
INSERT INTO `menara` VALUES (79, 1, 10, 70, 1, 'NTS', 'TOWER EXISTING NTS_01', 'Paving Block', '0', '0', NULL, '-7.0491111111111', '110.31583333333', '72', '20190303151230Screenshot_77.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area pepohonan, sisi sebelah utara sawah, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur pepohonan', '12 X 12  Meter', '', NULL, 1, 1, '2019-03-03 15:12:30', 1);
INSERT INTO `menara` VALUES (80, 1, 10, 68, 1, 'FLEXI', 'TOWER EXISTING FLEXI_01', 'Aspalth', '0', '0', NULL, '-7.0415555555556', '110.33411111111', '52', '20190303151357Screenshot_78.png', '', 'PT Telkom', 'Tower TELKOM ini berada di area pepohonan, sisi sebelah utara dan sisi sebelah barat pepohonan, sisi sebelah selatan jalan lokal dan sisi sebelah timur pepohonan', 'STO Telkom', '', NULL, 1, 1, '2019-03-03 15:13:57', 1);
INSERT INTO `menara` VALUES (81, 1, 7, 28, 1, 'FLEXI', 'TOWER EXISTING TELKOM FLEXI_01', 'Paving Block', '0', '0', NULL, '-6.9602222222222', '110.44752777778', '72', '20190303155044Screenshot_79.png', '', 'PT Telekomunikasi Indonesia', 'Tower TELKOM FLEXI ini berada di area rumah penduduk, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan rumah penduduk dan sisi sebelah timur jalan lokal', '8 X 16 Meter', '', NULL, 1, 1, '2019-03-03 15:50:44', 1);
INSERT INTO `menara` VALUES (82, 1, 7, 28, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_01', 'Paving Block', '0', '0', NULL, '-6.96', '110.44775', '72', '20190303155514Screenshot_80.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '14 X 10 Meter', '', NULL, 1, 1, '2019-03-03 15:55:14', 1);
INSERT INTO `menara` VALUES (83, 1, 7, 30, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_02', 'Aspalth', '0', '0', NULL, '-6.9931388888889', '110.44136111111', '42', '20190611075918Screenshot_1.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', '6 X 5 Meter', '', NULL, 1, 1, '2019-06-11 07:59:18', 1);
INSERT INTO `menara` VALUES (84, 1, 7, 30, 1, 'FREN', 'TOWER EXISTING MOBILE 8_01', 'Paving Block', '0', '0', NULL, '-6.987555555555556', '110.44258333333', '52', '20190611081046Screenshot_2.png', '', 'PT Mobile 8', 'Tower MOBILE 8 ini berada di area rumah penduduk, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan rumah penduduk, sisi sebelah timur jalan lokal', '12 X 12 Meter', '', NULL, 1, 1, '2019-06-11 08:10:46', 1);
INSERT INTO `menara` VALUES (85, 1, 7, 30, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_01', 'Paving Block', '0', '0', NULL, '-6.9877222222222', '110.44180555556', '52', '20190611082517Screenshot_4.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat pepohonan, sisi sebelah selatan jalan lokal dan sisi sebelah timur industri', '12 X 10 Meter', '', NULL, 1, 1, '2019-06-11 08:25:17', 1);
INSERT INTO `menara` VALUES (86, 0, 7, 27, 2, 'INDOSAT', 'TOWER EXISTING INDOSAT_02', 'Concrete', '0', '0', NULL, '-7.0007777777778', '110.44588888889', '5', '20190715131747Screenshot_3.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area Showroom, sisi sebelah utara jalan raya, sisi sebelah barat industri, sisi sebelah selatan dan sisi sebelah timur Showroom', 'Area Showroom Daihatsu', '', NULL, 1, 1, '2019-07-15 13:17:47', 1);
INSERT INTO `menara` VALUES (87, 0, 7, 32, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_03', 'Macadam', '0', '0', NULL, '-6.9835555555556', '110.45083333333', '52', '20190716080413Screenshot_3.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area lahan kosong, sisi sebelah utara jalan jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur lahan kosong', '10 X 8 Meter', '', NULL, 1, 1, '2019-07-16 08:04:13', 1);
INSERT INTO `menara` VALUES (88, 1, 7, 29, 1, 'HCPT', 'TOWER EXISTING HCPT_01', 'Paving Block', '0', '0', NULL, '-6.9895277777778', '110.44627777778', '42', '20190716081031Screenshot_2.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara lahan kosong, sisi sebelah barat dan sisi sebelah selatan rumah penduduk, sisi sebelah timur jalan lokal', '8 X 8 Meter', '', NULL, 1, 1, '2019-07-16 08:10:31', 1);
INSERT INTO `menara` VALUES (89, 1, 7, 33, 1, 'HCPT dan NTS', 'TOWER EXISTING HCPT_02', 'Paving Block', '0', '0', NULL, '-6.9562222222222', '110.44186111111', '32', '20190716081234Screenshot_4.png', 'PT Natrindo Telephone Seluler', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal, sisi sebelah timur rumah penduduk', '10 X 6 Meter', '', NULL, 1, 1, '2019-07-16 08:12:34', 1);
INSERT INTO `menara` VALUES (90, 1, 7, 28, 1, 'HCPT dan INDOSAT', 'TOWER EXISTING HCPT_03', 'Macadam', '0', '0', NULL, '-6.9675', '110.44622222222', '72', '20190716081813Screenshot_5.png', 'PT Indonesian Satelindo', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '9 X 8 Meter', '', NULL, 1, 1, '2019-07-16 08:18:13', 1);
INSERT INTO `menara` VALUES (91, 1, 7, 27, 2, 'HCPT dan XL', 'TOWER EXISTING HCPT_04', 'Concrete', '0', '0', NULL, '-7.0036944444444', '110.45025', '10', '20190716082023Screenshot_6.png', 'PT Xl Axiata', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area pertokoan, sisi sebelah utara jalan raya, sisi sebelah barat jalan lokal, sisi sebelah selatan menara NTS dan sisi sebelah timur ruko', 'Toko Anugerah Textil', '', NULL, 1, 1, '2019-07-16 08:20:23', 5);
INSERT INTO `menara` VALUES (92, 1, 7, 29, 1, 'NTS', 'TOWER EXISTING NTS_01', 'Paving Block', '0', '0', NULL, '-6.9901944444444', '110.44533333333', '42', '20190716083117Screenshot_7.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat rumah penduduk, sisi sebelah selatan lahan kosong, sisi sebelah timur rumah penduduk', '10 X 10 Meter', '643.3/66/BPPT/2009', NULL, 1, 1, '2019-07-16 08:31:17', 1);
INSERT INTO `menara` VALUES (93, 1, 7, 28, 1, 'NTS', 'TOWER EXISTING NTS_02', 'Macadam', '0', '0', NULL, '-6.9659166666667', '110.44486111111', '72', '20190716083312Screenshot_8.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan rumah penduduk, sisi sebelah timur lahan kosong', '10 X 8 Meter', '', NULL, 1, 1, '2019-07-16 08:33:12', 1);
INSERT INTO `menara` VALUES (94, 1, 7, 27, 2, 'NTS', 'TOWER EXISTING NTS_03', 'Concrete', '0', '0', NULL, '-7.0037222222222', '110.45025', '10', '20190716083614Screenshot_9.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area pertokoan, sisi sebelah utara menara HCPT, sisi sebelah barat jalan lokal, sisi sebelah selatan gudang, sisi sebelah timur ruko', 'Area Toko Anugerah Textil', '', NULL, 1, 1, '2019-07-16 08:36:14', 4);
INSERT INTO `menara` VALUES (95, 1, 7, 30, 1, 'SMART', 'TOWER EXISTING RADIO_01', 'Paving Block', '0', '0', NULL, '-6.9864166666667', '110.44802777778', '72', '20190716083738Screenshot_10.png', 'PT Indoprima Mikroselindo', 'PT Radio Pop FM', 'Tower RADIO ini berada di area rumah penduduk, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan rumah penduduk, sisi sebelah timur jalan lokal', 'Radio Pop FM', '', NULL, 1, 1, '2019-07-16 08:37:38', 1);
INSERT INTO `menara` VALUES (96, 1, 7, 27, 1, 'XL dan HCPT', 'TOWER EXISTING XL AXIATA_01', 'Aspalth', '0', '0', NULL, '-6.9978888888889', '110.44777777778', '72', '20190716084952Screenshot_11.png', 'PT Hutchison CP Telecomunication', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area rumah penduduk dekat lahan kosong, sisi sebelah utara dan sisi sebelah barat lahan kosong, sisi sebelah selatan jalan lokal, sisi sebelah timur rumah penduduk', '10 X 10 Meter', '', NULL, 1, 1, '2019-07-16 08:49:52', 1);
INSERT INTO `menara` VALUES (97, 1, 7, 28, 1, 'SMART', 'TOWER EXISTING PT DIAN SWASTATIKA_01', 'Macadam', '0', '0', NULL, '-6.9665555555556', '110.44666666667', '52', '20190716085142Screenshot_12.png', '', 'PT Dian Swastatika', 'Tower PT DIAN SWASTATIKA ini berada di area lahan kosong, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur lahan kosong', '10 X 8 Meter', '', NULL, 1, 1, '2019-07-16 08:51:42', 1);
INSERT INTO `menara` VALUES (98, 1, 7, 27, 1, 'ESIA, SMART, TSEL,FLEXI dan INDOSAT', 'TOWER EXISTING IT_01', 'Macadam', '0', '0', NULL, '-7.0022777777778', '110.44655555556', '72', '20190716085650Screenshot_13.png', 'PT Bakrie Telecom, PT Indoprima Mikroselindo, PT                                                    Telekomunikasi Selular, PT Telkom Flexi dan PT Indonesian                                                     Satelindo', 'PT Indonesian Tower', 'Tower IT ini berada di area rumah penduduk, sisi sebelah utara pepohonan, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '10 X 14 Meter', '', NULL, 1, 1, '2019-07-16 08:56:50', 1);
INSERT INTO `menara` VALUES (99, 1, 8, 43, 1, 'HCPT', 'TOWER EXISTING HCPT_01', 'Paving Block', '0', '0', NULL, '-7.9758611111111', '110.49711111111', '52', '20190716092423Screenshot_14.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area pepohonan dekat rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat rumah penduduk, sisi sebelah selatan dan sisi sebelah timur pepohonan', '8 X 8  Meter', '', NULL, 1, 1, '2019-07-16 09:24:23', 1);
INSERT INTO `menara` VALUES (100, 1, 8, 41, 1, 'HCPT, XL dan INDOSAT', 'TOWER EXISTING HCPT_02', 'Concrete', '0', '0', NULL, '-7.9670833333333', '110.46116666667', '52', '20190716092803Screenshot_15.png', 'PT Xl Axiata dan PT Indonesian Satelindo', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area lahan kosong dekat rumah penduduk, sisi sebelah utara lahan kosong, sisi sebelah barat rumah penduduk, sisi sebelah selatan lahan kosong dan sisi sebelah timur jalan lokal', '8 X 10  Meter', '', NULL, 1, 1, '2019-07-16 09:28:03', 1);
INSERT INTO `menara` VALUES (101, 1, 8, 45, 1, 'HCPTdan NTS', 'TOWER EXISTING HCPT_03', 'Aspalth', '0', '0', NULL, '-6.9515', '110.46677777778', '52', '20190716093018Screenshot_16.png', 'PT Natrindo Telephone Seluler', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area industri, sisi sebelah utara industri, sisi sebelah barat kantor kelurahan terboyo wetan, sisi sebelah selatan jalan lokal dan sisi sebelah timur kantor', '8 X 18  Meter', '', NULL, 1, 1, '2019-07-16 09:30:18', 1);
INSERT INTO `menara` VALUES (102, 1, 8, 44, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_01', 'Paving Block', '0', '0', NULL, '-6.9558888888889', '110.45655555556', '72', '20190716093302Screenshot_17.png', '', 'PT Indonesia Satelindo', 'Tower INDOSAT ini berada di area lahan kosong, sisi sebelah utara lahan kosong, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur lahan kosong', '10 X 8  Meter', '', NULL, 1, 1, '2019-07-16 09:33:02', 1);
INSERT INTO `menara` VALUES (103, 1, 8, 45, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_02', 'Aspalth', '0', '0', NULL, '-6.951', '110.46522222222', '72', '20190716093503Screenshot_18.png', '', 'PT Indonesia Satelindo', 'Tower INDOSAT ini berada di area lahan kosong dekat rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat dan sisi sebelah selatan lahan kosong, sisi sebelah timur rumah penduduk', '10 X 12  Meter', '', NULL, 1, 1, '2019-07-16 09:35:03', 1);
INSERT INTO `menara` VALUES (104, 1, 8, 38, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_03', 'Aspalth', '0', '0', NULL, '-6.9648611111111', '110.47558333333', '72', '20190716093614Screenshot_19.png', '', 'PT Indonesia Satelindo', 'Tower INDOSAT ini berada di area pepohonan dekat rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat rumah penduduk, sisi sebelah selatan dan sisi sebelah timur pepohonan', '8 X 12  Meter', '', NULL, 1, 1, '2019-07-16 09:36:14', 1);
INSERT INTO `menara` VALUES (105, 1, 8, 38, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_04', 'Aspalth', '0', '0', NULL, '-6.9688611111111', '110.48113888889', '72', '20190716093732Screenshot_20.png', '', 'PT Indonesia Satelindo', 'Tower INDOSAT ini berada di area pepohonan dekat rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat menara telkomsel, sisi sebelah selatan pepohonan dan sisi sebelah timur jalan lokal', '10 X 12  Meter', '', NULL, 1, 1, '2019-07-16 09:37:32', 1);
INSERT INTO `menara` VALUES (106, 1, 8, 41, 1, 'CERIA', 'TOWER EXISTING MOBILE SELULER INDONESIA_01', 'Macadam', '0', '0', NULL, '-6.9620555555556', '110.45744444444', '72', '20190716094255Screenshot_21.png', 'PT Sampoerna Telekomunikasi Indonesia', 'PT Mobile Seluler Indonesia', 'Tower MOBILE SELULER INDONESIA ini berada di area industri, sisi sebelah utara dan sisi sebelah barat industri, sisi sebelah selatan jalan lokal dan sisi sebelah timur industri', '6 X 24  Meter', '', NULL, 1, 1, '2019-07-16 09:42:55', 1);
INSERT INTO `menara` VALUES (107, 1, 8, 41, 1, 'NTS', 'TOWER EXISTING NTS_01', 'Macadam', '0', '0', NULL, '-6.9668055555556', '110.46105555556', '72', '20190716094419Screenshot_22.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area lahan kosong, sisi sebelah utara lahan kosong, sisi sebelah barat jalan lokal, sisi sebelah selatan tambak dan sisi sebelah timur lahan kosong', '12 X 10  Meter', '', NULL, 1, 1, '2019-07-16 09:44:19', 1);
INSERT INTO `menara` VALUES (108, 1, 8, 37, 1, 'SMART dan ESIA', 'TOWER EXISTING PT DIAN SWASTATIKA_01', 'Concrete', '0', '0', NULL, '-6.9683333333333', '110.47022222222', '52', '20190716094553Screenshot_23.png', 'PT Indoprima Mikroselindo danPT Bakrie Telecom', 'PT Dian Swastatika', 'Tower DIAN SWASTATIKA ini berada di area pepohonan dekat rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat rumah penduduk, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '14 X 8  Meter', '', NULL, 1, 1, '2019-07-16 09:45:53', 1);
INSERT INTO `menara` VALUES (109, 1, 8, 39, 5, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_01', 'Paving Block', '0', '0', NULL, '-6.9715277777778', '110.4935', '52', '20190716094846Screenshot_24.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area lahan kosong dekat rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat lahan kosong, sisi sebelah selatan industri dan sisi sebelah timur jalan lokal', '6 X 6  Meter', '', NULL, 1, 1, '2019-07-16 09:48:46', 1);
INSERT INTO `menara` VALUES (110, 1, 8, 34, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_02', 'Paving Block', '0', '0', NULL, '-6.9711666666667', '110.46405555556', '72', '20190716095124Screenshot_25.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk dekat makam, sisi sebelah utara dan sisi sebelah barat makam, sisi sebelah selatan rumah penduduk dan sisi sebelah timur jalan lokal', '12 X 10  Meter', '', NULL, 1, 1, '2019-07-16 09:51:24', 1);
INSERT INTO `menara` VALUES (111, 1, 8, 44, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_03', 'Paving Block', '0', '0', NULL, '-6.9570277777778', '110.46105555556', '52', '20190716095253Screenshot_26.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area lahan kosong, sisi sebelah utara menara telkom, sisi sebelah barat jalan lokal, sisi sebelah selatan industri dan sisi sebelah timur lahan kosong', 'STO Telkom', '', NULL, 1, 1, '2019-07-16 09:52:53', 1);
INSERT INTO `menara` VALUES (112, 1, 8, 45, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_04', 'Aspalth', '0', '0', NULL, '-6.95125', '110.47397222222', '52', '20190716100011Screenshot_27.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area industri, sisi sebelah utara jalan lokal, sisi sebelah barat lahan kosong, sisi sebelah selatan dan sisi sebelah timur industri', '14 X 10 Meter', '', NULL, 1, 1, '2019-07-16 10:00:11', 4);
INSERT INTO `menara` VALUES (113, 1, 8, 38, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_05', 'Aspalth', '0', '0', NULL, '-6.9495277777778', '110.48869444444', '72', '20190716100316Screenshot_28.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area industri, sisi sebelah utara lahan kosong, sisi sebelah barat dan sisi sebelah selatan industri, sisi sebelah timur jalan lokal', '14 X 12 Meter', '', NULL, 1, 1, '2019-07-16 10:03:16', 1);
INSERT INTO `menara` VALUES (114, 0, 8, 38, 1, 'TELKOMSEL dan FLEXI', 'TOWER EXISTING TELKOMSEL_06', 'Concrete', '0', '0', NULL, '-6.9689166666667', '110.48111111111', '72', '20190716103744Screenshot_29.png', 'PT Telekom Flexi', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area pepohonan, sisi sebelah utara jalan lokal, sisi sebelah barat dan sisi sebelah selatan pepohonan, sisi sebelah timur menara telkomsel', '10 X 12 Meter', '', NULL, 1, 1, '2019-07-16 10:37:44', 1);
INSERT INTO `menara` VALUES (115, 1, 8, 38, 1, 'ESIA dan FREN', 'TOWER EXISTING TBG_01', 'Paving Block', '0', '0', NULL, '-6.9575', '110.46944444444', '72', '20190716105446Screenshot_30.png', 'PT Bakrie Telecom dan PT Mobile 8', 'PT Tower Bersama Group', 'Tower TBG ini berada di area rumah penduduk, sisi sebelah utara laha kosong, sisi sebelah barat rumah penduduk, sisi sebelah selatanjalan lokal dan sisi sebelah timur rumah penduduk', '8 X 12  Meter', '', NULL, 1, 1, '2019-07-16 10:54:46', 1);
INSERT INTO `menara` VALUES (116, 1, 8, 41, 1, 'FLEXI', 'TOWER EXISTING TELKOM FLEXI_01', 'Aspalth', '0', '0', NULL, '-6.9569166666667', '110.46105555556', '72', '20190716110300Screenshot_31.png', '', 'PT Telekomunikasi Indonesia', 'Tower TELKOM FLEXI ini berada di area lahan kosong, sisi sebelah utara kantor STO, sisi sebelah barat jalan lokal, sisi sebelah selatan menara telkomsel dan sisi sebelah timur lahan kosong', 'STO Telkom', '', NULL, 1, 1, '2019-07-16 11:03:00', 1);
INSERT INTO `menara` VALUES (117, 0, 8, 41, 1, 'ESIA', 'TOWER EXISTING BAKRIE TELECOM_01', 'Soil', '0', '0', NULL, '-6.9619722222222', '110.45077777778', '72', '20190716113914Screenshot_32.png', '', 'PT Bakrie Telecom', 'Tower BAKRIE TELECOM ini berada di area pepohonan, sisi sebelah utara pepohonan, sisi sebelah barat bengkel, sisi sebelah selatan jalan lokal dan sisi sebelah timur pepohonan', '12 X 10 Meter', '', NULL, 1, 1, '2019-07-16 11:39:14', 1);
INSERT INTO `menara` VALUES (118, 1, 8, 38, 1, 'XL', 'TOWER EXISTING XL AXIATA_01', 'Paving lock', '0', '0', NULL, '-6.9580277777778', '110.46880555556', '72', '20190716114113Screenshot_34.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area perindustrian, sisi sebelah utara jalan lokal, sisi sebelah barat dan sisi sebelah selatan industri, sisi sebelah timur lahan parkir', '12 X 10 Meter', '', NULL, 1, 1, '2019-07-16 11:41:13', 1);
INSERT INTO `menara` VALUES (119, 1, 8, 38, 1, 'XL', 'TOWER EXISTING XL AXIATA_02', 'Paving lock', '0', '0', NULL, '-6.9693333333333', '110.48108333333', '72', '20190716123728Screenshot_35.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area pepohonan, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur pepohonan', '12 X 10 Meter', '', NULL, 1, 1, '2019-07-16 12:37:28', 1);
INSERT INTO `menara` VALUES (120, 1, 9, 62, 1, 'HCPT', 'TOWER EXISTING HCPT_01', 'Macadam', '0', '0', NULL, '-7.1036388888889', '110.38908333333', '42', '20190718073929Screenshot_82.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area pepohonan dekat rumah penduduk, sisi sebelah utara pepohonan, sisi sebelah barat jalan lokal, sisi sebelah selatan rumah penduduk dan sisi sebelah timur pepohonan', '6 X 7  Meter', '', NULL, 1, 1, '2019-07-18 07:39:29', 1);
INSERT INTO `menara` VALUES (121, 1, 9, 60, 1, 'HCPT', 'TOWER EXISTING HCPT_01', 'Paving Block', '0', '0', NULL, '-7.0540555555556', '110.4005', '72', '20190718075646Screenshot_84.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area peladangan dekat rumah penduduk, sisi sebelah utara dan sisi sebelah barat ladang, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', '10 X 8  Meter', '643.3/1678/BGN/06', NULL, 1, 1, '2019-07-18 07:56:46', 1);
INSERT INTO `menara` VALUES (122, 1, 9, 60, 1, 'HCPT', 'TOWER EXISTING HCPT_01', 'Macadam', '0', '0', NULL, '-7.04175', '110.39252777778', '42', '20190723122820Screenshot_1.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara menara Tsel, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '7 X 7  Meter', '', NULL, 1, 1, '2019-07-23 12:28:20', 1);
INSERT INTO `menara` VALUES (123, 1, 9, 48, 1, 'HCPT', 'TOWER EXISTING HCPT_01', 'Macadam', '0', '0', NULL, '-7.0851111111111', '110.36127777778', '72', '20190723123007Screenshot_2.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area pepohonan, sisi sebelah utara dan sisi sebelah barat pepohonan, sisi sebelah selatan menara Indosat dan sisi sebelah timur jalan lokal', '8 X 8  Meter', '', NULL, 1, 1, '2019-07-23 12:30:07', 1);
INSERT INTO `menara` VALUES (124, 1, 9, 62, 1, 'XL dan NTS', 'TOWER EXISTING XL AXIATA_02', 'Concrete', '0', '0', NULL, '-7.1028888888889', '110.38725', '52', '20190723123134Screenshot_3.png', 'PT Natrindo Telephone Seluler', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area pepohonan, sisi sebelah utara pepohonan, sisi sebelah barat menara Telkomsel, sisi sebelah selatan jalan lokal dan sisi sebelah timur pepohonan', '6 X 6  Meter', '', NULL, 1, 1, '2019-07-23 12:31:34', 1);
INSERT INTO `menara` VALUES (125, 1, 9, 52, 1, 'XL', 'TOWER EXISTING XL AXIATA_02', 'Aspalth', '0', '0', NULL, '-7.0731944444444', '110.38919444444', '72', '20190723123303Screenshot_4.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area pepohonan, sisi sebelah utara jalan lokal, sisi sebelah barat rumah penduduk, sisi sebelah selatan dan sisi sebelah timur pepohonan', '6 X 6  Meter', '', NULL, 1, 1, '2019-07-23 12:33:03', 1);
INSERT INTO `menara` VALUES (126, 1, 9, 60, 1, 'XL', 'TOWER EXISTING XL AXIATA_02', 'Aspalth', '0', '0', NULL, '-7.0516111111111', '110.39733333333', '52', '20190723123833Screenshot_5.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area rumah penduduk, sisi sebelah utara makam, sisi sebelah barat jalan lokal, sisi sebelah selatan pepohonan dan sisi sebelah timur rumah penduduk', '10 X 10  Meter', '', NULL, 1, 1, '2019-07-23 12:38:33', 1);
INSERT INTO `menara` VALUES (127, 1, 9, 53, 1, 'XL', 'TOWER EXISTING XL AXIATA_02', 'Macadam', '0', '0', NULL, '-7.0668055555556', '110.38161111111', '52', '20190723124016Screenshot_6.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '12 X 12  Meter', '', NULL, 1, 1, '2019-07-23 12:40:16', 1);
INSERT INTO `menara` VALUES (128, 1, 9, 48, 1, 'XL dan ESIA', 'TOWER EXISTING XL AXIATA_02', 'Concrete', '0', '0', NULL, '-7.0881944444444', '110.36011111111', '72', '20190723124127Screenshot_7.png', 'PT Bakrie Telecom', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area pepohonan, sisi sebelah utara pepohonan, sisi sebelah barat sawah, sisi sebelah selatan jalan lokal dan sisi sebelah timur pepohonan', '6 X 6  Meter', '', NULL, 1, 1, '2019-07-23 12:41:27', 1);
INSERT INTO `menara` VALUES (129, 1, 9, 58, 1, 'XL dan INDOSAT', 'TOWER EXISTING XL AXIATA_02', 'Macadam', '0', '0', NULL, '-7.0599166666667', '110.36083333333', '72', '20190723124301Screenshot_8.png', 'PT Indonesian Satelindo', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area pepohonan, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur pepohonan', '12 X 12  Meter', '', NULL, 1, 1, '2019-07-23 12:43:01', 1);
INSERT INTO `menara` VALUES (130, 1, 9, 59, 1, 'XL dan INDOSAT', 'TOWER EXISTING XL AXIATA_02', 'Concrete', '0', '0', NULL, '-7.0378333333333', '110.36638888889', '72', '20190723124532Screenshot_9.png', 'PT Indonesian Satelindo', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area pepohonan, sisi sebelah utara dan sisi sebelah barat pepohonan, sisi sebelah selatan rumah penduduk dan sisi sebelah timur jalan lokal', '12 X 12  Meter', '', NULL, 1, 1, '2019-07-23 12:45:32', 1);
INSERT INTO `menara` VALUES (131, 1, 9, 62, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_03', 'Paving Block', '0', '0', NULL, '-7.1029166666667', '110.38713888889', '72', '20190723124652Screenshot_10.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area pepohonan, sisi sebelah utara pepohonan, sisi sebelah barat jalan lokal, sisi sebelah selatan rumah penduduk dan sisi sebelah timur menara Xl', '10 X 12  Meter', '', NULL, 1, 1, '2019-07-23 12:46:52', 1);
INSERT INTO `menara` VALUES (132, 1, 9, 56, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_03', 'Paving Block', '0', '0', NULL, '-7.0548333333333', '110.39430555556', '72', '20190723124812Screenshot_11.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rmah penduduk dekat pepohonan, sisi sebelah utara jalan lokal, sisi sebelah barat rumah penduduk, sisi sebelah selatan pepohonan dan sisi sebelah timur rumah penduduk', '14 X 14  Meter', '', NULL, 1, 1, '2019-07-23 12:48:12', 1);
INSERT INTO `menara` VALUES (133, 1, 4, 1, 1, 'SMART', 'TOWER EXISTING DIAN SWASTATIKA_01', 'Concrete', '0', '0', NULL, '-7.0966111111111', '110.41441666667', '72', '20190801090338Screenshot_1.png', 'PT Indoprima mikroselindo', 'PT Dian Swatatika', 'Tower DIAN SWATATIKA ini berada di area lahan kosong dekat makam, sisi sebelah utara makam, sisi sebelah barat lahan kosong, sisi sebelah selatan jalan lokal dan sisi sebelah timur ladang', '14 X 14  Meter', '', NULL, 1, 1, '2019-08-01 09:03:38', 1);
INSERT INTO `menara` VALUES (134, 1, 4, 9, 1, 'SMART dan ESIA. ', 'TOWER EXISTING DIAN SWASTATIKA_01.', 'Concrete.', '0', '0', NULL, '-7.0621388888889', '110.41838888889', '52', '20190801091600Screenshot_2.png', 'PT Indoprima mikroselindo dan PT Bakrie Telecom', 'PT Dian Swatatika', 'Tower DIAN SWATATIKA ini berada di area rumah penduduk dekat ruko, sisi sebelah utara jalan lokal, sisi sebelah barat ruko, sisi sebelah selatan dan sisi sebelah timur rumah penduduk.', '8 X 16  Meter.', '', NULL, 1, 1, '2019-08-01 09:16:00', 1);
INSERT INTO `menara` VALUES (135, 1, 1, 114, 1, 'HCPT', 'TOWER EXISTING HCPT_01', 'Paving Block.', '0', '0', NULL, '-6.9603888888889', '110.39222222222', '32', '20190801091905Screenshot_1.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area pertokoan, sisi sebelah utara lahan parkir, sisi sebelah barat ruko, sisi sebelah selatan dan sisi sebelah timur jalan lokal', '8 X 8  Meter', '', NULL, 1, 1, '2019-08-01 09:19:05', 1);
INSERT INTO `menara` VALUES (136, 1, 4, 4, 1, 'ESIA', '.   TOWER EXISTING BAKRIE TELECOM_02', 'Macadam', '0', '0', NULL, '-7.0733611111111', '110.42191666667', '52', '20190801092322Screenshot_3.png', '', 'PT Bakrie Telecom.', 'Tower BAKRIE TELECOM ini berada di area pepohonan, sisi sebelah utara menara NTS, sisi sebelah barat pepohonan, sisi sebelah selatan maenara TBG dan sisi sebelah timur jalan lokal.', '10 X 12  Meter', '', NULL, 1, 1, '2019-08-01 09:23:22', 1);
INSERT INTO `menara` VALUES (137, 1, 1, 104, 1, 'HCPT dan ESIA', 'TOWER EXISTING HCPT_02', ' Concrete', '0', '0', NULL, '-6.9859722222222', '110.38183333333', '3', '20190801092518Screenshot_2.png', 'PT Bakrie Telecom', 'PT Hutchison CP Telecom.', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', 'Area Ruko Surajaya', '', NULL, 1, 1, '2019-08-01 09:25:18', 1);
INSERT INTO `menara` VALUES (138, 1, 3, 135, 2, 'INDOSAT', 'TOWER EXISTING INDOSAT_01.', 'Concrete.', '0', '0', NULL, '-6.9881388888889', '110.42233333333', '2', '20190801092719Screenshot_2.png', '', ':  PT Indonesian Satelindo.', ' Tower INDOSAT ini berada di area perkantoran dekat ruko, sisi sebelah utara kantor, sisi sebelah barat ruko, sisi sebelah selatan Masjid Agung dan sisi sebelah timur jalan raya.', 'Area Gedung HSBC.', '', NULL, 1, 1, '2019-08-01 09:27:19', 1);
INSERT INTO `menara` VALUES (139, 1, 3, 135, 2, 'INDOSAT', 'TOWER EXISTING INDOSAT_01.', 'Concrete.', '0', '0', NULL, '-6.9881388888889', '110.42233333333', '2', '20190801092719Screenshot_2.png', '', ':  PT Indonesian Satelindo.', ' Tower INDOSAT ini berada di area perkantoran dekat ruko, sisi sebelah utara kantor, sisi sebelah barat ruko, sisi sebelah selatan Masjid Agung dan sisi sebelah timur jalan raya.', 'Area Gedung HSBC.', '', NULL, 1, 1, '2019-08-01 09:27:19', 1);
INSERT INTO `menara` VALUES (140, 1, 1, 104, 1, 'HCPT', 'TOWER EXISTING HCPT_03', 'Paving Block', '0', '0', NULL, '-6.9925', '110.37938888889', '22', '20190801092932Screenshot_3.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', '6 X 6 Meter', '', NULL, 1, 1, '2019-08-01 09:29:32', 1);
INSERT INTO `menara` VALUES (141, 1, 4, 1, 1, 'HCPT', 'TOWER EXISTING HCPT_03.', 'Aspalth', '0', '0', NULL, '-7.0887222222222', '110.41552777778', '22', '20190801092932Screenshot_4.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area lahan kosong, sisi sebelah utara lahan kosong, sisi sebelah barat jalan lokal, sisi sebelah selatan lahan kosong dan sisi sebelah timur rumah penduduk.', '6 X 6  Meter.', '', NULL, 1, 1, '2019-08-01 09:29:32', 1);
INSERT INTO `menara` VALUES (142, 1, 15, 159, 1, 'HCPT, XL dan INDOSAT. ', '1.   TOWER EXISTING HCPT_01.', 'Kelurahan Meteseh  Kecamatan Tembalang', '0', '0', NULL, '-7.0563888888889', '110.47261111111', '62', '20190801092932Screenshot_1.png', 'PT Xl Axiata dan PT Indonesian Satelindo.', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area pepohonan dekat rumah penduduk, sisi sebelah utara pepohonan, sisi sebelah barat jalan lokal, sisi sebelah selatan rumah penduduk dan sisi sebelah timur pepohonan.', '10 X 10  Meter', '', NULL, 1, 1, '2019-08-01 09:29:32', 1);
INSERT INTO `menara` VALUES (143, 1, 1, 109, 1, 'HCPT', 'TOWER EXISTING HCPT_04', 'Paving Block', '0', '0', NULL, '-7.0034722222222', '110.38747222222', '32', '20190801093712Screenshot_4.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area rumah penduduk dekat pepohonan, sisi sebelah utara rumah penduduk, sisi sebelah barat lahan kosong, sisi sebelah selatan pepohonan dan sisi sebelah timur jalan lokal', '8 X 8 Meter', '', NULL, 1, 1, '2019-08-01 09:37:12', 1);
INSERT INTO `menara` VALUES (144, 1, 15, 159, 1, 'HCPT dan XL', '2.   TOWER EXISTING HCPT_02', 'Kelurahan Kedung Mundu  Kecamatan Tembalang', '0', '0', NULL, '-7.0229722222222', '110.46836111111', '52', '20190801094008Screenshot_2.png', 'PT Xl Axiata', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur rumah penduduk.', '8 X 8  Meter', '', NULL, 1, 1, '2019-08-01 09:40:08', 1);
INSERT INTO `menara` VALUES (145, 1, 1, 113, 1, 'HCPT dan NTS', 'TOWER EXISTING HCPT_05', ' Macadam', '0', '0', NULL, '-6.9714722222222', '110.391', '42', '20190801094204Screenshot_5.png', 'PT Natrindo Telephone Seluler', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area rumah penduduk dekat kampus, sisi sebelah utara kampus, sisi sebelah barat menara Indosat, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', '6 X 6 Meter', '', NULL, 1, 1, '2019-08-01 09:42:04', 1);
INSERT INTO `menara` VALUES (146, 1, 15, 159, 1, 'HCPT. ', '3.   TOWER EXISTING HCPT_03.', 'Kelurahan Meteseh  Kecamatan Tembalang.', '0', '0', NULL, '-7.06975', '110.46077777778', '42', '20190801094457Screenshot_3.png', '', 'PT Hutchison CP Telecom.', 'Tower HCPT ini berada di area pepohonan, sisi sebelah utara pepohonan, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur pepohonan.', '8 X 8  Meter', '', NULL, 1, 1, '2019-08-01 09:44:57', 1);
INSERT INTO `menara` VALUES (147, 1, 4, 10, 1, 'HCPT', 'TOWER EXISTING HCPT_03.', 'Macadam', '0', '0', NULL, '-7.02975', '110.40780555556', '32', '20190801094541Screenshot_5.png', '', 'PT Hutchison CP Telecomunication.', 'Tower HCPT ini berada di area pepohonan, sisi sebelah utara pepohonan, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur pepohonan.', '8 X 8  Meter', '', NULL, 1, 1, '2019-08-01 09:45:41', 1);
INSERT INTO `menara` VALUES (148, 1, 1, 108, 1, 'HCPT', 'TOWER EXISTING HCPT_06', ' Macadam', '0', '0', NULL, '-6.9708888888889', '110.39963888889', '32', '20190801094618Screenshot_6.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', '6 X 6 Meter', '', NULL, 1, 1, '2019-08-01 09:46:18', 1);
INSERT INTO `menara` VALUES (149, 1, 3, 136, 2, 'INDOSAT', 'TOWER EXISTING INDOSAT_02.', 'Concrete', '0', '0', NULL, '-6.9809722222222', '110.40919444444', '7', '20190801094741Screenshot_1.png', '', 'PT Indonesian Satelindo.', 'Tower INDOSAT ini berada di area kampus, sisi sebelah utara dan sisi sebelah barat kampus, sisi sebelah selatan jalan lokal dan sisi sebelah timur kampus.', 'Area Kampus UDINUS.', '', NULL, 1, 1, '2019-08-01 09:47:41', 1);
INSERT INTO `menara` VALUES (150, 1, 15, 159, 1, 'HCPT. ', '4.   TOWER EXISTING HCPT_04.', ' Tembalang  Kecamatan Tembalang.', '0', '0', NULL, '-7.0503611111111', '110.44527777778', '32', '20190801095109Screenshot_4.png', '', 'PT Hutchison CP Telecom.', 'Tower HCPT ini berada di area lahan kosong dekat rumah penduduk, sisi sebelah utara lahan kosong, sisi sebelah barat jalan lokal, sisi sebelah selatan rumah penduduk dan sisi sebelah timur lahan kosong.', '6 X 8  Meter.', '', NULL, 1, 1, '2019-08-01 09:51:09', 1);
INSERT INTO `menara` VALUES (151, 1, 3, 129, 2, 'INDOSAT', 'TOWER EXISTING INDOSAT_03', 'Concrete', '0', '0', NULL, '-6.9900833333333', '110.42411111111', '3', '20190801095202Screenshot_3.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area Mall Simpang Lima, sisi sebelah utaraHotel Horison, sisi sebelah barat jalan raya, sisi sebelah selatan Mall dan sisi sebelah timur Grapari Xl.', 'Area Mal Simpang Lima.', '', NULL, 1, 1, '2019-08-01 09:52:02', 1);
INSERT INTO `menara` VALUES (152, 1, 4, 5, 1, 'HCPT', 'TOWER EXISTING HCPT_03.', 'Macadam', '0', '0', NULL, '-7.0804166666667', '110.4115', '3', '20190801095205Screenshot_6.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara lahan kosong, sisi sebelah barat jalan raya, sisi sebelah selatan Showroom dan sisi sebelah timur rumah penduduk.', 'Area Graha Pena', '', NULL, 1, 1, '2019-08-01 09:52:05', 1);
INSERT INTO `menara` VALUES (153, 1, 1, 108, 1, 'HCPT', 'TOWER EXISTING HCPT_07.', 'Paving Block', '0', '0', NULL, '-6.979', '110.40088888889', '52', '20190801095347Screenshot_7.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '7 X 10 Meter', '', NULL, 1, 1, '2019-08-01 09:53:47', 1);
INSERT INTO `menara` VALUES (154, 1, 3, 139, 2, 'INDOSAT', 'TOWER EXISTING INDOSAT_04', 'Concrete.', '0', '0', NULL, '-6.9791388888889', '110.41438888889', '3', '20190801095510Screenshot_4.png', '', 'PT Indonesian Satelindo.', 'Tower INDOSAT ini berada di area Hotel, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan ruko, sisi sebelah timur jlan raya.', 'Area Hotel Novotel.', '', NULL, 1, 1, '2019-08-01 09:55:10', 1);
INSERT INTO `menara` VALUES (155, 1, 15, 159, 1, 'HCPT', '5.   TOWER EXISTING HCPT_05.', 'Kelurahan Tembalang  Kecamatan Tembalang.	', '0', '0', NULL, '-7.0533888888889', '110.43666666667', '72', '20190801095510Screenshot_5.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan rumah penduduk,sisi sebelah timur jalan lokal.', '10 X 14  Meter.', '', NULL, 1, 1, '2019-08-01 09:55:10', 1);
INSERT INTO `menara` VALUES (156, 1, 4, 9, 2, 'HCPT', 'TOWER EXISTING HCPT_03', 'Concrete', '0', '0', NULL, '-7.0475', '110.41886111111', '2', '20190801095537Screenshot_7.png', '', 'PT Hutchison CP Telecomunication.', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur rumah penduduk.', 'Area Ponpes Darussalam', '', NULL, 1, 1, '2019-08-01 09:55:37', 1);
INSERT INTO `menara` VALUES (157, 1, 1, 100, 2, 'HCPT', 'TOWER EXISTING HCPT_08', 'Concrete', '0', '0', NULL, '-6.9928611111111', '110.39538888889', '2', '20190801095802Screenshot_8.png', '', ' PT Hutchison CP Telecom', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', 'Area rumah penduduk', '', NULL, 1, 1, '2019-08-01 09:58:02', 1);
INSERT INTO `menara` VALUES (158, 1, 3, 128, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_01', 'Paving Block', '0', '0', NULL, '-6.9838611111111', '110.37927777778', '42', '20190801095829Screenshot_5.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk.', '12 X 8 ', '', NULL, 1, 1, '2019-08-01 09:58:29', 1);
INSERT INTO `menara` VALUES (159, 1, 15, 159, 1, 'HCPT dan XL', '6.   TOWER EXISTING HCPT_06.', 'Kelurahan Pedalangan  Kecamatan Tembalang', '0', '0', NULL, '-7.0585555555556', '110.4305', '42', '20190801095904Screenshot_6.png', 'PT Xl Axiata.', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area lahan kosong, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur lahan kosong.', '8 X 8  Meter', '', NULL, 1, 1, '2019-08-01 09:59:04', 1);
INSERT INTO `menara` VALUES (160, 1, 4, 7, 1, 'HCPT dan XL', 'TOWER EXISTING HCPT_03.', 'Macadam', '0', '0', NULL, '-7.0585555555556', '110.4305', '42', '20190801100116Screenshot_8.png', 'PT Xl Axiata.', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di lahan kosong, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur jalan lokal.', '8 X 8 Meter.', '', NULL, 1, 1, '2019-08-01 10:01:16', 1);
INSERT INTO `menara` VALUES (161, 1, 1, 100, 2, 'HCPT', 'TOWER EXISTING HCPT_01', ' Concrete', '0', '0', NULL, '-6.9928611111111', '110.39538888889', '2', '20190801100200Screenshot_9.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', 'Area rumah penduduk.', '', NULL, 1, 1, '2019-08-01 10:02:00', 1);
INSERT INTO `menara` VALUES (162, 1, 3, 134, 2, 'INDOSAT', 'TOWER EXISTING INDOSAT_01', 'Concrete.', '0', '0', NULL, '-6.9896666666667', '110.42158333333', '2', '20190801100247Screenshot_6.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area pertokoan, sisi sebelah utara jalan raya, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur ruko.', 'Area Grapari Indosat', '', NULL, 1, 1, '2019-08-01 10:02:47', 1);
INSERT INTO `menara` VALUES (163, 1, 4, 1, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_04.', 'Aspalth', '0', '0', NULL, '-7.10575', '110.41247222222', '72', '20190801100357Screenshot_9.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur rumah penduduk.', '10 X 18  Meter', '', NULL, 1, 1, '2019-08-01 10:03:57', 1);
INSERT INTO `menara` VALUES (164, 1, 15, 159, 1, 'HCPT', '7.   TOWER EXISTING HCPT_07.', 'Kelurahan Sambiroto  Kecamatan Tembalang.', '0', '0', NULL, '-7.0229444444444', '110.45763888889', '32', '20190801100357Screenshot_7.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara lahan kosong, sisi sebelah bara rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk.', '6 X 6  Meter', '', NULL, 1, 1, '2019-08-01 10:03:57', 1);
INSERT INTO `menara` VALUES (165, 1, 1, 113, 1, 'ESIA', 'TOWER EXISTING BAKRIE TELECOM_01', 'Paving Block', '0', '0', NULL, '-6.9718055555556', '110.39208333333', '52', '20190801100532Screenshot_10.png', '', ':  PT Bakrie Telecom', 'Tower BAKRIE TELECOM ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '10 X 12  Meter.', '', NULL, 1, 1, '2019-08-01 10:05:32', 1);
INSERT INTO `menara` VALUES (166, 1, 3, 135, 2, 'INDOSAT', 'TOWER EXISTING INDOSAT_01', 'Concrete', '0', '0', NULL, '-6.9866944444444', '110.41555555556', '3', '20190801100639Screenshot_7.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area Hotel dekat rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat Grapari Telkomsel, sisi sebelah selatan jalan raya dan sisi sebelah timur PT Holcim', ' Area Hotel Pandanaran.', '', NULL, 1, 1, '2019-08-01 10:06:39', 1);
INSERT INTO `menara` VALUES (167, 1, 4, 4, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_04.', 'Aspalth', '0', '0', NULL, '-7.0751388888889', '110.42436111111', '52', '20190801100648Screenshot_10.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat lahan kosong, sisi sebelah selatan rumah penduduk dan sisi sebelah timur jalan lokal.', '12 X 14  Meter.', '', NULL, 1, 1, '2019-08-01 10:06:48', 1);
INSERT INTO `menara` VALUES (168, 1, 3, 125, 2, 'INDOSAT', 'TOWER EXISTING INDOSAT_01.', 'Concrete', '0', '0', NULL, '-6.9763888888889', '110.42083333333', '10', '20190801100822Screenshot_8.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area pertokoan, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur ruko.', 'Area Ruko Cendana.', '', NULL, 1, 1, '2019-08-01 10:08:22', 1);
INSERT INTO `menara` VALUES (169, 1, 15, 159, 1, 'HCPT', 'TOWER EXISTING HCPT_07.', 'Kelurahan Sendang Guo  Kecamatan Tembalang.', '0', '0', NULL, '-7.0151111111111', '110.45330555556', '3', '20190801100848Screenshot_8.png', '', 'PT Hutchison CP Telecom.', 'Tower HCPT ini berada di area pertokoan, sisi sebelah utara lahan kosong, sisi sebelah bara ruko, sisi sebelah selatan jalan lokal dan sisi sebelah timur ruko', 'Area toko Langgeng', '', NULL, 1, 1, '2019-08-01 10:08:48', 1);
INSERT INTO `menara` VALUES (170, 1, 3, 134, 2, 'INDOSAT', 'TOWER EXISTING INDOSAT_01', 'Concrete', '0', '0', NULL, '-6.9701666666667', '110.4225', '10', '20190801101039Screenshot_9.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area pertokoan, sisi sebelah utara ruko, sisi sebelah barat jalan raya, sisi sebelah selatan jalan lokal dan sisi sebelah timur ruko', 'Area Bank BTPN.', '', NULL, 1, 1, '2019-08-01 10:10:39', 1);
INSERT INTO `menara` VALUES (171, 1, 4, 6, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_04', 'Macadam', '0', '0', NULL, '-7.0728611111111', '110.41205555556', '52', '20190801101057Screenshot_11.png', '', 'PT Indonesian Satelindo.', 'Tower INDOSAT ini berada di area lahan kosong, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan lahan kosong,  sisi sebelah timur jalan lokal', '10 X 8  Meter.', '', NULL, 1, 1, '2019-08-01 10:10:57', 1);
INSERT INTO `menara` VALUES (172, 1, 3, 138, 2, 'INDOSAT', 'TOWER EXISTING INDOSAT_01', 'Concrete.', '0', '0', NULL, '-6.9696111111111', '110.42791666667', '3', '20190801101251Screenshot_10.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area pertokoan, sisi sebelah utara dan sisi sebelah barat ruko, sisi sebelah selatan jalan lokal dan sisi sebelah timur ruko.', 'Area Toko Adipeny.', '', NULL, 1, 1, '2019-08-01 10:12:51', 1);
INSERT INTO `menara` VALUES (173, 1, 15, 159, 1, 'HCPT. ', 'TOWER EXISTING HCPT_08.', 'Kelurahan Tandang  Kecamatan Tembalang.', '0', '0', NULL, '-7.0210555555556', '110.44644444444', '32', '20190801101301Screenshot_9.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan rumah penduduk, sisi sebelah timur jalan lokal.', '6 X 6 Meter.', '', NULL, 1, 1, '2019-08-01 10:13:01', 1);
INSERT INTO `menara` VALUES (174, 1, 4, 7, 1, 'INDOSAT dan XL', 'TOWER EXISTING INDOSAT_04', 'Paving Block', '0', '0', NULL, '-7.0688333333333', '110.43411111111', '32', '20190801101514Screenshot_12.png', 'PT Xl Axiata.', 'PT Indonesian Satelindo.', '	Tower INDOSAT ini berada di area pepohonan, sisi sebelah utara rumah penduduk, sisi sebelah barat dan sisi sebelah selatan pepohonan,  sisi sebelah timur jalan lokal.', '12 X 12  Meter.', '', NULL, 1, 1, '2019-08-01 10:15:14', 1);
INSERT INTO `menara` VALUES (175, 1, 3, 136, 2, 'SMART.', 'TOWER EXISTING INDOPRIMA MIKROSELINDO_01', 'Concrete', '0', '0', NULL, '-6.98025', '110.40838888889', '10', '20190801101515Screenshot_11.png', '', 'PT Indoprima Mikroselindo', 'Tower INDOPRIMA MIKROSELINDO ini berada di area kampus dekat rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur kampus UDINUS.', 'Area Kampus UDINUS', '', NULL, 1, 1, '2019-08-01 10:15:15', 1);
INSERT INTO `menara` VALUES (176, 1, 3, 136, 2, 'SMART.', 'TOWER EXISTING INDOPRIMA MIKROSELINDO_01', 'Concrete', '0', '0', NULL, '-6.98025', '110.40838888889', '10', '20190801101516Screenshot_11.png', '', 'PT Indoprima Mikroselindo', 'Tower INDOPRIMA MIKROSELINDO ini berada di area kampus dekat rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur kampus UDINUS.', 'Area Kampus UDINUS', '', NULL, 1, 1, '2019-08-01 10:15:16', 1);
INSERT INTO `menara` VALUES (177, 1, 1, 107, 1, 'INDOSAT', ' TOWER EXISTING INDOSAT_01', 'Paving Block', '0', '0', NULL, '-6.9849722222222', '110.36766666667', '52', '20190801101600Screenshot_12.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk.', '10 X 10  Meter', '', NULL, 1, 1, '2019-08-01 10:16:00', 1);
INSERT INTO `menara` VALUES (178, 1, 15, 159, 1, 'HCPT.', 'TOWER EXISTING HCPT_01.', 'Kelurahan Sendang Mulyo  Kecamatan Tembalang', '0', '0', NULL, '-7.0331666666667', '110.47191666667', '72', '20190801101600Screenshot_10.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area pepohonan, sisi sebelah utara pepohonan, sisi sebelah barat sawah, sisi sebelah selatan pepohonan dan sisi sebelah timur jalan lokal.', '12 X 8 Meter', '', NULL, 1, 1, '2019-08-01 10:16:00', 1);
INSERT INTO `menara` VALUES (179, 1, 3, 135, 2, 'CERIA', 'TOWER EXISTING STI_01', 'Concrete', '0', '0', NULL, '-6.9881944444444', '110.42216666667', '10', '20190801101847Screenshot_12.png', '', 'PT Sampoerna Telekomunikasi Indonesia', 'Tower STI ini berada di area perkantoran dekat ruko, sisi sebelah utara kantor, sisi sebelah barat ruko, sisi sebelah selatan Masjid Agung dan sisi sebelah timur jalan raya', 'Arae Gedung HSBC', '', NULL, 1, 1, '2019-08-01 10:18:47', 1);
INSERT INTO `menara` VALUES (180, 1, 15, 159, 1, 'SMART. ', 'TOWER EXISTING INDOPRIMA MIKROSELINDO_01.', 'Kelurahan Bulusan  Kecamatan Tembalang.', '0', '0', NULL, '-7.0601388888889', '110.44444444444', '62', '20190801101901Screenshot_11.png', '', 'PT Dian Swastatika', 'Tower INDOPRIMA MIKROSELINDO ini berada di area rumah penduduk, sisi sebelah utara lahan kosong, sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk.', '14 X 12  Meter.', '', NULL, 1, 1, '2019-08-01 10:19:01', 1);
INSERT INTO `menara` VALUES (181, 1, 4, 7, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_04.', 'Paving Block', '0', '0', NULL, '-7.0588055555556', '110.42238888889', '42', '20190801101903Screenshot_13.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan  sisi sebelah timur rumah penduduk.', '19 X 10  Meter', '', NULL, 1, 1, '2019-08-01 10:19:03', 1);
INSERT INTO `menara` VALUES (182, 1, 1, 103, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_02', 'Aspalth.', '0', '0', NULL, '-6.9926944444444', '110.38394444444', '52', '20190801101907Screenshot_13.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat dan sisi sebelah selatan rumah penduduk, sisi sebelah timur jalan lokal', '10 X 10  Meter', '', NULL, 1, 1, '2019-08-01 10:19:07', 1);
INSERT INTO `menara` VALUES (183, 1, 3, 135, 2, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_04.', 'Concrete', '0', '0', NULL, '-6.9888611111111', '110.42369444444', '3', '20190801102031Screenshot_13.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area Hotel, sisi sebelah utara dan sisi sebelah barat jalan raya, sisi sebelah selatan dan sisi sebelah timur ruko.', 'Area Hotel Ciputra.', '', NULL, 1, 1, '2019-08-01 10:20:31', 1);
INSERT INTO `menara` VALUES (184, 1, 3, 135, 2, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_04.', 'Concrete', '0', '0', NULL, '-6.9888611111111', '110.42369444444', '3', '20190801102032Screenshot_13.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area Hotel, sisi sebelah utara dan sisi sebelah barat jalan raya, sisi sebelah selatan dan sisi sebelah timur ruko.', 'Area Hotel Ciputra.', '', NULL, 1, 1, '2019-08-01 10:20:32', 1);
INSERT INTO `menara` VALUES (185, 1, 15, 159, 1, 'INDOSAT', ' TOWER EXISTING INDOSAT_01.', ' Kelurahan Mangun Harjo  Kecamatan Tembalang.', '0', '0', NULL, '-7.0357222222222', '110.46711111111', '52', '20190801102207Screenshot_12.png', '', 'PT Indonesian Satelindo.', 'Tower INDOSAT ini berada di area pepohonan, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan pepohonan, sisi sebelah timur jalan lokal.', '14 X 12  Meter.', '', NULL, 1, 1, '2019-08-01 10:22:07', 1);
INSERT INTO `menara` VALUES (186, 1, 1, 109, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_03', 'Macadam.', '0', '0', NULL, '-7.0028611111111', '110.38347222222', '22', '20190801102235Screenshot_14.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area pepohonan, sisi sebelah utara jalan lokal, sisi sebelah barat menara Indosat, sisi sebelah selatan PDAM dan sisi sebelah timur pepohonan', '4 X 4  Meter', '', NULL, 1, 1, '2019-08-01 10:22:35', 1);
INSERT INTO `menara` VALUES (187, 1, 4, 8, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_04.', 'Aspalth', '0', '0', NULL, '-7.0455277777778', '110.42363888889', '72', '20190801102343Screenshot_14.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara Grapari Telkomsel, sisi sebelah barat jalan lokal, sisi sebelah selatan dan  sisi sebelah timur rumah penduduk.', 'Area Grapari Indosat', '', NULL, 1, 1, '2019-08-01 10:23:43', 1);
INSERT INTO `menara` VALUES (188, 1, 15, 159, 1, 'INDOSAT.', '2.   TOWER EXISTING INDOSAT_02', 'Kelurahan Meteseh  Kecamatan Tembalang.', '0', '0', NULL, '-7.0716111111111', '110.46136111111', '62', '20190801102441Screenshot_13.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur rumah penduduk.', '14 X 12  Meter', '', NULL, 1, 1, '2019-08-01 10:24:41', 1);
INSERT INTO `menara` VALUES (189, 1, 1, 109, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_04', ' Macadam', '0', '0', NULL, '-7.0029722222222', '110.38355555556', '22', '20190801102537Screenshot_15.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area pepohonan, sisi sebelah utara dan sisi sebelah barat lahan kosong, sisi sebelah selatan pepohonan dan sisi sebelah timur jalan lokal', '6 X 6 Meter', '', NULL, 1, 1, '2019-08-01 10:25:37', 1);
INSERT INTO `menara` VALUES (190, 1, 3, 136, 2, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_04.', 'Concrete', '0', '0', NULL, '-6.9811111111111', '110.40883333333', '3', '20190801102702Screenshot_14.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area kampus UDINUS, sisi sebelah utara dan sisi sebelah barat kampus, sisi sebelah selatan jalan lokal dan sisi sebelah timur kampus', 'Area Kampus UDINUS', '', NULL, 1, 1, '2019-08-01 10:27:02', 1);
INSERT INTO `menara` VALUES (191, 1, 4, 8, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_04', 'Aspalth', '0', '0', NULL, '-7.0447222222222', '110.4235', '82', '20190801102732Screenshot_15.png', '', 'PT Indonesian Satelindo.', 'Tower INDOSAT ini berada di area lahan kosong, sisi sebelah utara jalan lokal, sisi sebelah barat dan sisi sebelah selatan lahan kosong,  sisi sebelah timur menara TV7', 'Grapari Indosat', '', NULL, 1, 1, '2019-08-01 10:27:32', 1);
INSERT INTO `menara` VALUES (192, 1, 15, 159, 1, 'INDOSAT', '3.   TOWER EXISTING INDOSAT_03', 'Kelurahan Tembalang  Kecamatan Tembalang', '0', '0', NULL, '-7.0544166666667', '110.43602777778', '52', '20190801102820Screenshot_14.png', '', 'PT Indonesian Satelindo.', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan rumah penduduk, sisi sebelah timur jalan lokal.', '10 X 12  Meter', '', NULL, 1, 1, '2019-08-01 10:28:20', 1);
INSERT INTO `menara` VALUES (193, 1, 3, 129, 2, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_05.', 'Concrete', '0', '0', NULL, '-6.9898888888889', '110.4245', '3', '20190801102924Screenshot_15.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area Mall, sisi sebelah utara Hotel Horison, sisi sebelah barat jalan raya, sisi sebelah selatan Mall dan sisi sebelah timur Grpari Xl.', 'Area Mall Simpang Lima', '', NULL, 1, 1, '2019-08-01 10:29:24', 1);
INSERT INTO `menara` VALUES (194, 1, 4, 5, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_04', 'Concrete', '0', '0', NULL, '-7.0804444444444', '110.41155555556', '3', '20190801103001Screenshot_16.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara lahan kosong, sisi sebelah barat jalan raya, sisi sebelah selatan Showroom, sisi sebelah timur rumah penduduk.', 'Area Graha Pena.', '', NULL, 1, 1, '2019-08-01 10:30:01', 1);
INSERT INTO `menara` VALUES (195, 1, 15, 159, 1, 'INDOSAT dan NTS', '4.   TOWER EXISTING INDOSAT_04.', 'Kelurahan Tandang  Kecamatan Tembalang.', '0', '0', NULL, '-7.01475', '110.44813888889', '52', '20190801103040Screenshot_15.png', 'PT Natrindo Telephone Seluler', 'PT Indonesian Satelindo.', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur rumah penduduk.', '10 X 12  Meter', '', NULL, 1, 1, '2019-08-01 10:30:40', 1);
INSERT INTO `menara` VALUES (196, 1, 3, 135, 2, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_04.', 'Concrete', '0', '0', NULL, '-6.9867222222222', '110.41552777778', '3', '20190801103054Screenshot_16.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area Hotel dekat rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat Grapari Telkomsel, sisi sebelah selatan jalan raya dan sisi sebelah timur PT Holcim', 'Area Hotel Pandanaran', '', NULL, 1, 1, '2019-08-01 10:30:54', 1);
INSERT INTO `menara` VALUES (197, 1, 1, 104, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_05', 'Paving Block', '0', '0', NULL, '-6.9841388888889', '110.38469444444', '32', '20190801103208Screenshot_16.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara jalan raya, sisi sebelah barat jalan lokal, sisi sebelah selatan Kantor UPTD dan sisi sebelah timur rumah penduduk', '8 X 6  Meter', '', NULL, 1, 1, '2019-08-01 10:32:08', 1);
INSERT INTO `menara` VALUES (198, 1, 3, 129, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_04.', 'Concrete', '0', '0', NULL, '-6.9872222222222', '110.43016666667', '52', '20190801103230Screenshot_17.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan rumah peduduk, sisi sebelah timur jalan lokal', '16 X 40 ', '', NULL, 1, 1, '2019-08-01 10:32:30', 1);
INSERT INTO `menara` VALUES (199, 1, 4, 9, 2, 'INDOSAT', 'TOWER EXISTING INDOSAT_04', 'Concrete', '0', '0', NULL, '-7.0618888888889', '110.413', '3', '20190801103310Screenshot_17.png', '', 'PT Indonesian Satelindo.', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat rumah penduduk, sisi sebelah selatan ruko, sisi sebelah timur jalan raya.', 'Area ADA Hypermart', '', NULL, 1, 1, '2019-08-01 10:33:10', 1);
INSERT INTO `menara` VALUES (200, 1, 15, 159, 1, ' NTS', '1.   TOWER EXISTING NTS_01.', 'Kelurahan Kramas  Kecamatan Tembalang.', '0', '0', NULL, '-7.0711388888889', '110.43972222222', '72', '20190801103329Screenshot_16.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area pepohonan, sisi sebelah utara rumah penduduk, sisi sebelah barat dan sisi sebelah selatan pepohonan, sisi sebelah timur jalan lokal.', '12 X 12  Meter', '', NULL, 1, 1, '2019-08-01 10:33:29', 1);
INSERT INTO `menara` VALUES (201, 1, 3, 130, 2, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_04.', 'Concrete', '0', '0', NULL, '-6.9741666666667', '110.42455555556', '3', '20190801103406Screenshot_18.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat pasar, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk.', ':  Area Gedung Parkir', '', NULL, 1, 1, '2019-08-01 10:34:06', 1);
INSERT INTO `menara` VALUES (202, 1, 1, 113, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_06', ' Macadam', '0', '0', NULL, '-6.9715555555556', '110.391', '42', '20190801103420Screenshot_17.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area lahan kosong, sisi sebelah utara kampus, sisi sebelah barat Showroom, sisi sebelah selatan jalan lokal dan sisi sebelah timur menara HCPT', '10 X 10  Meter', '', NULL, 1, 1, '2019-08-01 10:34:20', 1);
INSERT INTO `menara` VALUES (203, 1, 4, 4, 1, 'NTS', 'TOWER EXISTING NTS_05', 'Macadam', '0', '0', NULL, '-7.0733611111111', '110.42191666667', '52', '20190801103548Screenshot_18.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area rumah penduduk dekat lahan kosong, sisi sebelah utara rumah penduduk, sisi sebelah barat lahan kosong, sisi sebelah selatan menara Bakrie Telecom dan sisi sebelah timur jalan lokal.', '10 X 10  Meter.', '', NULL, 1, 1, '2019-08-01 10:35:48', 1);
INSERT INTO `menara` VALUES (204, 1, 3, 133, 2, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_04', 'Concrete', '0', '0', NULL, '-6.9825833333333', '110.42030555556', '3', '20190801103611Screenshot_19.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur Kantor Notaris', 'Area Line St Salon', '', NULL, 1, 1, '2019-08-01 10:36:11', 1);
INSERT INTO `menara` VALUES (205, 1, 15, 159, 1, 'NTS. ', '2.   TOWER EXISTING NTS_02.', 'Kelurahan Meteseh  Kecamatan Tembalang.', '0', '0', NULL, '-7.0563055555556', '110.46688888889', '72', '20190801103617Screenshot_17.png', '', 'PT Natrindo Telephone Seluler.', 'Tower NTS ini berada di area pepohonan, sisi sebelah utara dan sisi sebelah barat pepohonan, sisi sebelah selatan jalan lokal, sisi sebelah timur pepohonan.', '10 X 12  Meter.', '', NULL, 1, 1, '2019-08-01 10:36:17', 1);
INSERT INTO `menara` VALUES (206, 1, 1, 108, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_07', 'Macadam.', '0', '0', NULL, '-6.9773888888889', '110.39583333333', '32', '20190801103705Screenshot_18.png', '', 'PT Indonesian Satelindo', 'Tower XL AXIATA ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '8 X 8  Meter', '', NULL, 1, 1, '2019-08-01 10:37:05', 1);
INSERT INTO `menara` VALUES (207, 1, 15, 159, 1, '', '3.   TOWER EXISTING NTS_03.', 'Kelurahan Pedalangan  Kecamatan Tembalang.', '0', '0', NULL, '-7.0575833333333', '110.43027777778', '72', '20190801103902Screenshot_18.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area pepohonan, sisi sebelah utara dan sisi sebelah barat pepohonan, sisi sebelah selatan jalan lokal, sisi sebelah timur lahan kosong.', '10 X 12  Meter.', '', NULL, 1, 1, '2019-08-01 10:39:02', 1);
INSERT INTO `menara` VALUES (208, 1, 4, 9, 1, 'NTS', 'TOWER EXISTING NTS_05', 'Macadam', '0', '0', NULL, '-7.0590555555556', '110.41258333333', '72', '20190801103935Screenshot_19.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur rumah penduduk.', '12 X 10  Meter', '', NULL, 1, 1, '2019-08-01 10:39:35', 1);
INSERT INTO `menara` VALUES (209, 1, 1, 105, 2, 'INDOSAT', 'TOWER EXISTING INDOSAT_08', 'Concrete', '0', '0', NULL, '-6.9808333333333', '110.394', '2', '20190801104043Screenshot_19.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area pertokoan, sisi sebelah utara dan sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur ruko', 'Area Plaza Siliwangi', '', NULL, 1, 1, '2019-08-01 10:40:43', 1);
INSERT INTO `menara` VALUES (210, 1, 3, 125, 2, 'FLEXI ', 'TOWER EXISTING TELKOM FLEXI_05.', 'Concrete', '0', '0', NULL, '-6.9939444444444', '110.42125', '3', '20190801104150Screenshot_20.png', '', 'PT Telekomunikasi Indonesia', 'Tower TELKOM ini berada di area perkantoran, sisi sebelah utara dan sisi sebelah barat jalan raya, sisi sebelah selatan dan sisi sebelah timur kantor.', 'Area Telkom', '', NULL, 1, 1, '2019-08-01 10:41:50', 1);
INSERT INTO `menara` VALUES (211, 1, 4, 7, 1, 'NTS', 'TOWER EXISTING NTS_05', 'Macadam', '0', '0', NULL, '-7.0575833333333', '110.43038888889', '72', '20190801104415Screenshot_20.png', '', 'PT Natrindo Telephone Seluler', '	Tower NTS ini berada di area pepohonan, sisi sebelah utara dan sisi sebelah barat pepohonan, sisi sebelah selatan jalan lokal dan sisi sebelah timur lahan kosong.', '12 X 10  Meter.', '', NULL, 1, 1, '2019-08-01 10:44:15', 1);
INSERT INTO `menara` VALUES (212, 1, 1, 101, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_09', 'Aspalth', '0', '0', NULL, '-6.9825277777778', '110.39863888889', '42', '20190801104457Screenshot_20.png', '', 'PT Indonesian Satelindo', 'Tower INDOSAT ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '8 X 6 Meter', '', NULL, 1, 1, '2019-08-01 10:44:57', 1);
INSERT INTO `menara` VALUES (213, 1, 15, 159, 1, 'NTS. ', '4.   TOWER EXISTING NTS_04.', 'Kelurahan Sambiroto  Kecamatan Tembalang', '0', '0', NULL, '-7.0288888888889', '110.45730555556', '72', '20190801104555Screenshot_19.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area lahan kosong, sisi sebelah utara dan sisi sebelah barat lahan kosong, sisi sebelah selatan jalan lokal, sisi sebelah timur lahan kosong.', '10 X 12  Meter', '', NULL, 1, 1, '2019-08-01 10:45:55', 1);
INSERT INTO `menara` VALUES (214, 1, 4, 1, 1, 'HCPT, ESIA dan FREN', 'TOWER EXISTING PROTELINDO_06.', 'Paving Block', '0', '0', NULL, '-7.10275', '110.41355555556', '72', '20190801104730Screenshot_21.png', 'PT Bakrie Telecom dan PT Mobile 8.', 'PT Protelindo', 'Tower PROTELINDO ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan menara dan sisi sebelah timur rumah penduduk.', '12 X 20  Meter.', '', NULL, 1, 1, '2019-08-01 10:47:30', 1);
INSERT INTO `menara` VALUES (215, 1, 1, 114, 1, 'INDOSAT', 'TOWER EXISTING INDOSAT_09', 'Paving Block', '0', '0', NULL, '-6.9607222222222', '110.39152777778', '32', '20190801104759Screenshot_21.png', '', 'PT Indonesian Satelindo', '	Tower INDOSAT ini berada di lahan kosong, sisi sebelah utara jalan lokal, sisi sebelah barat bengkel, sisi sebelah selatan jalan lokal dan sisi sebelah timur menar Telkom', '6 X 6 Meter', '', NULL, 1, 1, '2019-08-01 10:47:59', 1);
INSERT INTO `menara` VALUES (216, 1, 3, 131, 2, 'FLEXI ', 'TOWER EXISTING TELKOM FLEXI_05', 'Concrete', '0', '0', NULL, '-6.9775833333333', '110.41672222222', '10', '20190801104828Screenshot_21.png', '', 'PT Telekomunikasi Indonesia', 'Tower TELKOM ini berada di area pertokoan, sisi sebelah utara jalan raya, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur ruko', 'Area Toko Jam Riana', '', NULL, 1, 1, '2019-08-01 10:48:28', 1);
INSERT INTO `menara` VALUES (217, 1, 3, 129, 2, 'FLEXI ', 'TOWER EXISTING TELKOM FLEXI_05', 'Concrete', '0', '0', NULL, '-6.9899444444444', '110.42413888889', '3', '20190801105001Screenshot_22.png', '', 'PT Telekomunikasi Indonesia', 'Tower TELKOM ini berada di area Mall, sisi sebelah utara Hotel Horison, sisi sebelah barat jalan raya, sisi sebelah selatan Mall dan sisi sebelah timur Grapari Xl.', 'Area Mall Simpang Lima', '', NULL, 1, 1, '2019-08-01 10:50:01', 1);
INSERT INTO `menara` VALUES (218, 1, 4, 10, 1, 'FLEXI', 'TOWER EXISTING PT INDONUSA_07.', 'Paving Block', '0', '0', NULL, '-7.0340555555556', '110.41561111111', '52', '20190801105010Screenshot_22.png', 'PT Telekomunikasi Indonesia', 'PT Indonusa.', 'Tower PROTELINDO ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat jalan lokal, sisi sebelah selatan menara dan sisi sebelah timur rumah penduduk.', '8 X 16  Meter.', '', NULL, 1, 1, '2019-08-01 10:50:10', 1);
INSERT INTO `menara` VALUES (219, 1, 1, 114, 1, 'NTS', 'TOWER EXISTING NTS_01', 'Paving Block', '0', '0', NULL, '-6.9625555555556', '110.38566666667', '32', '20190801105033Screenshot_22.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area rumah penduduk, sisi sebelah utara tambak, sisi sebelah barat rumah penduduk, sisi sebelah selatan lahan parkir dan sisi sebelah timur jalan lokal', '10 X 8  Meter', '', NULL, 1, 1, '2019-08-01 10:50:33', 1);
INSERT INTO `menara` VALUES (220, 1, 15, 159, 1, 'ESIA, TSEL, FLEXI dan ISAT', '1.   TOWER EXISTING PROTELINDO_01.', 'Kelurahan Bulusan  Kecamatan Tembalang', '0', '0', NULL, '-7.0596111111111', '110.447', '62', '20190801105146Screenshot_20.png', 'PT Bakrie Telecom, PT Telekomunikasi Selular, PT Telkom                                                    Flexi dan PT Indonesian Satelindo.', 'PT Protelindo.', 'Tower PROTELINDO ini berada di area rumah penduduk, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan rumah penduduk, sisi sebelah timur jalan lokal.', '12 X 6  Meter', '', NULL, 1, 1, '2019-08-01 10:51:46', 1);
INSERT INTO `menara` VALUES (221, 1, 3, 139, 2, 'FLEXI ', 'TOWER EXISTING TELKOM FLEXI_05', 'Concrete', '0', '0', NULL, '-6.9790277777778', '110.41458333333', '3', '20190801105146Screenshot_23.png', '', 'PT Telekomunikasi Indonesia', 'Tower TELKOM ini berada di area Hotel, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan ruko, sisi sebelah timur jalan raya.', 'Area Hotel Novotel', '', NULL, 1, 1, '2019-08-01 10:51:46', 1);
INSERT INTO `menara` VALUES (222, 1, 1, 104, 1, 'NTS', 'TOWER EXISTING NTS_02', 'Paving Block', '0', '0', NULL, '-6.9863888888889', '110.38041666667', '32', '20190801105255Screenshot_23.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '10 X 10  Meter', '', NULL, 1, 1, '2019-08-01 10:52:55', 1);
INSERT INTO `menara` VALUES (223, 1, 4, 8, 1, 'FREN', 'TOWER EXISTING MOBILE 8_08.', 'Paving Block', '0', '0', NULL, '-7.0440555555556', '110.42205555556', '72', '20190801105322Screenshot_23.png', '', 'PT Mobile 8.', 'Tower MOBILE 8 ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur rumah penduduk.', 'Grapari Mobile 8.', '', NULL, 1, 1, '2019-08-01 10:53:22', 1);
INSERT INTO `menara` VALUES (224, 1, 3, 130, 1, 'FLEXI ', 'TOWER EXISTING TELKOM FLEXI_05', 'Aspalth', '0', '0', NULL, '-6.9701666666667', '110.42463888889', '42', '20190801105413Screenshot_25.png', '', 'PT Telekomunikasi Indonesia', 'Tower TELKOM FLEXI ini berada di area perkantoran, sisi sebelah utara Kantor STO, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur Kantor STO', 'STO Telkom', '', NULL, 1, 1, '2019-08-01 10:54:13', 1);
INSERT INTO `menara` VALUES (225, 1, 15, 159, 1, 'ISAT, CERIA, HCPT dan FREN', '2.   TOWER EXISTING PROTELINDO_02.', 'Kelurahan Sendang Mulyo  Kecamatan Tembalang.', '0', '0', NULL, '-7.0469722222222', '110.476', '72', '20190801105519Screenshot_21.png', 'PT Indonesian Satelindo, PT Sampoerna Telekomunikasi                                                    Indonesia, PT Hutchison CP Telecomunication dan PT         ', 'PT Protelindo.', 'Tower PROTELINDO ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat,  sisi sebelah selatan dan sisi sebelah timur rumah penduduk.', '12 X 16  Meter.', '', NULL, 1, 1, '2019-08-01 10:55:19', 1);
INSERT INTO `menara` VALUES (226, 1, 1, 106, 1, 'NTS dan SMART', 'TOWER EXISTING NTS_03', 'Macadam', '0', '0', NULL, '-7.0015277777778', '110.37205555556', '22', '20190801105519Screenshot_24.png', '', 'PT Natrindo Telephone Seluler', '	Tower NTS ini berada di area rumah penduduk, sisi sebelah utara lahan kosong, sisi sebelah barat musholla, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', '10 X 8  Meter', '', NULL, 1, 1, '2019-08-01 10:55:19', 1);
INSERT INTO `menara` VALUES (227, 1, 3, 135, 2, 'INDOSAT', 'TOWER EXISTING LINTAS ARTHA_01', 'Concrete', '0', '0', NULL, '-6.9890277777778', '110.42380555556', '1', '20190801105550Screenshot_26.png', '', 'PT Indonesian Satelindo', 'Tower LINTAS ARTHA ini berada di area Hotel, sisi sebelah utara dan sisi sebelah barat jalan raya, sisi sebelah selatan dan sisi sebelah timur ruko.', 'Area Hotel Ciputra', '', NULL, 1, 1, '2019-08-01 10:55:50', 1);
INSERT INTO `menara` VALUES (228, 1, 4, 1, 1, 'CERIA', 'TOWER EXISTING STI_09.', 'Aspalth', '0', '0', NULL, '-7.10475', '110.4125', '52', '20190801105642Screenshot_24.png', '', 'PT Sampoerna Telekomunikasi Indonesia', 'Tower STI ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan menara dan sisi sebelah timur rumah penduduk.', '8 X 20  Meter.', '', NULL, 1, 1, '2019-08-01 10:56:42', 1);
INSERT INTO `menara` VALUES (229, 1, 3, 135, 2, 'NTS ', ' TOWER EXISTING NTS_01', 'Concrete', '0', '0', NULL, '-6.9858611111111', '110.41258333333', '3', '20190801105741Screenshot_27.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan raya dan sisi sebelah timur rumah penduduk.', 'Area RS Hermina', '', NULL, 1, 1, '2019-08-01 10:57:41', 1);
INSERT INTO `menara` VALUES (230, 1, 1, 109, 1, 'NTS', 'TOWER EXISTING NTS_04', 'Paving Block', '0', '0', NULL, '-7.0037777777778', '110.38894444444', '52', '20190801105744Screenshot_25.png', '', 'PT Natrindo Telephone Seluler', '	Tower NTS ini berada di area rumah penduduk dekat pepohonan, sisi sebelah utara jalan lokal, sisi sebelah barat rumah penduduk, sisi sebelah selatan pepohonan dan sisi sebelah timur lahan kosong', '10 X 8  Meter', '', NULL, 1, 1, '2019-08-01 10:57:44', 1);
INSERT INTO `menara` VALUES (231, 1, 1, 108, 1, 'NTS', 'TOWER EXISTING NTS_05', ' Macadam', '0', '0', NULL, '-6.9601111111111', '110.39877777778', '42', '20190801110000Screenshot_26.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area perindustrian, sisi sebelah utara jalan lokal, sisi sebelah barat industri, sisi sebelah selatan lahan kosong dan sisi sebelah timur jalan lokal', '10 X 10  Meter', '', NULL, 1, 1, '2019-08-01 11:00:00', 1);
INSERT INTO `menara` VALUES (232, 1, 3, 126, 2, 'NTS ', 'TOWER EXISTING NTS_07.', 'Concrete', '0', '0', NULL, '-6.9814444444444', '110.42736111111', '10', '20190801110002Screenshot_28.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area pertokoan, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur ruko', 'Area Ruko', '', NULL, 1, 1, '2019-08-01 11:00:02', 1);
INSERT INTO `menara` VALUES (233, 1, 4, 1, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_10', 'Aspalth', '0', '0', NULL, '-7.09575', '110.41780555556', '62', '20190801110014Screenshot_25.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area peladangan dekat rumah penduduk, sisi sebelah utara ladang, sisi sebelah barat rumah penduduk, sisi sebelah selatan menara jalan lokal dan sisi sebelah timur ladang.', '14 X 10  Meter.', '', NULL, 1, 1, '2019-08-01 11:00:14', 1);
INSERT INTO `menara` VALUES (234, 1, 15, 159, 1, 'ESIA, XL, FLEXI dan HCPT. ', '1.   TOWER EXISTING INDONUSA_01.', 'Kelurahan Sambiroto  Kecamatan Tembalang.', '0', '0', NULL, '-7.03', '110.45833333333', '42', '20190801110159Screenshot_22.png', 'PT Bakrie Telecom, PT Xl Axiata, PT Telkom Flexi dan PT                                                    Hutchison CP Telecomunication. ', 'PT Indonusa.', 'Tower INDONUSA ini berada di area rumah penduduk dekat sekolahan, sisi sebelah utara jalan lokal, sisi sebelah barat sekolahan, sisi sebelah selatan rumah penduduk, sisi sebelah timur tanah kosong.', '12 X 8  Meter.', '', NULL, 1, 1, '2019-08-01 11:01:59', 1);
INSERT INTO `menara` VALUES (235, 1, 1, 101, 2, 'NTS', 'TOWER EXISTING NTS_06', ' Concrete', '0', '0', NULL, '-6.9810833333333', '110.39888888889', '10', '20190801110214Screenshot_27.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area rumah penduduk, sisi sebelah utara jalan raya, sisi sebelah barat, sisi sebelah selatan  dan sisi sebelah timur rumah penduduk', 'Area PD Hutan Raya', '', NULL, 1, 1, '2019-08-01 11:02:14', 1);
INSERT INTO `menara` VALUES (236, 1, 3, 128, 2, 'NTS ', 'TOWER EXISTING NTS_07', 'Concrete', '0', '0', NULL, '-6.9703055555556', '110.43094444444', '10', '20190801110223Screenshot_30.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area pertokoan, sisi sebelah utara jalan raya, sisi sebelah barat ruko, sisi sebelah selatan Dealer Suzuki dan sisi sebelah timur Jalan Raya', 'Area Toko Besi Wings', '', NULL, 1, 1, '2019-08-01 11:02:23', 1);
INSERT INTO `menara` VALUES (237, 1, 4, 1, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_10', 'Aspalth', '0', '0', NULL, '-7.1030555555556', '110.41244444444', '72', '20190801110307Screenshot_26.png', '', 'PT Telekomunikasi Selular.', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara lahan kosong, sisi sebelah barat rumah penduduk, sisi sebelah selatan menara jalan lokal dan sisi sebelah timur rumah penduduk.', '10 X 18  Meter', '', NULL, 1, 1, '2019-08-01 11:03:07', 1);
INSERT INTO `menara` VALUES (238, 1, 3, 132, 2, 'NTS ', 'TOWER EXISTING NTS_07', 'Concrete', '0', '0', NULL, '-6.975', '110.42705555556', '10', '20190801110433Screenshot_31.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area pertokoan, sisi sebelah utara ruko, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur ruko', 'Area Ruko Baby Shop', '', NULL, 1, 1, '2019-08-01 11:04:33', 1);
INSERT INTO `menara` VALUES (239, 1, 3, 133, 2, 'NTS ', 'TOWER EXISTING NTS_07', 'Concrete', '0', '0', NULL, '-6.9833611111111', '110.41808333333', '10', '20190801110624Screenshot_32.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', 'Area Rumah Penduduk', '', NULL, 1, 1, '2019-08-01 11:06:24', 1);
INSERT INTO `menara` VALUES (240, 1, 4, 1, 1, 'TELKOMSEL dan FLEXI', 'TOWER EXISTING TELKOMSEL_10', 'Paving Block', '0', '0', NULL, '-7.0729722222222', '110.41619444444', '72', '20190801110800Screenshot_27.png', 'PT Telkom Flexi', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara lahan kosong, sisi sebelah barat rumah penduduk, sisi sebelah selatan menara jalan lokal dan sisi sebelah timur rumah penduduk.', '10 X 16  Meter', '', NULL, 1, 1, '2019-08-01 11:08:00', 1);
INSERT INTO `menara` VALUES (241, 1, 3, 134, 2, 'NTS ', 'TOWER EXISTING NTS_07.', 'Concrete', '0', '0', NULL, '-6.9888333333333', '110.42152777778', '10', '20190801110817Screenshot_33.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area Hotel, sisi sebelah utara CIMB Niaga, sisi sebelah barat Hotel, sisi sebelah selatan rumah makan dan sisi sebelah timur rumah penduduk', 'Area Hotel Blambangan', '', NULL, 1, 1, '2019-08-01 11:08:17', 1);
INSERT INTO `menara` VALUES (242, 1, 15, 159, 1, 'FLEXI', '2.   TOWER EXISTING INDONUSA_02.', 'Kelurahan Tandang  Kecamatan Tembalang.', '0', '0', NULL, '-7.0206666666667', '110.44694444444', '42', '20190801110818Screenshot_23.png', ' PT Telkom Flexi', 'PT Indonusa.', 'Tower INDONUSA ini berada di area lahan kosong dekat rumah penduduk, sisi sebelah utara dan sisi sebelah barat lahan kosong, sisi sebelah selatan rumah penduduk, sisi sebelah timur jalan lokal.', '12 X 6  Meter.', '', NULL, 1, 1, '2019-08-01 11:08:18', 1);
INSERT INTO `menara` VALUES (243, 1, 3, 135, 2, ' HCPT', 'TOWER EXISTING HCPT_01.', 'Concrete', '0', '0', NULL, '-6.9856944444444', '110.41269444444', '10', '20190801111054Screenshot_34.png', '', 'PT Hutchison CP Telecomunication.', 'Tower HCPT ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan raya dan sisi sebelah timur rumah penduduk', 'Area RS Hermina.', '', NULL, 1, 1, '2019-08-01 11:10:54', 1);
INSERT INTO `menara` VALUES (244, 1, 15, 159, 1, 'TELKOMSEL. ', '1.   TOWER EXISTING TELKOMSEL_01', 'Kelurahan Kramas  Kecamatan Tembalang.', '0', '0', NULL, '-7.0758055555556', '110.443', '72', '20190801111151Screenshot_24.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk dekat pepohonan, sisi sebelah utara jalan lokal, sisi sebelah barat rumah penduduk, sisi sebelah selatan pepohonan, sisi sebelah timur rumah penduduk.', '12 X 10  Meter.', '', NULL, 1, 1, '2019-08-01 11:11:51', 1);
INSERT INTO `menara` VALUES (245, 1, 3, 129, 2, 'HCPT', 'TOWER EXISTING HCPT_02.', 'Concrete', '0', '0', NULL, '-6.9898055555556', '110.42458333333', '3', '20190801111401Screenshot_35.png', '', 'PT Hutchison CP Telecom', 'Tower HCPT ini berada di area Mall, sisi sebelah utara Hotel Horison,  sisi sebelah barat jalan raya, sisi sebelah selatan Mall, sisi sebelah timur Grapari Xl.', 'Area Mall Simpang Lima', '', NULL, 1, 1, '2019-08-01 11:14:01', 1);
INSERT INTO `menara` VALUES (246, 1, 4, 7, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_10', 'Concrete', '0', '0', NULL, '-7.0702777777778', '110.43002777778', '52', '20190801111452Screenshot_28.png', '', 'PT Telekomunikasi Selular.', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk.', '10 X 8  Meter', '', NULL, 1, 1, '2019-08-01 11:14:52', 1);
INSERT INTO `menara` VALUES (247, 1, 15, 159, 1, 'TELKOMSEL dan FLEXI. ', '2.   TOWER EXISTING TELKOMSEL_02.', 'Kelurahan Bulusan  Kecamatan Tembalang', '0', '0', NULL, '-7.0635', '110.4365', '72', '20190801111538Screenshot_25.png', 'PT Telkom Flexi.               ', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area pepohonan, sisi sebelah utara pepohonan, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur pepohonan.', '16 X 14 Meter.', '', NULL, 1, 1, '2019-08-01 11:15:38', 1);
INSERT INTO `menara` VALUES (248, 1, 3, 128, 2, 'HCPT', 'TOWER EXISTING HCPT_08', 'Concrete', '0', '0', NULL, '-6.9841666666667', '110.43063888889', '3', '20190801111550Screenshot_36.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area pertokona, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur ruko.', 'Area Ruko Mataram', '', NULL, 1, 1, '2019-08-01 11:15:50', 1);
INSERT INTO `menara` VALUES (249, 1, 4, 8, 1, 'TELKOMSEL. ', 'TOWER EXISTING TELKOMSEL_10.', 'Aspalth', '0', '0', NULL, '-7.0454166666667', '110.42363888889', '82', '20190801111714Screenshot_29.png', '', 'PT Telekomunikasi Selular.', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat jalan lokal, sisi sebelah selatan Grapari Indosat dan sisi sebelah timur rumah penduduk.', 'Area Grapari Telkomsel', '', NULL, 1, 1, '2019-08-01 11:17:14', 1);
INSERT INTO `menara` VALUES (250, 1, 3, 132, 2, 'HCPT', 'TOWER EXISTING HCPT_08.', 'Concrete', '0', '0', NULL, '-6.9790833333333', '110.42366666667', '10', '20190801111741Screenshot_37.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area ruko dekat rumah penduduk, sisi sebelah utara dan sisi sebelah barat ruko, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', 'Area Ruko', '', NULL, 1, 1, '2019-08-01 11:17:41', 1);
INSERT INTO `menara` VALUES (251, 1, 1, 100, 1, 'NTS', 'TOWER EXISTING NTS_07', 'Paving Block', '0', '0', NULL, '-6.9925555555556', '110.39344444444', '22', '20190801111834Screenshot_28.png', '', 'PT Natrindo Telephone Seluler', 'Tower NTS ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan  dan sisi sebelah timur rumah penduduk', '10 X 8  Meter', '', NULL, 1, 1, '2019-08-01 11:18:34', 1);
INSERT INTO `menara` VALUES (252, 1, 15, 159, 1, 'TELKOMSEL. ', '3.   TOWER EXISTING TELKOMSEL_03.', 'Kelurahan Meteseh  Kecamatan Tembalang.', '0', '0', NULL, '-7.0707777777778', '110.46088888889', '72', '20190801111859Screenshot_26.png', '', 'PT Telekomunikasi Selular.', 'Tower TELKOMSEL ini berada di area pepohonan dekat rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat dan sisi sebelah selatan pepohonan, sisi sebelah timur jalan lokal.', '12 X 14 Meter', '', NULL, 1, 1, '2019-08-01 11:18:59', 1);
INSERT INTO `menara` VALUES (253, 1, 4, 10, 1, 'TELKOMSEL. ', 'TOWER EXISTING TELKOMSEL_10.', 'Aspalth', '0', '0', NULL, '-7.0277222222222', '110.40622222222', '42', '20190801111908Screenshot_30.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area lahan kosong, sisi sebelah utara dan sisi sebelah barat lahan kosong, sisi sebelah selatan jalan lokal dan sisi sebelah timur lahan kosong.', '8 X 6 Meter', '', NULL, 1, 1, '2019-08-01 11:19:08', 1);
INSERT INTO `menara` VALUES (254, 1, 3, 138, 2, 'HCPT', 'TOWER EXISTING HCPT_08', 'Concrete', '0', '0', NULL, '-6.9708055555556', '110.42941666667', '3', '20190801111923Screenshot_38.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area ruko, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan ruko, sisi sebelah timur jalan loka', ' Area CV Surya Tekhnik Utama', '', NULL, 1, 1, '2019-08-01 11:19:23', 1);
INSERT INTO `menara` VALUES (255, 1, 3, 134, 2, 'HCPT', 'TOWER EXISTING HCPT_08', 'Concrete', '0', '0', NULL, '-6.9733055555556', '110.42044444444', '3', '20190801112057Screenshot_39.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area ruko, sisi sebelah utara dan sisi sebelah barat ruko, sisi sebelah selatan jalan raya, sisi sebelah timur jalan raya', 'Area Mall Sri Ratu', '', NULL, 1, 1, '2019-08-01 11:20:57', 1);
INSERT INTO `menara` VALUES (256, 1, 4, 9, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_10', 'Concrete', '0', '0', NULL, '-7.0499444444444', '110.41141666667', '42', '20190801112124Screenshot_31.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area pepohonan dekat rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan rumah penduduk dan sisi sebelah timur pepohonan.', '12 X 12 Meter.', '', NULL, 1, 1, '2019-08-01 11:21:24', 1);
INSERT INTO `menara` VALUES (257, 1, 3, 134, 2, 'HCPT', 'TOWER EXISTING HCPT_08', 'Concrete', '0', '0', NULL, '-6.9773333333333', '110.41591666667', '2', '20190801112223Screenshot_40.png', '', 'PT Hutchison CP Telecomunication', 'Tower HCPT ini berada di area Universitas, sisi sebelah utara dan sisi sebelah barat gedung perkuliahan, sisi sebelah selatan jalan raya, sisi sebelah timur gedung gedung perkuliahan', 'Area Kampus UNAKI', '', NULL, 1, 1, '2019-08-01 11:22:23', 1);
INSERT INTO `menara` VALUES (258, 1, 15, 159, 1, 'TELKOMSEL dan FLEXI. ', '4   TOWER EXISTING TELKOMSEL_04.', 'Kelurahan Mangun Harjo  Kecamatan Tembalang.', '0', '0', NULL, '-7.0445833333333', '110.46022222222', '52', '20190801112229Screenshot_27.png', 'PT Telkom Flexi.                     ', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara ladang, sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk.', '12 X 10 Meter.', '', NULL, 1, 1, '2019-08-01 11:22:29', 1);
INSERT INTO `menara` VALUES (259, 1, 4, 9, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_10.', 'Aspalth', '0', '0', NULL, '-7.0590277777778', '110.41144444444', '42', '20190801112334Screenshot_32.png', '', 'PT Telekomunikasi Selular.', '	Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur rumah penduduk.', '12 X 10 Meter', '', NULL, 1, 1, '2019-08-01 11:23:34', 1);
INSERT INTO `menara` VALUES (260, 1, 3, 129, 2, 'XL', 'TOWER EXISTING XL AXIATA_09.', 'Concrete', '0', '0', NULL, '-6.9899166666667', '110.42427777778', '3', '20190801112404Screenshot_41.png', '', 'PT Xl Axiata.', 'Tower XL AXIATA ini berada di area Mall, sisi sebelah utara Hotel Horison, sisi sebelah barat jalan raya, sisi sebelah selatan Mall dan sisi sebelah timur Grapari Xl', 'Area Mall Simpang Lima', '', NULL, 1, 1, '2019-08-01 11:24:04', 1);
INSERT INTO `menara` VALUES (261, 1, 3, 129, 2, 'XL', 'TOWER EXISTING XL AXIATA_09', 'Concrete', '0', '0', NULL, '-6.9910277777778', '110.42502777778', '5', '20190801112547Screenshot_42.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area ruko dekat perkantoran, sisi sebelah utara ruko, sisi sebelah barat Mall, sisi sebelah selatan jalan raya dan sisi sebelah timur Gereja', 'Area Grapari Xl', '', NULL, 1, 1, '2019-08-01 11:25:47', 1);
INSERT INTO `menara` VALUES (262, 1, 15, 159, 1, 'TELKOMSEL. ', '   5   TOWER EXISTING TELKOMSEL_05', 'Kelurahan Tembalang  Kecamatan Tembalang', '0', '0', NULL, '-7.0500555555556', '110.44025', '72', '20190801112630Screenshot_28.png', '', 'PT Telekomunikasi Selular.', 'Tower TELKOMSEL ini berada di area lahan kosong, sisi sebelah utara lahan kosong, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur lahan kosong.', '12 X 10 Meter.', '', NULL, 1, 1, '2019-08-01 11:26:30', 1);
INSERT INTO `menara` VALUES (263, 1, 4, 4, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_10', 'Paving Block', '0', '0', NULL, '-7.0938888888889', '110.40711111111', '72', '20190801112710Screenshot_33.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat pepohonan, sisi sebelah selatan rumah penduduk dan sisi sebelah timur jalan lokal.', '14 X 14 Meter.', '', NULL, 1, 1, '2019-08-01 11:27:10', 1);
INSERT INTO `menara` VALUES (264, 1, 3, 135, 2, 'XL', 'TOWER EXISTING XL AXIATA_09', 'Concrete', '0', '0', NULL, '-6.9869444444444', '110.4155', '3', '20190801112806Screenshot_44.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area Hotel dekat rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat Grapari Telkomsel, sisi sebelah selatan jalan raya dan sisi sebelah timur PT Holcim', 'Area Hotel Pandanaran', '', NULL, 1, 1, '2019-08-01 11:28:06', 1);
INSERT INTO `menara` VALUES (265, 1, 4, 4, 1, 'XL, HCPT dan FREN. ', 'TOWER EXISTING TBG_11.', 'Macadam', '0', '0', NULL, '-7.0735833333333', '110.42188888889', '52', '20190801112948Screenshot_34.png', 'PT Xl Axiata, PT Hutchison CP Telecomunication dan PT Mobile 8.', 'PT Tower Bersama Group', 'Tower TBG ini berada di area pepohonan, sisi sebelah utara jalan lokal, sisi sebelah barat dan sisi sebelah selatan menara pepohonan,  sisi sebelah timur menara Bakrie Telecom.', '14 X 10  Meter', '', NULL, 1, 1, '2019-08-01 11:29:48', 1);
INSERT INTO `menara` VALUES (266, 1, 3, 132, 1, 'XL', 'TOWER EXISTING XL AXIATA_09', 'Paving Block', '0', '0', NULL, '-6.9756111111111', '110.4275', '42', '20190801112954Screenshot_45.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area Ruko, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan ruko, sisi sebelah timur jalan lokal.', '6 X 8 ', '', NULL, 1, 1, '2019-08-01 11:29:54', 1);
INSERT INTO `menara` VALUES (267, 1, 15, 159, 1, 'TELKOMSEL. ', '6   TOWER EXISTING TELKOMSEL_06.', 'Kelurahan Sendang Guo  Kecamatan Tembalang.', '0', '0', NULL, '-7.0170277777778', '110.45405555556', '42', '20190801113113Screenshot_29.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan lahan kosong dan sisi sebelah timur rumah penduduk.', '12 X 10 Meter.', '', NULL, 1, 1, '2019-08-01 11:31:13', 1);
INSERT INTO `menara` VALUES (268, 1, 3, 134, 2, 'XL', 'TOWER EXISTING XL AXIATA_09.', 'Concrete', '0', '0', NULL, '-6.9734444444444', '110.42052777778', '3', '20190801113113Screenshot_46.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area Ruko, sisi sebelah utara dan sisi sebelah barat ruko, sisi sebelah selatan jalan raya, sisi sebelah timur ruko', 'Area Mall Sri Ratu', '', NULL, 1, 1, '2019-08-01 11:31:13', 1);
INSERT INTO `menara` VALUES (269, 1, 1, 108, 1, 'FREN', 'TOWER EXISTING METRO SELULER NUSANTARA_01', 'Paving Block', '0', '0', NULL, '-6.9747777777778', '110.40055555556', '42', '20190801113126Screenshot_29.png', 'PT Mobile 8', 'PT Metro Seluler Nusantara', 'Tower MSN ini berada di area rumah penduduk, sisi sebelah utara bengkel, sisi sebelah barat rumah penduduk, sisi sebelah selatan dan sisi sebelah timur jalan lokal', '10 X 16  Meter', '', NULL, 1, 1, '2019-08-01 11:31:26', 1);
INSERT INTO `menara` VALUES (270, 1, 4, 1, 1, 'XL dan ESIA. ', 'TOWER EXISTING XL AXIATA_12.', 'Concrete', '0', '0', NULL, '-7.0962777777778', '110.41697222222', '52', '20190801113218Screenshot_35.png', 'PT Bakrie Telecom', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area pepohonan, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan menara dan  sisi sebelah timur pepohonan.', '6 X 6  Meter.', '', NULL, 1, 1, '2019-08-01 11:32:18', 1);
INSERT INTO `menara` VALUES (271, 1, 3, 127, 1, 'XL', 'TOWER EXISTING XL AXIATA_09', 'Paving Block', '0', '0', NULL, '-6.9823888888889', '110.42191666667', '32', '20190801113245Screenshot_47.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area Hotel dekat Ruko, sisi sebelah utara Hotel Telomoyo, sisi sebelah barat jalan lokal, sisi sebelah selatan Hotel Telomoyo dan sisi sebelah timur Ruko.', '6 X 6 ', '', NULL, 1, 1, '2019-08-01 11:32:45', 1);
INSERT INTO `menara` VALUES (272, 1, 15, 159, 1, 'TELKOMSEL. ', '7   TOWER EXISTING TELKOMSEL_07.', 'Kelurahan Kedung Mundu  Kecamatan Tembalang.', '0', '0', NULL, '-7.0233611111111', '110.46213888889', '52', '20190801113325Screenshot_30.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk dekat pepohonan, sisi sebelah utara rumah penduduk, sisi sebelah barat pepohonan, sisi sebelah selatan rumah penduduk dan sisi sebelah timur jalan lokal.', '12 X 10 Meter.', '', NULL, 1, 1, '2019-08-01 11:33:25', 1);
INSERT INTO `menara` VALUES (273, 1, 1, 108, 1, 'FLEXI', 'TOWER EXISTING IT_01', 'Paving Block', '0', '0', NULL, '-6.9773611111111', '110.39497222222', '52', '20190801113406Screenshot_30.png', 'PT Telekomunikasi Indonesia', 'PT Indonesian Tower', 'Tower INDONESIAN TOWER ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', '12 X 14  Meter', '', NULL, 1, 1, '2019-08-01 11:34:06', 1);
INSERT INTO `menara` VALUES (274, 1, 3, 129, 2, 'ESIA ', 'TOWER EXISTING BAKRIE TELECOM_10.', 'Concrete', '0', '0', NULL, '-6.9900555555556', '110.42413888889', '3', '20190801113435Screenshot_48.png', '', 'PT Bakrie Telecom', 'Tower BAKRIE TELECOM ini berada di area Mall, sisi sebelah utara Hotel Horison, sisi sebelah barat jalan raya, sisi sebelah selatan Mall dan sisi sebelah timur Grapari Xl.', 'Area Mall Simpang Lima', '', NULL, 1, 1, '2019-08-01 11:34:35', 1);
INSERT INTO `menara` VALUES (275, 1, 4, 6, 1, 'XL dan HCPT. ', 'TOWER EXISTING XL AXIATA_12', 'Paving Block', '0', '0', NULL, '-7.0659444444444', '110.41433333333', '72', '20190801113452Screenshot_36.png', 'PT Hutchison CP Telecomunication', 'PT Xl Axiata.', 'Tower XL AXIATA ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan dan  sisi sebelah timur rumah penduduk.', '12 X 12  Meter', '', NULL, 1, 1, '2019-08-01 11:34:52', 1);
INSERT INTO `menara` VALUES (276, 1, 15, 159, 1, 'TELKOMSEL. ', '8   TOWER EXISTING TELKOMSEL_07.', 'Kelurahan Sendang Mulyo  Kecamatan Tembalang.', '0', '0', NULL, '-7.0336388888889', '110.47333333333', '72', '20190801113613Screenshot_31.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di lahan kosong, sisi sebelah utara dan sisi sebelah barat lahan kosong, sisi sebelah selatan jalan lokal dan sisi sebelah timur pepohonan.', '12 X 12 Meter.', '', NULL, 1, 1, '2019-08-01 11:36:13', 1);
INSERT INTO `menara` VALUES (277, 1, 3, 128, 2, 'ESIA', 'TOWER EXISTING BAKRIE TELECOM_10.', 'Concrete', '0', '0', NULL, '-6.9861944444444', '110.43133333333', '10', '20190801113618Screenshot_49.png', '', 'PT Bakrie Telecom', 'Tower BAKRIE TELECOM ini berada di area pertokoan, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan ruko, sisi sebelah timur jalan raya', 'Area Ruko Mataram Gelora', '', NULL, 1, 1, '2019-08-01 11:36:18', 1);
INSERT INTO `menara` VALUES (278, 1, 1, 100, 1, 'XL', 'TOWER EXISTING IT_02', 'Aspalth', '0', '0', NULL, '-6.9904166666667', '110.39316666667', '42', '20190801113638Screenshot_31.png', 'PT Xl Axiata', 'PT Indonesian Tower', 'Tower INDONESIAN TOWER ini berada di area rumah penduduk, sisi sebelah utara, sisi sebelah barat dan sisi sebelah selatan rumah penduduk dan sisi sebelah timur jalan lokal', '7 X 6  Meter', '', NULL, 1, 1, '2019-08-01 11:36:38', 1);
INSERT INTO `menara` VALUES (279, 1, 3, 134, 2, 'ESIA', 'TOWER EXISTING BAKRIE TELECOM_10', 'Concrete', '0', '0', NULL, '-6.9731944444444', '110.42061111111', '3', '20190801113759Screenshot_50.png', '', 'PT Bakrie Telecom', 'Tower BAKRIE TELECOM ini berada di area pertokoan, sisi sebelah utara dan sisi sebelah barat ruko, sisi sebelah selatan jalan raya, sisi sebelah timur  ruko', 'Area Mall Sri Ratu', '', NULL, 1, 1, '2019-08-01 11:37:59', 1);
INSERT INTO `menara` VALUES (280, 1, 4, 1, 1, 'XL', 'TOWER EXISTING XL AXIATA_12', 'Aspalth', '0', '0', NULL, '-7.0519722222222', '110.41741666667', '10', '20190801113823Screenshot_37.png', '', 'PT Xl Axiata.', 'Tower XL AXIATA ini berada di area rumah penduduk, sisi sebelah utara jalan raya, sisi sebelah barat jalan lokal, sisi sebelah selatan rumah penduduk dan sisi sebelah timur apotek.', 'Area Apotek 7 Days.', '', NULL, 1, 1, '2019-08-01 11:38:23', 1);
INSERT INTO `menara` VALUES (281, 1, 15, 159, 1, 'FLEXI. ', '1.   TOWER EXISTING TELKOM FLEXI_01.', 'Kelurahan Mangunharjo  Kecamatan Tembalang.', '0', '0', NULL, '-7.0436388888889', '110.45775', '72', '20190801113849Screenshot_32.png', '', 'PT Telekomunikasi Indonesia.', 'Tower TELKOM ini berada di area rumah penduduk dekat pepohonan, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur pepohonan.', '12 X 14  Meter.', '', NULL, 1, 1, '2019-08-01 11:38:49', 1);
INSERT INTO `menara` VALUES (282, 1, 1, 109, 1, 'SMART', 'TOWER EXISTING PT DIAN SWASTATIKA_01', 'Paving Block', '0', '0', NULL, '-7.0036944444444', '110.3895', '72', '20190801113903Screenshot_32.png', 'PT Indoprima Mikroselindo', 'PT Dian Swastatika', 'Tower PT DIAN SWASTATIKA ini berada di area rumah penduduk, sisi sebelah utara,sisi sebelah barat dan sisi sebelah selatan rumah penduduk, sisi sebelah timur jalan lokal', '10 X 18  Meter', '', NULL, 1, 1, '2019-08-01 11:39:03', 1);
INSERT INTO `menara` VALUES (283, 1, 3, 130, 2, 'ESIA', 'TOWER EXISTING BAKRIE TELECOM_10.', 'Concrete', '0', '0', NULL, '-6.9710277777778', '110.42477777778', '2', '20190801113945Screenshot_51.png', '', 'PT Bakrie Telecom', 'Tower BAKRIE TELECOM ini berada di area pertokoan, sisi sebelah utara Kantor Telkom, sisi sebelah barat ruko, sisi sebelah selatan jalan lokal dan sisi sebelah timur ruko.', 'Area Mall Matahari', '', NULL, 1, 1, '2019-08-01 11:39:45', 1);
INSERT INTO `menara` VALUES (284, 1, 4, 9, 2, 'XL', 'TOWER EXISTING XL AXIATA_12', 'Concrete', '0', '0', NULL, '-7.0617777777778', '110.41275', '3', '20190801114041Screenshot_38.png', '', 'PT Xl Axiata.', 'Tower XL AXIATA ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat rumah penduduk, sisi sebelah selatan ruko dan sisi sebelah timur jalan raya.', 'Area ADA Hypermart', '', NULL, 1, 1, '2019-08-01 11:40:41', 1);
INSERT INTO `menara` VALUES (285, 1, 1, 108, 1, 'SMART', 'TOWER EXISTING PT DIAN SWASTATIKA_02', 'Paving Block', '0', '0', NULL, '-6.9713333333333', '110.39655555556', '52', '20190801114128Screenshot_33.png', 'PT Indoprima Mikroselindo', 'PT Dian Swastatika', 'Tower PT DIAN SWASTATIKA ini berada di area rumah penduduk, sisi sebelah utara,sisi sebelah barat dan sisi sebelah selatan rumah penduduk, sisi sebelah timur jalan lokal', '12 X 20  Meter', '', NULL, 1, 1, '2019-08-01 11:41:28', 1);
INSERT INTO `menara` VALUES (286, 1, 15, 159, 1, 'XL dan HCPT. ', '1.   TOWER EXISTING XL AXIATA_01.', 'Kelurahan Rowosari  Kecamatan Tembalang.', '0', '0', NULL, '-7.0798333333333', '110.46366666667', '52', '20190801114129Screenshot_33.png', 'PT Hutchison CP Telecomunication', 'PT Xl Axiata.', 'Tower XL AXIATA  ini berada di area rumah penduduk dekat pepohonan, sisi sebelah utara jalan lokal, sisi sebelah barat rumah penduduk, sisi sebelah selatan pepohonan, sisi sebelah timur rumah penduduk.', '16 X 13  Meter.', '', NULL, 1, 1, '2019-08-01 11:41:29', 1);
INSERT INTO `menara` VALUES (287, 1, 3, 135, 1, 'SMART', 'TOWER EXISTING DIAN SWASTATIKA_11', 'Aspalth', '0', '0', NULL, '-6.9866666666667', '110.42355555556', '72', '20190801114137Screenshot_52.png', '', 'PT Primasel', 'Tower DIAN SWASTATIKA ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur rumah penduduk.', 'Area Rumah Penduduk', '', NULL, 1, 1, '2019-08-01 11:41:37', 1);
INSERT INTO `menara` VALUES (288, 1, 4, 9, 5, 'XL', 'TOWER EXISTING XL AXIATA_12.', 'Paving Block', '0', '0', NULL, '-7.0509166666667', '110.41794444444', '42', '20190801114341Screenshot_39.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di lahan kosong, sisi sebelah utara lahan kosong, sisi sebelah barat ruko, sisi sebelah selatan jalan lokal dan sisi sebelah timur jalan raya.', '6 X 6  Meter.', '', NULL, 1, 1, '2019-08-01 11:43:41', 1);
INSERT INTO `menara` VALUES (289, 1, 3, 134, 2, 'SMART', 'TOWER EXISTING DIAN SWASTATIKA_11', 'Concrete', '0', '0', NULL, '-6.9732222222222', '110.42052777778', '3', '20190801114352Screenshot_53.png', '', 'PT Primasel', 'Tower DIAN SWASTATIKA ini berada di area pertokoan, sisi sebelah utara dan sisi sebelah barat ruko, sisi sebelah selatan jala raya dan sisi sebelah timur ruko.', 'Area Mall Sri Ratu', '', NULL, 1, 1, '2019-08-01 11:43:52', 1);
INSERT INTO `menara` VALUES (290, 1, 1, 105, 1, 'SMART', 'TOWER EXISTING PT DIAN SWASTATIKA_03', 'Concrete', '0', '0', NULL, '-6.9814166666667', '110.39558333333', '15', '20190801114401Screenshot_34.png', 'PT Indoprima Mikroselindo', 'PT Dian Swastatika', 'Tower PT DIAN SWASTATIKA ini berada di area rumah penduduk dekat pertokoan, sisi sebelah utara rumah penduduk,sisi sebelah barat ruko, sisi sebelah selatan jalan lokal, sisi sebelah timur ruko', 'Penginapan Karang Ayu', '', NULL, 1, 1, '2019-08-01 11:44:01', 1);
INSERT INTO `menara` VALUES (291, 1, 15, 159, 1, 'XL. ', '2.   TOWER EXISTING XL AXIATA_02.', 'Kelurahan Bulusan  Kecamatan Tembalang.', '0', '0', NULL, '-7.0620555555556', '110.44808333333', '72', '20190801114401Screenshot_34.png', '', 'PT Xl Axiata', 'Tower XL AXIATA  ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal, sisi sebelah timur ladang.', '10 X 12  Meter.', '', NULL, 1, 1, '2019-08-01 11:44:01', 1);
INSERT INTO `menara` VALUES (292, 1, 3, 128, 1, 'SMART, INDOSAT dan TELKOMSEL', '.MENARA RADIO_12', 'Concrete', '0', '0', NULL, '-6.9754722222222', '110.43125', '72', '20190801114543Screenshot_54.png', '', 'PT Primasel, PT Indonesian Satelindo dan PT Telekomunikasi Selula', 'Menara RADIO ini berada di area rumah penduduk, sisi sebelah utara ruko, sisi sebelah barat rumah penduduk, sisi sebelah selatan ruko dan sisi sebelah timur jalan lokal', 'Area Radio Gajah Mada', '', NULL, 1, 1, '2019-08-01 11:45:43', 1);
INSERT INTO `menara` VALUES (293, 1, 4, 11, 1, '', 'TOWER EXISTING MENARA POLRI_13.', 'Macadam', '0', '0', NULL, '-7.0424444444444', '110.42172222222', '120', '20190801114615Screenshot_40.png', '', 'POLRI.', 'Tower POLRI ini berada di area rumah penduduk, sisi sebelah utara lahan kosong, sisi sebelah barat pepohonan, sisi sebelah selatan rumah penduduk dan  sisi sebelah timur jalan lokal.', '10 X 10 Meter.', '', NULL, 1, 1, '2019-08-01 11:46:15', 1);
INSERT INTO `menara` VALUES (294, 1, 15, 159, 1, 'XL, ESIA dan HCPT. ', '3.   TOWER EXISTING XL AXIATA_03', 'Kelurahan Mangunharjo  Kecamatan Tembalang', '0', '0', NULL, '-7.0445555555556', '110.4595', '72', '20190801114625Screenshot_35.png', 'PT Bakrie Telecom dan PT Hutchison CP Telecomunication. ', 'PT Xl Axiata.', 'Tower XL AXIATA  ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur rumah penduduk.', '8 X 8  Meter.', '', NULL, 1, 1, '2019-08-01 11:46:25', 1);
INSERT INTO `menara` VALUES (295, 1, 1, 109, 1, 'ESIA', 'TOWER EXISTING RADIO_01', 'Aspalth', '0', '0', NULL, '-7.0012222222222', '110.38016666667', '72', '20190801114627Screenshot_35.png', 'PT Bakrie Telecom', 'PT Radio Radiks FM', 'Tower RADIO ini berada di area lahan kosong dekat pepohonan, sisi sebelah utara pepohonan, sisi sebelah barat lahan kosong, sisi sebelah selatan menara Xl dan sisi sebelah timur jalan lokal', 'Area Radio Radiks FM', '', NULL, 1, 1, '2019-08-01 11:46:27', 1);
INSERT INTO `menara` VALUES (296, 1, 3, 129, 1, 'NTS ', ' MENARA RADIO_12.', 'Paving Block', '0', '0', NULL, '-6.99175', '110.42766666667', '125', '20190801114749Screenshot_55.png', '', 'PT Natrindo Telephone Seluler', 'Menara RADIO ini berada di area Kantor RRI, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur Kantor RRI', 'Area RRI', '', NULL, 1, 1, '2019-08-01 11:47:49', 1);
INSERT INTO `menara` VALUES (297, 1, 4, 8, 1, '', 'TOWER EXISTING TV 7_14.', 'Aspalth', '0', '0', NULL, '-7.0447777777778', '110.42361111111', '125', '20190801114907Screenshot_41.png', '', 'TV 7.', 'Tower TV 7 ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat Grapari Indosat, sisi sebelah selatan rumah penduduk dan  sisi sebelah timur jalan lokal.', 'Area TV 7.', '', NULL, 1, 1, '2019-08-01 11:49:07', 1);
INSERT INTO `menara` VALUES (298, 1, 1, 114, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_01', 'Paving Block', '0', '0', NULL, '-6.9603888888889', '110.39330555556', '32', '20190801114928Screenshot_36.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area lahan kosong, sisi sebelah utara lahan kosong, sisi sebelah barat dan sisi sebelah selatan lahan kosong, sisi sebelah timur ruko', '6 X 8  Meter', '', NULL, 1, 1, '2019-08-01 11:49:28', 1);
INSERT INTO `menara` VALUES (299, 1, 4, 11, 1, 'FLEXI-', '.   TOWER EXISTING TELKOM FLEXI_15.', 'Aspalth', '0', '0', NULL, '-7.0451111111111', '110.4265', '52', '20190801115159Screenshot_42.png', '', 'PT Telekomunikasi Indonesia.', 'Tower TELKOM ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat jalan lokal, sisi sebelah selatan dan  sisi sebelah timur rumah penduduk.', 'Area STO Telkom', '', NULL, 1, 1, '2019-08-01 11:51:59', 1);
INSERT INTO `menara` VALUES (300, 1, 4, 9, 5, 'FLEXI- ', 'TOWER EXISTING TELKOM FLEXI_15.', 'Soil', '0', '0', NULL, '-7.0643611111111', '110.41222222222', '32', '20190801115511Screenshot_43.png', '', 'PT Telekomunikasi Indonesia.', 'Tower TELKOM ini berada di area perkantoran, sisi sebelah utara jalan lokal, sisi sebelah barat kantor STO, sisi sebelah selatan jalan lokal dan  sisi sebelah timur jalan raya.', 'Area STO Telkom', '', NULL, 1, 1, '2019-08-01 11:55:11', 1);
INSERT INTO `menara` VALUES (301, 1, 4, 1, 1, 'FLEXI.', 'TOWER EXISTING TELKOM FLEXI_15', 'Macadam', '0', '0', NULL, '-7.0990555555556', '110.4065', '72', '20190801120010Screenshot_44.png', '', 'PT Telekomunikasi Indonesia.', 'Tower TELKOM ini berada di lahan kosong dekat rumah penduduk, sisi sebelah utara rmah penduduk, sisi sebelah barat lahan kosong, sisi sebelah selatan jalan lokal dan  sisi sebelah timur rumah penduduk.', '10 X 6 Meter.', '', NULL, 1, 1, '2019-08-01 12:00:10', 1);
INSERT INTO `menara` VALUES (302, 1, 15, 159, 1, ' XL. ', '3.   TOWER EXISTING XL AXIATA_03.', 'Kelurahan Sendang Guwo  Kecamatan Tembalang.', '0', '0', NULL, '-7.0135833333333', '110.45194444444', '42', '20190801120251Screenshot_36.png', 'PT Bakrie Telecom dan PT Hutchison CP Telecomunication', 'PT Xl Axiata.', 'Tower XL AXIATA  ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur rumah penduduk.', '6 X 6  Meter.', '', NULL, 1, 1, '2019-08-01 12:02:51', 1);
INSERT INTO `menara` VALUES (303, 1, 4, 11, 1, '', 'TOWER EXISTING INDOSIAR_16./', 'Aspalth', '0', '0', NULL, '-7.0448055555556', '110.42638888889', '125', '20190801120252Screenshot_45.png', '', 'PT Indosiar Visual Mandiri.', 'Tower INDOSIAR ini berada di area lahan kosong, sisi sebelah utara jalan lokal, sisi sebelah barat menara Smart, sisi sebelah selatan dan  isi sebelah timur jalan lokal.', 'Area Stasiun Televisi Indosiar', '', NULL, 1, 1, '2019-08-01 12:02:52', 1);
INSERT INTO `menara` VALUES (304, 1, 4, 11, 1, 'SMART.', 'TOWER EXISTING INDOPRIMA MIKROSELINDO_17.', 'Aspalth', '0', '0', NULL, '-7.04475', '110.42622222222', '82', '20190801120502Screenshot_46.png', '', 'PT Indoprima Mikroselindo.', 'Tower INDOPRIMA MIKROSELINDO ini berada di area lahan kosong, sisi sebelah utara Grapari SMART, sisi sebelah barat menara SCTV, sisi sebelah selatan Grapari SMART dan  isi sebelah timur menara Indosiar.', 'Area Grapari SMART.', '', NULL, 1, 1, '2019-08-01 12:05:02', 1);
INSERT INTO `menara` VALUES (305, 1, 4, 11, 1, '', 'TOWER EXISTING SCTV_18.', 'Paving Block', '0', '0', NULL, '-7.0446388888889', '110.42577777778', '125', '20190801120706Screenshot_47.png', '', 'Surya Citra Televisi', 'Tower SCTV ini berada di area lahan kosong, sisi sebelah utara jalan lokal, sisi sebelah barat menara Radio Imelda, sisi sebelah selatan lahan kosong dan  isi sebelah timur menara SMART.', 'Area Stasiun Televisi SCTV.', '', NULL, 1, 1, '2019-08-01 12:07:06', 1);
INSERT INTO `menara` VALUES (306, 1, 4, 11, 1, 'ESIA dan XL-', 'TOWER EXISTING TV MATARAM CAKRAWALA_19.', 'Paving Block', '0', '0', NULL, '-7.0445', '110.42563888889', '125', '20190801121007Screenshot_48.png', 'PT Bakrie Telecom dan PT Xl Axiata.', 'TV Mataram Cakrawala.', 'Tower TV MATARAM CAKRAWALA ini berada di arera pepohonan, sisi sebelah utara rumah penduduk, sisi sebelah barat pepohonan, sisi sebelah selatan jalan lokal dan  isi sebelah timur pepohonan.', 'Area Stasiun Televisi Mataram Cakrawala.', '', NULL, 1, 1, '2019-08-01 12:10:07', 1);
INSERT INTO `menara` VALUES (307, 1, 15, 159, 1, 'XL. ', '4.   TOWER EXISTING XL AXIATA_03', 'Kelurahan Sendang Mulyo  Kecamatan Tembalang.', '0', '0', NULL, '-7.0296111111111', '110.47288888889', '72', '20190801121129Screenshot_36.png', '', 'PT Xl Axiata.', 'Tower XL AXIATA  ini berada di lahan kosong, sisi sebelah utara lahan kosong, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur lahan kosong.', '9 X 6  Meter', '', NULL, 1, 1, '2019-08-01 12:11:29', 1);
INSERT INTO `menara` VALUES (308, 1, 4, 11, 1, '', 'TOWER EXISTING RADIO IMELDA_20.', 'Paving Block', '0', '0', NULL, '-7.0445277777778', '110.42561111111', '125', '20190801121249Screenshot_49.png', '', 'Radio Imelda', 'Tower RADIO ini berada di arera rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat rumah penduduk, sisi sebelah selatan dan isi sebelah timur menara SCTV.', 'Area Radio Imelda', '', NULL, 1, 1, '2019-08-01 12:12:49', 1);
INSERT INTO `menara` VALUES (309, 1, 4, 6, 1, 'TELKOMSEL', 'TOWER EXISTING RRI_21.', 'Aspalth', '0', '0', NULL, '-7.0577777777778', '110.41502777778', '125', '20190801121524Screenshot_50.png', 'PT Telekomunikasi Selular', 'RRI', 'Tower RADIO ini berada di arera rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat lahan kosong, sisi sebelah selatan dan isi sebelah timur rumah penduduk', 'Area RRI', '', NULL, 1, 1, '2019-08-01 12:15:24', 1);
INSERT INTO `menara` VALUES (310, 1, 4, 11, 1, '', 'TOWER EXISTING METRO TV_01.', 'Paving Block', '0', '0', NULL, '-7.04425', '110.42483333333', '125', '20190801121707Screenshot_51.png', '', 'Metro TV', 'Tower METRO TV ini berada di arera rumah penduduk, sisi sebelah utara lahan kosong, sisi sebelah barat menara Trans TV, sisi sebelah selatan jalan lokal dan isi sebelah timur rumah dinas', 'Area Stasiun Metro TV', '', NULL, 1, 1, '2019-08-01 12:17:07', 1);
INSERT INTO `menara` VALUES (311, 1, 15, 159, 1, 'TELKOMSEL, FLEXI dan ESIA', '1.   TOWER EXISTING IT_01', 'Paving Block.', '0', '0', NULL, '-7.0471111111111', '110.47594444444', '72', '20190801121820Screenshot_37.png', 'PT Telekomunikasi Selular, PT Telkom dan PT Bakrie                                                    Telecom.       ', 'PT Indonesian Tower', 'Tower IT ini berada di lahan kosong dekat rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat rumah penduduk, sisi sebelah selatan lahan kosong, sisi sebelah timur rumah penduduk.', '14 X 12  Meter.', '', NULL, 1, 1, '2019-08-01 12:18:20', 1);
INSERT INTO `menara` VALUES (312, 1, 4, 11, 1, '', 'TOWER EXISTING TRANS TV_01.', 'Paving Block', '0', '0', NULL, '-7.0441388888889', '110.42441666667', '125', '20190801121838Screenshot_52.png', '', 'Trans TV', 'Tower TRANS TV ini berada di arera lahan kosong, sisi sebelah utara lahan kosong, sisi sebelah barat Kantor Trans TV, sisi sebelah selatan jalan lokal dan isi sebelah timur menara Metro TV.', 'Area Trans TV', '', NULL, 1, 1, '2019-08-01 12:18:38', 1);
INSERT INTO `menara` VALUES (313, 1, 4, 11, 1, ' CERIA', 'TOWER EXISTING ANTV_01', 'Aspalth', '0', '0', NULL, '-7.0438055555556', '110.42308333333', '120', '20190801122045Screenshot_53.png', 'PT Sampoerna Telekomunikasi Indonesia', 'Andalas Televisi.', 'Tower ANTV ini berada di arera lahan kosong, sisi sebelah utara lahan kosong, sisi sebelah barat jalan lokal, sisi sebelah selatan kantor dan isi sebelah timur menara RCTI.', 'Area ANTV', '', NULL, 1, 1, '2019-08-01 12:20:45', 1);
INSERT INTO `menara` VALUES (314, 1, 4, 11, 1, '', 'TOWER EXISTING RCTI_01.', 'Aspalth', '0', '0', NULL, '-7.0421666666667', '110.42302777778', '120', '20190801122216Screenshot_54.png', '', 'RCTI', 'Tower RCTI ini berada di arera lahan kosong, sisi sebelah utara lahan kosong, sisi sebelah barat jalan lokal, sisi sebelah selatan menara ANTV dan isi sebelah timur lahan kosong.', ' Area RCTI', '', NULL, 1, 1, '2019-08-01 12:22:16', 1);
INSERT INTO `menara` VALUES (315, 1, 1, 114, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_02', 'Paving Block', '0', '0', NULL, '-6.9716388888889', '110.38763888889', '22', '20190801122334Screenshot_37.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '6 X 8  Meter', '', NULL, 1, 1, '2019-08-01 12:23:34', 1);
INSERT INTO `menara` VALUES (316, 1, 4, 11, 1, 'INDOSAT', 'TOWER EXISTING TVRI_01.', 'Aspalth', '0', '0', NULL, '-7.04175', '110.42325', '72', '20190801122354Screenshot_55.png', 'PT Indonesian Satelindo', 'TVRI', 'Tower TVRI ini berada di arera lahan kosong, sisi sebelah utara dan sisi sebelah barat lahan kosong, sisi sebelah selatan jalan lokal dan isi sebelah timur Gedung TVRI.', ' Area TVRI.', '', NULL, 1, 1, '2019-08-01 12:23:54', 1);
INSERT INTO `menara` VALUES (317, 1, 1, 104, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_03', ' Macadam', '0', '0', NULL, '-6.9790555555556', '110.37636111111', '17', '20190801122628Screenshot_38.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk dekat peladangan, sisi sebelah utara jalan lokal, sisi sebelah barat dan sisi sebelah selatan ladang, sisi sebelah timur rumah penduduk', '6 X 6  Meter', '', NULL, 1, 1, '2019-08-01 12:26:28', 1);
INSERT INTO `menara` VALUES (318, 1, 1, 104, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_04', 'Paving Block', '0', '0', NULL, '-6.9878611111111', '110.38175', '22', '20190801130004Screenshot_39.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah penduduk', '4 X 16  Meter', '', NULL, 1, 1, '2019-08-01 13:00:04', 1);
INSERT INTO `menara` VALUES (319, 1, 1, 108, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_05', 'Paving Block', '0', '0', NULL, '-6.9714166666667', '110.39980555556', '52', '20190801130501Screenshot_40.png', '', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara jalan lokal, sisi sebelah barat, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '12 X 12  Meter', '', NULL, 1, 1, '2019-08-01 13:05:01', 1);
INSERT INTO `menara` VALUES (320, 1, 1, 105, 1, 'TELKOMSEL', 'TOWER EXISTING TELKOMSEL_06', 'Aspalth', '0', '0', NULL, '-6.9808611111111', '110.39361111111', '42', '20190801131036Screenshot_41.png', '', 'PT Telekomunikasi Selular.', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur lahan kosong', '4 X 12  Meter', '', NULL, 1, 1, '2019-08-01 13:10:36', 1);
INSERT INTO `menara` VALUES (321, 1, 1, 100, 1, 'TELKOMSEL dan FLEXI', 'TOWER EXISTING TELKOMSEL_07', 'Macadam', '0', '0', NULL, '-6.9916388888889', '110.39261111111', '52', '20190801131434Screenshot_42.png', 'PT Telekomunikasi Indonesia', 'PT Telekomunikasi Selular', 'Tower TELKOMSEL ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur rumah penduduk', '12 X 12  Meter', '', NULL, 1, 1, '2019-08-01 13:14:34', 1);
INSERT INTO `menara` VALUES (322, 1, 1, 104, 1, 'FLEXI', 'TOWER EXISTING TELKOM FLEXI_01', 'Aspalth', '0', '0', NULL, '-6.9875833333333', '110.37644444444', '42', '20190801132028Screenshot_43.png', '', 'PT Telekomunikasi Indonesia', 'Tower TELKOM ini berada di area rumah penduduk dekat pepohonan, sisi sebelah utara pepohonan, sisi sebelah barat jalan lokal, sisi sebelah selatan rumah penduduk dan sisi sebelah timur kantor STO Telkom', 'STO Telkom', '', NULL, 1, 1, '2019-08-01 13:20:28', 1);
INSERT INTO `menara` VALUES (323, 1, 1, 105, 2, 'FLEXI', 'TOWER EXISTING TELKOM FLEXI_02', 'Concrete', '0', '0', NULL, '-6.9809166666667', '110.39405555556', '2', '20190801132506Screenshot_44.png', '', 'PT Telekomunikasi Indonesia', 'Tower TELKOM ini berada di area pertokoan, sisi sebelah utara dan sisi sebelah barat pepohonan, sisi sebelah selatan dan sisi sebelah timur ruko', 'Area Plaza Siliwangi', '', NULL, 1, 1, '2019-08-01 13:25:06', 1);
INSERT INTO `menara` VALUES (324, 1, 1, 114, 1, 'FLEXI', 'TOWER EXISTING TELKOM FLEXI_02', 'Paving Block', '0', '0', NULL, '-6.9607222222222', '110.39158333333', '42', '20190801132842Screenshot_45.png', '', 'PT Telekomunikasi Indonesia', 'Tower TELKOM ini berada di lahan kosong, sisi sebelah utara jalan lokal, sisi sebelah barat menara Indosat, sisi sebelah selatan jalan lokal dan sisi sebelah timur menara Bakrie Telecom.', '10 X 10 Meter', '', NULL, 1, 1, '2019-08-01 13:28:42', 1);
INSERT INTO `menara` VALUES (325, 1, 1, 114, 1, 'XL.', 'TOWER EXISTING XL AXIATA_01', 'Paving Block', '0', '0', NULL, '-6.9726944444444', '110.38394444444', '22', '20190801133201Screenshot_46.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area rumah penduduk, sisi sebelah utara rumah penduduk, sisi sebelah barat jalan lokal, sisi sebelah selatan dan sisi sebelah timur rumah penduduk.', '12 X 8  Meter', '', NULL, 1, 1, '2019-08-01 13:32:01', 1);
INSERT INTO `menara` VALUES (326, 1, 1, 109, 1, 'XL dan HCPT', 'TOWER EXISTING XL AXIATA_02', 'Aspalth', '0', '0', NULL, '-7.0013611111111', '110.38016666667', '32', '20190801133604Screenshot_47.png', 'PT Hutchison CP Telecomunication', 'PT Xl Axiata.', 'Tower XL AXIATA ini berada di area rumah penduduk dekat pepohonan, sisi sebelah utara Radio Radiks 99, sisi sebelah barat pepohonan, sisi sebelah selatan rumah penduduk dan sisi sebelah timur jalan lokal', '6 X 8  Meter', '', NULL, 1, 1, '2019-08-01 13:36:04', 1);
INSERT INTO `menara` VALUES (327, 1, 1, 114, 1, 'XL dan ESIA', 'TOWER EXISTING XL AXIATA_09.', 'Paving Block', '0', '0', NULL, '-6.96075', '110.39166666667', '32', '20190801133918Screenshot_48.png', 'PT Bakrie Telecom', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di lahan kosong, sisi sebelah utara jalan lokal, sisi sebelah barat menara Telkom, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah pnduduk', '8 X 8  Meter', '', NULL, 1, 1, '2019-08-01 13:39:18', 1);
INSERT INTO `menara` VALUES (328, 1, 1, 108, 1, 'XL.', 'TOWER EXISTING XL AXIATA_09', 'Concrete', '0', '0', NULL, '-6.9775555555556', '110.39669444444', '42', '20190801134231Screenshot_49.png', '', 'PT Xl Axiata', 'Tower XL AXIATA ini berada di area rumah penduduk, sisi sebelah utara dan sisi sebelah barat rumah penduduk, sisi sebelah selatan jalan lokal dan sisi sebelah timur rumah pnduduk', '6 X 6  Meter', '', NULL, 1, 1, '2019-08-01 13:42:31', 1);
INSERT INTO `menara` VALUES (329, 2, 2, 143, 2, '2,3,4', 'Egehehe', 'Semarang', '06', '90', '20230213142251-2023-02-13menara141525.pdf', '-7.003956346266394', '110.3269386291504', '500', '20230213142251-2023-02-13menara142031.png,20230213142251-2023-02-13menara142034.png,20230213142251-2023-02-13menara142036.png', 'Sulong', 'Eko', 'Bagus dong', '89', '', NULL, NULL, NULL, NULL, 4);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `label` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon_color` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menu_type_id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 'MAIN NAVIGATION', 'label', '', '{admin_url}/dashboard', 1, 0, '', 1, 1);
INSERT INTO `menu` VALUES (2, 'Dashboard', 'menu', '', '{admin_url}/dashboard', 2, 0, 'fa-dashboard', 1, 1);
INSERT INTO `menu` VALUES (3, 'CRUD Builder', 'menu', '', '{admin_url}/crud', 4, 0, 'fa-table', 1, 1);
INSERT INTO `menu` VALUES (4, 'API Builder', 'menu', '', '{admin_url}/rest', 5, 0, 'fa-code', 1, 1);
INSERT INTO `menu` VALUES (5, 'Page Builder', 'menu', '', '{admin_url}/page', 6, 0, 'fa-file-o', 1, 1);
INSERT INTO `menu` VALUES (6, 'Form Builder', 'menu', '', '{admin_url}/form', 7, 0, 'fa-newspaper-o', 1, 1);
INSERT INTO `menu` VALUES (7, 'Blog', 'menu', '', '{admin_url}/blog', 8, 0, 'fa-file-text-o', 1, 1);
INSERT INTO `menu` VALUES (8, 'Menu', 'menu', '', '{admin_url}/menu', 9, 0, 'fa-bars', 1, 1);
INSERT INTO `menu` VALUES (9, 'Auth', 'menu', '', '', 10, 0, 'fa-shield', 1, 1);
INSERT INTO `menu` VALUES (10, 'User', 'menu', '', '{admin_url}/user', 11, 9, '', 1, 1);
INSERT INTO `menu` VALUES (11, 'Groups', 'menu', '', '{admin_url}/group', 12, 9, '', 1, 1);
INSERT INTO `menu` VALUES (12, 'Access', 'menu', '', '{admin_url}/access', 13, 9, '', 1, 1);
INSERT INTO `menu` VALUES (13, 'Permission', 'menu', '', '{admin_url}/permission', 14, 9, '', 1, 1);
INSERT INTO `menu` VALUES (14, 'API Keys', 'menu', '', '{admin_url}/keys', 15, 9, '', 1, 1);
INSERT INTO `menu` VALUES (15, 'Extension', 'menu', '', '{admin_url}/extension', 16, 0, 'fa-puzzle-piece', 1, 1);
INSERT INTO `menu` VALUES (16, 'Database', 'menu', '', '{admin_url}/database', 17, 0, 'fa-database', 1, 1);
INSERT INTO `menu` VALUES (17, 'OTHER', 'label', '', '', 18, 0, '', 1, 1);
INSERT INTO `menu` VALUES (18, 'Settings', 'menu', 'text-red', '{admin_url}/setting', 19, 0, 'fa-circle-o', 1, 1);
INSERT INTO `menu` VALUES (19, 'Web Documentation', 'menu', 'text-blue', '{admin_url}/doc/web', 20, 0, 'fa-circle-o', 1, 1);
INSERT INTO `menu` VALUES (20, 'API Documentation', 'menu', 'text-yellow', '{admin_url}/doc/api', 21, 0, 'fa-circle-o', 1, 1);
INSERT INTO `menu` VALUES (21, 'Home', 'menu', '', '/', 1, 0, '', 2, 1);
INSERT INTO `menu` VALUES (22, 'Blog', 'menu', '', 'blog', 4, 0, '', 2, 1);
INSERT INTO `menu` VALUES (23, 'Dashboard', 'menu', '', 'administrator/dashboard', 5, 0, '', 2, 1);
INSERT INTO `menu` VALUES (24, 'MENU SUPERUSER', 'label', 'default', 'javascript:void(0);', 3, 0, '', 1, 1);

-- ----------------------------
-- Table structure for menu_type
-- ----------------------------
DROP TABLE IF EXISTS `menu_type`;
CREATE TABLE `menu_type`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `definition` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_type
-- ----------------------------
INSERT INTO `menu_type` VALUES (1, 'side menu', NULL);
INSERT INTO `menu_type` VALUES (2, 'top menu', NULL);

-- ----------------------------
-- Table structure for microcell
-- ----------------------------
DROP TABLE IF EXISTS `microcell`;
CREATE TABLE `microcell`  (
  `microcell_id` int(12) NOT NULL AUTO_INCREMENT,
  `pemohon_id` int(12) NULL DEFAULT NULL,
  `kecamatan_id` int(12) NULL DEFAULT NULL,
  `kelurahan_id` int(12) NULL DEFAULT NULL,
  `tipesite_id` int(12) NULL DEFAULT NULL,
  `operator_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `microcell_nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `microcell_alamat` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `microcell_rt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `microcell_rw` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `microcell_file_berkas` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `microcell_latitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `microcell_longitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `microcell_ketinggian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `microcell_image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `microcell_nama_penyewa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `microcell_pemilik` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `microcell_kondisi` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `microcell_luas_area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `microcell_imb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `microcell_tgl_imb` datetime NULL DEFAULT NULL,
  `microcell_user_created` int(12) NULL DEFAULT NULL,
  `microcell_status` int(12) NULL DEFAULT NULL,
  `microcell_created_at` datetime NULL DEFAULT NULL,
  `kawasan_id` int(12) NULL DEFAULT NULL,
  PRIMARY KEY (`microcell_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 352 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of microcell
-- ----------------------------
INSERT INTO `microcell` VALUES (1, 3, 0, 0, 1, '', 'MCP-SMG-001', 'jl. papandayan', '0', '0', '', '-7.012091', '110.403674', '0', '', '', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (2, 3, 0, 0, 1, '', 'MCP-SMG-002', 'jl. papandayan', '0', '0', '', '-7.014078', '110.410314', '0', '', '', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (3, 3, 0, 0, 1, '', 'mcp-050', 'pandanaran', '0', '0', '', '-6.985679', '110.412043', '0', '', 'moratelindo', '-', '-', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (4, 3, 0, 0, 1, '', 'mcp-051', 'pandanaran', '0', '0', '', '-6.988760', '110.419872', '0', '', 'moratelindo', '-', '-', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (5, 3, 0, 0, 1, '', 'mcp-052', 'mugas dalam', '0', '0', '', '-6.991010', '110.417778', '0', '', 'moratelindo', '-', '-', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (6, 3, 0, 0, 1, '', 'mcp-054', 'singosari', '0', '0', '', '-6.999010', '110.427904', '0', '', 'moratelindo', '-', '-', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (7, 3, 0, 0, 1, '', 'mcp-055', 'sompok', '0', '0', '', '-7.001345', '110.436051', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (8, 3, 0, 0, 1, '', 'mcp-056', 'sompok2', '0', '0', '', '-7.002783', '110.439065', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (9, 3, 0, 0, 1, '', 'mcp-057', 'sompok baru', '0', '0', '', '-7.007683', '110.436544', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (10, 3, 0, 0, 1, '', 'mcp-058', 'Basudewo', '0', '0', '', '-7.985763', '110.402697', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (11, 3, 0, 0, 1, '', 'MCP-SMG-004', 'jl. woltermongonsidi', '0', '0', '', '-7.002114', '110.471655', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (12, 3, 0, 0, 1, '', 'MCP-SMG-005', 'jl. woltermongonsidi', '0', '0', '', '-6.996509', '110.472853', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (13, 3, 0, 0, 1, '', 'MCP-SMG-006', 'jl. woltermongonsidi', '0', '0', '', '-6.989716', '110.473623', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (14, 3, 0, 0, 1, '', 'MCP-SMG-007', 'jl. woltermongonsidi', '0', '0', '', '-6.984620', '110.474393', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (15, 3, 0, 0, 1, '', 'MCP-SMG-008', 'jl. woltermongonsidi', '0', '0', '', '-6.980543', '110.479954', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (16, 3, 0, 0, 1, '', 'MCP-SMG-009', 'jl. woltermongonsidi', '0', '0', '', '-6.972730', '110.481580', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (17, 3, 0, 0, 1, '', 'mcp-059', 'suyudono', '0', '0', '', '-6.990569', '110.403674', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (18, 3, 0, 0, 1, '', 'MCP-SMG-010', 'jl. woltermongonsidi', '0', '0', '', '-6.951328', '110.480896', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (19, 3, 0, 0, 1, '', 'mcp-060', 'suyudono', '0', '0', '', '-6.985730', '110.404244', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (20, 3, 0, 0, 1, '', 'MCP-SMG-011', 'jl. woltermongonsidi', '0', '0', '', '-6.958802', '110.479356', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (21, 3, 0, 0, 1, '', 'mcp-061', 'taman menteri supeno', '0', '0', '', '-6.991574', '110.419940', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (22, 3, 0, 0, 1, '', 'MCP-SMG-012', 'jl. woltermongonsidi', '0', '0', '', '-6.965511', '110.479184', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (23, 3, 0, 0, 1, '', 'mcp-062', 'wonodri baru', '0', '0', '', '-7.001925', '110.430243', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (24, 3, 0, 0, 1, '', 'mcp-063', 'wonodri krajan', '0', '0', '', '-7.000417', '110.429929', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (25, 3, 0, 0, 1, '', 'mcp-064', 'wonodri sendang', '0', '0', '', '-7.001757', '110.427432', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (26, 3, 0, 0, 1, '', 'MCP-SMG-013', 'jl. argopuro', '0', '0', '', '-7.004418', '110.413582', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (27, 3, 0, 0, 1, '', 'mcp-065', 'Hos Cokroaminoto', '0', '0', '', '-6.986895', '110.407109', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (28, 3, 0, 0, 1, '', 'MCP-SMG-014', 'jl. lamongan', '0', '0', '', '-7.009277', '110.396520', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (29, 3, 0, 0, 1, '', 'mcp-066', 'hasanudin', '0', '0', '', '-6.973351', '110.412380', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (30, 3, 0, 0, 1, '', 'MCP-SMG-015', 'jl. lamongan', '0', '0', '', '-7.015564', '110.394173', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (31, 3, 0, 0, 1, '', 'mcp-067', 'Hasanudin', '0', '0', '', '-6.969427', '110.412113', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (32, 3, 0, 0, 1, '', 'MCP-SMG-017', 'jl. kelud raya', '0', '0', '', '-7.005476', '110.396325', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (33, 3, 0, 0, 1, '', 'mcp-068', 'Hasanudin', '0', '0', '', '-6.967010', '110.411460', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (34, 3, 0, 0, 1, '', 'MCP-SMG-018', 'jl. menoreh', '0', '0', '', '-7.010885', '110.391795', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (35, 3, 0, 0, 1, '', 'mcp-069', 'Kuala Mas', '0', '0', '', '-6.959684', '110.404821', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (36, 3, 0, 0, 1, '', 'MCP-SMG-019', 'jl. menoreh', '0', '0', '', '-7.017315', '110.389230', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (37, 3, 0, 0, 1, '', 'mcp-070', 'Kuala Mas', '0', '0', '', '-6.954459', '110.403944', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (38, 3, 0, 0, 1, '', 'MCP-SMG-020', 'jl. pawiyatan luhur', '0', '0', '', '-7.025887', '110.405622', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (39, 3, 0, 0, 1, '', 'MCP-SMG-021', 'jl. pawiyatan luhur', '0', '0', '', '-7.018834', '110.396022', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (40, 3, 0, 0, 1, '', 'mcp-072', 'Ronggowarsito', '0', '0', '', '-6.954790', '110.430678', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (41, 3, 0, 0, 1, '', 'MCP-SMG-022', 'jl. tumpang raya', '0', '0', '', '-7.005609', '110.402388', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (42, 3, 0, 0, 1, '', 'mcp-074', 'Tanjung Emas', '0', '0', '', '-6.954820', '110.400047', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (43, 3, 0, 0, 1, '', 'mcp-075', 'Tmn Hasanudin', '0', '0', '', '-6.959416', '110.414172', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (44, 3, 0, 0, 1, '', 'mcp-076', 'Pasirmas', '0', '0', '', '-6.964303', '110.406171', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (45, 3, 0, 0, 1, '', 'mcp-077', 'Kalimas Barat', '0', '0', '', '-6.959014', '110.410085', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (46, 3, 0, 0, 1, '', 'mcp-078', 'Empu Tantular', '0', '0', '', '-6.958648', '110.424772', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (47, 3, 0, 0, 1, '', 'mcp-079', 'Brotojoyo', '0', '0', '', '-6.966615', '110.406506', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (48, 3, 0, 0, 1, '', 'mcp-080', 'Halmahera', '0', '0', '', '-6.994316', '110.436666', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (49, 3, 0, 0, 1, '', 'mcp-081', 'Halmahera', '0', '0', '', '-6.993898', '110.434091', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (50, 3, 0, 0, 1, '', 'MCP-SMG-023', 'jl. tumpang raya', '0', '0', '', '-7.005713', '110.406262', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (51, 3, 0, 0, 1, '', 'mcp-082', 'MTHaryono', '0', '0', '', '-6.970107', '110.431076', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (52, 3, 0, 0, 1, '', 'MCP-SMG-024', 'jl. jatidiri', '0', '0', '', '-7.025875', '110.411301', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (53, 3, 0, 0, 1, '', 'mcp-084', 'MTHaryono', '0', '0', '', '-6.980623', '110.431403', '0', '', 'moratelindo', '-', '-', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (54, 3, 0, 0, 1, '', 'MCP-SMG-025', 'jl. veteran', '0', '0', '', '-6.996866', '110.415958', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (55, 3, 0, 0, 1, '', 'MCP-SMG-026', 'jl. telaga bodas', '0', '0', '', '-7.025205', '110.416565', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (56, 3, 0, 0, 1, '', 'mcp-085', 'Dargo', '0', '0', '', '-6.975668', '110.434687', '0', '', 'moratelindo', '-', '-', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (57, 3, 0, 0, 1, '', 'mcp-086', 'Ligu Tengah', '0', '0', '', '-6.983104', '110.434572', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (58, 3, 0, 0, 1, '', 'mcp-087', 'Maluku', '0', '0', '', '-6.992413', '110.436445', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (59, 3, 0, 0, 1, '', 'mcp-088', 'Rejomulyo 1', '0', '0', '', '-6.983421', '110.437241', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (60, 3, 0, 0, 1, '', 'mcp-089', 'Sidodadi Barat', '0', '0', '', '-6.989339', '110.431889', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (61, 3, 0, 0, 1, '', 'mcp-090', 'Sidodadi Timur', '0', '0', '', '-6.989783', '110.436706', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (62, 3, 0, 0, 1, '', 'MCP-SMG-028', 'jl. rinjani', '0', '0', '', '-7.003757', '110.409717', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (63, 3, 0, 0, 1, '', 'MCP-SMG-029', 'jl. raung', '0', '0', '', '-7.009644', '110.412679', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (64, 3, 0, 0, 1, '', 'MCP-SMG-030', 'jl. rajabasa', '0', '0', '', '-7.020046', '110.412785', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (65, 3, 0, 0, 1, '', 'mcp-094', 'Kelinci', '0', '0', '', '-6.998077', '110.441336', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (66, 3, 0, 0, 1, '', 'mcp-095', 'Kelinci', '0', '0', '', '-6.995590', '110.442009', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (67, 3, 0, 0, 1, '', 'MCP-SMG-031', 'jl. kendeng', '0', '0', '', '-7.015859', '110.396991', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (68, 3, 0, 0, 1, '', 'mcp-096', 'Jolotundo', '0', '0', '', '-6.986020', '110.441887', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (69, 3, 0, 0, 1, '', 'mcp-097', 'Kanguru 3', '0', '0', '', '-6.988064', '110.444365', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (70, 3, 0, 0, 1, '', 'MCP-SMG-033', 'jl. dieng', '0', '0', '', '-7.008056', '110.415104', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (71, 3, 0, 0, 1, '', 'mcp-098', 'Medoho', '0', '0', '', '-6.986721', '110.445050', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (72, 3, 0, 0, 1, '', 'mcp-099', 'Medoho I', '0', '0', '', '-6.990122', '110.452684', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (73, 3, 0, 0, 1, '', 'mcp-100', 'Sawah Besar', '0', '0', '', '-6.963133', '110.444190', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (74, 3, 0, 0, 1, '', 'MCP-SMG-035', 'jl. basudewo', '0', '0', '', '-6.985041', '110.401655', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (75, 3, 0, 0, 1, '', 'mcp-101', 'Unta', '0', '0', '', '-6.993052', '110.440567', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (76, 3, 0, 0, 1, '', 'MCP-SMG-036', 'jl. erlangga', '0', '0', '', '-6.991909', '110.424192', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (77, 3, 0, 0, 1, '', 'mcp-102', 'Gajah Mada', '0', '0', '', '-6.986214', '110.422302', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (78, 3, 0, 0, 1, '', 'MCP-SMG-037', 'jl. erlangga tengah', '0', '0', '', '-6.995594', '110.427701', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (79, 3, 0, 0, 1, '', 'MCP-SMG-038', 'jl. gisikdrono', '0', '0', '', '-6.992699', '110.406461', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (80, 3, 0, 0, 1, '', 'MCP-SMG-039', 'jl. hayam wuruk', '0', '0', '', '-6.996578', '110.426583', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (81, 3, 0, 0, 1, '', 'MCP-SMG-040', 'jl. hayam wuruk', '0', '0', '', '-6.995259', '110.423449', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (82, 3, 0, 0, 1, '', 'MCP-SMG-041', 'jl. kaligarang', '0', '0', '', '-6.995834', '110.402466', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (83, 3, 0, 0, 1, '', 'MCP-SMG-042', 'jl. kertanegara selatan', '0', '0', '', '-6.997922', '110.423836', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (84, 3, 0, 0, 1, '', 'MCP-SMG-043', 'jl. kyai saleh', '0', '0', '', '-6.990071', '110.414081', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (85, 3, 0, 0, 1, '', 'MCP-SMG-044', 'jl. lamper krajan', '0', '0', '', '-7.006819', '110.440885', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (86, 3, 0, 0, 1, '', 'MCP-SMG-045', 'jl. lamper tengah', '0', '0', '', '-7.005087', '110.443249', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (87, 3, 0, 0, 1, '', 'MCP-SMG-046', 'jl. lampersari', '0', '0', '', '-7.005087', '110.433153', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (88, 3, 0, 0, 1, '', 'MCP-SMG-048', 'jl. menteri supeno', '0', '0', '', '-6.993325', '110.419063', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (89, 3, 0, 0, 1, '', 'MCP-SMG-049', 'jl. pandanaran', '0', '0', '', '-6.987104', '110.415688', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (90, 3, 0, 0, 1, '1', 'MCP-SMG-104', 'jl. Imam Bonjol', '0', '0', '1', '-6.970135', '110.422167', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (91, 3, 0, 0, 1, '1', 'MCP-SMG-105', 'jl. Imam Bonjol', '0', '0', '1', '-6.972547', '110.417307', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (92, 3, 0, 0, 1, '1', 'MCP-SMG-106', 'jl. Imam Bonjol', '0', '0', '1', '-6.978778', '110.411638', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (93, 3, 0, 0, 1, '1', 'MCP-SMG-107', 'jl. Indraprasta', '0', '0', '1', '-6.978746', '110.406914', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (94, 3, 0, 0, 1, '1', 'MCP-SMG-108', 'jl.Indraprasta', '0', '0', '1', '-6.980512', '110.402916', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (95, 3, 0, 0, 1, '1', 'MCP-SMG-109', 'jl. Inspeksi Kali Semarang', '0', '0', '1', '-6.980630', '110.421240', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (96, 3, 0, 0, 1, '1', 'MCP-SMG-110', 'jl. Inspeksi Kali Semarang', '0', '0', '1', '-6.982453', '110.415534', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (97, 3, 0, 0, 1, '1', 'MCP-SMG-111', 'jl. Jagalan Barat', '0', '0', '1', '-6.978704', '110.427968', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (98, 3, 0, 0, 1, '1', 'MCP-SMG-113', 'jl.Kokrosono', '0', '0', '1', '-6.974013', '110.402098', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (99, 3, 0, 0, 1, '1', 'MCP-SMG-114', 'jl.Kokrosono', '0', '0', '1', '-6.965658', '110.401605', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (100, 3, 0, 0, 1, '1', 'MCP-SMG-115', 'jl. Pekunden Timur', '0', '0', '1', '-6.988475', '110.421859', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (101, 3, 0, 0, 1, '1', 'MCP-SMG-116', 'jl. Pekunden Timur', '0', '0', '1', '-6.986784', '110.418195', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (102, 3, 0, 0, 1, '1', 'MCP-SMG-117', 'jl.Yudistira', '0', '0', '1', '-6.981656', '110.407913', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (103, 3, 0, 0, 1, '1', 'MCP-SMG-119', 'jl. Kauman', '0', '0', '1', '-6.973083', '110.422639', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (104, 3, 0, 0, 1, '1', 'MCP-SMG-120', 'jl. Pemuda', '0', '0', '1', '-6.979715', '110.414473', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (105, 3, 0, 0, 1, '1', 'MCP-SMG-121', 'jl. Pekunden Tengah', '0', '0', '1', '-6.985229', '110.414777', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (106, 3, 0, 0, 1, '1', 'MCP-SMG-123', 'jl.Mh Thamrin', '0', '0', '1', '-6.982261', '110.417442', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (107, 3, 0, 0, 1, '1', 'MCP-SMG-124', 'jl.Mayor Jendral Sutoyo', '0', '0', '1', '-6.985962', '110.424737', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (108, 3, 0, 0, 1, '1', 'MCP-SMG-125', 'jl.Mayor Jendral Di Panjaitan', '0', '0', '1', '-6.985544', '110.417712', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (109, 3, 0, 0, 1, '1', 'MCP-SMG-126', 'jl. Ki mangunsarkoro', '0', '0', '1', '-6.992517', '110.429506', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (110, 3, 0, 0, 1, '1', 'MCP-SMG-128', 'jl.Kh Agus Salim', '0', '0', '1', '-6.971425', '110.425957', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (111, 3, 0, 0, 1, '1', 'MCP-SMG-129', 'jl. Karang Anyar', '0', '0', '1', '-6.981926', '110.423922', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (112, 3, 0, 0, 1, '1', 'MCP-SMG-130', 'jl. K H Ahmad Dahlan', '0', '0', '1', '-6.985733', '110.428567', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (113, 3, 0, 0, 1, '1', 'MCP-SMG-131', 'jl. Gundi', '0', '0', '1', '-6.994565', '110.411485', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (114, 3, 0, 0, 1, '1', 'MCP-SMG-132', 'jl. Gg Warung', '0', '0', '1', '-6.974694', '110.427059', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (115, 3, 0, 0, 1, '1', 'MCP-SMG-133', 'jl.Gg Pinggir', '0', '0', '1', '-6.977316', '110.427762', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (116, 3, 0, 0, 1, '1', 'MCP-SMG-134', 'jl. Brumbungan', '0', '0', '1', '-6.983523', '110.427256', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (117, 3, 0, 0, 1, '1', 'MCP-SMG-135', 'jl. Anggrek 7', '0', '0', '1', '-6.986960', '110.425314', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (118, 3, 0, 0, 1, '1', 'MCP-SMG-136', 'jl.jangli', '0', '0', '1', '-7.017276', '110.427437', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (119, 3, 0, 0, 1, '1', 'MCP-SMG-137', 'jl.jangli', '0', '0', '1', '-7.023126', '110.428358', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (120, 3, 0, 0, 1, '1', 'MCP-SMG-138', 'jl.jangli', '0', '0', '1', '-7.026537', '110.428392', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (121, 3, 0, 0, 1, '1', 'MCP-SMG-139', 'jl.kawi', '0', '0', '1', '-7.007466', '110.417589', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (122, 3, 0, 0, 1, '1', 'MCP-SMG-140', 'jl.kawi', '0', '0', '1', '-7.010667', '110.426689', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (123, 3, 0, 0, 1, '1', 'MCP-SMG-141', 'jl. Sisingamangaraja', '0', '0', '1', '-7.016247', '110.428440', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (124, 3, 0, 0, 1, '1', 'MCP-SMG-142', 'jl. Sisingamangaraja', '0', '0', '1', '-7.015825', '110.419805', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (125, 3, 0, 0, 1, '1', 'MCP-SMG-144', 'jl. Sriwijaya', '0', '0', '1', '-7.003724', '110.426036', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (126, 3, 0, 0, 1, '1', 'MCP-SMG-145', 'jl. Tegal Sari', '0', '0', '1', '-7.007184', '110.427296', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (127, 3, 0, 0, 1, '1', 'MCP-SMG-147', 'jl. Tentara Pelajar', '0', '0', '1', '-7.008755', '110.432878', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (128, 3, 0, 0, 1, '1', 'MCP-SMG-148', 'jl. Tentara Pelajar', '0', '0', '1', '-7.010716', '110.442002', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (129, 3, 0, 0, 1, '1', 'MCP-SMG-149', 'jl. Tentara Pelajar', '0', '0', '1', '-7.009625', '110.439164', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (130, 3, 0, 0, 1, '1', 'MCP-SMG-150', 'jl.kasipah', '0', '0', '1', '-7.019691', '110.425017', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (131, 3, 0, 0, 1, '1', 'MCP-SMG-151', 'jl.kesatrian', '0', '0', '1', '-7.027952', '110.423179', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (132, 3, 0, 0, 1, '1', 'MCP-SMG-152', 'jl.Tapak', '0', '0', '1', '-6.981343', '110.343516', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (133, 3, 0, 0, 1, '1', 'MCP-SMG-153', 'jl.Tapak', '0', '0', '1', '-6.974973', '110.344298', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (134, 3, 0, 0, 1, '1', 'MCP-SMG-154', 'jl. Kumudasmoro Barat', '0', '0', '1', '-6.994202', '110.391379', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (135, 3, 0, 0, 1, '1', 'MCP-SMG-155', 'jl. Kumudasmoro Barat', '0', '0', '1', '-6.991192', '110.388862', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (136, 3, 0, 0, 1, '1', 'MCP-SMG-157', 'jl. Candi Prambanan', '0', '0', '1', '-7.008717', '110.373870', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (137, 3, 0, 0, 1, '1', 'MCP-SMG-158', 'jl. Ngemplak Simongan', '0', '0', '1', '-6.992637', '110.401678', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (138, 3, 0, 0, 1, '1', 'MCP-SMG-159', 'jl. Madukoro', '0', '0', '1', '-6.970161', '110.400122', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (139, 3, 0, 0, 1, '1', 'MCP-SMG-160', 'jl. Kolonel HR Hardijanto', '0', '0', '1', '-7.027629', '110.389500', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (140, 3, 0, 0, 1, '1', 'MCP-SMG-161', 'jl. Simongan', '0', '0', '1', '-7.003016', '110.392503', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (141, 3, 0, 0, 1, '1', 'MCP-SMG-162', 'jl. Simongan', '0', '0', '1', '-7.000120', '110.396991', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (142, 3, 0, 0, 1, '1', 'MCP-SMG-163', 'jl. Puspowarno', '0', '0', '1', '-6.983083', '110.396784', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (143, 3, 0, 0, 1, '1', 'MCP-SMG-164', 'jl.Puspowarno Selatan', '0', '0', '1', '-6.986121', '110.393356', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (144, 3, 0, 0, 1, '1', 'MCP-SMG-165', 'jl. Pusponjolo Selatan', '0', '0', '1', '-6.987098', '110.398807', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (145, 3, 0, 0, 1, '1', 'MCP-SMG-166', 'jl.Jodipati Iii', '0', '0', '1', '-6.969666', '110.393123', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (146, 3, 0, 0, 1, '1', 'MCP-SMG-167', 'jl. Pusponjolo Tengah', '0', '0', '1', '-6.981004', '110.399673', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (147, 3, 0, 0, 1, '1', 'MCP-SMG-168', 'jl.Mr Moch Ichsan', '0', '0', '1', '-7.013722', '110.338398', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (148, 3, 0, 0, 1, '1', 'MCP-SMG-169', 'jl. Gondorio', '0', '0', '1', '-7.011835', '110.331623', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (149, 3, 0, 0, 1, '1', 'MCP-SMG-170', 'jl.Beringin Raya 3', '0', '0', '1', '-6.997292', '110.342060', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (150, 3, 0, 0, 1, '1', 'MCP-SMG-171', 'jl.Beringin Raya 3', '0', '0', '1', '-6.995706', '110.334470', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (151, 3, 0, 0, 1, '1', 'MCP-SMG-172', 'jl. Gondorio', '0', '0', '1', '-7.009824', '110.325979', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (152, 3, 0, 0, 1, '1', 'MCP-SMG-173', 'jl.Krt Wongsonegoro', '0', '0', '1', '-6.988761', '110.329581', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (153, 3, 0, 0, 1, '1', 'MCP-SMG-174', 'jl.Krt Wongsonegoro', '0', '0', '1', '-6.983380', '110.328314', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (154, 3, 0, 0, 1, '1', 'MCP-SMG-175', 'jl.Krt Wongsonegoro', '0', '0', '1', '-6.991713', '110.326092', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (155, 3, 0, 0, 1, '1', 'MCP-SMG-176', 'jl. Palebon', '0', '0', '1', '-7.005063', '110.466370', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (156, 3, 0, 0, 1, '1', 'MCP-SMG-177', 'jl.Suhada', '0', '0', '1', '-6.989375', '110.466350', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (157, 3, 0, 0, 1, '1', 'MCP-SMG-178', 'jl. Soekarna Hatta', '0', '0', '1', '-6.998858', '110.465447', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (158, 3, 0, 0, 1, '1', 'MCP-SMG-180', 'jl. Arya Mukti', '0', '0', '1', '-7.005338', '110.477138', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (159, 3, 0, 0, 1, '1', 'MCP-SMG-181', 'jl. Madukoro Blok A', '0', '0', '1', '-6.963905', '110.394427', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (160, 3, 0, 0, 1, '1', 'MCP-SMG-182', 'jl.Tlogo Mulyo', '0', '0', '1', '-6.998038', '110.479527', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (161, 3, 0, 0, 1, '1', 'MCP-SMG-183', 'jl.Suhada', '0', '0', '1', '-6.985808', '110.467121', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (162, 3, 0, 0, 1, '1', 'MCP-SMG-184', 'jl.Suhada', '0', '0', '1', '-6.994981', '110.465923', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (163, 3, 0, 0, 1, '1', 'MCP-SMG-185', 'jl.Wr Supratman', '0', '0', '1', '-6.996879', '110.389861', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (164, 3, 0, 0, 1, '1', 'MCP-SMG-186', 'jl.Krt Wongsonegoro', '0', '0', '1', '-6.976322', '110.328291', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (165, 3, 0, 0, 1, '1', 'MCP-SMG-187', 'jl. Mukti harjo', '0', '0', '1', '-6.973664', '110.463955', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (166, 3, 0, 0, 1, '1', 'MCP-SMG-188', 'jl. Bugen', '0', '0', '1', '-6.981732', '110.467121', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (167, 3, 0, 0, 1, '1', 'MCP-SMG-189', 'jl. Dr Suratmo', '0', '0', '1', '-6.998598', '110.385597', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (168, 3, 0, 0, 1, '1', 'MCP-SMG-190', 'jl. Jodipati', '0', '0', '1', '-6.965936', '110.396147', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (169, 3, 0, 0, 1, '1', 'MCP-SMG-191', 'jl. Mukti harjo', '0', '0', '1', '-6.979524', '110.470543', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (170, 3, 0, 0, 1, '1', 'MCP-SMG-192', 'jl. Bugen Polaman', '0', '0', '1', '-6.971881', '110.468660', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (171, 3, 0, 0, 1, '1', 'MCP-SMG-193', 'jl. Gebang anom', '0', '0', '1', '-6.966020', '110.469430', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (172, 3, 0, 0, 1, '1', 'MCP-SMG-194', 'jl. Gebang anom', '0', '0', '1', '-6.960585', '110.469516', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (173, 3, 0, 0, 1, '1', 'MCP-SMG-195', 'jl. Gebang anom', '0', '0', '1', '-6.955659', '110.468489', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (174, 3, 0, 0, 1, '1', 'MCP-SMG-197', 'jl. Gadjah Raya', '0', '0', '1', '-6.977849', '110.448721', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (175, 3, 0, 0, 1, '1', 'MCP-SMG-199', 'jl. Gadjah Raya', '0', '0', '1', '-6.982751', '110.448554', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (176, 3, 0, 0, 1, '1', 'MCP-SMG-200', 'jl. Gadjah Raya', '0', '0', '1', '-6.999574', '110.444942', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (177, 3, 0, 0, 1, '1', 'MCP-SMG-201', 'jl. Gadjah Raya', '0', '0', '1', '-6.997217', '110.446091', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (178, 3, 0, 0, 1, '1', 'MCP-SMG-202', 'jl. Kudu', '0', '0', '1', '-6.970522', '110.485003', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (179, 3, 0, 0, 1, '1', 'MCP-SMG-203', 'jl. Kudu', '0', '0', '1', '-6.973239', '110.491591', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (180, 3, 0, 0, 1, '1', 'MCP-SMG-204', 'jl. Kudu', '0', '0', '1', '-6.974505', '110.496830', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (181, 3, 0, 0, 1, '1', 'MCP-SMG-205', 'jl.Prof Suharso', '0', '0', '1', '-7.039483', '110.468233', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (182, 3, 0, 0, 1, '1', 'MCP-SMG-206', 'jl.Prof Suharso', '0', '0', '1', '-7.053156', '110.471484', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (183, 3, 0, 0, 1, '1', 'MCP-SMG-207', 'jl.Kompol R Soekanto', '0', '0', '1', '-7.052019', '110.465406', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (184, 3, 0, 0, 1, '1', 'MCP-SMG-208', 'jl.Kol H Iman Soeparto Tjakrajoeda Sh 2', '0', '0', '1', '-7.057186', '110.467399', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (185, 3, 0, 0, 1, '1', 'MCP-SMG-209', 'jl.Kol H Iman Soeparto Tjakrajoeda Sh 2', '0', '0', '1', '-7.057063', '110.463954', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (186, 3, 0, 0, 1, '1', 'MCP-SMG-210', 'jl.Kol H Iman Soeparto Tjakrajoeda Sh 1', '0', '0', '1', '-7.060511', '110.448759', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (187, 3, 0, 0, 1, '1', 'MCP-SMG-211', 'jl. Palebon', '0', '0', '1', '-7.007846', '110.467152', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (188, 3, 0, 0, 1, '1', 'MCP-SMG-212', 'jl.Pelangi', '0', '0', '1', '-7.025980', '110.472340', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (189, 3, 0, 0, 1, '1', 'MCP-SMG-213', 'jl. Kedungmundu', '0', '0', '1', '-7.012986', '110.448639', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (190, 3, 0, 0, 1, '1', 'MCP-SMG-215', 'jl. Kedungmundu', '0', '0', '1', '-7.026659', '110.459506', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (191, 3, 0, 0, 1, '1', 'MCP-SMG-217', 'jl.Kompol R Soekanto', '0', '0', '1', '-7.038464', '110.458051', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (192, 3, 0, 0, 1, '1', 'MCP-SMG-218', 'jl.Kompol R Soekanto', '0', '0', '1', '-7.048316', '110.463783', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (193, 3, 0, 0, 1, '1', 'MCP-SMG-219', 'jl.Beringin Raya 3', '0', '0', '1', '-6.994791', '110.329667', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (194, 3, 0, 0, 1, '1', 'MCP-SMG-220', 'jl. Perum Dinar Mas', '0', '0', '1', '-7.059685', '110.469964', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (195, 3, 0, 0, 1, '1', 'MCP-SMG-221', 'jl. Supriyadi', '0', '0', '1', '-7.005767', '110.454543', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (196, 3, 0, 0, 1, '1', 'MCP-SMG-222', 'jl.Bukit Bougenville', '0', '0', '1', '-7.045639', '110.474276', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (197, 3, 0, 0, 1, '1', 'MCP-SMG-224', 'jl.Bukit Bougenville', '0', '0', '1', '-7.040163', '110.476190', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (198, 3, 0, 0, 1, '1', 'MCP-SMG-225', 'jl. Klipang Timur', '0', '0', '1', '-7.043985', '110.481409', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (199, 3, 0, 0, 1, '1', 'MCP-SMG-226', 'jl.Klipang Raya', '0', '0', '1', '-7.048316', '110.478671', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (200, 3, 0, 0, 1, '1', 'MCP-SMG-227', 'jl.Klipang Raya', '0', '0', '1', '-7.037870', '110.479441', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (201, 3, 0, 0, 1, '1', 'MCP-SMG-228', 'jl. Ketileng Indah', '0', '0', '1', '-7.036086', '110.471912', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (202, 3, 0, 0, 1, '1', 'MCP-SMG-229', 'jl. Pamularsih', '0', '0', '1', '-6.990131', '110.395582', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (203, 3, 0, 0, 1, '1', 'MCP-SMG-230', 'jl. Pamularsih', '0', '0', '1', '-6.986959', '110.385397', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (204, 3, 0, 0, 1, '1', 'MCP-SMG-231', 'jl.Ketileng Indah 1', '0', '0', '1', '-7.028782', '110.468062', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (205, 3, 0, 0, 1, '1', 'MCP-SMG-232', 'jl. Fatmawati', '0', '0', '1', '-7.021988', '110.469431', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (206, 3, 0, 0, 1, '1', 'MCP-SMG-233', 'jl. Fatmawati', '0', '0', '1', '-7.013750', '110.472169', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (207, 3, 0, 0, 1, '1', 'MCP-SMG-234', 'jl. Sapta Prasetya', '0', '0', '1', '-7.017534', '110.475179', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (208, 3, 0, 0, 1, '1', 'MCP-SMG-235', 'jl. Sapta prasetya Utara', '0', '0', '1', '-7.017317', '110.478243', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (209, 3, 0, 0, 1, '1', 'MCP-SMG-236', 'jl. Soekarna Hatta', '0', '0', '1', '-7.008167', '110.472552', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (210, 3, 0, 0, 1, '1', 'MCP-SMG-237', 'jl. Arya Mukti', '0', '0', '1', '-7.008229', '110.484490', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (211, 3, 0, 0, 1, '1', 'MCP-SMG-238', 'jl. Kedung Winong', '0', '0', '1', '-7.061215', '110.462728', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (212, 3, 0, 0, 1, '1', 'MCP-SMG-239', 'jl.Prof Dr Hamka', '0', '0', '1', '-6.996231', '110.347766', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (213, 3, 0, 0, 1, '1', 'MCP-SMG-240', 'jl.Prof Dr Hamka', '0', '0', '1', '-6.986959', '110.360810', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (214, 3, 0, 0, 1, '1', 'MCP-SMG-241', 'jl. Mukti harjo', '0', '0', '1', '-6.968983', '110.458627', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (215, 3, 0, 0, 1, '1', 'MCP-SMG-242', 'jl. Simongan', '0', '0', '1', '-7.012883', '110.385264', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (216, 3, 0, 0, 1, '1', 'MCP-SMG-243', 'jl. Soekarna Hatta', '0', '0', '1', '-6.975362', '110.445730', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (217, 3, 0, 0, 1, '1', 'MCP-SMG-244', 'jl. Soekarna Hatta', '0', '0', '1', '-6.981094', '110.452532', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (218, 3, 0, 0, 1, '1', 'MCP-SMG-245', 'jl. Soekarna Hatta', '0', '0', '1', '-6.993335', '110.459980', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (219, 3, 0, 0, 1, '1', 'MCP-SMG-246', 'jl. Soekarna Hatta', '0', '0', '1', '-6.986234', '110.454971', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (220, 3, 0, 0, 1, '1', 'MCP-SMG-248', 'jl. Subali', '0', '0', '1', '-6.987845', '110.366564', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (221, 3, 0, 0, 1, '1', 'MCP-SMG-249', 'jl.Puri Anjasmoro', '0', '0', '1', '-6.978912', '110.390850', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (222, 3, 0, 0, 1, '1', 'MCP-SMG-251', 'jl. Hanoman', '0', '0', '1', '-6.985355', '110.372420', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (223, 3, 0, 0, 1, '1', 'MCP-SMG-252', 'jl. Hanoman', '0', '0', '1', '-6.982283', '110.366784', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (224, 3, 0, 0, 1, '1', 'MCP-SMG-256', 'jl.Untung Suropati', '0', '0', '1', '-7.014471', '110.373337', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (225, 3, 0, 0, 1, '1', 'MCP-SMG-257', 'jl.Untung Suropati', '0', '0', '1', '-7.012619', '110.364275', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (226, 3, 0, 0, 1, '1', 'MCP-SMG-258', 'Dempel Kidul', '0', '0', '1', '-6.977655', '110.454372', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (227, 3, 0, 0, 1, '1', 'MCP-SMG-259', 'jl. Nogososro', '0', '0', '1', '-6.979779', '110.460960', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (228, 3, 0, 0, 1, '1', 'MCP-SMG-261', 'jl. Kartini', '0', '0', '1', '-6.985605', '110.431725', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (229, 3, 0, 0, 1, '1', 'MCP-SMG-262', 'jl. Kartini', '0', '0', '1', '-6.985644', '110.437400', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (230, 3, 0, 0, 1, '1', 'MCP-SMG-263', 'jl. Kartini', '0', '0', '1', '-6.985065', '110.434444', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (231, 3, 0, 0, 1, '1', 'MCP-SMG-265', 'jl. Supriyadi', '0', '0', '1', '-6.994726', '110.457366', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (232, 3, 0, 0, 1, '1', 'MCP-SMG-266', 'jl.Parang Kembang', '0', '0', '1', '-6.987946', '110.459059', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (233, 3, 0, 0, 1, '1', 'MCP-SMG-267', 'jl. RM Hadi Subeno Sosrowardoyo', '0', '0', '1', '-7.085995', '110.309950', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (234, 3, 0, 0, 1, '1', 'MCP-SMG-268', 'jl. RM Hadi Subeno Sosrowardoyo', '0', '0', '1', '-7.080095', '110.308783', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (235, 3, 0, 0, 1, '1', 'MCP-SMG-269', 'jl. RM Hadi Subeno Sosrowardoyo', '0', '0', '1', '-7.061869', '110.311436', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (236, 3, 0, 0, 1, '1', 'MCP-SMG-270', 'jl. RM Hadi Subeno Sosrowardoyo', '0', '0', '1', '-7.067242', '110.311861', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (237, 3, 0, 0, 1, '1', 'MCP-SMG-271', 'jl. RM Hadi Subeno Sosrowardoyo', '0', '0', '1', '-7.073458', '110.309844', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (238, 3, 0, 0, 1, '1', 'MCP-SMG-272', 'jl. RM Hadi Subeno Sosrowardoyo', '0', '0', '1', '-7.056180', '110.314727', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (239, 3, 0, 0, 1, '1', 'MCP-SMG-273', 'jl. Madukoro', '0', '0', '1', '-6.967590', '110.399624', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (240, 3, 0, 0, 1, '1', 'MCP-SMG-274', 'jl. Madukoro', '0', '0', '1', '-6.961560', '110.399286', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (241, 3, 0, 0, 1, '1', 'MCP-SMG-275', 'jl. Abdulrahman Saleh', '0', '0', '1', '-7.009841', '110.378334', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (242, 3, 0, 0, 1, '1', 'MCP-SMG-276', 'jl. Abdulrahman Saleh', '0', '0', '1', '-6.999458', '110.378734', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (243, 3, 0, 0, 1, '1', 'MCP-SMG-277', 'jl.Gondang', '0', '0', '1', '-7.060243', '110.442280', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (244, 3, 0, 0, 1, '1', 'MCP-SMG-278', 'jl. Kolonel HR Hardijanto', '0', '0', '1', '-7.037676', '110.390715', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (245, 3, 0, 0, 1, '1', 'MCP-SMG-279', 'jl. Kolonel HR Hardijanto', '0', '0', '1', '-7.050536', '110.389905', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (246, 3, 0, 0, 1, '1', 'MCP-SMG-280', 'jl. Mr Koesbiono Tjondro wibowo', '0', '0', '1', '-7.058172', '110.397465', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (247, 3, 0, 0, 1, '1', 'MCP-SMG-281', 'jl. Mr Koesbiono Tjondro wibowo', '0', '0', '1', '-7.063883', '110.396180', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (248, 3, 0, 0, 1, '1', 'MCP-SMG-282', 'jl. jatimulyo', '0', '0', '1', '-7.058116', '110.435398', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (249, 3, 0, 0, 1, '1', 'MCP-SMG-283', 'jl. Banjarsari Selatan', '0', '0', '1', '-7.062573', '110.438165', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (250, 3, 0, 0, 1, '1', 'MCP-SMG-284', 'jl.Tirta Agung', '0', '0', '1', '-7.059171', '110.427837', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (251, 3, 0, 0, 1, '1', 'MCP-SMG-285', 'jl.Rorojonggrang 13', '0', '0', '1', '-7.005741', '110.380133', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (252, 3, 0, 0, 1, '1', 'MCP-SMG-286', 'jl.Durian', '0', '0', '1', '-7.064531', '110.426419', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (253, 3, 0, 0, 1, '1', 'MCP-SMG-288', 'jl.Potrosari Tengah', '0', '0', '1', '-7.059935', '110.412442', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (254, 3, 0, 0, 1, '1', 'MCP-SMG-290', 'jl. jatimulyo', '0', '0', '1', '-7.054214', '110.432494', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (255, 3, 0, 0, 1, '1', 'MCP-SMG-292', 'jl.Prof Soedarto', '0', '0', '1', '-7.050060', '110.422842', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (256, 3, 0, 0, 1, '1', 'MCP-SMG-293', 'Bukit Sari Raya', '0', '0', '1', '-7.049055', '110.428917', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (257, 3, 0, 0, 1, '1', 'MCP-SMG-294', 'Bukit Sari Raya', '0', '0', '1', '-7.051065', '110.432629', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (258, 3, 0, 0, 1, '1', 'MCP-SMG-295', 'jl. Abdulrahman Saleh', '0', '0', '1', '-6.991257', '110.381465', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (259, 3, 0, 0, 1, '1', 'MCP-SMG-296', 'jl.Gombel Lama', '0', '0', '1', '-7.034115', '110.407211', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (260, 3, 0, 0, 1, '1', 'MCP-SMG-297', 'jl.Gombel Lama', '0', '0', '1', '-7.041887', '110.420682', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (261, 3, 0, 0, 1, '1', 'MCP-SMG-298', 'jl.Gombel Lama', '0', '0', '1', '-7.037934', '110.417983', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (262, 3, 0, 0, 1, '1', 'MCP-SMG-299', 'jl.Gombel Lama', '0', '0', '1', '-7.035429', '110.412315', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (263, 3, 0, 0, 1, '1', 'MCP-SMG-300', 'jl. Mr Koesbiono Tjondro wibowo', '0', '0', '1', '-7.082128', '110.387310', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (264, 3, 0, 0, 1, '1', 'MCP-SMG-301', 'jl. Mr Koesbiono Tjondro wibowo', '0', '0', '1', '-7.071940', '110.395406', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (265, 3, 0, 0, 1, '1', 'MCP-SMG-302', 'jl. Mr Koesbiono Tjondro wibowo', '0', '0', '1', '-7.092197', '110.388960', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (266, 3, 0, 0, 1, '1', 'MCP-SMG-303', 'jl. Mr Koesbiono Tjondro wibowo', '0', '0', '1', '-7.104655', '110.388150', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (267, 3, 0, 0, 1, '1', 'MCP-SMG-304', 'jl. Watukaji', '0', '0', '1', '-7.091395', '110.421087', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (268, 3, 0, 0, 1, '1', 'MCP-SMG-305', 'jl. Watukaji', '0', '0', '1', '-7.088716', '110.423584', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (269, 3, 0, 0, 1, '1', 'MCP-SMG-306', 'jl. Watukaji', '0', '0', '1', '-7.086874', '110.425368', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (270, 3, 0, 0, 1, '1', 'MCP-SMG-307', 'jl. karangrejo', '0', '0', '1', '-7.075183', '110.416228', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (271, 3, 0, 0, 1, '1', 'MCP-SMG-308', 'jl. Sawung Galing', '0', '0', '1', '-7.070770', '110.432713', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (272, 3, 0, 0, 1, '1', 'MCP-SMG-309', 'jl. Sawung Galing', '0', '0', '1', '-7.074449', '110.432787', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (273, 3, 0, 0, 1, '1', 'MCP-SMG-310', 'jl.Empu Sendok', '0', '0', '1', '-7.082887', '110.410963', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (274, 3, 0, 0, 1, '1', 'MCP-SMG-311', 'jl.Empu Sendok', '0', '0', '1', '-7.085969', '110.420142', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (275, 3, 0, 0, 1, '1', 'MCP-SMG-312', 'jl.Bumi Rejo', '0', '0', '1', '-7.084763', '110.417442', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (276, 3, 0, 0, 1, '1', 'MCP-SMG-313', 'jl.Bumi Rejo', '0', '0', '1', '-7.091127', '110.413528', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (277, 3, 0, 0, 1, '1', 'MCP-SMG-314', 'jl.Bumi Rejo', '0', '0', '1', '-7.094902', '110.410064', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (278, 3, 0, 0, 1, '1', 'MCP-SMG-315', 'jl. Dr Suratmo', '0', '0', '1', '-6.996291', '110.371918', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (279, 3, 0, 0, 1, '1', 'MCP-SMG-316', 'jl.Cemara', '0', '0', '1', '-7.071766', '110.423179', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (280, 3, 0, 0, 1, '1', 'MCP-SMG-317', 'jl.Merbau', '0', '0', '1', '-7.073441', '110.427297', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (281, 3, 0, 0, 1, '1', 'MCP-SMG-318', 'jl. Grafika Raya', '0', '0', '1', '-7.079135', '110.421020', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (282, 3, 0, 0, 1, '1', 'MCP-SMG-319', 'jl. Waru Timur raya', '0', '0', '1', '-7.068499', '110.434730', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (283, 3, 0, 0, 1, '1', 'MCP-SMG-320', 'jl.Mr Abdul Madjid Djojoadiningrat', '0', '0', '1', '-7.070493', '110.438973', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (284, 3, 0, 0, 1, '1', 'MCP-SMG-321', 'jl. Jati', '0', '0', '1', '-7.069890', '110.418185', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (285, 3, 0, 0, 1, '1', 'MCP-SMG-322', 'jl. Waru Timur raya', '0', '0', '1', '-7.069421', '110.426554', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (286, 3, 0, 0, 1, '1', 'MCP-SMG-323', 'jl. Ronggolawe Timur', '0', '0', '1', '-6.979381', '110.389095', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (287, 3, 0, 0, 1, '1', 'MCP-SMG-325', 'jl.Rorojonggrang 13', '0', '0', '1', '-7.008031', '110.387212', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (288, 3, 0, 0, 1, '1', 'MCP-SMG-326', 'jl. Barito', '0', '0', '1', '-6.996704', '110.438204', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (289, 3, 0, 0, 1, '1', 'MCP-SMG-327', 'jl. Barito', '0', '0', '1', '-6.964344', '110.443388', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (290, 3, 0, 0, 1, '1', 'MCP-SMG-328', 'jl. Barito', '0', '0', '1', '-6.979012', '110.441353', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (291, 3, 0, 0, 1, '1', 'MCP-SMG-329', 'jl. Barito', '0', '0', '1', '-6.971966', '110.442112', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (292, 3, 0, 0, 1, '1', 'MCP-SMG-330', 'jl. ngesrep barat 3', '0', '0', '1', '-7.044097', '110.417240', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (293, 3, 0, 0, 1, '1', 'MCP-SMG-331', 'jl.Gedongsongo', '0', '0', '1', '-7.001376', '110.387679', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (294, 3, 0, 0, 1, '1', 'MCP-SMG-333', 'jl.Tejosari', '0', '0', '1', '-7.080743', '110.424394', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (295, 3, 0, 0, 1, '1', 'MCP-SMG-334', 'jl. Muradi', '0', '0', '1', '-6.991443', '110.377806', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (296, 3, 0, 0, 1, '1', 'MCP-SMG-335', 'jl. Muradi', '0', '0', '1', '-6.986459', '110.376296', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (297, 3, 0, 0, 1, '1', 'MCP-SMG-336', 'jl.Sri Rejeki', '0', '0', '1', '-6.995225', '110.382598', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (298, 3, 0, 0, 1, '1', 'MCP-SMG-337', 'jl.Sri Rejeki', '0', '0', '1', '-6.992000', '110.385292', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (299, 3, 0, 0, 1, '1', 'MCP-SMG-338', 'jl. Citarum', '0', '0', '1', '-6.969576', '110.434485', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (300, 3, 0, 0, 1, '1', 'MCP-SMG-339', 'jl. Sri Rejeki Utara', '0', '0', '1', '-6.987421', '110.382931', '0', '1', '1', '1', '1', '1', '1', NULL, 1, 1, NULL, 1);
INSERT INTO `microcell` VALUES (301, 3, 0, 0, 1, '', 'MCP-SMG-103', 'jl gajah mada', '0', '0', '', '-6.974021', '110.420142', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-11 08:17:34', 1);
INSERT INTO `microcell` VALUES (302, 3, 0, 0, 1, '', 'MCP-SMG-104', 'jl imam bonjol', '0', '0', '', '-6.970135', '110.422167', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-11 08:29:08', 1);
INSERT INTO `microcell` VALUES (303, 3, 0, 0, 1, '', 'MCP-SMG-003', 'jl diponegoro', '0', '0', '', '-7.001165', '110.417717', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-17 12:21:23', 1);
INSERT INTO `microcell` VALUES (304, 3, 0, 0, 1, '', 'MCP-SMG-016', 'jl kelud raya', '0', '0', '', '-6.99811', '110.40158', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-17 12:30:11', 1);
INSERT INTO `microcell` VALUES (305, 3, 0, 0, 1, '', 'MCP-SMG-027', 'jl semeru', '0', '0', '', '-7.020421', '110.41551', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-17 12:42:11', 1);
INSERT INTO `microcell` VALUES (306, 3, 0, 0, 1, '', 'MCP-SMG-032', 'jl karang rejo', '0', '0', '', '-7.030881', '110.417815', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-17 12:45:30', 1);
INSERT INTO `microcell` VALUES (307, 3, 0, 0, 1, '', 'MCP-SMG-034', 'jl atmodirono', '0', '0', '', '-6.994918', '110.430591', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-19 10:03:30', 1);
INSERT INTO `microcell` VALUES (308, 3, 0, 0, 1, '', 'MCP-SMG-047', 'jl lampersari', '0', '0', '', '-7.006401', '110.438605', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-19 10:05:01', 1);
INSERT INTO `microcell` VALUES (309, 3, 0, 0, 1, '', 'MCP-SMG-091', 'Jl Taman Maluku', '0', '0', '', '-6.993436', '110.437369', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, '2020-03-19 10:05:11', 1);
INSERT INTO `microcell` VALUES (310, 3, 0, 0, 1, '', 'MCP-SMG-053', 'jl pahlawan', '0', '0', '', '-6.995912', '110.419756', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-19 10:06:17', 1);
INSERT INTO `microcell` VALUES (311, 3, 0, 0, 1, '', 'MCP-SMG-071', 'jl ronggowarsito', '0', '0', '', '-6.96701', '110.431008', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-19 10:08:13', 1);
INSERT INTO `microcell` VALUES (312, 3, 0, 0, 1, '', 'MCP-SMG-092', 'Jl Gadjah Raya', '0', '0', '', '-6.989882', '110.447924', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, '2020-03-19 10:08:13', 1);
INSERT INTO `microcell` VALUES (313, 3, 0, 0, 1, '', 'MCP-SMG-073', 'jl tanjungmas', '0', '0', '', '-6.956442', '110.409785', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-19 10:09:17', 1);
INSERT INTO `microcell` VALUES (314, 3, 0, 0, 1, '', 'MCP-SMG-083', 'jl MT HARYONO', '0', '0', '', '-7.000693', '110.433106', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-19 10:10:36', 1);
INSERT INTO `microcell` VALUES (315, 3, 0, 0, 1, '', 'MCP-SMG-093', 'Jl Slamet Riyadi', '0', '0', '', '-6.997348', '110.449116', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, '2020-03-19 10:11:01', 1);
INSERT INTO `microcell` VALUES (316, 3, 0, 0, 1, '', 'MCP-SMG-179', 'jl soekarno hatta', '0', '0', '', '-7.001742', '110.467323', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-19 10:13:27', 1);
INSERT INTO `microcell` VALUES (317, 3, 0, 0, 1, '', 'MCP-SMG-112', 'Jl. Jagalan Barat', '0', '0', '', '-6.978687', '110.429524', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, '2020-03-19 10:13:45', 1);
INSERT INTO `microcell` VALUES (318, 3, 0, 0, 1, '', 'MCP-SMG-196', 'jl rorojonggrang 13', '0', '0', '', '-7.007123', '110.382597', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-19 10:14:49', 1);
INSERT INTO `microcell` VALUES (319, 3, 0, 0, 1, '', 'MCP-SMG-118', 'Jl.Sugiyopranoto', '0', '0', '', '-6.982536', '110.404851', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, '2020-03-19 10:15:50', 1);
INSERT INTO `microcell` VALUES (320, 3, 0, 0, 1, '', 'MCP-SMG-122', 'Jl K. H. Ahmad Dahlan', '0', '0', '', '-6.989023', '110.425852', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, '2020-03-19 10:18:08', 1);
INSERT INTO `microcell` VALUES (321, 3, 0, 0, 1, '', 'MCP-SMG-127', 'Jl Depok', '0', '0', '', '-6.977390', '110.418175', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, '2020-03-19 10:19:45', 1);
INSERT INTO `microcell` VALUES (322, 3, 0, 0, 1, '', 'MCP-SMG-143', 'Jl Sriwijaya', '0', '0', '', '-6.998101', '110.42098', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, '2020-03-19 10:21:34', 1);
INSERT INTO `microcell` VALUES (323, 3, 0, 0, 1, '', 'MCP-SMG-146', 'Jl Sriwijaya', '0', '0', '', '-7.005038', '110.430016', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, '2020-03-19 10:23:09', 1);
INSERT INTO `microcell` VALUES (324, 3, 0, 0, 1, '', 'MCP-SMG-156', 'Jl.Mintojiwo Timur', '0', '0', '', '-6.988466', '110.389612', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, '2020-03-19 10:24:45', 1);
INSERT INTO `microcell` VALUES (325, 3, 0, 0, 1, '', 'MCP-SMG-255', 'Jl.Untung Suropati', '0', '0', '', '-7.011229', '110.381908', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, '2020-03-19 10:28:34', 1);
INSERT INTO `microcell` VALUES (326, 3, 0, 0, 1, '', 'MCP-SMG-260', 'Jl MT Haryono', '0', '0', '', '-6.974487', '110.431202', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, '2020-03-19 10:30:45', 1);
INSERT INTO `microcell` VALUES (327, 3, 0, 0, 1, '', 'MCP-SMG-264', 'Jl Supriyadi', '0', '0', '', '-6.999658', '110.455996', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, '2020-03-19 10:32:39', 1);
INSERT INTO `microcell` VALUES (328, 3, 0, 0, 1, '', 'MCP-SMG-287', 'Jl.Durian Selatan', '0', '0', '', '-7.061586', '110.417313', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, '2020-03-19 10:34:40', 1);
INSERT INTO `microcell` VALUES (329, 3, 0, 0, 1, '', 'MCP-SMG-289', 'Jl.Kyai Mojo', '0', '0', '', '-7.050208', '110.413833', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, '2020-03-19 10:36:16', 1);
INSERT INTO `microcell` VALUES (330, 3, 0, 0, 1, '', 'MCP-SMG-291', 'Jl.Prof Soedarto', '0', '0', '', '-7.052048', '110.427296', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, '2020-03-19 10:37:58', 1);
INSERT INTO `microcell` VALUES (331, 3, 0, 0, 1, '', 'MCP-SMG-198', 'jl gajah mada', '0', '0', '', '-6.993145', '110.446975', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-19 10:38:08', 1);
INSERT INTO `microcell` VALUES (332, 3, 0, 0, 1, '', 'MCP-SMG-214', 'jl kedungmundu', '0', '0', '', '-7.017482', '110.455058', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-19 10:39:34', 1);
INSERT INTO `microcell` VALUES (333, 3, 0, 0, 1, '', 'MCP-SMG-324', 'Jl.Prof Dr. Hamka', '0', '0', '', '-7.002597', '110.339785', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, '2020-03-19 10:40:22', 1);
INSERT INTO `microcell` VALUES (334, 3, 0, 0, 1, '', 'MCP-SMG-216', 'jl elang raya', '0', '0', '', '-7.037955', '110.464152', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-19 10:41:24', 1);
INSERT INTO `microcell` VALUES (335, 3, 0, 0, 1, '', 'MCP-SMG-332', 'Jl Karanganyar', '0', '0', '', '-6.971359', '110.334397', '0', '', 'moratelindo', '-', '', '-', '', NULL, 1, 1, '2020-03-19 10:41:47', 1);
INSERT INTO `microcell` VALUES (336, 3, 0, 0, 1, '', 'MCP-SMG-223', 'jl bukit sari raya', '0', '0', '', '-7.045975', '110.425544', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-19 10:42:47', 1);
INSERT INTO `microcell` VALUES (337, 3, 0, 0, 1, '', 'MCP-SMG-247', 'jl mukti harjo', '0', '0', '', '-6.958383', '110.44721', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-19 10:44:23', 1);
INSERT INTO `microcell` VALUES (338, 3, 0, 0, 1, '', 'MCP-SMG-250', 'jl subali', '0', '0', '', '-6.984914', '110.368440', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-19 10:45:40', 1);
INSERT INTO `microcell` VALUES (339, 3, 0, 0, 1, '', 'MCP-SMG-253', 'jl untung suropati', '0', '0', '', '-7.017019', '110.357263', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-19 10:47:28', 1);
INSERT INTO `microcell` VALUES (340, 3, 0, 0, 1, '', 'MCP-SMG-254', 'jl untung suropati', '0', '0', '', '-7.014933', '110.361002', '0', '', 'moratelindo', '', '', '1', '', NULL, 1, 1, '2020-03-19 10:48:32', 1);
INSERT INTO `microcell` VALUES (341, 3, 0, 0, 1, '', 'MCP-SMG-054', 'jl MT HARYONO', '0', '0', '', '-6.972913', '110.431189', '0', '', 'moratelindo 19 agustus 2020', '', '', '1', '', NULL, 1, 1, '2020-09-03 08:57:35', 1);
INSERT INTO `microcell` VALUES (342, 3, 0, 0, 1, '', 'MCP-SMG-055', 'jl MT HARYONO', '0', '0', '', '-6.996347', '110.432132', '0', '', 'moratelindo 19 agustus 2020', '', '', '1', '', NULL, 1, 1, '2020-09-03 08:58:50', 1);
INSERT INTO `microcell` VALUES (343, 3, 0, 0, 1, '', 'MCP-SMG-056', 'jl MT HARYONO', '0', '0', '', '-6.979169', '110.431300', '0', '', 'moratelindo 19 agustus 2020', '', '', '1', '', NULL, 1, 1, '2020-09-03 09:00:32', 1);
INSERT INTO `microcell` VALUES (344, 3, 0, 0, 1, '', 'MCP-SMG-027', 'jl ahmad yani', '0', '0', '', '-6.993967', '110.430588', '0', '', 'moratelindo 19 agustus 2020', '', '', '1', '', NULL, 1, 1, '2020-09-03 09:04:09', 1);
INSERT INTO `microcell` VALUES (345, 3, 0, 0, 1, '', 'MCP-SMG-069', 'jl imam bonjol', '0', '0', '', '-6.970584', '110.420840', '0', '', 'moratelindo 19 agustus 2020', '', '', '1', '', NULL, 1, 1, '2020-09-03 09:05:37', 1);
INSERT INTO `microcell` VALUES (346, 3, 0, 0, 1, '', 'MCP-SMG-070', 'jl imam bonjol', '0', '0', '', '-6.972972', '110.416181', '0', '', 'moratelindo 19 agustus 2020', '', '', '1', '', NULL, 1, 1, '2020-09-03 09:06:57', 1);
INSERT INTO `microcell` VALUES (347, 3, 0, 0, 1, '', 'MCP-SMG-038', 'jl pahlawan', '0', '0', '', '-6.995914', '110.419819', '0', '', 'moratelindo 19 agustus 2020', '', '', '1', '', NULL, 1, 1, '2020-09-03 09:08:10', 1);
INSERT INTO `microcell` VALUES (348, 3, 0, 0, 1, '', 'MCP-RS PANTIWILASA', 'jl DR CIPTO NO 23 KOTA SEMARANG', '0', '0', '', '-6.972680', '110.434070', '32', '', 'Tower Bersama group tgl 6 oktober 2020', '', '', '1', '', NULL, 1, 1, '2020-10-07 08:38:51', 1);
INSERT INTO `microcell` VALUES (349, 3, 0, 0, 1, '', 'MCP-Lamper mijen', 'jl lamper tengah gang 15 kel lamper tengah', '0', '0', '', '-7.006470', '110.447060', '32', '', 'Tower Bersama group tgl 6 oktober 2020', '', '', '1', '', NULL, 1, 1, '2020-10-07 08:42:59', 1);
INSERT INTO `microcell` VALUES (350, 3, 0, 0, 1, '', 'MCP-MINTOJIWO', 'jl mintojiwo barat kelurahan gisikdrono', '0', '0', '', '-6.99163', '110.38861', '32', '', 'Tower Bersama group tgl 6 oktober 2020', '', '', '1', '', NULL, 1, 1, '2020-10-07 08:45:29', 1);
INSERT INTO `microcell` VALUES (351, 3, 0, 0, 1, '', 'MCP-TLOGOSARI KULON 2', 'jl gajah birowo', '0', '0', '', '-6.98033', '110.4651', '32', '', 'Tower Bersama group tgl 6 oktober 2020', '', '', '1', '', NULL, 1, 1, '2020-10-07 08:48:49', 1);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `version` bigint(20) NOT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (20);

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `read` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notification
-- ----------------------------

-- ----------------------------
-- Table structure for operator
-- ----------------------------
DROP TABLE IF EXISTS `operator`;
CREATE TABLE `operator`  (
  `operator_id` int(12) NOT NULL AUTO_INCREMENT,
  `operator_nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `operator_created_at` datetime NULL DEFAULT NULL,
  `operator_user_created` int(12) NULL DEFAULT NULL,
  `operator_update_at` datetime NULL DEFAULT NULL,
  `operator_user_updated` int(12) NULL DEFAULT NULL,
  PRIMARY KEY (`operator_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operator
-- ----------------------------
INSERT INTO `operator` VALUES (1, 'XL', '2022-12-22 13:12:27', 1, NULL, NULL);
INSERT INTO `operator` VALUES (2, 'Telkomsel', '2022-12-22 13:12:27', 1, NULL, NULL);
INSERT INTO `operator` VALUES (3, 'Three', '2022-12-22 13:12:27', 1, NULL, NULL);
INSERT INTO `operator` VALUES (4, 'Indosat', '2022-12-22 13:12:27', 1, NULL, NULL);
INSERT INTO `operator` VALUES (5, 'Lainnya', '2022-12-22 13:12:27', 1, NULL, NULL);
INSERT INTO `operator` VALUES (6, 'HCPT', '2022-12-22 13:12:27', 1, NULL, NULL);

-- ----------------------------
-- Table structure for page
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fresh_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `link` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `template` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of page
-- ----------------------------

-- ----------------------------
-- Table structure for page_block_element
-- ----------------------------
DROP TABLE IF EXISTS `page_block_element`;
CREATE TABLE `page_block_element`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image_preview` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `block_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of page_block_element
-- ----------------------------

-- ----------------------------
-- Table structure for pemohon
-- ----------------------------
DROP TABLE IF EXISTS `pemohon`;
CREATE TABLE `pemohon`  (
  `pemohon_id` int(12) NOT NULL AUTO_INCREMENT,
  `pemohon_kode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(12) NOT NULL,
  `pemohon_nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pemohon_jenkel` int(2) NULL DEFAULT NULL,
  `pemohon_alamat` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pemohon_rt` int(5) NULL DEFAULT NULL,
  `pemohon_rw` int(5) NULL DEFAULT NULL,
  `kecamatan_id` int(12) NULL DEFAULT NULL,
  `kelurahan_id` int(12) NULL DEFAULT NULL,
  `agama_id` int(2) NULL DEFAULT NULL,
  `pemohon_created_at` datetime NULL DEFAULT NULL,
  `pemohon_user_id` int(12) NULL DEFAULT NULL,
  PRIMARY KEY (`pemohon_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pemohon
-- ----------------------------
INSERT INTO `pemohon` VALUES (2, 'user73745218933', 4, 'Akang Adnan', 1, 'Solo', 5, 10, 3, 127, 1, '2023-02-13 13:35:24', 1);

-- ----------------------------
-- Table structure for reminder
-- ----------------------------
DROP TABLE IF EXISTS `reminder`;
CREATE TABLE `reminder`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `receipent_custom_query` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `receipent_department` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `primary_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `table` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `repeat_frequency` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receipent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reminder
-- ----------------------------

-- ----------------------------
-- Table structure for reminder_condition
-- ----------------------------
DROP TABLE IF EXISTS `reminder_condition`;
CREATE TABLE `reminder_condition`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cond_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cond_table` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cond_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cond_operator` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cond_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cond_logic` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'AND',
  `reminder_id` int(11) NOT NULL,
  `group_id` int(11) NULL DEFAULT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reminder_condition
-- ----------------------------

-- ----------------------------
-- Table structure for reminder_cron
-- ----------------------------
DROP TABLE IF EXISTS `reminder_cron`;
CREATE TABLE `reminder_cron`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reminder_id` int(11) NOT NULL,
  `reff_id` int(11) NOT NULL,
  `reff_table` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sent_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reminder_cron
-- ----------------------------

-- ----------------------------
-- Table structure for rest
-- ----------------------------
DROP TABLE IF EXISTS `rest`;
CREATE TABLE `rest`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `subject` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `primary_key` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `x_api_key` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `x_token` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rest
-- ----------------------------

-- ----------------------------
-- Table structure for rest_field
-- ----------------------------
DROP TABLE IF EXISTS `rest_field`;
CREATE TABLE `rest_field`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rest_id` int(11) NOT NULL,
  `field_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `field_label` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `input_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `show_column` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_add_api` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_update_api` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_detail_api` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `relation_table` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `relation_value` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `relation_label` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rest_field
-- ----------------------------

-- ----------------------------
-- Table structure for rest_field_validation
-- ----------------------------
DROP TABLE IF EXISTS `rest_field_validation`;
CREATE TABLE `rest_field_validation`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rest_field_id` int(11) NOT NULL,
  `rest_id` int(11) NOT NULL,
  `validation_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `validation_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rest_field_validation
-- ----------------------------

-- ----------------------------
-- Table structure for rest_input_type
-- ----------------------------
DROP TABLE IF EXISTS `rest_input_type`;
CREATE TABLE `rest_input_type`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `relation` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `validation_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rest_input_type
-- ----------------------------
INSERT INTO `rest_input_type` VALUES (1, 'input', '0', 'input');
INSERT INTO `rest_input_type` VALUES (2, 'timestamp', '0', 'timestamp');
INSERT INTO `rest_input_type` VALUES (3, 'file', '0', 'file');
INSERT INTO `rest_input_type` VALUES (4, 'select', '1', 'select');

-- ----------------------------
-- Table structure for tipe_site
-- ----------------------------
DROP TABLE IF EXISTS `tipe_site`;
CREATE TABLE `tipe_site`  (
  `tipe_site_id` int(12) NOT NULL AUTO_INCREMENT,
  `tipe_site_nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tipe_site_created_at` datetime NULL DEFAULT NULL,
  `tipe_site_user_created` int(12) NULL DEFAULT NULL,
  `tipe_site_updated_at` datetime NULL DEFAULT NULL,
  `tipe_site_user_updated` int(12) NULL DEFAULT NULL,
  PRIMARY KEY (`tipe_site_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tipe_site
-- ----------------------------
INSERT INTO `tipe_site` VALUES (1, 'Green field', '2022-12-22 13:05:27', 1, NULL, NULL);
INSERT INTO `tipe_site` VALUES (2, 'Rooftop Pole', '2022-12-22 13:05:27', 1, NULL, NULL);
INSERT INTO `tipe_site` VALUES (3, 'SST', '2022-12-22 13:05:27', 1, NULL, NULL);
INSERT INTO `tipe_site` VALUES (4, 'Monopole', '2022-12-22 13:05:27', 1, NULL, NULL);
INSERT INTO `tipe_site` VALUES (5, 'Lainnya', '2022-12-22 13:05:27', 1, NULL, NULL);

-- ----------------------------
-- Table structure for widged_chart
-- ----------------------------
DROP TABLE IF EXISTS `widged_chart`;
CREATE TABLE `widged_chart`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widged_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of widged_chart
-- ----------------------------

-- ----------------------------
-- Table structure for widged_chart_series
-- ----------------------------
DROP TABLE IF EXISTS `widged_chart_series`;
CREATE TABLE `widged_chart_series`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `label` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value_unit` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formula` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `formula_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `x_axis_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `x_axis_field_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `x_axis_grouping` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'yes',
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `widged_chart_id` int(11) NOT NULL,
  `widged_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of widged_chart_series
-- ----------------------------

-- ----------------------------
-- Table structure for widged_chart_series_condition
-- ----------------------------
DROP TABLE IF EXISTS `widged_chart_series_condition`;
CREATE TABLE `widged_chart_series_condition`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cond_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cond_operator` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cond_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cond_logic` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'AND',
  `widged_series_id` int(11) NOT NULL,
  `widged_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of widged_chart_series_condition
-- ----------------------------

-- ----------------------------
-- Table structure for widgeds
-- ----------------------------
DROP TABLE IF EXISTS `widgeds`;
CREATE TABLE `widgeds`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dashboard_id` int(11) NOT NULL,
  `widged_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widged_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort_number` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of widgeds
-- ----------------------------

-- ----------------------------
-- Table structure for zona
-- ----------------------------
DROP TABLE IF EXISTS `zona`;
CREATE TABLE `zona`  (
  `zona_id` int(12) NOT NULL AUTO_INCREMENT,
  `zona_nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zona_longitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zona_latitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zona_radius` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kecamatan_id` int(12) NOT NULL,
  `zona_user_created` int(12) NULL DEFAULT NULL,
  `zona_created_at` datetime NULL DEFAULT NULL,
  `zona_user_updated` int(12) NULL DEFAULT NULL,
  `zona_updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`zona_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 303 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zona
-- ----------------------------
INSERT INTO `zona` VALUES (1, 'Banyumanik_01', '110.418376', '-7.049835', '288', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (2, 'Banyumanik_02', '110.411214', '-7.049919', '200', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (3, 'Banyumanik_03', '110.411118', '-7.060779', '263', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (4, 'Banyumanik_04', '110.399067', '-7.052664', '250', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (5, 'Banyumanik_05', '110.418531', '-7.062012', '200', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (6, 'Banyumanik_06', '110.415206', '-7.056458', '200', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (7, 'Banyumanik_07', '110.41210855686953', '-7.066119996602831', '200', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (8, 'Banyumanik_08', '110.414132', '-7.072662', '250', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (9, 'Banyumanik_09', '110.422178', '-7.074873', '200', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (10, 'Banyumanik_10', '110.411349', '-7.080273', '200', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (11, 'Banyumanik_11', '110.406726', '-7.096493', '300', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (12, 'Banyumanik_12', '110.415904', '-7.087880', '200', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (13, 'Banyumanik_13', '110.416167', '-7.096448', '200', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (14, 'Banyumanik_14', '110.413146', '-7.104366', '225', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (15, 'Banyumanik_15', '110.425014', '-7.045445', '200', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (16, 'Banyumanik_16', '110.421676', '-7.042382', '200', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (17, 'Banyumanik_17', '110.42027504760745', '-7.068983961852105', '200', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (18, 'Banyumanik_18', '110.406118', '-7.087693', '200', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (19, 'Banyumanik_19', '110.43148549737545', '-7.0861589862592345', '200', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (20, 'Banyumanik_20', '110.398005', '-7.110618', '200', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (21, 'Banyumanik_21', '110.404317', '-7.043211', '200', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (22, 'Banyumanik_22', '110.398113', '-7.033940', '200', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (23, 'Banyumanik_23', '110.400382', '-7.066832', '200', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (24, 'Banyumanik_24', '110.391024', '-7.091140', '270', 4, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (25, 'Candisari_01', '110.41783478833008', '-7.019264095926012', '200', 5, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (26, 'Candisari_02', '110.426617', '-7.020470', '200', 5, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (27, 'Candisari_03', '110.430918', '-7.029124', '200', 5, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (28, 'Candisari_04', '110.41993707807924', '-7.0352990823349115', '220', 5, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (29, 'Candisari_05', '110.418681', '-7.027857', '200', 5, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (30, 'Candisari_06', '110.435845', '-7.015899', '200', 5, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (31, 'Candisari_07', '110.440740', '-7.018935', '200', 5, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (32, 'Candisari_08', '110.427511', '-7.002288', '250', 5, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (33, 'Candisari_09', '110.438868', '-7.024674', '200', 5, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (34, 'Candisari_10', '110.424667', '-7.026116', '200', 5, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (35, 'Candisari_11', '110.42833997726595', '-7.036026597115269', '250', 5, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (36, 'Candisari_12', '110.412757', '-7.026334', '200', 5, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (37, 'Candisari_13', '110.414625', '-7.014871', '200', 5, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (38, 'Candisari_14', '110.411500', '-7.019365', '200', 5, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (39, 'Candisari_15', '110.396272', '-7.016076', '200', 5, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (40, 'Candisari_16', '110.432181', '-7.022284', '200', 5, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (41, 'Candisari_17', '110.404505', '-7.016389', '200', 5, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (42, 'Candisari_18', '110.415588', '-7.040488', '200', 5, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (43, 'Gajahmungkur_01', '110.388785', '-7.020801', '250', 6, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (44, 'Gajahmungkur_02', '110.399146', '-7.022469', '200', 6, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (45, 'Gajahmungkur_03', '110.406616', '-7.028556', '200', 6, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (46, 'Gajahmungkur_04', '110.389860', '-7.012952', '200', 6, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (47, 'Gajahmungkur_05', '110.392711', '-7.007685', '200', 6, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (48, 'Gajahmungkur_06', '110.408229', '-7.004174', '225', 6, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (49, 'Gajahmungkur_07', '110.407888', '-7.012451', '200', 6, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (50, 'Gajahmungkur_08', '110.398039', '-7.003843', '200', 6, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (51, 'Gajahmungkur_09', '110.384818', '-7.032183', '200', 6, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (52, 'Gajahmungkur_10', '110.405386', '-7.022918', '200', 6, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (53, 'Gajahmungkur_11', '110.372908', '-7.049290', '200', 6, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (54, 'Gajahmungkur_12', '110.391272', '-7.026556', '200', 6, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (55, 'Gajahmungkur_13', '110.400180', '-7.010103', '200', 6, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (56, 'Gayamsari_01', '110.434611', '-7.004825', '275', 7, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (57, 'Gayamsari_02', '110.433226', '-6.995683', '200', 7, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (58, 'Gayamsari_03', '110.440199', '-6.958230', '295', 7, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (59, 'Gayamsari_04', '110.431993', '-7.000059', '200', 7, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (60, 'Gayamsari_05', '110.430915', '-6.985182', '255', 7, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (61, 'Gayamsari_06', '110.435581', '-6.986475', '210', 7, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (62, 'Gayamsari_07', '110.439717', '-6.971379', '200', 7, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (63, 'Gayamsari_08', '110.445867', '-6.966597', '200', 7, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (64, 'Gayamsari_09', '110.434819', '-6.966786', '200', 7, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (65, 'Gayamsari_10', '110.452504', '-6.977188', '200', 7, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (66, 'Gayamsari_11', '110.449196', '-6.961052', '210', 7, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (67, 'Gayamsari_12', '110.451334', '-6.971184', '200', 7, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (68, 'Gayamsari_13', '110.46095164418031', '-6.96891861259017', '270', 7, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (69, 'Gayamsari_14', '110.457189', '-6.962302', '200', 7, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (70, 'Gayamsari_15', '110.43978079876396', '-6.981446333649311', '200', 7, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (71, 'Genuk_01', '110.469975', '-6.968966', '200', 8, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (72, 'Genuk_02', '110.458744', '-6.956376', '255', 8, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (73, 'Genuk_03', '110.465992', '-6.951421', '200', 8, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (74, 'Genuk_04', '110.474387', '-6.950836', '200', 8, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (75, 'Genuk_05', '110.49039581020361', '-6.948801473266681', '250', 8, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (76, 'Genuk_06', '110.469408', '-6.957766', '200', 8, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (77, 'Genuk_07', '110.491469', '-6.972085', '200', 8, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (78, 'Genuk_08', '110.49729657672121', '-6.983964959590635', '195', 8, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (79, 'Genuk_09', '110.476533', '-6.963964', '200', 8, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (80, 'Genuk_10', '110.480975', '-6.970065', '200', 8, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (81, 'Genuk_11', '110.479275', '-6.987611', '200', 8, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (82, 'Genuk_12', '110.471369', '-6.983324', '245', 8, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (83, 'Genuk_13', '110.464290', '-6.972446', '200', 8, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (84, 'Genuk_14', '110.4816048756409', '-6.975966525862137', '200', 8, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (85, 'Genuk_15', '110.47011440332662', '-6.963284850003069', '200', 8, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (86, 'Gunungpati_01', '110.360377', '-7.086559', '200', 9, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (87, 'Gunungpati_02', '110.366874', '-7.087279', '200', 9, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (88, 'Gunungpati_03', '110.388371', '-7.103028', '200', 9, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (89, 'Gunungpati_05', '110.30620844668576', '-7.065282645209436', '200', 9, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (90, 'Gunungpati_07', '110.35884496807864', '-7.073150448753269', '200', 9, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (91, 'Gunungpati_09', '110.392561', '-7.042693', '200', 9, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (92, 'Gunungpati_10', '110.39475804299161', '-7.056292590302667', '320', 9, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (93, 'Mijen_02', '110.335819', '-7.041830', '200', 10, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (94, 'Mijen_03', '110.333498', '-7.030522', '300', 10, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (95, 'Mijen_04', '110.310716', '-7.088865', '315', 10, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (96, 'Mijen_05', '110.300575', '-7.038525', '200', 10, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (97, 'Mijen_06', '110.341365', '-7.094636', '200', 10, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (98, 'Mijen_07', '110.316805', '-7.050330', '200', 10, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (99, 'Mijen_08', '110.329125', '-7.039272', '200', 10, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (100, 'Mijen_09', '110.309135', '-7.077620', '200', 10, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (101, 'Ngaliyan_02', '110.318110', '-7.004288', '200', 11, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (102, 'Ngaliyan_03', '110.332458', '-6.986988', '200', 11, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (103, 'Ngaliyan_04', '110.329157', '-6.980499', '200', 11, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (104, 'Ngaliyan_05', '110.3449483703613', '-7.007999999999989', '200', 11, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (105, 'Ngaliyan_06', '110.345103', '-6.995681', '200', 11, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (106, 'Ngaliyan_07', '110.340565', '-7.004018', '200', 11, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (107, 'Ngaliyan_08', '110.337643', '-7.011143', '230', 11, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (108, 'Ngaliyan_09', '110.335510', '-7.022164', '200', 11, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (109, 'Ngaliyan_10', '110.350162', '-7.009830', '200', 11, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (110, 'Ngaliyan_11', '110.369956', '-7.025513', '200', 11, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (111, 'Ngaliyan_12', '110.346719', '-6.985233', '200', 11, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (112, 'Ngaliyan_13', '110.33527697338104', '-7.0003338423757375', '200', 11, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (113, 'Ngaliyan_14', '110.321303', '-6.992284', '200', 11, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (114, 'Ngaliyan_16', '110.317449', '-6.981461', '200', 11, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (115, 'Ngaliyan_17', '110.338124', '-6.991567', '200', 11, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (116, 'Ngaliyan_19', '110.305950', '-7.004434', '200', 11, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (117, 'Ngaliyan_20', '110.35625992988588', '-7.018165476360382', '230', 11, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (118, 'Ngaliyan_21', '110.291880', '-6.973500', '210', 11, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (119, 'Pedurungan_01', '110.472950', '-7.031640', '225', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (120, 'Pedurungan_02', '110.466470', '-7.035628', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (121, 'Pedurungan_03', '110.453232', '-7.015229', '230', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (122, 'Pedurungan_04', '110.468909', '-7.022546', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (123, 'Pedurungan_05', '110.48713875659182', '-7.016972778827763', '225', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (124, 'Pedurungan_06', '110.486333', '-7.023719', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (125, 'Pedurungan_07', '110.459919', '-7.023123', '270', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (126, 'Pedurungan_08', '110.446702', '-7.014396', '300', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (127, 'Pedurungan_09', '110.445377', '-7.001393', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (128, 'Pedurungan_10', '110.450940', '-7.004028', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (129, 'Pedurungan_11', '110.442253', '-6.987433', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (130, 'Pedurungan_12', '110.448402', '-6.996707', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (131, 'Pedurungan_13', '110.440935', '-6.993772', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (132, 'Pedurungan_14', '110.456817', '-7.003548', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (133, 'Pedurungan_15', '110.480223', '-7.013789', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (134, 'Pedurungan_16', '110.446353', '-6.990362', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (135, 'Pedurungan_17', '110.471634', '-7.005297', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (136, 'Pedurungan_18', '110.474286', '-7.010376', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (137, 'Pedurungan_19', '110.467240', '-7.012239', '265', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (138, 'Pedurungan_20', '110.464312', '-7.017304', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (139, 'Pedurungan_21', '110.461434', '-7.007347', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (140, 'Pedurungan_22', '110.463288', '-6.997408', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (141, 'Pedurungan_23', '110.456768', '-6.992469', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (142, 'Pedurungan_24', '110.449387', '-6.984864', '350', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (143, 'Pedurungan_25', '110.469805', '-6.999365', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (144, 'Pedurungan_26', '110.473196', '-6.995003', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (145, 'Pedurungan_27', '110.483219', '-7.000884', '230', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (146, 'Pedurungan_28', '110.454012', '-7.009757', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (147, 'Pedurungan_29', '110.459386', '-6.982521', '300', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (148, 'Pedurungan_30', '110.48027873547362', '-7.020802085177645', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (149, 'Pedurungan_31', '110.47265146102143', '-7.027047646983317', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (150, 'Pedurungan_32', '110.451374', '-7.025749', '200', 12, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (151, 'Semarang Barat_01', '110.381435', '-6.987213', '210', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (152, 'Semarang Barat_02', '110.385665', '-6.983781', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (153, 'Semarang Barat_03', '110.376169', '-6.988324', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (154, 'Semarang Barat_04', '110.357576', '-6.984097', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (155, 'Semarang Barat_05', '110.385789', '-6.972106', '240', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (156, 'Semarang Barat_06', '110.363971', '-6.982211', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (157, 'Semarang Barat_07', '110.376105', '-6.979177', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (158, 'Semarang Barat_08', '110.367496', '-6.986475', '210', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (159, 'Semarang Barat_09', '110.38271988578333', '-7.013614018369929', '210', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (160, 'Semarang Barat_10', '110.387829', '-7.003775', '210', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (161, 'Semarang Barat_11', '110.381700', '-7.002442', '240', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (162, 'Semarang Barat_12', '110.387583', '-6.994346', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (163, 'Semarang Barat_13', '110.371185', '-7.001889', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (164, 'Semarang Barat_14', '110.378318', '-7.007547', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (165, 'Semarang Barat_15', '110.372826', '-7.013367', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (166, 'Semarang Barat_16', '110.381649', '-6.992428', '290', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (167, 'Semarang Barat_17', '110.345725', '-6.977639', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (168, 'Semarang Barat_18', '110.351956', '-6.993053', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (169, 'Semarang Barat_19', '110.370625', '-6.981316', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (170, 'Semarang Barat_20', '110.376938', '-6.983612', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (171, 'Semarang Barat_21', '110.368690', '-6.992325', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (172, 'Semarang Barat_22', '110.374757', '-6.994211', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (173, 'Semarang Barat_23', '110.376233', '-7.000196', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (174, 'Semarang Barat_24', '110.3836847605744', '-7.0079485113528515', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (175, 'Semarang Barat_25', '110.36092588493352', '-6.993078232888973', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (176, 'Semarang Barat_26', '110.360861', '-6.988267', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (177, 'Semarang Barat_27', '110.359126', '-7.002802', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (178, 'Semarang Barat_28', '110.360738', '-7.011223', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (179, 'Semarang Barat_29', '110.380738', '-7.021123', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (180, 'Semarang Barat_30', '110.366341', '-6.998497', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (181, 'Semarang Barat_31', '110.384923', '-6.998720', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (182, 'Semarang Barat_32', '110.371520', '-7.008190', '200', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (183, 'Semarang Barat_33', '110.336878', '-6.973622', '250', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (184, 'Semarang Selatan_01', '110.394074', '-6.991791', '200', 13, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (185, 'Semarang Selatan_02', '110.405763', '-6.997064', '200', 13, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (186, 'Semarang Selatan_03', '110.415541', '-7.003129', '240', 13, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (187, 'Semarang Selatan_04', '110.41684213757325', '-7.009544594589877', '200', 13, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (188, 'Semarang Selatan_05', '110.419244', '-7.013406', '200', 13, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (189, 'Semarang Selatan_06', '110.433404', '-7.010424', '300', 13, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (190, 'Semarang Selatan_07', '110.430756', '-7.016516', '200', 13, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (191, 'Semarang Selatan_08', '110.392237', '-6.996960', '200', 13, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (192, 'Semarang Selatan_09', '110.40327087304695', '-7.000669988029169', '200', 13, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (193, 'Semarang Selatan_10', '110.410968', '-6.999109', '200', 13, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (194, 'Semarang Selatan_11', '110.44076260845941', '-7.00924570269286', '200', 13, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (195, 'Semarang Selatan_12', '110.422503', '-7.009418', '200', 13, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (196, 'Semarang Selatan_13', '110.425560', '-7.014012', '200', 13, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (197, 'Semarang Selatan_14', '110.42229838144108', '-7.021341766949331', '200', 13, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (198, 'Semarang Selatan_15', '110.40352827079539', '-7.006929895180668', '200', 13, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (199, 'Semarang Selatan_16', '110.392429', '-7.002270', '200', 13, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (200, 'Semarang Selatan_17', '110.410504', '-7.008497', '200', 13, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (201, 'Semarang Selatan_18', '110.4393487289667', '-7.005030005267153', '200', 13, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (202, 'Semarang Selatan_19', '110.400688', '-6.993586', '200', 13, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (203, 'Semarang Tengah_01', '110.394510', '-6.981907', '200', 3, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (204, 'Semarang Tengah_02', '110.399742', '-6.982273', '200', 3, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (205, 'Semarang Tengah_03', '110.407898', '-6.980497', '210', 3, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (206, 'Semarang Tengah_04', '110.408113', '-6.985989', '200', 3, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (207, 'Semarang Tengah_05', '110.413837', '-6.986631', '200', 3, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (208, 'Semarang Tengah_06', '110.412828', '-6.994216', '210', 3, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (209, 'Semarang Tengah_07', '110.417432', '-6.997407', '210', 3, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (210, 'Semarang Tengah_08', '110.406549', '-6.991914', '210', 3, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (211, 'Semarang Tengah_09', '110.40333811694722', '-6.985226677545169', '200', 3, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (212, 'Semarang Tengah_10', '110.398913', '-6.987914', '200', 3, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (213, 'Semarang Tengah_11', '110.410943', '-6.989976', '200', 3, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (214, 'Semarang Tengah_12', '110.42666160845945', '-6.996178212591874', '200', 3, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (215, 'Semarang Tengah_13', '110.416794', '-6.991009', '200', 3, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (216, 'Semarang Tengah_14', '110.412880', '-6.981969', '200', 3, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (217, 'Semarang Tengah_15', '110.422664', '-6.997981', '200', 3, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (218, 'Semarang Tengah_16', '110.428105', '-7.008392', '200', 3, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (219, 'Semarang Tengah_17', '110.421513', '-7.003737', '200', 3, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (220, 'Semarang Timur_01', '110.429090', '-6.970310', '200', 2, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (221, 'Semarang Timur_02', '110.425889', '-6.975191', '200', 2, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (222, 'Semarang Timur_03', '110.433143', '-6.976884', '270', 2, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (223, 'Semarang Timur_04', '110.42739620768737', '-6.965644139174585', '200', 2, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (224, 'Semarang Timur_05', '110.423501', '-6.970389', '200', 2, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (225, 'Semarang Timur_06', '110.420260', '-6.974923', '220', 2, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (226, 'Semarang Timur_07', '110.42601235714721', '-6.980277909622431', '350', 2, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (227, 'Semarang Timur_08', '110.420005', '-6.983037', '200', 2, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (228, 'Semarang Timur_09', '110.420919', '-6.992161', '210', 2, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (229, 'Semarang Timur_10', '110.425745', '-6.991133', '230', 2, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (230, 'Semarang Timur_11', '110.422556', '-6.988120', '210', 2, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (231, 'Semarang Timur_12', '110.42888349206544', '-6.9564069801590165', '210', 2, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (232, 'Semarang Timur_13', '110.43641209255982', '-6.946428197473196', '210', 2, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (233, 'Semarang Timur_14', '110.417051', '-6.970194', '210', 2, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (234, 'Semarang Timur_15', '110.420565', '-6.963752', '250', 2, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (235, 'Semarang Timur_16', '110.431707', '-6.990613', '200', 2, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (236, 'Semarang Timur_17', '110.43088233729554', '-6.9621142327776475', '250', 2, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (237, 'Semarang Timur_18', '110.4487114892929', '-6.954962288034202', '200', 2, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (238, 'Semarang Utara_01', '110.4042978096769', '-6.955651277535943', '210', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (239, 'Semarang Utara_02', '110.409996', '-6.957787', '210', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (240, 'Semarang Utara_03', '110.415594', '-6.960717', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (241, 'Semarang Utara_04', '110.412298', '-6.966420', '210', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (242, 'Semarang Utara_05', '110.406072', '-6.966890', '210', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (243, 'Semarang Utara_06', '110.415319', '-6.978311', '210', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (244, 'Semarang Utara_07', '110.407119', '-6.973378', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (245, 'Semarang Utara_08', '110.4114509973449', '-6.9779294675730155', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (246, 'Semarang Utara_09', '110.398066', '-6.971233', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (247, 'Semarang Utara_10', '110.399427', '-6.959094', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (248, 'Semarang Utara_11', '110.385375', '-6.962473', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (249, 'Semarang Utara_12', '110.401319', '-6.976861', '270', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (250, 'Semarang Utara_13', '110.395451', '-6.977197', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (251, 'Semarang Utara_14', '110.391337', '-6.971707', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (252, 'Semarang Utara_15', '110.392713', '-6.960656', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (253, 'Semarang Utara_16', '110.399078', '-6.964713', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (254, 'Semarang Utara_17', '110.405670', '-6.961365', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (255, 'Semarang Utara_18', '110.424350', '-6.959063', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (256, 'Semarang Utara_19', '110.435651', '-6.952523', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (257, 'Semarang Utara_20', '110.391543', '-6.966073', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (258, 'Semarang Utara_21', '110.388590', '-6.978140', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (259, 'Semarang Utara_22', '110.41915419978545', '-6.9578367072841605', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (260, 'Semarang Utara_23', '110.3887051666565', '-6.988332212622593', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (261, 'Semarang Utara_24', '110.393772', '-6.952469', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (262, 'Semarang Utara_25', '110.427624', '-6.946557', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (263, 'Semarang Utara_26', '110.413348', '-6.949467', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (264, 'Semarang Utara_27', '110.384387', '-6.966960', '200', 15, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (265, 'Tembalang_01', '110.446458', '-7.021278', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (266, 'Tembalang_02', '110.45782203439332', '-7.0293237760518466', '300', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (267, 'Tembalang_03', '110.476522', '-7.047146', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (268, 'Tembalang_04', '110.45326554100029', '-7.041051633225018', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (269, 'Tembalang_05', '110.436306', '-7.053979', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (270, 'Tembalang_06', '110.446430', '-7.050655', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (271, 'Tembalang_07', '110.423616', '-7.058079', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (272, 'Tembalang_08', '110.430643', '-7.058079', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (273, 'Tembalang_09', '110.432123', '-7.069660', '250', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (274, 'Tembalang_10', '110.43990782145693', '-7.05836363742169', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (275, 'Tembalang_11', '110.446229', '-7.061130', '250', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (276, 'Tembalang_12', '110.460602', '-7.071361', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (277, 'Tembalang_13', '110.464027', '-7.080433', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (278, 'Tembalang_15', '110.44002328836063', '-7.063534715478114', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (279, 'Tembalang_16', '110.465321', '-7.056078', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (280, 'Tembalang_17', '110.472519', '-7.057298', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (281, 'Tembalang_18', '110.43993466137692', '-7.043442048998192', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (282, 'Tembalang_19', '110.44107147619626', '-7.032688258638547', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (283, 'Tembalang_20', '110.454952', '-7.058415', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (284, 'Tembalang_21', '110.446623', '-7.039626', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (285, 'Tembalang_22', '110.46798686242677', '-7.044001775040759', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (286, 'Tembalang_23', '110.472612', '-7.069579', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (287, 'Tembalang_24', '110.48318858993532', '-7.06442135437765', '200', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (288, 'Tembalang_25', '110.43312420176358', '-7.043216268081691', '250', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (289, 'Tembalang_26', '110.459496', '-7.035901', '210', 16, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (290, 'Tugu_01', '110.286039', '-6.968210', '200', 17, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (291, 'Tugu_03', '110.3039018642045', '-6.975165133425289', '240', 17, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (292, 'Tugu_04', '110.337444', '-6.982394', '200', 17, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (293, 'Tugu_05', '110.326376', '-6.976080', '200', 17, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (294, 'Tugu_06', '110.317371', '-6.973079', '250', 17, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (295, 'Genuk_16', '110.46835247619629', '-6.944007305993398', '200', 8, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (296, 'Ngaliyan_22', '110.29126', '-7.0088', '250', 11, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (297, 'Semarang Barat_34', '110.36798376190188', '-6.97514220684296', '250', 1, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (298, 'Mijen_10', '110.3260537866608', '-7.093422589707723', '200', 10, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (299, 'Gayamsari_16', '110.45417101852416', '-6.9651084703081185', '200', 7, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (300, 'Genuk_17', '110.49430856887817', '-6.966467423513831', '200', 8, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (301, 'Genuk_18', '110.47742128646972', '-6.977152627744077', '200', 8, 1, '2022-12-22 13:29:22', NULL, NULL);
INSERT INTO `zona` VALUES (302, 'Gunungpati_04', '110.29743894973755', '-7.054753372672751', '200', 9, 1, '2022-12-22 13:29:22', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;

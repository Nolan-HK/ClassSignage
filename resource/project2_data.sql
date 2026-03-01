/*
 Navicat Premium Data Transfer

 Source Server         : Nolan
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : project2_data

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 19/12/2023 16:53:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for checktable
-- ----------------------------
DROP TABLE IF EXISTS `checktable`;
CREATE TABLE `checktable`  (
  `Student_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Number` int NULL DEFAULT NULL,
  `Major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  UNIQUE INDEX `Student_Name`(`Student_Name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of checktable
-- ----------------------------

-- ----------------------------
-- Table structure for classtable
-- ----------------------------
DROP TABLE IF EXISTS `classtable`;
CREATE TABLE `classtable`  (
  `No` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `Course` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名称',
  `Teacher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '上课教师',
  `date` date NULL DEFAULT NULL COMMENT '课程日期',
  `start_time` time NOT NULL COMMENT '开始时间',
  `end_time` time NOT NULL COMMENT '结束时间',
  `image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '教师头像',
  PRIMARY KEY (`No`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classtable
-- ----------------------------
INSERT INTO `classtable` VALUES (1, '可视化程序设计B', '卫梦', '2023-12-18', '10:10:00', '11:50:00', 'C:\\Users\\Administrator\\Pictures\\Screenshots\\EDEN.png');
INSERT INTO `classtable` VALUES (2, '机器学习应用', '藏公瑾', '2023-12-18', '13:30:00', '15:10:00', 'C:\\Users\\Administrator\\Pictures\\Screenshots\\KOSMA.png');
INSERT INTO `classtable` VALUES (3, '工业视觉应用', '徐也', '2023-12-19', '08:10:00', '09:50:00', 'C:\\Users\\Administrator\\Pictures\\Screenshots\\SU.png');
INSERT INTO `classtable` VALUES (4, '工业视觉应用', '徐也', '2023-12-19', '10:10:00', '11:50:00', 'C:\\Users\\Administrator\\Pictures\\Screenshots\\SU.png');
INSERT INTO `classtable` VALUES (5, '形式与政策', '屈海香', '2023-12-19', '18:30:00', '20:00:00', 'C:\\Users\\Administrator\\Pictures\\Screenshots\\SAKURA.png');
INSERT INTO `classtable` VALUES (6, ' 人工智能创新创业课程', '王婷婷', '2023-12-20', '10:10:00', '11:50:00', 'C:\\Users\\Administrator\\Pictures\\Screenshots\\MOBIUS.png');
INSERT INTO `classtable` VALUES (7, '机器学习应用', '藏公瑾', '2023-12-20', '13:30:00', '15:10:00', 'C:\\Users\\Administrator\\Pictures\\Screenshots\\KOSMA.png');
INSERT INTO `classtable` VALUES (8, '工业视觉应用', '徐也', '2023-12-21', '08:10:00', '09:50:00', 'C:\\Users\\Administrator\\Pictures\\Screenshots\\SU.png');
INSERT INTO `classtable` VALUES (9, '工业视觉应用', '徐也', '2023-12-21', '09:50:00', '11:50:00', 'C:\\Users\\Administrator\\Pictures\\Screenshots\\SU.png');
INSERT INTO `classtable` VALUES (10, '机器学习应用', '藏公瑾', '2023-12-21', '13:30:00', '15:10:00', 'C:\\Users\\Administrator\\Pictures\\Screenshots\\KOSMA.png');
INSERT INTO `classtable` VALUES (11, '工业视觉应用', '徐也', '2023-12-22', '09:50:00', '11:50:00', 'C:\\Users\\Administrator\\Pictures\\Screenshots\\SU.png');
INSERT INTO `classtable` VALUES (12, '可视化程序设计B', '卫梦', '2023-12-22', '13:30:00', '15:10:00', 'C:\\Users\\Administrator\\Pictures\\Screenshots\\EDEN.png');
INSERT INTO `classtable` VALUES (13, '当前时间段内无课程', 'Elysia', '2023-12-21', '00:10:00', '23:59:59', 'C:\\Users\\Administrator\\Pictures\\Screenshots\\ELYSIA.png');

-- ----------------------------
-- Table structure for inform
-- ----------------------------
DROP TABLE IF EXISTS `inform`;
CREATE TABLE `inform`  (
  `No` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `Title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `Text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `Time` datetime NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`No`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inform
-- ----------------------------
INSERT INTO `inform` VALUES (1, '测试1', 'Creativity is intelligence having fun. A query is used to extract data from the database in a readable format according to the user\'s request. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Creativity is intelligence having fun. Sometimes you win, sometimes you learn. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. The past has no power over the present moment. The On Startup feature allows you to control what tabs appear when you launch Navicat. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. You will succeed because most people are lazy. Success consists of going from failure to failure without loss of enthusiasm. A query is used to extract data from the database in a readable format according to the user\'s request. Typically, it is employed as an encrypted version of Telnet. It wasn’t raining when Noah built the ark. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. If opportunity doesn’t knock, build a door. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. You cannot save people, you can just love them. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. The Synchronize to Database function will give you a full picture of all database differences. You will succeed because most people are lazy. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab.', '2016-12-17 14:04:58');
INSERT INTO `inform` VALUES (2, '测试2', '<img src=\'resource\\student_image\\ELYSIA.png\' width=\'128\',height=\'128\'>\r\n<br>\r\n你们有没有想过<br>\r\n人生<br>\r\n是怎样构成的<br>\r\n日月更替<br>\r\n山川汇聚<br>\r\n人生<br>\r\n也许是一场又一场机缘巧合的相遇<br>\r\n想要和一个人相遇<br>\r\n需要在同一个时代<br>\r\n来到同一座城市<br>\r\n在同一个时刻<br>\r\n出现在同一个地点<br>\r\n然后<br>\r\n静静等待着命运的排列组合<br>\r\n那些普普通通的人生轨迹开始相互交织<br>\r\n平凡的日子渐渐变成绚丽的模样<br>\r\n熠熠生辉<br>', '2023-12-08 02:16:32');
INSERT INTO `inform` VALUES (3, '测试3', '<a href=\"http://nolan.love\">点击这里访问网站</a>\r\n', '2017-10-23 09:50:19');
INSERT INTO `inform` VALUES (4, '测试4', '测试4', '2011-02-13 17:09:30');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `No` int NOT NULL AUTO_INCREMENT,
  `Student_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `Number` int NULL DEFAULT NULL COMMENT '学号',
  `Major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `Image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '学生照片',
  PRIMARY KEY (`No`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 'Kevin', 10100001, '人工智能32132', 'F:\\python\\Project2\\resource\\student_image\\KEVIN.png');
INSERT INTO `student` VALUES (2, 'Elysia', 10100002, '人工智能32132', 'F:\\python\\Project2\\resource\\student_image\\ELYSIA.png');
INSERT INTO `student` VALUES (3, 'Aponia', 10100003, '人工智能32132', 'F:\\python\\Project2\\resource\\student_image\\APONIA.png');
INSERT INTO `student` VALUES (4, 'Eden', 10100004, '人工智能32132', 'F:\\python\\Project2\\resource\\student_image\\EDEN.png');
INSERT INTO `student` VALUES (5, 'Vill-V', 10100005, '人工智能32132', 'F:\\python\\Project2\\resource\\student_image\\VILL-V.png');
INSERT INTO `student` VALUES (6, 'Kalpas', 10100006, '人工智能32132', 'F:\\python\\Project2\\resource\\student_image\\KALPAS.png');
INSERT INTO `student` VALUES (7, 'Su', 10100007, '人工智能32132', 'F:\\python\\Project2\\resource\\student_image\\SU.png');
INSERT INTO `student` VALUES (8, 'Sakura', 10100008, '人工智能32132', 'F:\\python\\Project2\\resource\\student_image\\Sakura.png');
INSERT INTO `student` VALUES (9, 'Kosma', 10100009, '人工智能32132', 'F:\\python\\Project2\\resource\\student_image\\KOSMA.png');
INSERT INTO `student` VALUES (10, 'Mobius', 10100010, '人工智能32132', 'F:\\python\\Project2\\resource\\student_image\\MOBIUS.png');
INSERT INTO `student` VALUES (11, 'Griseo', 10100011, '人工智能32132', 'F:\\python\\Project2\\resource\\student_image\\GRISEO.png');
INSERT INTO `student` VALUES (12, 'Hua', 10100012, '人工智能32132', 'F:\\python\\Project2\\resource\\student_image\\HUA.png');
INSERT INTO `student` VALUES (13, 'Pardofelis', 10100013, '人工智能32132', 'F:\\python\\Project2\\resource\\student_image\\PARDOFELIS.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `No` int NOT NULL AUTO_INCREMENT,
  `Account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `Password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`No`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'root', '123');

SET FOREIGN_KEY_CHECKS = 1;

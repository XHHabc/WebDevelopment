/*
 Navicat Premium Data Transfer

 Source Server         : lms
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : 47.115.207.238:3306
 Source Schema         : lms

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 11/06/2023 20:00:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Admin
-- ----------------------------
DROP TABLE IF EXISTS `Admin`;
CREATE TABLE `Admin`  (
  `AdminID` int NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `AdminPassword` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`AdminID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Admin
-- ----------------------------
INSERT INTO `Admin` VALUES (1, 'admin', '123456');

-- ----------------------------
-- Table structure for Book
-- ----------------------------
DROP TABLE IF EXISTS `Book`;
CREATE TABLE `Book`  (
  `BookID` int NOT NULL AUTO_INCREMENT COMMENT '图书id',
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书名',
  `Author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '作者',
  `Publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '出版商',
  `CategoryID` int NULL DEFAULT NULL COMMENT '图书类型id',
  `StockQuantity` int NOT NULL COMMENT '库存数量',
  PRIMARY KEY (`BookID`) USING BTREE,
  INDEX `CategoryID`(`CategoryID`) USING BTREE,
  CONSTRAINT `Book_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `Category` (`CategoryID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Book
-- ----------------------------
INSERT INTO `Book` VALUES (2, '追风筝的人', '卡勒德·胡赛尼', '上海人民出版社', 1, 10);
INSERT INTO `Book` VALUES (3, '百年孤独', '加西亚·马尔克斯', '南海出版公司', 5, 5);
INSERT INTO `Book` VALUES (4, '三体', '刘慈欣', '重庆出版社', 3, 8);
INSERT INTO `Book` VALUES (5, '活着', '余华', '南海出版公司', 4, 3);
INSERT INTO `Book` VALUES (6, '解忧杂货店', '东野圭吾', '南海出版公司', 1, 6);
INSERT INTO `Book` VALUES (12, '穆斯林的葬礼', '霍桑·艾萨瓦尔', '上海译文出版社', 1, 3);
INSERT INTO `Book` VALUES (13, '经济学原理', '曼昆', '机械工业出版社', 6, 6);
INSERT INTO `Book` VALUES (14, '小王子', '圣埃克苏佩里', '人民文学出版社', 7, 8);
INSERT INTO `Book` VALUES (15, '哲学家们', '荀子', '中华书局', 8, 4);
INSERT INTO `Book` VALUES (16, '心理学导论', '约翰·W.萨金特', '机械工业出版社', 9, 10);
INSERT INTO `Book` VALUES (17, '宇宙的奥秘', '斯蒂芬·霍金', '人民邮电出版社', 10, 5);
INSERT INTO `Book` VALUES (31, '演员的自我修养', '周星星', '长江出版社', 2, 30);
INSERT INTO `Book` VALUES (32, '四体', '滕杨天下', '朝阳监狱', 10, 5);
INSERT INTO `Book` VALUES (34, 'JSP从入门到入土', '周星星', '长江出版社', 12, 10);
INSERT INTO `Book` VALUES (38, '演员的自我修养', '周星星', '南海出版社', 9, 37);
INSERT INTO `Book` VALUES (39, '人机交互', '刘德华', '长江出版社', 10, 3);

-- ----------------------------
-- Table structure for BorrowRecord
-- ----------------------------
DROP TABLE IF EXISTS `BorrowRecord`;
CREATE TABLE `BorrowRecord`  (
  `RecordID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NULL DEFAULT NULL COMMENT '用户id',
  `BookID` int NULL DEFAULT NULL COMMENT '图书id',
  `BorrowDate` date NOT NULL COMMENT '借书日期',
  `ReturnDate` date NOT NULL COMMENT '还书日期',
  `ActualReturnDate` date NULL DEFAULT NULL COMMENT '实际返回日期',
  PRIMARY KEY (`RecordID`) USING BTREE,
  INDEX `UserID`(`UserID`) USING BTREE,
  INDEX `BookID`(`BookID`) USING BTREE,
  CONSTRAINT `BorrowRecord_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `BorrowRecord_ibfk_2` FOREIGN KEY (`BookID`) REFERENCES `Book` (`BookID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of BorrowRecord
-- ----------------------------
INSERT INTO `BorrowRecord` VALUES (1, 1, 2, '2023-06-03', '2023-06-03', '2023-06-03');
INSERT INTO `BorrowRecord` VALUES (2, 1, 2, '2023-06-03', '2023-06-03', '2023-06-03');
INSERT INTO `BorrowRecord` VALUES (3, 1, 2, '2023-06-03', '2023-06-03', '2023-06-08');

-- ----------------------------
-- Table structure for Category
-- ----------------------------
DROP TABLE IF EXISTS `Category`;
CREATE TABLE `Category`  (
  `CategoryID` int NOT NULL AUTO_INCREMENT COMMENT '图书类型id',
  `CategoryName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图书类型名称',
  PRIMARY KEY (`CategoryID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Category
-- ----------------------------
INSERT INTO `Category` VALUES (1, '小说');
INSERT INTO `Category` VALUES (2, '历史');
INSERT INTO `Category` VALUES (3, '科幻');
INSERT INTO `Category` VALUES (4, '经典文学');
INSERT INTO `Category` VALUES (5, '自主学习');
INSERT INTO `Category` VALUES (6, '经济金融');
INSERT INTO `Category` VALUES (7, '儿童读物');
INSERT INTO `Category` VALUES (8, '哲学宗教');
INSERT INTO `Category` VALUES (9, '心理学');
INSERT INTO `Category` VALUES (10, '科学技术');
INSERT INTO `Category` VALUES (12, '计算机科学');

-- ----------------------------
-- Table structure for User
-- ----------------------------
DROP TABLE IF EXISTS `User`;
CREATE TABLE `User`  (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`UserID`) USING BTREE,
  UNIQUE INDEX `Username`(`Username`) USING BTREE,
  UNIQUE INDEX `Email`(`Email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of User
-- ----------------------------
INSERT INTO `User` VALUES (1, 'adwdw', '123456', 'vqilai03@163.com');
INSERT INTO `User` VALUES (6, 'user1', '12345678', '411@qq.com');

-- ----------------------------
-- View structure for BorrowRecordView
-- ----------------------------
DROP VIEW IF EXISTS `BorrowRecordView`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `BorrowRecordView` AS select `BR`.`RecordID` AS `RecordID`,`BR`.`UserID` AS `UserID`,`BR`.`BookID` AS `BookID`,`U`.`Username` AS `Username`,`BK`.`Title` AS `Title`,`BR`.`BorrowDate` AS `BorrowDate`,`BR`.`ReturnDate` AS `ReturnDate`,`BR`.`ActualReturnDate` AS `ActualReturnDate` from ((`BorrowRecord` `BR` join `User` `U` on((`BR`.`UserID` = `U`.`UserID`))) join `Book` `BK` on((`BR`.`BookID` = `BK`.`BookID`)));

SET FOREIGN_KEY_CHECKS = 1;

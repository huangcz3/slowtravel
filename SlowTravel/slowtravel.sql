/*
Navicat MySQL Data Transfer

Source Server         : sdfsadd
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : slowtravel

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2017-07-06 16:56:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `colletc`
-- ----------------------------
DROP TABLE IF EXISTS `colletc`;
CREATE TABLE `colletc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `t_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of colletc
-- ----------------------------
INSERT INTO `colletc` VALUES ('1', '9', '15');
INSERT INTO `colletc` VALUES ('2', '9', '16');
INSERT INTO `colletc` VALUES ('3', '9', '17');
INSERT INTO `colletc` VALUES ('4', '9', '18');
INSERT INTO `colletc` VALUES ('5', '9', '19');
INSERT INTO `colletc` VALUES ('6', '9', '20');
INSERT INTO `colletc` VALUES ('7', '9', '32');
INSERT INTO `colletc` VALUES ('8', '9', '33');
INSERT INTO `colletc` VALUES ('9', '9', '34');
INSERT INTO `colletc` VALUES ('10', '9', '35');
INSERT INTO `colletc` VALUES ('11', '9', '36');

-- ----------------------------
-- Table structure for `destination`
-- ----------------------------
DROP TABLE IF EXISTS `destination`;
CREATE TABLE `destination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(200) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `hot` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of destination
-- ----------------------------
INSERT INTO `destination` VALUES ('8', '曼谷', 'photo_2013_02_17_e22eb4dfb93c90ab94513ecd50d4dd24 (1).jpg', '305');
INSERT INTO `destination` VALUES ('35', '成都', 'covers_2014_05_17_d5aeb02f4f91f688f9d1a4dd366fd32d.jpg', '30');
INSERT INTO `destination` VALUES ('36', '北京', 'covers_2014_09_19_69df0e25e5e4cc7b4a65fa29a1d9ad9e.jpg', '234');
INSERT INTO `destination` VALUES ('37', '厦门', 'covers_2014_09_19_69df0e25e5e4cc7b4a65fa29a1d9ad9e_1.jpg', '423');
INSERT INTO `destination` VALUES ('39', '鄂尔多斯', 'covers_2015_01_07_ca3299e5a80b0fb81889e549da878767.jpg', '630');
INSERT INTO `destination` VALUES ('40', '芬兰', 'covers_2015_04_10_83560c9dd3d597561c2795b39e300dd8.jpg', '370');
INSERT INTO `destination` VALUES ('41', '上海', 'covers_2015_04_16_db70c94b71007eefa793601f130aefb2.jpg', '330');
INSERT INTO `destination` VALUES ('42', '布兰格', 'covers_2015_12_21_ab9530fd2342007fdf5a36a4f6be7b39.jpg', '230');
INSERT INTO `destination` VALUES ('43', '大阪', 'covers_2015_12_21_c1840b68fb6e48d712ce8ade70012fcc.jpg', '343');
INSERT INTO `destination` VALUES ('44', '桑托林岛', 'covers_2017_05_11_a2b1cb62fd216b85054306df979d6dfa.jpg', '67');
INSERT INTO `destination` VALUES ('45', '丽江', 'photo_2012_09_03_1bb04d6c110c0a8449c434a6171a71b8.jpg', '23');
INSERT INTO `destination` VALUES ('46', '马来西亚', 'photo_2013_01_13_9afa56035c387636d7c49ed6d1946255.jpg', '459');
INSERT INTO `destination` VALUES ('47', '拉萨', 'photo_2013_03_05_363e2a49be7590f1f328d355b383d2a5.jpg', '6423');
INSERT INTO `destination` VALUES ('48', 'Funadhoo', 'photo_2013_03_08_06699aead341171a37934c05737163bf.jpg', '234');
INSERT INTO `destination` VALUES ('49', '贝圣安那区', 'covers_2014_05_17_d5aeb02f4f91f688f9d1a4dd366fd32d.jpg', '45');
INSERT INTO `destination` VALUES ('50', '尖沙咀', 'photo_2013_03_15_16a42df995bb5aa91b73c09dbba83c1c.jpg', '65');
INSERT INTO `destination` VALUES ('51', '马莱', 'photo_2013_03_22_bcce600077562bdf02e61dbaf41401fe.jpg', '245');
INSERT INTO `destination` VALUES ('52', '清迈府', 'photo_2013_03_24_04f20c8019df84fd663fe43178f63d94.jpg', '123');
INSERT INTO `destination` VALUES ('53', '雅典', 'photo_2013_03_29_ea20ea44a4e6e191e64ffe73de70c101.jpg', '764');
INSERT INTO `destination` VALUES ('54', '奥克兰', 'photo_2013_04_01_08e30ac605a39d999c0faec30164ce78.jpg', '234');
INSERT INTO `destination` VALUES ('55', '英国', 'photo_2013_04_12_b572d81825582eb6ad7b5873c84a8a3b.jpg', '7463');
INSERT INTO `destination` VALUES ('56', '台湾', 'photo_2013_04_27_8cacd481b807f519841339e0b543ca6b.jpg', '345');
INSERT INTO `destination` VALUES ('57', '恰纳卡莱', 'photo_2013_04_27_16ae65b3c6dd0af3a8457007eaf106a4.jpg', '7456');
INSERT INTO `destination` VALUES ('58', '济州', 'photo_2013_04_29_461654970571db2a66fc512297798b20.jpg', '5345');
INSERT INTO `destination` VALUES ('59', '昌都', 'photo_2013_05_17_28e9ce3fbb1380ad49126d14c0a61065.jpg', '46');
INSERT INTO `destination` VALUES ('60', '承德', 'photo_2013_05_24_88b358098c5819597ea1a8e6102cf06f.jpg', '370');
INSERT INTO `destination` VALUES ('61', '凯库拉', 'photo_2013_06_03_90ee4f542156384bb06e07a62e447b40.jpg', '756');
INSERT INTO `destination` VALUES ('62', '色努', 'photo_2013_06_05_b8897b16d8bfe99ea63ebca454587506.jpg', '234');
INSERT INTO `destination` VALUES ('63', '米兰', 'photo_2013_07_05_7565daa2a12bdfee155364790500716d.jpg', '764');
INSERT INTO `destination` VALUES ('64', '文京区', 'photo_2013_07_06_85dcca9770e9d1a475c9a26c2eb8ad12.jpg', '985');

-- ----------------------------
-- Table structure for `follow`
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `receive_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of follow
-- ----------------------------

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `receive_username` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '何磊', '你好啊', '杜宇翔', '2017-06-23 11:41:30');

-- ----------------------------
-- Table structure for `mgr_menu`
-- ----------------------------
DROP TABLE IF EXISTS `mgr_menu`;
CREATE TABLE `mgr_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(20) DEFAULT NULL,
  `jumppath` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mgr_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `picture`
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `exp` varchar(1000) DEFAULT NULL,
  `place` varchar(200) DEFAULT NULL,
  `travels_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `local` varchar(200) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('2', 'm_bg1.jpg', '2017-06-21 11:07:23', '啊，这里真TM漂亮啊', '东京', '16', '1', '日本', '2');
INSERT INTO `picture` VALUES ('3', 'm_bg2.jpg', '2017-06-21 11:07:23', '深夜，因为各种晚点而异常繁忙的机场远端机位，摆渡车来来往往，空姐告诉我们飞机刚刚从深圳飞过来，由于天气原因导致晚点，其实我们都知道，原计划执飞的飞机18:52就到重庆了，只不过被调拨去执飞其它晚点得不好意思再晚点的航班了，毫无真诚可言！', '东京', '16', '1', '日本', '4');
INSERT INTO `picture` VALUES ('4', 'm_bg3.jpg', '2017-06-21 11:07:23', '北京真TM好看', '北京', '15', '1', '北京', '2');
INSERT INTO `picture` VALUES ('5', 'photo_2017_05_17_.jpg', '2017-06-21 11:07:23', '可以的，值得来尝一尝', '北京', '15', '1', '北京', '1');
INSERT INTO `picture` VALUES ('6', 'bg0.jpg', '2017-06-21 11:07:23', '这里的海真TM大', '上海', '17', '1', '上海', '3');
INSERT INTO `picture` VALUES ('7', 'bg1.jpg', '2017-06-21 11:07:23', '这TM鱼才TM好吃', '上海', '17', '1', '上海', '1');
INSERT INTO `picture` VALUES ('8', 'bg2.jpg', '2017-06-21 11:07:23', '这里的火锅真的很赞，值得大家来尝一尝~~~~~！！！！！！！！！！！！', '四川', '18', '1', '四川', '1');
INSERT INTO `picture` VALUES ('9', 'dyx123.jpg', '2017-06-21 11:07:23', '你还别说，这个妹儿长的真的很乖的~', '四川', '18', '1', '四川', '2');
INSERT INTO `picture` VALUES ('10', 'dyx8521.jpg', '2017-06-21 11:07:23', '哼~！说出来你们可能不信，说不定你们一辈子都不会来这个地方的~！', '什邡', '19', '1', '什邡', '2');
INSERT INTO `picture` VALUES ('11', 'm_bg1.jpg', '2017-06-21 11:07:23', '这个米粉真的可以，好吃的扳', '什邡', '19', '1', '什邡', '1');
INSERT INTO `picture` VALUES ('12', 'm_bg2.jpg', '2017-06-21 11:07:23', '这个豆腐干可以哦~~~', '红白', '20', '1', '红白', '1');
INSERT INTO `picture` VALUES ('13', 'm_bg3.jpg', '2017-06-21 11:07:23', '小乡镇，大味道~~~', '红白', '20', '1', '红白', '1');
INSERT INTO `picture` VALUES ('14', 'covers_2014_10_24_ac297214a0f4669cc7502706475b38a8.png', '2017-3-21 15:20:15', '可以的，值得来尝一尝', '东方饭店', '15', '1', '曼谷', '1');
INSERT INTO `picture` VALUES ('15', 'photo_2013_04_24_6fd3771e75ff41983fa0e7410e4152e4.jpg', '2017-3-21 15:20:15', '可以的，值得来尝一尝', '东方饭店', '15', '1', '曼谷', '1');
INSERT INTO `picture` VALUES ('16', 'photo_2013_06_12_284c6db32aef71518b1be416ee94b161.jpg', '2017-3-21 15:20:15', '可以的，值得来尝一尝', '东方饭店', '15', '1', '曼谷', '1');
INSERT INTO `picture` VALUES ('17', 'photo_2013_06_19_3df0ab9e7d82ea2619e31b83534cd086.jpg', '2017-3-21 15:20:15', '可以的，值得来尝一尝', '东方饭店', '15', '1', '曼谷', '1');
INSERT INTO `picture` VALUES ('18', 'photo_2013_09_03_aa1995956c7736fca98472742df70df8.jpg', '2017-3-21 15:20:15', '可以的，值得来尝一尝', '东方饭店', '15', '1', '曼谷', '1');
INSERT INTO `picture` VALUES ('19', 'photo_2013_09_10_1cb7a11f05f0b01ee0c582b147e996a0.jpg', '2017-3-21 15:20:15', '可以的，值得来尝一尝', '东方饭店', '15', '1', '曼谷', '1');
INSERT INTO `picture` VALUES ('20', 'photo_2013_09_11_9c7348c2e7997e1207640835ed589c33.jpg', '2017-3-21 15:20:15', '可以的，值得来尝一尝', '东方饭店', '15', '1', '曼谷', '1');
INSERT INTO `picture` VALUES ('21', 'photo_2014_10_27_7a597b234e0ade01830d5299d1cfa4a0.jpg', '2017-3-21 15:20:15', '可以的，值得来尝一尝', '东方饭店', '15', '1', '曼谷', '1');
INSERT INTO `picture` VALUES ('22', 'photo_2015_02_11_59d262fd580ad5ad18af5ef1256e1445.jpg', '2017-3-21 15:20:15', '可以的，值得来尝一尝', '东方饭店', '15', '1', '曼谷', '1');
INSERT INTO `picture` VALUES ('23', 'photo_2015_02_21_f122a5fbe8733d6c83d6cce593d4dc6c.jpg', '2017-3-21 15:20:15', '可以的，值得来尝一尝', '东方饭店', '15', '1', '曼谷', '1');
INSERT INTO `picture` VALUES ('24', 'photo_2015_04_06_714a9c350fef0a808ef567a4c54541ce.jpg', '2017-3-21 15:20:15', '可以的，值得来尝一尝', '东方饭店', '15', '1', '曼谷', '1');
INSERT INTO `picture` VALUES ('25', 'photo_2015_07_19_d41f0911ff918185a33010721d29453a.jpg', '2017-3-21 15:20:15', '可以的，值得来尝一尝', '东方饭店', '15', '1', '曼谷', '1');
INSERT INTO `picture` VALUES ('26', 'photo_2015_10_01_8b72258431ac1445913ba68b6ea2c34b.jpg', '2017-3-21 15:20:15', '可以的，值得来尝一尝', '东方饭店', '15', '1', '曼谷', '1');
INSERT INTO `picture` VALUES ('27', 'photo_2015_10_12_9a466d56fbeb0cf2d51568a8088e350b.jpg', '2017-3-21 15:20:15', '可以的，值得来尝一尝', '东方饭店', '15', '1', '曼谷', '1');
INSERT INTO `picture` VALUES ('28', 'photo_2016_04_04_661880d11c19c946c5f15223dd341613.jpg', '2017-3-21 15:20:15', '可以的，值得来尝一尝', '东方饭店', '15', '1', '曼谷', '1');
INSERT INTO `picture` VALUES ('29', 'photo_2016_04_22_658266587c1f005ba24cca9c810e3e63.jpg', '2017-3-21 15:20:15', '可以的，值得来尝一尝', '东方饭店', '15', '1', '曼谷', '1');
INSERT INTO `picture` VALUES ('30', 'photo_2016_05_07_7c43d2ca9b6e30eedf05af2086c0293f.jpg', '2017-3-21 15:20:15', '可以的，值得来尝一尝', '东方饭店', '15', '1', '曼谷', '1');
INSERT INTO `picture` VALUES ('31', 'photo_2017_01_28_eac6e1e33ec85ee44cade904ad0201dd.jpg', '2017-3-21 15:20:15', '可以的，值得来尝一尝', '东方饭店', '15', '1', '曼谷', '1');
INSERT INTO `picture` VALUES ('32', 'covers_2014_04_11_3e22a7d8c2032913c611696758bf065e.jpg', '2017-3-21 15:20:15', '哼~说出来你们可能不信，说不定你们一辈子都不会来这个地方的~', '大皇宫', '15', '1', '曼谷', '2');
INSERT INTO `picture` VALUES ('33', 'photo_2013_03_21_64c8a8e3ff7a0d81537934abc100ae3f.jpg', '2017-3-21 15:20:15', '哼~说出来你们可能不信，说不定你们一辈子都不会来这个地方的~', '大皇宫', '15', '1', '曼谷', '2');
INSERT INTO `picture` VALUES ('34', 'photo_2013_06_19_4513b08f8c10fa2e43827f175346c1fe.jpg', '2017-3-21 15:20:15', '哼~说出来你们可能不信，说不定你们一辈子都不会来这个地方的~', '大皇宫', '15', '1', '曼谷', '2');
INSERT INTO `picture` VALUES ('35', 'photo_2013_06_22_55c70739b482988ff711295f09cdd20b.jpg', '2017-3-21 15:20:15', '哼~说出来你们可能不信，说不定你们一辈子都不会来这个地方的~', '大皇宫', '15', '1', '曼谷', '2');
INSERT INTO `picture` VALUES ('36', 'photo_2013_06_22_727b913560da130efe5f5d0f310b3c3b.jpg', '2017-3-21 15:20:15', '哼~说出来你们可能不信，说不定你们一辈子都不会来这个地方的~', '大皇宫', '15', '1', '曼谷', '2');
INSERT INTO `picture` VALUES ('37', 'photo_2013_06_25_69f86e3c6afee19bfb2b13662ae25051.jpg', '2017-3-21 15:20:15', '哼~说出来你们可能不信，说不定你们一辈子都不会来这个地方的~', '大皇宫', '15', '1', '曼谷', '2');
INSERT INTO `picture` VALUES ('38', 'photo_2013_10_09_f22a48e6c8854c6c21c8e3e2ce1062f9.jpg', '2017-3-21 15:20:15', '哼~说出来你们可能不信，说不定你们一辈子都不会来这个地方的~', '大皇宫', '15', '1', '曼谷', '2');
INSERT INTO `picture` VALUES ('39', 'photo_2013_11_03_3e1869c0f1e9f791e23e795c101eeb4b.jpg', '2017-3-21 15:20:15', '哼~说出来你们可能不信，说不定你们一辈子都不会来这个地方的~', '大皇宫', '15', '1', '曼谷', '2');
INSERT INTO `picture` VALUES ('40', 'photo_2014_02_07_7a88de6961ed92195a5aef0a9b5dead8.jpg', '2017-3-21 15:20:15', '哼~说出来你们可能不信，说不定你们一辈子都不会来这个地方的~', '大皇宫', '15', '1', '曼谷', '2');
INSERT INTO `picture` VALUES ('41', 'photo_2014_02_18_8103caf2ccce2900dbd638f41ed80f3c.jpg', '2017-3-21 15:20:15', '哼~说出来你们可能不信，说不定你们一辈子都不会来这个地方的~', '大皇宫', '15', '1', '曼谷', '2');
INSERT INTO `picture` VALUES ('42', 'photo_2014_02_22_4e76d5c02c8e8c71f98884e015b237ad.jpg', '2017-3-21 15:20:15', '哼~说出来你们可能不信，说不定你们一辈子都不会来这个地方的~', '大皇宫', '15', '1', '曼谷', '2');
INSERT INTO `picture` VALUES ('43', 'photo_2014_07_26_4cfd7db7440ca4b44ad1d53c632d2e05.jpg', '2017-3-21 15:20:15', '哼~说出来你们可能不信，说不定你们一辈子都不会来这个地方的~', '大皇宫', '15', '1', '曼谷', '2');
INSERT INTO `picture` VALUES ('44', 'photo_2015_02_21_98ab58d22e82fb02dfc9033432acfeea.jpg', '2017-3-21 15:20:15', '哼~说出来你们可能不信，说不定你们一辈子都不会来这个地方的~', '大皇宫', '15', '1', '曼谷', '2');
INSERT INTO `picture` VALUES ('45', 'photo_2015_03_15_110aa57acd7014cee9a1c52455e9f84d.jpg', '2017-3-21 15:20:15', '哼~说出来你们可能不信，说不定你们一辈子都不会来这个地方的~', '大皇宫', '15', '1', '曼谷', '2');
INSERT INTO `picture` VALUES ('46', 'photo_2015_04_12_6dad9c489d89d331506634ff23e8c6a8.jpg', '2017-3-21 15:20:15', '哼~说出来你们可能不信，说不定你们一辈子都不会来这个地方的~', '大皇宫', '15', '1', '曼谷', '2');
INSERT INTO `picture` VALUES ('47', 'photo_2015_06_24_d87901ab7290d1826df35177aabe8dc5.jpg', '2017-3-21 15:20:15', '哼~说出来你们可能不信，说不定你们一辈子都不会来这个地方的~', '大皇宫', '15', '1', '曼谷', '2');
INSERT INTO `picture` VALUES ('48', 'photo_2015_08_19_efa401be298a69136b4fd5a80b644797.jpg', '2017-3-21 15:20:15', '哼~说出来你们可能不信，说不定你们一辈子都不会来这个地方的~', '大皇宫', '15', '1', '曼谷', '2');
INSERT INTO `picture` VALUES ('49', 'photo_2017_03_04_37dec572f5adb3b1f04be802dfb03401.jpg', '2017-3-21 15:20:15', '哼~说出来你们可能不信，说不定你们一辈子都不会来这个地方的~', '大皇宫', '15', '1', '曼谷', '2');
INSERT INTO `picture` VALUES ('50', 'covers_2014_04_09_1994d923c70fc2d7e07fadbc4f4c34a9.jpg', '2017-3-21 15:20:15', '小乡镇，大味道~~~', '南方酒店', '15', '1', '曼谷', '4');
INSERT INTO `picture` VALUES ('51', 'covers_2014_05_09_1ad4561f8f6e6eb42e6474bc0e9edb0e.jpg', '2017-3-21 15:20:15', '小乡镇，大味道~~~', '南方酒店', '15', '1', '曼谷', '4');
INSERT INTO `picture` VALUES ('52', 'covers_2014_05_09_12da2a53a5cf0f25a44cf21c7707cd8b.jpg', '2017-3-21 15:20:15', '小乡镇，大味道~~~', '南方酒店', '15', '1', '曼谷', '4');
INSERT INTO `picture` VALUES ('53', 'Fgsc7LDSk2O53lYuYTQw1bY3UU_j.jpg', '2017-3-21 15:20:15', '小乡镇，大味道~~~', '南方酒店', '15', '1', '曼谷', '6');
INSERT INTO `picture` VALUES ('54', 'photo_2013_09_19_c672d1aa479f084dae49099fe82bea6e.jpg', '2017-3-21 15:20:15', '小乡镇，大味道~~~', '南方酒店', '15', '1', '曼谷', '4');
INSERT INTO `picture` VALUES ('55', 'photo_2014_11_27_215ad27ce9822fb75714e270c45c9835.jpg', '2017-3-21 15:20:15', '小乡镇，大味道~~~', '南方酒店', '15', '1', '曼谷', '4');
INSERT INTO `picture` VALUES ('56', 'photo_2014_11_27_8179a9824407b1d4135b3b5bd727921f.jpg', '2017-3-21 15:20:15', '小乡镇，大味道~~~', '南方酒店', '15', '1', '曼谷', '4');
INSERT INTO `picture` VALUES ('57', 'photo_2014_11_27_e4162784d7f43237aa35452e86479377.jpg', '2017-3-21 15:20:15', '小乡镇，大味道~~~', '南方酒店', '15', '1', '曼谷', '4');
INSERT INTO `picture` VALUES ('58', 'photo_2015_04_11_6c34346e8ab149f418fdd33e2994d5ab.jpg', '2017-3-21 15:20:15', '小乡镇，大味道~~~', '南方酒店', '15', '1', '曼谷', '4');
INSERT INTO `picture` VALUES ('59', 'photo_2015_09_09_9ec25201319b634f205164afdee731a2.jpg', '2017-3-21 15:20:15', '小乡镇，大味道~~~', '南方酒店', '15', '1', '曼谷', '4');
INSERT INTO `picture` VALUES ('60', 'photo_2015_11_24_3aad584b22c5c8b23b0461410c315a38.jpg', '2017-3-21 15:20:15', '小乡镇，大味道~~~', '南方酒店', '15', '1', '曼谷', '4');
INSERT INTO `picture` VALUES ('61', 'photo_2016_02_08_04749811cb457415fd37aa483fbc3b46.jpg', '2017-3-21 15:20:15', '小乡镇，大味道~~~', '南方酒店', '15', '1', '曼谷', '4');
INSERT INTO `picture` VALUES ('62', 'photo_2016_02_21_ca84171af91ae65abeb098b55dc52b68.jpg', '2017-3-21 15:20:15', '小乡镇，大味道~~~', '南方酒店', '15', '1', '曼谷', '4');
INSERT INTO `picture` VALUES ('63', 'photo_2016_02_13_4288fd5cedab3368bceb7d7953ef4af4.jpg', '2017-3-21 15:20:15', '小乡镇，大味道~~~', '南方酒店', '15', '1', '曼谷', '4');
INSERT INTO `picture` VALUES ('64', 'photo_2016_05_18_2081759b3cf210a126e4cee0186c2f75.jpg', '2017-3-21 15:20:15', '小乡镇，大味道~~~', '南方酒店', '15', '1', '曼谷', '4');
INSERT INTO `picture` VALUES ('65', 'photo_2017_01_20_0a2fd86cbc88943a02f03365e1784eda.jpg', '2017-3-21 15:20:15', '小乡镇，大味道~~~', '南方酒店', '15', '1', '曼谷', '4');
INSERT INTO `picture` VALUES ('66', 'photo_2017_02_12_19ab40d5b095ae4c00c348fdef657efe.jpg', '2017-3-21 15:20:15', '小乡镇，大味道~~~', '南方酒店', '15', '1', '曼谷', '4');
INSERT INTO `picture` VALUES ('67', 'photo_2014_10_16_b180db27d8a9fbc7bc52591e28e51153.jpg', '2017-3-21 15:20:15', '小乡镇，大味道~~~', '南方酒店', '15', '1', '曼谷', '4');
INSERT INTO `picture` VALUES ('68', 'FqIeLUMftg7JR9CpbFclTJCzzmkv.jpg', '2017-3-21 15:20:15', '深夜，因为各种晚点而异常繁忙的机场远端机位，摆渡车来来往往，毫无真诚可言！', '南方酒店', '15', '1', '曼谷', '3');
INSERT INTO `picture` VALUES ('69', 'photo_2013_02_17_e22eb4dfb93c90ab94513ecd50d4dd24.jpg', '2017-3-21 15:20:15', '深夜，因为各种晚点而异常繁忙的机场远端机位，摆渡车来来往往，毫无真诚可言！', '南方酒店', '15', '2', '曼谷', '3');
INSERT INTO `picture` VALUES ('70', 'photo_2013_02_22_22d37c628a21439731aee3fa2c77f663.jpg', '2017-3-21 15:20:15', '深夜，因为各种晚点而异常繁忙的机场远端机位，摆渡车来来往往，毫无真诚可言！', '南方酒店', '15', '3', '曼谷', '3');
INSERT INTO `picture` VALUES ('71', 'photo_2013_02_22_cb29a1b791972b4ac2f4619cb7664e74.jpg', '2017-3-21 15:20:15', '深夜，因为各种晚点而异常繁忙的机场远端机位，摆渡车来来往往，毫无真诚可言！', '南方酒店', '15', '4', '曼谷', '3');
INSERT INTO `picture` VALUES ('72', 'photo_2013_06_12_b7b16a0026e7876b34a12b54f0a039fd.jpg', '2017-3-21 15:20:15', '深夜，因为各种晚点而异常繁忙的机场远端机位，摆渡车来来往往，毫无真诚可言！', '南方酒店', '15', '5', '曼谷', '3');
INSERT INTO `picture` VALUES ('73', 'photo_2013_07_07_38198cb88bb799edec73fda2cc222af4.jpg', '2017-3-21 15:20:15', '深夜，因为各种晚点而异常繁忙的机场远端机位，摆渡车来来往往，毫无真诚可言！', '南方酒店', '15', '6', '曼谷', '3');
INSERT INTO `picture` VALUES ('74', 'photo_2013_07_22_3486d78b4361b22dd88247e4fc1a5893.jpg', '2017-3-21 15:20:15', '深夜，因为各种晚点而异常繁忙的机场远端机位，摆渡车来来往往，毫无真诚可言！', '南方酒店', '15', '7', '曼谷', '3');
INSERT INTO `picture` VALUES ('75', 'photo_2013_08_20_ad96f76f7335c2191fd748a8362d8056.jpg', '2017-3-21 15:20:15', '深夜，因为各种晚点而异常繁忙的机场远端机位，摆渡车来来往往，毫无真诚可言！', '南方酒店', '15', '8', '曼谷', '3');
INSERT INTO `picture` VALUES ('76', 'photo_2013_09_14_51f9241951617e68c05d546869a5471d.jpg', '2017-3-21 15:20:15', '深夜，因为各种晚点而异常繁忙的机场远端机位，摆渡车来来往往，毫无真诚可言！', '南方酒店', '15', '9', '曼谷', '3');
INSERT INTO `picture` VALUES ('77', 'photo_2015_02_17_54deeddbf7c45346667d44c14f0fd199.jpg', '2017-3-21 15:20:15', '深夜，因为各种晚点而异常繁忙的机场远端机位，摆渡车来来往往，毫无真诚可言！', '南方酒店', '15', '10', '曼谷', '3');
INSERT INTO `picture` VALUES ('78', 'photo_2015_05_09_28349e530a68eb5425ab701441c01269.jpg', '2017-3-21 15:20:15', '深夜，因为各种晚点而异常繁忙的机场远端机位，摆渡车来来往往，毫无真诚可言！', '南方酒店', '15', '11', '曼谷', '3');
INSERT INTO `picture` VALUES ('79', 'photo_2015_10_05_59199a2edf759c4a6049de90838672fd.jpg', '2017-3-21 15:20:15', '深夜，因为各种晚点而异常繁忙的机场远端机位，摆渡车来来往往，毫无真诚可言！', '南方酒店', '15', '12', '曼谷', '3');
INSERT INTO `picture` VALUES ('80', 'photo_2015_10_07_e271b3c1fa81ab6112a8cfdfa95d3633.jpg', '2017-3-21 15:20:15', '深夜，因为各种晚点而异常繁忙的机场远端机位，摆渡车来来往往，毫无真诚可言！', '南方酒店', '15', '13', '曼谷', '3');
INSERT INTO `picture` VALUES ('81', 'photo_2016_01_11_7582f6a69059d8148531f2d269781d68.jpg', '2017-3-21 15:20:15', '深夜，因为各种晚点而异常繁忙的机场远端机位，摆渡车来来往往，毫无真诚可言！', '南方酒店', '15', '14', '曼谷', '3');
INSERT INTO `picture` VALUES ('82', 'photo_2016_01_26_ff7b2195f4da6f807b709b9881b3813b.jpg', '2017-3-21 15:20:15', '深夜，因为各种晚点而异常繁忙的机场远端机位，摆渡车来来往往，毫无真诚可言！', '南方酒店', '15', '15', '曼谷', '3');
INSERT INTO `picture` VALUES ('83', 'photo_2016_04_30_17e8bdf92aed978c934dce5ae96cc29b.jpg', '2017-3-21 15:20:15', '深夜，因为各种晚点而异常繁忙的机场远端机位，摆渡车来来往往，毫无真诚可言！', '南方酒店', '15', '16', '曼谷', '3');
INSERT INTO `picture` VALUES ('84', 'photo_2016_05_29_52ec85eba907cc6f8182bbe4df5e2a83.jpg', '2017-3-21 15:20:15', '深夜，因为各种晚点而异常繁忙的机场远端机位，摆渡车来来往往，毫无真诚可言！', '南方酒店', '15', '17', '曼谷', '3');
INSERT INTO `picture` VALUES ('85', 'photo_2017_04_04_67a11b2ba86bbeccef07b55378b865fe.jpg', '2017-3-21 15:20:15', '深夜，因为各种晚点而异常繁忙的机场远端机位，摆渡车来来往往，毫无真诚可言！', '南方酒店', '15', '18', '曼谷', '3');
INSERT INTO `picture` VALUES ('86', 'm_bg1.jpg', '2017-06-21 11:07:23', '啊，这里真TM漂亮啊', '东京', '27', '9', '日本', '2');
INSERT INTO `picture` VALUES ('87', 'm_bg2.jpg', '2017-06-21 11:07:23', '啊，这里真TM漂亮啊', '东京', '28', '9', '日本', '2');
INSERT INTO `picture` VALUES ('88', 'm_bg3.jpg', '2017-06-21 11:07:23', '啊，这里真TM漂亮啊', '东京', '29', '9', '日本', '2');
INSERT INTO `picture` VALUES ('89', 'photo_2017_05_17_.jpg', '2017-06-21 11:07:23', '啊，这里真TM漂亮啊', '东京', '30', '9', '日本', '2');
INSERT INTO `picture` VALUES ('90', 'bg0.jpg', '2017-06-21 11:07:23', '啊，这里真TM漂亮啊', '东京', '31', '9', '日本', '2');
INSERT INTO `picture` VALUES ('91', 'm_bg1.jpg', '2017-06-21 11:07:23', '啊，这里真TM漂亮啊', '东京', '32', '9', '日本', '2');
INSERT INTO `picture` VALUES ('92', 'm_bg2.jpg', '2017-06-21 11:07:23', '啊，这里真TM漂亮啊', '东京', '33', '9', '日本', '2');
INSERT INTO `picture` VALUES ('93', 'm_bg3.jpg', '2017-06-21 11:07:23', '啊，这里真TM漂亮啊', '东京', '34', '9', '日本', '2');
INSERT INTO `picture` VALUES ('94', 'photo_2017_05_17_.jpg', '2017-06-21 11:07:23', '啊，这里真TM漂亮啊', '东京', '35', '9', '日本', '2');
INSERT INTO `picture` VALUES ('95', 'bg0.jpg', '2017-06-21 11:07:23', '啊，这里真TM漂亮啊', '东京', '36', '9', '日本', '2');
INSERT INTO `picture` VALUES ('96', 'ssaasda', 'sda', 'asdasd', '地点', '1', '1', '地点', '1');
INSERT INTO `picture` VALUES ('97', 'Desert.jpg', '2017-06-27', '沙漠', '广州市', '0', '1', '广州市', '1');
INSERT INTO `picture` VALUES ('98', 'Hydrangeas.jpg', '2017-06-27 15:47:16', '啊啊', '秦皇岛市', '0', '1', '秦皇岛市', '1');
INSERT INTO `picture` VALUES ('99', 'Desert.jpg', '2017-06-27 15:50:58', '水电费水电费多少', '上海市', '0', '1', '上海市', '1');
INSERT INTO `picture` VALUES ('101', 'Hydrangeas.jpg', '2017-06-27 15:56:18', '士大夫', '', '47', '1', '', '1');
INSERT INTO `picture` VALUES ('103', 'Koala.jpg', '2017-06-27 16:32:26', '这是卡拉', '成都市', '49', '1', '成都市', '1');
INSERT INTO `picture` VALUES ('104', 'Lighthouse.jpg', '2017-06-27 16:36:40', 'asdasdasdasd', '牡丹江市', '50', '1', '牡丹江市', '1');
INSERT INTO `picture` VALUES ('108', 'Hydrangeas.jpg', '2017-06-27 17:10:13', '小小', '上海市', '54', '0', '上海市', '1');
INSERT INTO `picture` VALUES ('109', '1498554705406.jpg', '2017-06-27 17:11:45', '奥术大师多', '上海市', '55', '0', '上海市', '1');
INSERT INTO `picture` VALUES ('110', '1498612836488.jpg', '2017-06-28 09:20:36', '这是三只企鹅', '呼和浩特市', '56', '0', '呼和浩特市', '1');
INSERT INTO `picture` VALUES ('111', '1498613156609.jpg', '2017-06-28 09:25:56', 'flower', '上海市', '57', '0', '上海市', '1');
INSERT INTO `picture` VALUES ('113', '1498614838548.jpg', '2017-06-28 09:53:58', '水水水水', '杭州市', '59', '0', '杭州市', '1');
INSERT INTO `picture` VALUES ('115', '1498705992825.jpg', '2017-06-29 11:13:12', '北京雾霾太大呢', '上海市', '61', '0', '上海市', '1');
INSERT INTO `picture` VALUES ('116', '1498797670683.jpg', '2017-06-30 12:41:10', '随手一打就是九个字', '成都市', '60', '0', '成都市', '2');
INSERT INTO `picture` VALUES ('117', '1498803456767.jpg', '2017-06-30 14:17:36', '不错', '成都市', '61', '0', '成都市', '2');
INSERT INTO `picture` VALUES ('118', '1498803525314.jpg', '2017-06-30 14:18:45', '玩儿翁', '北京市', '62', '0', '北京市', '4');
INSERT INTO `picture` VALUES ('119', '1498803627287.jpg', '2017-06-30 14:20:27', '大声道', '广州市', '63', '0', '广州市', '1');
INSERT INTO `picture` VALUES ('120', '1498803795846.jpg', '2017-06-30 14:23:15', '是打发打发', '深圳市', '64', '0', '深圳市', '1');
INSERT INTO `picture` VALUES ('121', '1498806050712.jpg', '2017-06-30 15:00:50', '是打发打发', '深圳市', '65', '0', '深圳市', '1');
INSERT INTO `picture` VALUES ('122', '1499247206640.jpg', '2017-07-05 17:33:26', '123123', '上海市', '66', '0', '上海市', '1');
INSERT INTO `picture` VALUES ('123', '1499247219665.jpg', '2017-07-05 17:33:39', '123123123', '上海市', '67', '0', '上海市', '1');
INSERT INTO `picture` VALUES ('124', '1499247301734.jpg', '2017-07-05 17:35:01', '123123', '成都市', '68', '0', '成都市', '1');
INSERT INTO `picture` VALUES ('126', '1499303483381.jpg', '2017-07-06 09:11:23', 'asdsasda', '广州市', '70', '0', '广州市', '1');
INSERT INTO `picture` VALUES ('127', '1499307219076.jpg', '2017-07-06 10:13:39', '测试测试', '石家庄市', '71', '0', '石家庄市', '1');
INSERT INTO `picture` VALUES ('128', '1499311314866.jpg', '2017-07-06 11:21:54', '哈哈哈哈', '上海市', '72', '1', '上海市', '2');
INSERT INTO `picture` VALUES ('129', '1499311491198.jpg', '2017-07-06 11:24:51', '哈说的啥哈是哈市', '深圳市', '73', '1', '深圳市', '4');
INSERT INTO `picture` VALUES ('130', '1499311610046.jpg', '2017-07-06 11:26:50', '啊实打实大客户可交换机卡仕达开奖号', '重庆市', '74', '1', '重庆市', '2');
INSERT INTO `picture` VALUES ('131', '1499311645637.jpg', '2017-07-06 11:27:25', '奥术大师大所所大所', '南京市', '75', '1', '南京市', '3');
INSERT INTO `picture` VALUES ('132', '1499311681709.jpg', '2017-07-06 11:28:01', '紫霞仙子', '成都市', '76', '1', '成都市', '2');
INSERT INTO `picture` VALUES ('136', '1499324870059.mp3', '2017-07-06 15:07:50', '这是好看的', '北京市', '80', '0', '北京市', '1');
INSERT INTO `picture` VALUES ('139', '1499326332062.jpg', '2017-07-06 15:32:12', '这是美丽的九寨沟,太美了,这画面', '成都市', '83', '1', '成都市', '2');
INSERT INTO `picture` VALUES ('141', '1499327000848.jpg', '2017-07-06 15:43:20', '这个地方不错,拍照留恋', '高雄市', '85', '1', '高雄市', '2');
INSERT INTO `picture` VALUES ('152', '1499330190748.jpg', '2017-07-06 16:36:30', 'ASDASD', '杭州市', '96', '1', '杭州市', '1');

-- ----------------------------
-- Table structure for `picture_want_togo`
-- ----------------------------
DROP TABLE IF EXISTS `picture_want_togo`;
CREATE TABLE `picture_want_togo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `go_number` int(11) DEFAULT NULL,
  `pic_id` int(11) DEFAULT '0',
  `want_number` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture_want_togo
-- ----------------------------

-- ----------------------------
-- Table structure for `praise`
-- ----------------------------
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of praise
-- ----------------------------
INSERT INTO `praise` VALUES ('280', '130', '9');
INSERT INTO `praise` VALUES ('281', '131', '9');
INSERT INTO `praise` VALUES ('282', '91', '56');
INSERT INTO `praise` VALUES ('283', '130', '56');
INSERT INTO `praise` VALUES ('284', '132', '9');
INSERT INTO `praise` VALUES ('285', '131', '56');
INSERT INTO `praise` VALUES ('286', '132', '56');
INSERT INTO `praise` VALUES ('288', '113', '56');
INSERT INTO `praise` VALUES ('289', '93', '56');
INSERT INTO `praise` VALUES ('290', '103', '56');
INSERT INTO `praise` VALUES ('291', '127', '9');
INSERT INTO `praise` VALUES ('292', '103', '9');

-- ----------------------------
-- Table structure for `private_letter`
-- ----------------------------
DROP TABLE IF EXISTS `private_letter`;
CREATE TABLE `private_letter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `receive_username` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of private_letter
-- ----------------------------

-- ----------------------------
-- Table structure for `p_category`
-- ----------------------------
DROP TABLE IF EXISTS `p_category`;
CREATE TABLE `p_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_des` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_category
-- ----------------------------
INSERT INTO `p_category` VALUES ('1', '美食');
INSERT INTO `p_category` VALUES ('2', '景点');
INSERT INTO `p_category` VALUES ('3', '购物');
INSERT INTO `p_category` VALUES ('4', '住宿');

-- ----------------------------
-- Table structure for `p_comment`
-- ----------------------------
DROP TABLE IF EXISTS `p_comment`;
CREATE TABLE `p_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `receive_username` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_comment
-- ----------------------------
INSERT INTO `p_comment` VALUES ('1', '13', '啊哈哈', '何磊', '杜宇翔', '2017-06-23 12:55:27', '1', '0');
INSERT INTO `p_comment` VALUES ('2', '4', '啊哈哈', '张三', '李四', '2017-06-23 12:55:27', '1', '0');
INSERT INTO `p_comment` VALUES ('25', '4', 'adasd', 'h', '张三', '2017-6-29 10:56:20', '1', '0');
INSERT INTO `p_comment` VALUES ('26', '4', '123123', 'h', '', '2017-6-29 10:56:20', '1', '0');
INSERT INTO `p_comment` VALUES ('27', '4', '123', 'h', '', '2017-6-29 10:56:20', '1', '0');
INSERT INTO `p_comment` VALUES ('28', '4', '123123', 'h', '', '2017-6-29 10:56:20', '1', '0');
INSERT INTO `p_comment` VALUES ('29', '4', 'asd', 'h', '', '2017-6-29 10:56:20', '1', '0');
INSERT INTO `p_comment` VALUES ('30', '4', '123123', 'h', '', '2017-6-29 10:56:20', '1', '0');
INSERT INTO `p_comment` VALUES ('31', '4', 'asdasd', 'h', '', '2017-6-29 10:56:20', '1', '0');
INSERT INTO `p_comment` VALUES ('32', '4', 'aaaa', 'h', '', '2017-6-29 11:18:20', '1', '0');
INSERT INTO `p_comment` VALUES ('33', '4', 'asdasdasdasd', 'h', '张三', '2017-6-29 11:18:20', '1', '0');
INSERT INTO `p_comment` VALUES ('34', '4', '12312312', 'h', '张三', '2017-6-29 11:18:20', '1', '0');
INSERT INTO `p_comment` VALUES ('35', '4', 'aaa', 'h', '', '2017-6-29 11:18:20', '1', '0');
INSERT INTO `p_comment` VALUES ('36', '13', '哈哈哈哈哈', 'h', '何磊', '2017-6-29 13:49:0', '1', '0');
INSERT INTO `p_comment` VALUES ('37', '4', '123', 'h', '', '2017-6-29 15:2:2', '1', '0');
INSERT INTO `p_comment` VALUES ('38', '4', '123', 'h', '', '2017-6-29 15:2:2', '1', '0');
INSERT INTO `p_comment` VALUES ('39', '4', '123', 'h', '', '2017-6-30 9:0:42', '1', '0');
INSERT INTO `p_comment` VALUES ('40', '4', '123', 'h', 'h', '2017-6-30 9:0:42', '1', '0');
INSERT INTO `p_comment` VALUES ('41', '4', '123', 'h', '', '2017-6-30 11:37:51', '1', '1');
INSERT INTO `p_comment` VALUES ('42', '116', '123', 'h', '', '2017-6-30 11:37:51', '1', '0');
INSERT INTO `p_comment` VALUES ('43', '116', '123', 'h', '', '2017-6-30 11:37:51', '1', '0');
INSERT INTO `p_comment` VALUES ('44', '116', '123', 'h', '', '2017-6-30 11:37:51', '1', '0');
INSERT INTO `p_comment` VALUES ('45', '116', '123', 'h', '', '2017-6-30 11:37:51', '1', '0');
INSERT INTO `p_comment` VALUES ('46', '116', '123', 'h', '', '2017-6-30 11:37:51', '1', '0');
INSERT INTO `p_comment` VALUES ('47', '116', '123', 'h', '', '2017-6-30 11:37:51', '1', '0');
INSERT INTO `p_comment` VALUES ('48', '116', '123', 'h', '', '2017-6-30 11:37:51', '1', '0');
INSERT INTO `p_comment` VALUES ('49', '116', '123', 'h', '', '2017-6-30 11:37:51', '1', '0');
INSERT INTO `p_comment` VALUES ('50', '116', '123', 'h', '', '2017-6-30 11:37:51', '1', '0');
INSERT INTO `p_comment` VALUES ('51', '116', '123', 'h', '', '2017-6-30 11:37:51', '1', '0');
INSERT INTO `p_comment` VALUES ('52', '116', '123', 'h', '', '2017-6-30 11:37:51', '1', '0');
INSERT INTO `p_comment` VALUES ('53', '103', '可爱', 'liaoxuan', '', '2017-6-30 14:2:37', '1', '0');
INSERT INTO `p_comment` VALUES ('54', '103', '哈哈', 'liaoxuan', 'liaoxuan', '2017-6-30 14:2:37', '1', '0');
INSERT INTO `p_comment` VALUES ('55', '116', '没照片', 'liaoxuan', '', '2017-6-30 14:2:37', '1', '1');
INSERT INTO `p_comment` VALUES ('56', '119', '123', 'h', '', '2017-6-30 14:45:33', '1', '1');
INSERT INTO `p_comment` VALUES ('57', '116', '这个你就不管了撒', 'h', 'liaoxuan', '2017-6-30 14:45:33', '1', '1');
INSERT INTO `p_comment` VALUES ('58', '116', '123', 'h', '', '2017-6-30 14:45:33', '1', '0');
INSERT INTO `p_comment` VALUES ('59', '10', '好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺撒好看撒活动卡上客户卡上的客家话看见好看好看说看见俺是啊撒 ', 'aaa123', '', '2017-7-6 8:45:4', '1', '1');
INSERT INTO `p_comment` VALUES ('60', '11', '我', 'aaa123', '', '2017-7-6 8:45:4', '1', '1');
INSERT INTO `p_comment` VALUES ('61', '103', '啊啊啊', 'aaa123', '', '2017-7-6 8:45:4', '1', '1');
INSERT INTO `p_comment` VALUES ('62', '125', 'aa ', 'aaa123', '', '2017-7-6 8:45:4', '1', '0');
INSERT INTO `p_comment` VALUES ('66', '93', 'bnmbnmbnmbnmbn', 'liaoxuan', '', '2017-7-6 8:45:4', '1', '1');
INSERT INTO `p_comment` VALUES ('67', '93', 'dfdfgdfgdfg', 'liaoxuan', '', '2017-7-6 8:45:4', '1', '1');
INSERT INTO `p_comment` VALUES ('68', '93', 'dffdgd', 'liaoxuan', '', '2017-7-6 8:45:4', '1', '1');
INSERT INTO `p_comment` VALUES ('69', '93', 'zxczx', 'liaoxuan', '', '2017-7-6 8:45:4', '1', '1');
INSERT INTO `p_comment` VALUES ('70', '11', ',.m,.', 'liaoxuan', '', '2017-7-6 8:45:4', '1', '1');
INSERT INTO `p_comment` VALUES ('71', '94', '你好啊~~！', 'h', '', '2017-7-6 9:32:3', '1', '1');
INSERT INTO `p_comment` VALUES ('72', '94', 'haha', 'liaoxuan', 'h', '2017-7-6 10:20:40', '1', '1');
INSERT INTO `p_comment` VALUES ('73', '136', '牛逼哦', '王智12345', '', '2017-7-6 14:46:54', '1', '1');
INSERT INTO `p_comment` VALUES ('74', '136', '厉害了', '王智12345', '王智12345', '2017-7-6 14:46:54', '1', '1');
INSERT INTO `p_comment` VALUES ('75', '136', '好日洋', '王智12345', '王智12345', '2017-7-6 14:46:54', '1', '1');
INSERT INTO `p_comment` VALUES ('76', '95', '还不错哦', '王智12345', '', '2017-7-6 14:46:54', '1', '1');
INSERT INTO `p_comment` VALUES ('77', '103', '这个脑壳儿真大', '王智12345', '', '2017-7-6 14:46:54', '1', '1');
INSERT INTO `p_comment` VALUES ('78', '133', '啊哈哈哈哈嗝', 'h', '', '2017-7-6 14:46:54', '1', '1');
INSERT INTO `p_comment` VALUES ('79', '133', '是不是好日样', '王智12345', 'h', '2017-7-6 14:46:54', '1', '1');
INSERT INTO `p_comment` VALUES ('80', '139', '非常漂亮，给你一个赞~~~！', 'h', '', '2017-7-6 15:35:2', '1', '1');
INSERT INTO `p_comment` VALUES ('81', '139', '必须漂亮,有时间可以去看看,真心美', '执笔画天下灬', 'h', '2017-7-6 15:35:2', '1', '1');
INSERT INTO `p_comment` VALUES ('82', '139', '我已经去过很多次了', 'h', '执笔画天下灬', '2017-7-6 15:35:2', '1', '1');
INSERT INTO `p_comment` VALUES ('83', '139', '那厉害了,我这倒是第一次去,确实不错', '执笔画天下灬', 'h', '2017-7-6 15:35:2', '1', '1');
INSERT INTO `p_comment` VALUES ('84', '139', '对，九寨沟的长海特别的好看，我去看了很多次~！', 'h', '执笔画天下灬', '2017-7-6 15:35:2', '1', '1');
INSERT INTO `p_comment` VALUES ('85', '146', '这样的美食,一遍能够么', '执笔画天下灬', '', '2017-7-6 15:45:8', '1', '1');
INSERT INTO `p_comment` VALUES ('86', '147', '可以的', 'h', '', '2017-7-6 15:59:39', '1', '1');
INSERT INTO `p_comment` VALUES ('87', '147', '游览九寨沟回来,在成都发现美食太多,根本吃不过来啊', '执笔画天下灬', 'h', '2017-7-6 15:59:39', '1', '1');
INSERT INTO `p_comment` VALUES ('88', '147', '我说咋看你id这么眼熟', 'h', '执笔画天下灬', '2017-7-6 15:59:39', '1', '1');
INSERT INTO `p_comment` VALUES ('89', '147', '这个八卦糕好有创意,好好吃', '执笔画天下灬', '执笔画天下灬', '2017-7-6 15:59:39', '1', '1');
INSERT INTO `p_comment` VALUES ('90', '147', '长见识了~~！(╯‵□′)╯︵┻━┻', 'h', '执笔画天下灬', '2017-7-6 15:59:39', '1', '1');
INSERT INTO `p_comment` VALUES ('91', '147', '我发了一个游览九寨沟的,你在里面看了 我还给你回复了的啊', '执笔画天下灬', 'h', '2017-7-6 15:59:39', '1', '1');
INSERT INTO `p_comment` VALUES ('92', '147', '哦哦  难怪', 'h', '执笔画天下灬', '2017-7-6 15:59:39', '1', '1');
INSERT INTO `p_comment` VALUES ('93', '132', '这是我的评论', 'liaoxuan', '', '2017-7-6 16:32:51', '1', '1');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for `role_mgrmenu`
-- ----------------------------
DROP TABLE IF EXISTS `role_mgrmenu`;
CREATE TABLE `role_mgrmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_mgrmenu
-- ----------------------------

-- ----------------------------
-- Table structure for `st_user`
-- ----------------------------
DROP TABLE IF EXISTS `st_user`;
CREATE TABLE `st_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `random_code` varchar(6) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `hot` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of st_user
-- ----------------------------
INSERT INTO `st_user` VALUES ('1', '张三', '123456', '123456', '/staticState/img/photo.jpg', '4', '5');
INSERT INTO `st_user` VALUES ('2', '李四', '123456', '123456', '/staticState/img/photo.jpg', '4', '7');
INSERT INTO `st_user` VALUES ('3', '石磊', '123456', '123456', '/staticState/img/photo.jpg', '4', '1');
INSERT INTO `st_user` VALUES ('4', '刘玉所', '123456', '123456', '/staticState/img/photo.jpg', '4', '3');
INSERT INTO `st_user` VALUES ('5', '杜宇翔', '123456', '123456', '/staticState/img/photo.jpg', '4', '2');
INSERT INTO `st_user` VALUES ('6', '何磊', '123456', '123456', '/staticState/img/photo.jpg', '4', '4');
INSERT INTO `st_user` VALUES ('9', 'liaoxuan', 'AD8604A43937638D4D8A0FF8D869EC09', 'ML8DLK', '/staticState/img/photo.jpg', '1', '100');
INSERT INTO `st_user` VALUES ('56', 'h', '36321DABB45EFD071A43E2203FB002E8', 'DG331V', '/staticState/img/photo.jpg', '1', '9999');
INSERT INTO `st_user` VALUES ('58', 'shilei', 'CFEBA359B1819C212F5027979246FC99', 'K8R552', '/staticState/img/photo.jpg', '1', '0');
INSERT INTO `st_user` VALUES ('59', 'admins', 'DAF59EB1D815EA727B873085B4BD8208', '8O7QQO', '/staticState/img/photo.jpg', '4', '0');
INSERT INTO `st_user` VALUES ('60', 'asd', '1C54A18D777262828D2DF401F64D5A9C', 'JYOJIW', '/staticState/img/photo.jpg', '4', '0');
INSERT INTO `st_user` VALUES ('61', 'shileia', '7B27A284BB5578F295B3E17F2D6F8A34', 'JCBJK6', '/staticState/img/photo.jpg', '4', '0');
INSERT INTO `st_user` VALUES ('63', 'wangzhi', 'EACFE7AA5C0417075E82A3385E4A76D4', '2WTAZ6', '/staticState/img/photo.jpg', '4', '0');
INSERT INTO `st_user` VALUES ('67', 'liuyushuo', '63947D300E6E2E9C4D45F34B24323EE6', '2B6X3P', '/staticState/img/photo.jpg', '4', '0');
INSERT INTO `st_user` VALUES ('70', 'manager', 'BA34A7A81B9A3776800E9640F5085AFE', 'FJCGQA', '/staticState/img/photo.jpg', '4', '0');
INSERT INTO `st_user` VALUES ('83', 'a123456', '3EE267DFFE906E979F9F8E378FC3D16D', '2E4UUZ', '/staticState/img/photo.jpg', '4', '0');
INSERT INTO `st_user` VALUES ('86', '123465', '799E58D5022D7D8D42594EA7CB8C5CE5', 'ED844B', '/staticState/img/photo.jpg', '4', '0');
INSERT INTO `st_user` VALUES ('87', '123456', 'F947C08193B634FACEB49B90FD0F81EC', 'GLJH1R', '/staticState/img/photo.jpg', '4', '0');
INSERT INTO `st_user` VALUES ('88', '1111111', '3A797DF44600FA60760887876CAF0D3A', 'WBM2KT', '/staticState/img/photo.jpg', '4', '0');
INSERT INTO `st_user` VALUES ('89', '789789', '13504D249BF15C7D6B5E094B53B0FB51', '41LU44', '/staticState/img/photo.jpg', '4', '0');
INSERT INTO `st_user` VALUES ('90', '11112121', 'F96B7826E6B40213F4E7296ADB051B20', 'XGF7L4', '/staticState/img/photo.jpg', '4', '0');
INSERT INTO `st_user` VALUES ('92', 'liaoxuan1232123', '21F68F1FEB03A280E59C97B188BB9A73', 'BAY6HX', '/staticState/img/photo.jpg', '4', '0');
INSERT INTO `st_user` VALUES ('107', '王智12345', '519DC614F661594333F8F3157E56B03A', '1SBBLI', '/staticState/img/photo.jpg', '4', '0');
INSERT INTO `st_user` VALUES ('108', '执笔画天下灬', 'D8A8039C10961D939083022E8CD562F9', '1RU3FT', '/staticState/img/photo.jpg', '4', '0');
INSERT INTO `st_user` VALUES ('109', 'liaoxuan11', '1AF92C10996EEC6C5D44EB3736CF6B48', 'NW6ANZ', '/staticState/img/photo.jpg', '4', '0');
INSERT INTO `st_user` VALUES ('110', 'a1234567', '82E1E4FA759169EED0BA7C265FD44A63', '4NDO66', '/staticState/img/photo.jpg', '4', '0');

-- ----------------------------
-- Table structure for `travels`
-- ----------------------------
DROP TABLE IF EXISTS `travels`;
CREATE TABLE `travels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(200) DEFAULT NULL,
  `hot` int(11) DEFAULT '0',
  `calendar` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `local` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travels
-- ----------------------------
INSERT INTO `travels` VALUES ('15', '北京一日游', '4', '2017-06-21 11:00:20', '0', '1', '北京');
INSERT INTO `travels` VALUES ('16', '日本一日游', '3', '2017-06-21 11:00:20', '0', '2', '日本');
INSERT INTO `travels` VALUES ('17', '上海一日游', '5', '2017-06-21 11:00:20', '0', '3', '上海');
INSERT INTO `travels` VALUES ('18', '四川一日游', '6', '2017-06-21 11:00:20', '0', '4', '四川');
INSERT INTO `travels` VALUES ('19', '什邡一日游', '8', '2017-06-21 11:00:20', '1', '5', '什邡');
INSERT INTO `travels` VALUES ('20', '红白一日游', '1', '2017-06-21 11:00:20', '1', '6', '红白');
INSERT INTO `travels` VALUES ('32', '上海一日游', '5', '2017-06-20', '1', '9', '上海');
INSERT INTO `travels` VALUES ('33', '我爱北京天安门', '100', '2017-06-21', '1', '9', '北京');
INSERT INTO `travels` VALUES ('34', '南京一日游', '5', '2017-06-22', '1', '9', '南京');
INSERT INTO `travels` VALUES ('35', '厦门一日游', '5', '2017-06-23', '1', '9', '厦门');
INSERT INTO `travels` VALUES ('36', '萨瓦迪卡', '9999', '2017-06-24', '1', '9', '日本');
INSERT INTO `travels` VALUES ('49', '华育国际一日游', '999', '2017-06-27 16:32:26', '1', '9', '桐梓林');
INSERT INTO `travels` VALUES ('57', '哈哈', '10', '2017-06-28 09:25:56', '0', '9', '成都');
INSERT INTO `travels` VALUES ('59', '萨瓦迪卡', '12', '2017-06-28 09:53:58', '1', '9', '泰国');
INSERT INTO `travels` VALUES ('60', '萨瓦迪卡莫西莫西', '1314', '2017-06-30 12:41:10', '0', '56', '东京热');
INSERT INTO `travels` VALUES ('62', '电饭锅', '2', '2017-06-30 14:18:45', '1', '9', '北京市');
INSERT INTO `travels` VALUES ('63', '撒旦撒奥所多', '1', '2017-06-30 14:20:27', '0', '9', '广州市');
INSERT INTO `travels` VALUES ('64', '水电费水电费水电费', '1', '2017-06-30 14:23:15', '0', '9', '深圳市');
INSERT INTO `travels` VALUES ('66', '测试游记', '1', '2017-07-05 17:33:26', '0', '56', '上海市');
INSERT INTO `travels` VALUES ('67', '成都周边，第二天', '1', '2017-07-05 17:33:39', '0', '56', '上海市');
INSERT INTO `travels` VALUES ('68', '成都~~~带不走的，只有你！', '1', '2017-07-05 17:35:01', '0', '56', '成都市');
INSERT INTO `travels` VALUES ('70', '啊', '19999', '2017-07-06 09:11:23', '0', '62', '广州市');
INSERT INTO `travels` VALUES ('71', '成都~~~带不走的，只有你！', '3', '2017-07-06 10:13:39', '1', '56', '石家庄市');
INSERT INTO `travels` VALUES ('72', '没有什么能够阻挡哈哈哈哈哈啊哈', '1', '2017-07-06 11:21:54', '0', '9', '上海市');
INSERT INTO `travels` VALUES ('73', '紫霞仙子', '165458', '2017-07-06 11:24:51', '1', '9', '深圳市');
INSERT INTO `travels` VALUES ('74', '刘亦菲', '1123', '2017-07-06 11:26:50', '1', '9', '重庆市');
INSERT INTO `travels` VALUES ('75', '高圆圆', '1', '2017-07-06 11:27:25', '1', '9', '南京市');
INSERT INTO `travels` VALUES ('76', '朱茵', '1124', '2017-07-06 11:28:01', '1', '9', '成都市');
INSERT INTO `travels` VALUES ('77', '今天出去耍', '1', '2017-07-06 14:56:13', '0', '107', '广州市');
INSERT INTO `travels` VALUES ('78', '今天出去耍', '1', '2017-07-06 14:56:36', '0', '107', '广州市');
INSERT INTO `travels` VALUES ('79', '今天出去耍', '1', '2017-07-06 14:56:44', '0', '107', '广州市');
INSERT INTO `travels` VALUES ('80', '游览', '1', '2017-07-06 15:07:50', '0', '107', '北京市');
INSERT INTO `travels` VALUES ('83', '九寨沟旅行日记', '2005', '2017-07-06 15:32:12', '1', '108', '成都市');
INSERT INTO `travels` VALUES ('85', '随便走走', '1', '2017-07-06 15:43:20', '1', '108', '高雄市');
INSERT INTO `travels` VALUES ('91', '吃货福音', '2011', '2017-07-06 16:03:23', '0', '108', '成都市');
INSERT INTO `travels` VALUES ('94', '我的老家', '1', '2017-07-06 16:33:45', '0', '9', '广州市');
INSERT INTO `travels` VALUES ('96', '我的咯阿基啊', '3', '2017-07-06 16:36:30', '0', '56', '杭州市');

-- ----------------------------
-- Table structure for `t_comment`
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_id` int(11) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `receive_username` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('2', '20', '啊哈哈', '何磊', '杜宇翔', '2017-06-23 12:55:27', '1', '1');

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sex` char(2) DEFAULT NULL,
  `birthday` varchar(50) DEFAULT NULL,
  `eamil` varchar(20) DEFAULT NULL,
  `introduce` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '男', '1994-08-25', '421489765@qq.com', '我也不晓得说什么', '2');
INSERT INTO `userinfo` VALUES ('26', '男', '19920610', '504810821@qq.com', '没有什么能够阻挡！！！', '9');
INSERT INTO `userinfo` VALUES ('28', '男', '19941019', '853091035@qq.com', '啊哈哈哈哈哈哈哈和嗝', '6');
INSERT INTO `userinfo` VALUES ('33', '男', '19920701', '4214897654@qq.com', '啊实打实大师大师', '56');
INSERT INTO `userinfo` VALUES ('34', '男', '19900101', '25456454@qq.com', 'sdfgsdfg', '87');
INSERT INTO `userinfo` VALUES ('35', '男', '20101231', '123456789@qq.com', '我是赵日天不服来辩', '107');
INSERT INTO `userinfo` VALUES ('36', '男', '19930811', '4214444@qq.com', 'asdasdasdasda', '110');

-- ----------------------------
-- Table structure for `user_message`
-- ----------------------------
DROP TABLE IF EXISTS `user_message`;
CREATE TABLE `user_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st_user_id` int(11) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_message
-- ----------------------------

-- ----------------------------
-- Table structure for `user_pl`
-- ----------------------------
DROP TABLE IF EXISTS `user_pl`;
CREATE TABLE `user_pl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st_user_id` int(11) DEFAULT NULL,
  `private_letter_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_pl
-- ----------------------------

-- ----------------------------
-- Table structure for `user_want_to_go`
-- ----------------------------
DROP TABLE IF EXISTS `user_want_to_go`;
CREATE TABLE `user_want_to_go` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `want_to_go_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_want_to_go
-- ----------------------------
INSERT INTO `user_want_to_go` VALUES ('1', '9', '1');
INSERT INTO `user_want_to_go` VALUES ('2', '9', '2');
INSERT INTO `user_want_to_go` VALUES ('3', '9', '3');
INSERT INTO `user_want_to_go` VALUES ('4', '9', '4');
INSERT INTO `user_want_to_go` VALUES ('5', '9', '5');
INSERT INTO `user_want_to_go` VALUES ('6', '9', '6');
INSERT INTO `user_want_to_go` VALUES ('7', '9', '7');
INSERT INTO `user_want_to_go` VALUES ('8', '9', '8');

-- ----------------------------
-- Table structure for `view_spot`
-- ----------------------------
DROP TABLE IF EXISTS `view_spot`;
CREATE TABLE `view_spot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `view_name` varchar(200) DEFAULT NULL,
  `view_picture` varchar(100) DEFAULT NULL,
  `view_introduce` varchar(500) DEFAULT '此处暂无具体描述，我们会尽快完善！',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of view_spot
-- ----------------------------

-- ----------------------------
-- Table structure for `want_to_go`
-- ----------------------------
DROP TABLE IF EXISTS `want_to_go`;
CREATE TABLE `want_to_go` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dtt_id` int(11) DEFAULT NULL,
  `go_number` int(11) DEFAULT NULL,
  `want_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of want_to_go
-- ----------------------------
INSERT INTO `want_to_go` VALUES ('1', '8', '2342', '8463');
INSERT INTO `want_to_go` VALUES ('2', '35', '9899', '10932');
INSERT INTO `want_to_go` VALUES ('3', '36', '19899', '91093');
INSERT INTO `want_to_go` VALUES ('4', '37', '3452', '12233');
INSERT INTO `want_to_go` VALUES ('5', '39', '2314', '65432');
INSERT INTO `want_to_go` VALUES ('6', '40', '2134', '5434');
INSERT INTO `want_to_go` VALUES ('7', '41', '23452', '53452');
INSERT INTO `want_to_go` VALUES ('8', '42', '2342', '43252');

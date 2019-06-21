/*
 Navicat MySQL Data Transfer

 Source Server         : 127.0.0.1
 Source Server Version : 50621
 Source Host           : localhost
 Source Database       : RUNOOB

 Target Server Version : 50621
 File Encoding         : utf-8

 Date: 05/18/2016 11:44:07 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `websites`
-- ----------------------------
DROP TABLE IF EXISTS `websites`;
CREATE TABLE `websites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL DEFAULT '' COMMENT '站点名称',
  `url` varchar(255) NOT NULL DEFAULT '',
  `alexa` int(11) NOT NULL DEFAULT '0' COMMENT 'Alexa 排名',
  `country` char(10) NOT NULL DEFAULT '' COMMENT '国家',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `websites`
-- ----------------------------
BEGIN;
INSERT INTO `websites` VALUES ('1', 'Google', 'https://www.google.cm/', '1', 'USA'), ('2', '淘宝', 'https://www.taobao.com/', '13', 'CN'), ('3', '菜鸟教程', 'http://www.runoob.com/', '4689', 'CN'), ('4', '微博', 'http://weibo.com/', '20', 'CN'), ('5', 'Facebook', 'https://www.facebook.com/', '3', 'USA');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

DROP TABLE IF EXISTS `book_movie_music`;
CREATE TABLE `book_movie_music` (
  `id` int NOT NULL AUTO_INCREMENT,
  `index` int NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL  DEFAULT '',
  `img_src` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `message` varchar(100) NOT NULL DEFAULT '',
  `excerpt` varchar(2000) NOT NULL DEFAULT '',
  `comment` varchar(2000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `book_movie_music` VALUES ('2','1', 'book', 'img/book_2.jpg', '横道世之介','[日] 吉田修一/ 上海人民出版社/ 416页 / 2018-6','1.“祥子，你真的喜欢他吗？” “……嗯，我非常、非常喜欢他，有时候太喜欢了，喜欢到连我自己都生气。不过，都已经分手很久了，现在也想不起来当时为什么会分手。毕竟那时候才十几岁而已，也不是什么需要做决定的年龄。” “你们大概交往了多久？” “一年多……现在想起来，分手的理由肯定很无聊。” “像我们这种在富裕国家长大的年轻男女，分手的理由除了荒唐、无聊以外，找不出第二个……” 听了希薇亚的玩笑话，我无奈地笑...',
'横道世之介年纪不大，升入大学的时候十八岁，到死也才不过四十岁。他的名字“世之介”，是日本江户时代的作家井原西鹤小说《好色一代男》中的人物，理想是尝遍世间的美色。但大学生横道世之介是个谈到理想就会脸红的男孩，浑浑噩噩好像也没什么理想。他即将升入大二时，从前辈手里得到了一部相机，没有目的地对着身边的事物乱拍，后来成为一名摄影师。&如果我们在现实生活中认识世之介这个人，我们可能会遗憾旁人无法再认识世之介而不想过多描述他。就像《横道世之介》这部小说中，一些人在后来想到世之介时，他们躲避着不愿说起他，只是独自怀念着世之介，感激相识他的幸运。&日本小说家吉田修一的代表作《横道世之介》曾在2013年被导演冲田修一改编为同名电影，感动了万千观众。遗憾的是，这部原著小说在国内始终没有较好的译本。一直等到现在，世纪文景终于再版了它。也许你已经看过那部电影，但仍想真诚推荐给你读这部小说。如果你还在世之介十八九岁的年纪，刚刚进入大学，这部小说或许还能帮你指清一些生活交友上的方向。');


    
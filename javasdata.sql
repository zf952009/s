/*
Navicat MySQL Data Transfer

Source Server         : s
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : javasdata

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2020-12-30 18:51:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '书本ID',
  `book_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '书名',
  `type_id` int(11) DEFAULT NULL COMMENT '书本类型',
  `book_description` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `book_status` tinyint(3) DEFAULT '0' COMMENT '书本状态,0正常1下架',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of book
-- ----------------------------

-- ----------------------------
-- Table structure for book_type
-- ----------------------------
DROP TABLE IF EXISTS `book_type`;
CREATE TABLE `book_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '类别名',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of book_type
-- ----------------------------

-- ----------------------------
-- Table structure for table1
-- ----------------------------
DROP TABLE IF EXISTS `table1`;
CREATE TABLE `table1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of table1
-- ----------------------------
INSERT INTO `table1` VALUES ('1', 's', '0', 'ss@qq.com');
INSERT INTO `table1` VALUES ('2', 'ssssssssssssss', '1', null);
INSERT INTO `table1` VALUES ('3', 'ssssssssssssss', '1', 'sssssss');

-- ----------------------------
-- Table structure for tb_file_list
-- ----------------------------
DROP TABLE IF EXISTS `tb_file_list`;
CREATE TABLE `tb_file_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'name',
  `url` varchar(512) COLLATE utf8_unicode_ci NOT NULL COMMENT 'url',
  `file_status` tinyint(3) DEFAULT '0' COMMENT '状态,0正常1下架',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_file_list
-- ----------------------------
INSERT INTO `tb_file_list` VALUES ('1', '【事务、元数据、改造JDBC工具类】', 'https://segmentfault.com/a/1190000013303310', '0', '2020-12-30 17:34:35', '2020-12-30 17:34:35');
INSERT INTO `tb_file_list` VALUES ('2', '【数据库连接池、DbUtils框架、分页】', 'https://segmentfault.com/a/1190000013308078', '0', '2020-12-30 17:34:35', '2020-12-30 17:34:35');
INSERT INTO `tb_file_list` VALUES ('3', '[JDBC常见面试题]', 'https://segmentfault.com/a/1190000013312766', '0', '2020-12-30 17:34:35', '2020-12-30 17:34:35');
INSERT INTO `tb_file_list` VALUES ('4', ' JSP第一篇【JSP介绍、工作原理、生命周期、语法、指令、行为】 ] ', 'https://segmentfault.com/a/1190000013152739', '0', '2020-12-30 17:34:35', '2020-12-30 18:41:58');
INSERT INTO `tb_file_list` VALUES ('5', '[JSP第二篇【内置对象的介绍、4种属性范围、应用场景】', 'https://segmentfault.com/a/1190000013153007', '0', '2020-12-30 17:34:35', '2020-12-30 17:34:35');
INSERT INTO `tb_file_list` VALUES ('6', '[ JSP第三篇【JavaBean的介绍、JSP的行为 -- JavaBean]', 'https://segmentfault.com/a/1190000013165165', '0', '2020-12-30 17:34:35', '2020-12-30 18:41:58');
INSERT INTO `tb_file_list` VALUES ('7', '[JSP第四篇【EL表达式介绍、获取各类数据、11个内置对象、执行运算、回显数据、自定义函数、fn方法库】', 'https://segmentfault.com/a/1190000013167138', '0', '2020-12-30 17:34:35', '2020-12-30 17:34:35');
INSERT INTO `tb_file_list` VALUES ('8', '[ JSP第五篇【JSTL的介绍、core标签库、fn方法库、fmt标签库】 ', 'https://segmentfault.com/a/1190000013176141', '0', '2020-12-30 17:34:35', '2020-12-30 18:41:59');
INSERT INTO `tb_file_list` VALUES ('9', '[JSP第六篇【自定义标签之传统标签】', 'https://segmentfault.com/a/1190000013177495', '0', '2020-12-30 17:34:35', '2020-12-30 17:34:35');
INSERT INTO `tb_file_list` VALUES ('10', '[ JSP自定义标签就是如此简单 ] ', 'https://segmentfault.com/a/1190000013180568', '0', '2020-12-30 17:34:36', '2020-12-30 18:41:59');
INSERT INTO `tb_file_list` VALUES ('11', '[JSP面试题都在这里]', 'https://segmentfault.com/a/1190000013185611', '0', '2020-12-30 17:34:36', '2020-12-30 17:34:36');
INSERT INTO `tb_file_list` VALUES ('12', 'AJAX入门这一篇就够了 ', 'https://segmentfault.com/a/1190000013286987', '0', '2020-12-30 17:34:36', '2020-12-30 18:41:59');
INSERT INTO `tb_file_list` VALUES ('13', '[AJAX应用【股票案例、验证码校验】', 'https://segmentfault.com/a/1190000013289576', '0', '2020-12-30 17:34:36', '2020-12-30 17:34:36');
INSERT INTO `tb_file_list` VALUES ('14', '[ AJAX跨域完全讲解 ]', 'https://segmentfault.com/a/1190000013473001', '0', '2020-12-30 17:34:36', '2020-12-30 18:41:59');
INSERT INTO `tb_file_list` VALUES ('15', '[AJAX面试题都在这里](', 'https://segmentfault.com/a/1190000013291898', '0', '2020-12-30 17:34:36', '2020-12-30 17:34:36');
INSERT INTO `tb_file_list` VALUES ('16', '[ 十道简单算法题 ]', 'https://segmentfault.com/a/1190000014082596', '0', '2020-12-30 17:34:36', '2020-12-30 18:41:59');
INSERT INTO `tb_file_list` VALUES ('17', '掘金：', 'https://juejin.im/timeline', '0', '2020-12-30 17:34:36', '2020-12-30 17:34:36');
INSERT INTO `tb_file_list` VALUES ('18', '开源中国', 'https://www.oschina.net/', '0', '2020-12-30 17:34:36', '2020-12-30 18:41:59');
INSERT INTO `tb_file_list` VALUES ('19', '知乎专栏：[', 'https://www.zhihu.com/', '0', '2020-12-30 17:34:36', '2020-12-30 17:34:36');
INSERT INTO `tb_file_list` VALUES ('20', '思否(SegmentFault ', 'https://segmentfault.com/', '0', '2020-12-30 17:34:36', '2020-12-30 17:34:36');
INSERT INTO `tb_file_list` VALUES ('21', 'CSDN', 'https://blog.csdn.net/', '0', '2020-12-30 17:34:36', '2020-12-30 18:41:59');
INSERT INTO `tb_file_list` VALUES ('22', '博客园：[', 'https://www.cnblogs.com/', '0', '2020-12-30 17:34:36', '2020-12-30 17:34:36');
INSERT INTO `tb_file_list` VALUES ('23', '简书', 'https://www.jianshu.com/', '0', '2020-12-30 17:34:37', '2020-12-30 18:41:59');
INSERT INTO `tb_file_list` VALUES ('24', '慕课网手记：[', 'https://www.imooc.com/', '0', '2020-12-30 17:34:37', '2020-12-30 17:34:37');
INSERT INTO `tb_file_list` VALUES ('25', '腾讯云社区', 'https://cloud.tencent.com/developer', '0', '2020-12-30 17:34:37', '2020-12-30 18:41:59');
INSERT INTO `tb_file_list` VALUES ('26', '阿里云云栖社区：', 'https://yq.aliyun.com/', '0', '2020-12-30 17:34:37', '2020-12-30 17:34:37');
INSERT INTO `tb_file_list` VALUES ('27', '51CTO博客', 'http://blog.51cto.com/', '0', '2020-12-30 17:34:37', '2020-12-30 18:41:59');
INSERT INTO `tb_file_list` VALUES ('28', '思否：', 'https://github.com/ZhongFuCheng3y/3y', '0', '2020-12-30 17:34:37', '2020-12-30 17:34:37');
INSERT INTO `tb_file_list` VALUES ('29', ' 集合Collection总览', 'https://segmentfault.com/a/1190000014176577', '0', '2020-12-30 17:34:37', '2020-12-30 18:41:59');
INSERT INTO `tb_file_list` VALUES ('30', '[List集合就这么简单【源码剖析】', 'https://segmentfault.com/a/1190000014240704', '0', '2020-12-30 17:34:37', '2020-12-30 17:34:37');
INSERT INTO `tb_file_list` VALUES ('31', '[ Map集合、散列表、红黑树介绍', 'https://segmentfault.com/a/1190000014262640', '0', '2020-12-30 17:34:37', '2020-12-30 18:41:59');
INSERT INTO `tb_file_list` VALUES ('32', '[HashMap就是这么简单【源码剖析】', 'https://segmentfault.com/a/1190000014293372', '0', '2020-12-30 17:34:37', '2020-12-30 17:34:37');
INSERT INTO `tb_file_list` VALUES ('33', 'LinkedHashMap就这么简单【源码剖析】 ', 'https://segmentfault.com/a/1190000014319445', '0', '2020-12-30 17:34:37', '2020-12-30 18:41:59');
INSERT INTO `tb_file_list` VALUES ('34', 'TreeMap就这么简单【源码剖析】', 'https://segmentfault.com/a/1190000014345983', '0', '2020-12-30 17:34:37', '2020-12-30 17:34:37');
INSERT INTO `tb_file_list` VALUES ('35', ' ConcurrentHashMap基于JDK1.8源码剖析', 'https://segmentfault.com/a/1190000014380257', '0', '2020-12-30 17:34:37', '2020-12-30 18:41:59');
INSERT INTO `tb_file_list` VALUES ('36', '[3分钟搞掂Set集合]', 'https://segmentfault.com/a/1190000014391402', '0', '2020-12-30 17:34:37', '2020-12-30 17:34:37');
INSERT INTO `tb_file_list` VALUES ('37', 'Java集合总结【面试题 + 脑图】，将知识点一网打尽', 'https://segmentfault.com/a/1190000014403696', '0', '2020-12-30 17:34:37', '2020-12-30 18:41:59');
INSERT INTO `tb_file_list` VALUES ('38', '[CopyOnWriteArrayList你都不知道，怎么拿offer', 'https://segmentfault.com/a/1190000016931825', '0', '2020-12-30 17:34:38', '2020-12-30 17:34:38');
INSERT INTO `tb_file_list` VALUES ('39', 'Mysql免安装版配置教程和常用命令图', 'https://segmentfault.com/a/1190000013530782', '0', '2020-12-30 17:34:38', '2020-12-30 18:41:59');
INSERT INTO `tb_file_list` VALUES ('40', '[Oracle 11g数据库安装和卸载教程', 'https://segmentfault.com/a/1190000013537329', '0', '2020-12-30 17:34:38', '2020-12-30 17:34:38');
INSERT INTO `tb_file_list` VALUES ('41', ' SQLServer安装和JDBC连接SQLServer', 'https://segmentfault.com/a/1190000013540871', '0', '2020-12-30 17:34:38', '2020-12-30 18:41:59');
INSERT INTO `tb_file_list` VALUES ('42', '数据库原理', 'https://segmentfault.com/a/1190000013511831', '0', '2020-12-30 17:34:38', '2020-12-30 17:34:38');
INSERT INTO `tb_file_list` VALUES ('43', 'racle总结【SQL细节、多表查询、分组查询、分页】 ', 'https://segmentfault.com/a/1190000013541049', '0', '2020-12-30 17:34:38', '2020-12-30 18:41:59');
INSERT INTO `tb_file_list` VALUES ('44', '[Oracle总结【视图、索引、事务、用户权限、批量操作】', 'https://segmentfault.com/a/1190000013548170', '0', '2020-12-30 17:34:38', '2020-12-30 17:34:38');
INSERT INTO `tb_file_list` VALUES ('45', 'Oracle总结【PLSQL学习】 ', 'https://segmentfault.com/a/1190000013560860', '0', '2020-12-30 17:34:38', '2020-12-30 18:42:00');
INSERT INTO `tb_file_list` VALUES ('46', '数据库面试题(开发者必看', 'https://segmentfault.com/a/1190000013517914', '0', '2020-12-30 17:34:38', '2020-12-30 18:42:00');
INSERT INTO `tb_file_list` VALUES ('47', '[数据库两个神器【索引和锁】', 'https://segmentfault.com/a/1190000015738121', '0', '2020-12-30 17:34:38', '2020-12-30 17:34:38');
INSERT INTO `tb_file_list` VALUES ('48', '[ 面试前必须知道的MySQL命令【explain】 ', 'https://segmentfault.com/a/1190000017278335', '0', '2020-12-30 17:34:38', '2020-12-30 18:42:00');
INSERT INTO `tb_file_list` VALUES ('49', '递归就这么简单', 'https://segmentfault.com/a/1190000013861208', '0', '2020-12-30 17:34:38', '2020-12-30 17:34:38');
INSERT INTO `tb_file_list` VALUES ('50', ' Java实现单向链表基本功能 ', 'https://segmentfault.com/a/1190000014045776', '0', '2020-12-30 17:34:39', '2020-12-30 18:42:00');
INSERT INTO `tb_file_list` VALUES ('51', '[二叉树就是这么简单]', 'https://segmentfault.com/a/1190000013954269', '0', '2020-12-30 17:34:39', '2020-12-30 17:34:39');
INSERT INTO `tb_file_list` VALUES ('52', ' 【Java实现】栈和队列就是这么简单 】	', 'https://segmentfault.com/a/1190000014069263', '0', '2020-12-30 17:34:39', '2020-12-30 18:42:00');
INSERT INTO `tb_file_list` VALUES ('53', '给女朋友讲解什么是代理模式](', 'https://segmentfault.com/a/1190000014764125', '0', '2020-12-30 17:34:39', '2020-12-30 17:34:39');
INSERT INTO `tb_file_list` VALUES ('54', '包装模式就是这么简单啦', 'https://segmentfault.com/a/1190000014771830', '0', '2020-12-30 17:34:39', '2020-12-30 18:42:00');
INSERT INTO `tb_file_list` VALUES ('55', '单例模式你会几种写法？', 'https://segmentfault.com/a/1190000014888431', '0', '2020-12-30 17:34:39', '2020-12-30 17:34:39');
INSERT INTO `tb_file_list` VALUES ('56', '工厂模式理解了没有', 'https://segmentfault.com/a/1190000014949595', '0', '2020-12-30 17:34:39', '2020-12-30 18:42:00');
INSERT INTO `tb_file_list` VALUES ('57', '[策略模式原来这么简单！', 'https://segmentfault.com/a/1190000017549609', '0', '2020-12-30 17:34:39', '2020-12-30 17:34:39');
INSERT INTO `tb_file_list` VALUES ('58', ' 三分钟学会《门面模式》', 'https://segmentfault.com/a/1190000017568892', '0', '2020-12-30 17:34:39', '2020-12-30 18:42:00');
INSERT INTO `tb_file_list` VALUES ('59', '一分钟学会《模板方法模式》', 'https://segmentfault.com/a/1190000017755960', '0', '2020-12-30 17:34:39', '2020-12-30 17:34:39');
INSERT INTO `tb_file_list` VALUES ('60', '过滤器入门看这一篇就够了', 'https://segmentfault.com/a/1190000013211245', '0', '2020-12-30 17:34:39', '2020-12-30 18:42:00');
INSERT INTO `tb_file_list` VALUES ('61', '过滤器应用【编码、敏感词、压缩、转义过滤器】', 'https://segmentfault.com/a/1190000013221240', '0', '2020-12-30 17:34:39', '2020-12-30 17:34:39');
INSERT INTO `tb_file_list` VALUES ('62', '监听器入门看这篇就够了', 'https://segmentfault.com/a/1190000013240470', '0', '2020-12-30 17:34:39', '2020-12-30 18:42:00');
INSERT INTO `tb_file_list` VALUES ('63', '监听器应用【统计网站人数、自定义session扫描器、踢人小案例】', 'https://segmentfault.com/a/1190000013252595', '0', '2020-12-30 17:34:39', '2020-12-30 17:34:39');
INSERT INTO `tb_file_list` VALUES ('64', '过滤器监听器面试题都在这里', 'https://segmentfault.com/a/1190000013263161', '0', '2020-12-30 17:34:39', '2020-12-30 18:42:00');
INSERT INTO `tb_file_list` VALUES ('65', 'WebService就是这么简单', 'https://segmentfault.com/a/1190000013806509', '0', '2020-12-30 17:34:40', '2020-12-30 17:34:40');
INSERT INTO `tb_file_list` VALUES ('66', 'Lucene就是这么简单', 'https://segmentfault.com/a/1190000013822385', '0', '2020-12-30 17:34:40', '2020-12-30 18:42:01');
INSERT INTO `tb_file_list` VALUES ('67', '比较好的资料：[Lucene学习笔记', 'http://wangnan.tech/post/lucene-study-note/', '0', '2020-12-30 17:34:40', '2020-12-30 17:34:40');
INSERT INTO `tb_file_list` VALUES ('68', 'WebSocket就是这么简单', 'https://segmentfault.com/a/1190000013353808', '0', '2020-12-30 17:34:40', '2020-12-30 18:42:01');
INSERT INTO `tb_file_list` VALUES ('69', 'Activiti就是这么简单', 'https://segmentfault.com/a/1190000013839729', '0', '2020-12-30 17:34:40', '2020-12-30 17:34:40');
INSERT INTO `tb_file_list` VALUES ('70', 'Elasticsearch就这么简单', 'https://segmentfault.com/a/1190000013929434', '0', '2020-12-30 17:34:40', '2020-12-30 18:42:01');
INSERT INTO `tb_file_list` VALUES ('71', '[Shiro入门这篇就够了【Shiro的基础知识、回顾URL拦截】](', 'https://segmentfault.com/a/1190000013875092', '0', '2020-12-30 17:34:40', '2020-12-30 17:34:40');
INSERT INTO `tb_file_list` VALUES ('72', '[Shiro【授权、整合Spirng、Shiro过滤器】', 'https://segmentfault.com/a/1190000013895436', '0', '2020-12-30 17:34:40', '2020-12-30 18:42:01');
INSERT INTO `tb_file_list` VALUES ('73', '[Shiro【授权过滤器、与ehcache整合、验证码、记住我】', 'https://segmentfault.com/a/1190000013906006', '0', '2020-12-30 17:34:40', '2020-12-30 17:34:40');
INSERT INTO `tb_file_list` VALUES ('74', '什么是单点登录 	SSO ', 'https://segmentfault.com/a/1190000019205135', '0', '2020-12-30 17:34:40', '2020-12-30 17:34:40');
INSERT INTO `tb_file_list` VALUES ('75', '我必须得告诉大家的MySQL优化原理', 'https://segmentfault.com/a/1190000015615179', '0', '2020-12-30 17:34:40', '2020-12-30 18:42:01');
INSERT INTO `tb_file_list` VALUES ('76', '[java架构]', 'http://www.cnblogs.com/smallSevens/p/7476838.html', '0', '2020-12-30 17:34:40', '2020-12-30 17:34:40');
INSERT INTO `tb_file_list` VALUES ('77', 'git使用', 'https://www.cnblogs.com/running-runtu/p/9399612.html', '0', '2020-12-30 17:34:40', '2020-12-30 18:42:01');
INSERT INTO `tb_file_list` VALUES ('78', '[IOC循环依赖]', 'https://www.cnblogs.com/nullllun/p/9154133.html', '0', '2020-12-30 17:34:40', '2020-12-30 17:34:40');
INSERT INTO `tb_file_list` VALUES ('79', ' 图解 ] ARP协议（一）', 'https://www.cnblogs.com/csguo/p/7527303.html', '0', '2020-12-30 17:34:41', '2020-12-30 18:42:01');
INSERT INTO `tb_file_list` VALUES ('80', '[Intellij IDEA神器居然还有这些小技巧]', 'https://my.oschina.net/samgege/blog/1808622', '0', '2020-12-30 17:34:41', '2020-12-30 17:34:41');
INSERT INTO `tb_file_list` VALUES ('81', 'liuyubobobo GitHub', 'https://github.com/liuyubobobo', '0', '2020-12-30 17:34:41', '2020-12-30 18:42:01');
INSERT INTO `tb_file_list` VALUES ('82', '[求职]', 'https://github.com/lietoumai/awesome-offer', '0', '2020-12-30 17:34:41', '2020-12-30 17:34:41');
INSERT INTO `tb_file_list` VALUES ('83', '慕课网整理大佬', 'https://segmentfault.com/u/mskk', '0', '2020-12-30 17:34:41', '2020-12-30 18:42:02');
INSERT INTO `tb_file_list` VALUES ('84', '[搞定计算机网络面试，看这篇就够了]', 'https://segmentfault.com/a/1190000015822376', '0', '2020-12-30 17:34:41', '2020-12-30 17:34:41');
INSERT INTO `tb_file_list` VALUES ('85', '[面试gitHub]', 'https://github.com/Snailclimb/Java-Guide/BLOB/MASTER/%E6%95%B0%E6%8D%AE%E5%AD%98%E5%82%A8/MySQL.md', '0', '2020-12-30 17:34:41', '2020-12-30 18:42:02');
INSERT INTO `tb_file_list` VALUES ('86', '[面试题]', 'https://segmentfault.com/a/1190000015763371', '0', '2020-12-30 17:34:41', '2020-12-30 17:34:41');
INSERT INTO `tb_file_list` VALUES ('87', '面试', 'https://blog.csdn.net/u012516166/article/details/76184403', '0', '2020-12-30 17:34:41', '2020-12-30 18:42:02');
INSERT INTO `tb_file_list` VALUES ('88', '[面试]', 'https://github.com/crossoverJie/Java-Interview', '0', '2020-12-30 17:34:41', '2020-12-30 17:34:41');
INSERT INTO `tb_file_list` VALUES ('89', '[ 2018校园招聘笔经面经合集：后端开发 - Java方向 ', 'https://zhuanlan.zhihu.com/p/40961352?utm_medium=social&utm_source=wechat_session?utm_medium=social&utm_source=wechat_session', '0', '2020-12-30 17:34:41', '2020-12-30 18:42:02');
INSERT INTO `tb_file_list` VALUES ('90', '[javadoop博客]', 'https://javadoop.com/', '0', '2020-12-30 17:34:41', '2020-12-30 17:34:41');
INSERT INTO `tb_file_list` VALUES ('91', '[ 2019考研计算机操作系统（可配王道天勤 ，适合基础薄弱er', 'https://www.bilibili.com/video/av18273642/?p=19', '0', '2020-12-30 17:34:42', '2020-12-30 18:42:02');
INSERT INTO `tb_file_list` VALUES ('92', '[面试必问的SpringCloud实现原理图]', 'https://m.imooc.com/mip/article/23679', '0', '2020-12-30 17:34:42', '2020-12-30 17:34:42');
INSERT INTO `tb_file_list` VALUES ('93', '[ springboot + springcloud相关面试题', 'https://blog.csdn.net/panhaigang123/article/details/79587612', '0', '2020-12-30 17:34:42', '2020-12-30 18:42:02');
INSERT INTO `tb_file_list` VALUES ('94', '[放弃Dubbo，选择最流行的Spring Cloud微服务架构实践与经验总结]', 'http://developer.51cto.com/art/201710/554633.htm', '0', '2020-12-30 17:34:42', '2020-12-30 17:34:42');
INSERT INTO `tb_file_list` VALUES ('95', 'Hibernate入门这一篇就够了', 'https://segmentfault.com/a/1190000013568216', '0', '2020-12-30 17:34:42', '2020-12-30 18:42:02');
INSERT INTO `tb_file_list` VALUES ('96', '[Hibernate【映射】知识要点](', 'https://segmentfault.com/a/1190000013600430', '0', '2020-12-30 17:34:42', '2020-12-30 17:34:42');
INSERT INTO `tb_file_list` VALUES ('97', 'Hibernate【inverse和cascade属性】知识要点', 'https://segmentfault.com/a/1190000013610167', '0', '2020-12-30 17:34:42', '2020-12-30 18:42:04');
INSERT INTO `tb_file_list` VALUES ('98', '[Hibernate【查询、连接池、逆向工程】](', 'https://segmentfault.com/a/1190000013616755', '0', '2020-12-30 17:34:42', '2020-12-30 17:34:42');
INSERT INTO `tb_file_list` VALUES ('99', '[Hibernate【缓存】知识要点]', 'https://segmentfault.com/a/1190000013614475', '0', '2020-12-30 17:34:42', '2020-12-30 18:42:04');
INSERT INTO `tb_file_list` VALUES ('100', '[Hibernate【与Spring整合】', 'https://segmentfault.com/a/1190000013628592', '0', '2020-12-30 17:34:42', '2020-12-30 17:34:42');
INSERT INTO `tb_file_list` VALUES ('101', '[ Hibernate最全面试题 ]', 'https://segmentfault.com/a/1190000013635882', '0', '2020-12-30 17:34:42', '2020-12-30 18:42:04');
INSERT INTO `tb_file_list` VALUES ('102', 'http就是这么简单', 'https://segmentfault.com/a/1190000013175647', '0', '2020-12-30 17:34:43', '2020-12-30 17:34:43');
INSERT INTO `tb_file_list` VALUES ('103', ' http面试题都在这里', 'https://segmentfault.com/a/1190000013271378', '0', '2020-12-30 17:34:43', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('104', 'http2和httpS来不来了解一下', 'https://segmentfault.com/a/1190000015820968', '0', '2020-12-30 17:34:43', '2020-12-30 17:34:43');
INSERT INTO `tb_file_list` VALUES ('105', ' [ markdownpad2下载地址 ', 'http://markdownpad.com/', '0', '2020-12-30 17:34:43', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('106', '能不能好好写简历？', 'https://segmentfault.com/a/1190000018713098', '0', '2020-12-30 17:34:43', '2020-12-30 17:34:43');
INSERT INTO `tb_file_list` VALUES ('107', 'Java面试前需要了解的东西', 'https://segmentfault.com/a/1190000015373033', '0', '2020-12-30 17:34:43', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('108', '【Java】几道让你拿offer的面试题](', 'https://segmentfault.com/a/1190000015854646', '0', '2020-12-30 17:34:43', '2020-12-30 17:34:43');
INSERT INTO `tb_file_list` VALUES ('109', '【Java】留下没有基础眼泪的面试题', 'https://segmentfault.com/a/1190000016014444', '0', '2020-12-30 17:34:43', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('110', '【Java】几道常见的秋招面试题]', 'https://segmentfault.com/a/1190000016773721', '0', '2020-12-30 17:34:43', '2020-12-30 17:34:43');
INSERT INTO `tb_file_list` VALUES ('111', '泛型就这么简单', 'https://segmentfault.com/a/1190000014120746', '0', '2020-12-30 17:34:43', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('112', '[注解就这么简单]', 'https://segmentfault.com/a/1190000014131722', '0', '2020-12-30 17:34:43', '2020-12-30 17:34:43');
INSERT INTO `tb_file_list` VALUES ('113', 'Druid数据库连接池就这么简单', 'https://segmentfault.com/a/1190000013997259', '0', '2020-12-30 17:34:43', '2020-12-30 17:34:43');
INSERT INTO `tb_file_list` VALUES ('114', ' [ Object对象你真理解了吗？ ', 'https://segmentfault.com/a/1190000014710646', '0', '2020-12-30 17:34:43', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('115', ' JDK10都发布了，nio你了解多少？', 'https://segmentfault.com/a/1190000014850886', '0', '2020-12-30 17:34:44', '2020-12-30 17:34:44');
INSERT INTO `tb_file_list` VALUES ('116', ' [ 学习JVM是如何从入门到放弃的？ ', 'https://segmentfault.com/a/1190000015605327', '0', '2020-12-30 17:34:44', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('117', '[COW奶牛！Copy ON Write机制了解一下](', 'https://segmentfault.com/a/1190000016865958', '0', '2020-12-30 17:34:44', '2020-12-30 17:34:44');
INSERT INTO `tb_file_list` VALUES ('118', '《阿里巴巴 Java开发手册》读后感', 'https://segmentfault.com/a/1190000017039261', '0', '2020-12-30 17:34:44', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('119', '给女朋友讲解什么是Optional【JDK 8特性】', 'https://segmentfault.com/a/1190000017067661', '0', '2020-12-30 17:34:44', '2020-12-30 17:34:44');
INSERT INTO `tb_file_list` VALUES ('120', ' [ 我是如何将博客转成PDF的', 'https://segmentfault.com/a/1190000017355154', '0', '2020-12-30 17:34:44', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('121', '[Java文件上传细讲]', 'https://segmentfault.com/a/1190000013200994', '0', '2020-12-30 17:34:44', '2020-12-30 17:34:44');
INSERT INTO `tb_file_list` VALUES ('122', ' [ Web开发模式【Mode I 和Mode II的介绍、应用案例】', 'https://segmentfault.com/a/1190000013325456', '0', '2020-12-30 17:34:44', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('123', '用户登陆注册【JDBC版】', 'https://segmentfault.com/a/1190000013342925', '0', '2020-12-30 17:34:44', '2020-12-30 17:34:44');
INSERT INTO `tb_file_list` VALUES ('124', '购物车【JavaWeb小项目、简单版', 'https://segmentfault.com/a/1190000013364931', '0', '2020-12-30 17:34:44', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('125', '【JavaWeb】客户关系管理系统', 'https://segmentfault.com/a/1190000013375250', '0', '2020-12-30 17:34:44', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('126', '[【JavaWeb】权限管理系统', 'https://segmentfault.com/a/1190000013390920', '0', '2020-12-30 17:34:44', '2020-12-30 17:34:44');
INSERT INTO `tb_file_list` VALUES ('127', '图书管理系统【JavaWeb : 部署开发环境、解决分类、图书、前台页面模块', 'https://segmentfault.com/a/1190000013404022', '0', '2020-12-30 17:34:44', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('128', '图书管理系统【用户、购买、订单模块、添加权限】', 'https://segmentfault.com/a/1190000013423452', '0', '2020-12-30 17:34:45', '2020-12-30 17:34:45');
INSERT INTO `tb_file_list` VALUES ('129', '【JavaWeb】图书管理系统【总结】', 'https://segmentfault.com/a/1190000013450079', '0', '2020-12-30 17:34:45', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('130', '[Chrome浏览器]', 'https://www.google.com/chrome/', '0', '2020-12-30 17:34:45', '2020-12-30 17:34:45');
INSERT INTO `tb_file_list` VALUES ('131', '拦截广告插件', 'https://chrome.google.com/webstore/search/uBlock%20Origin?hl=zh-CN&_category=extensions', '0', '2020-12-30 17:34:45', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('132', ' [英语翻译插件]', 'https://chrome.google.com/webstore/search/%E6%B2%99%E6%8B%89%20%E6%9F%A5%20%E8%AF%8D?hl=zh-CN', '0', '2020-12-30 17:34:45', '2020-12-30 17:34:45');
INSERT INTO `tb_file_list` VALUES ('133', '[看完这篇Linux基本的操作就会了', 'https://segmentfault.com/a/1190000014840829', '0', '2020-12-30 17:34:45', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('134', '[Linux进程管理]', 'https://segmentfault.com/a/1190000015265131', '0', '2020-12-30 17:34:45', '2020-12-30 17:34:45');
INSERT INTO `tb_file_list` VALUES ('135', '[Linux网络管理', 'https://segmentfault.com/a/1190000015280392', '0', '2020-12-30 17:34:45', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('136', '- [Linux用户和权限管理看了你就会用啦](', 'https://segmentfault.com/a/1190000015255060', '0', '2020-12-30 17:34:45', '2020-12-30 17:34:45');
INSERT INTO `tb_file_list` VALUES ('137', '机器学习入门', 'https://segmentfault.com/a/1190000017432200', '0', '2020-12-30 17:34:45', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('138', ' [从零开始学TensorFlow【01-搭建环境、HelloWorld篇】', 'https://segmentfault.com/a/1190000018362783', '0', '2020-12-30 17:34:45', '2020-12-30 17:34:45');
INSERT INTO `tb_file_list` VALUES ('139', '什么是TensorFlow？', 'https://segmentfault.com/a/1190000018480739', '0', '2020-12-30 17:34:45', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('140', 'TensorFlow读写数据', 'https://segmentfault.com/a/1190000018530098', '0', '2020-12-30 17:34:45', '2020-12-30 17:34:45');
INSERT INTO `tb_file_list` VALUES ('141', ' 如何理解Axis', 'https://segmentfault.com/a/1190000018678064', '0', '2020-12-30 17:34:46', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('142', '什么是TensorBoard？', 'https://segmentfault.com/a/1190000018930265', '0', '2020-12-30 17:34:46', '2020-12-30 17:34:46');
INSERT INTO `tb_file_list` VALUES ('143', 'Java集合', 'https://user-gold-cdn.xitu.io/2019/1/19/168642529daec2cd?w=4224&h=1716&f=png&s=741080', '0', '2020-12-30 17:34:46', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('144', ' JDBC ', 'https://user-gold-cdn.xitu.io/2019/1/19/168642529dcd8b07?w=3693&h=1469&f=png&s=811473', '0', '2020-12-30 17:34:46', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('145', '多线程 ', 'https://user-gold-cdn.xitu.io/2019/1/19/168642529d777584?w=3248&h=3184&f=jpeg&s=833544', '0', '2020-12-30 17:34:46', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('146', '泛型 ', 'https://user-gold-cdn.xitu.io/2019/1/19/168642529b67bbbb?w=4622&h=1203&f=png&s=644841', '0', '2020-12-30 17:34:46', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('147', '注解', 'https://user-gold-cdn.xitu.io/2019/1/19/168642529dbe0df5?w=5114&h=1469&f=png&s=801562', '0', '2020-12-30 17:34:46', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('148', 'Object', 'https://USER-gold-cdn.xitu.io/2019/1/19/168642529debdfdb?w=5563&h=2061&f=jpeg&s=687055', '0', '2020-12-30 17:34:46', '2020-12-30 17:34:46');
INSERT INTO `tb_file_list` VALUES ('149', ' nio', 'https://user-gold-cdn.xitu.io/2019/1/19/168642586267aa4e?w=4747&h=2644&f=jpeg&s=734137', '0', '2020-12-30 17:34:46', '2020-12-30 18:42:05');
INSERT INTO `tb_file_list` VALUES ('150', '设计模式(未完', 'https://USER-gold-cdn.xitu.io/2019/1/19/16864258628808ab?w=4682&h=3438&f=jpeg&s=1014821', '0', '2020-12-30 17:34:46', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('151', '排序+数据结构', 'https://user-gold-cdn.xitu.io/2019/1/19/1686425469036fb7?w=4285&h=3547&f=jpeg&s=973982', '0', '2020-12-30 17:34:46', '2020-12-30 17:34:46');
INSERT INTO `tb_file_list` VALUES ('152', '小算法', 'https://USER-gold-cdn.xitu.io/2019/1/19/168642542a5075ef?w=6111&h=2110&f=jpeg&s=904253', '0', '2020-12-30 17:34:46', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('153', 'http', 'https://user-gold-cdn.xitu.io/2019/1/19/168642546d93f4c8?w=4604&h=2879&f=jpeg&s=878332', '0', '2020-12-30 17:34:46', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('154', 'Servlet', 'https://USER-gold-cdn.xitu.io/2019/1/19/168642542d17ece1?w=4593&h=2024&f=png&s=833941', '0', '2020-12-30 17:34:47', '2020-12-30 17:34:47');
INSERT INTO `tb_file_list` VALUES ('155', 'JSP', 'https://user-gold-cdn.xitu.io/2019/1/19/168642546e0c4bff?w=5160&h=2819&f=png&s=1044096', '0', '2020-12-30 17:34:47', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('156', '监听器和过滤器', 'https://USER-gold-cdn.xitu.io/2019/1/19/16864254a4f8a335?w=4093&h=1988&f=png&s=1037201', '0', '2020-12-30 17:34:47', '2020-12-30 17:34:47');
INSERT INTO `tb_file_list` VALUES ('157', ' Juqery1', 'https://user-gold-cdn.xitu.io/2019/1/19/1686425557d8d425?w=3225&h=2053&f=png&s=633639', '0', '2020-12-30 17:34:47', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('158', 'Juqery2', 'https://USER-gold-cdn.xitu.io/2019/1/19/1686425586ffedc4?w=3406&h=2189&f=png&s=694497', '0', '2020-12-30 17:34:47', '2020-12-30 17:34:47');
INSERT INTO `tb_file_list` VALUES ('159', 'AJAX', 'https://user-gold-cdn.xitu.io/2019/1/19/16864255972bc2eb?w=5513&h=2018&f=jpeg&s=742970', '0', '2020-12-30 17:34:47', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('160', 'Hibernate', 'https://USER-gold-cdn.xitu.io/2019/1/19/16864255b5d453a9?w=4491&h=3880&f=jpeg&s=905731', '0', '2020-12-30 17:34:47', '2020-12-30 17:34:47');
INSERT INTO `tb_file_list` VALUES ('161', ' Mybatis', 'https://user-gold-cdn.xitu.io/2019/1/19/16864255e11b466a?w=5545&h=2613&f=jpeg&s=854746', '0', '2020-12-30 17:34:47', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('162', 'SpringIOC和AOP', 'https://USER-gold-cdn.xitu.io/2019/1/19/1686425611988122?w=5114&h=3465&f=jpeg&s=925304', '0', '2020-12-30 17:34:47', '2020-12-30 17:34:47');
INSERT INTO `tb_file_list` VALUES ('163', '常用框架', 'https://user-gold-cdn.xitu.io/2019/1/19/16864256192e5481?w=3894&h=2867&f=jpeg&s=945441', '0', '2020-12-30 17:34:47', '2020-12-30 17:34:47');
INSERT INTO `tb_file_list` VALUES ('164', '纳税服务系统', 'https://USER-gold-cdn.xitu.io/2019/1/19/168642561b51e128?w=3374&h=1253&f=png&s=394549', '0', '2020-12-30 17:34:48', '2020-12-30 17:34:48');
INSERT INTO `tb_file_list` VALUES ('165', 'SSM移动商城项目', 'https://user-gold-cdn.xitu.io/2019/1/19/168642562ba4e2c5?w=4038&h=1514&f=png&s=662633', '0', '2020-12-30 17:34:48', '2020-12-30 17:34:48');
INSERT INTO `tb_file_list` VALUES ('166', '910便利网和无忧日志网', 'https://USER-gold-cdn.xitu.io/2019/1/19/168642563c3a2a01?w=3535&h=1499&f=png&s=498142', '0', '2020-12-30 17:34:48', '2020-12-30 17:34:48');
INSERT INTO `tb_file_list` VALUES ('167', 'MySQL命令', 'https://user-gold-cdn.xitu.io/2019/1/19/1686425648a06167?w=3395&h=2100&f=png&s=478975', '0', '2020-12-30 17:34:48', '2020-12-30 17:34:48');
INSERT INTO `tb_file_list` VALUES ('168', 'SQL知识点', 'https://USER-gold-cdn.xitu.io/2019/1/19/1686425685314e2c?w=3034&h=1825&f=png&s=543184', '0', '2020-12-30 17:34:48', '2020-12-30 17:34:48');
INSERT INTO `tb_file_list` VALUES ('169', 'Linux常用命令', 'https://user-gold-cdn.xitu.io/2019/1/19/168642566103584f?w=3315&h=2924&f=png&s=987850', '0', '2020-12-30 17:34:48', '2020-12-30 17:34:48');
INSERT INTO `tb_file_list` VALUES ('170', '什么是消息队列？', 'https://segmentfault.com/a/1190000018845299', '0', '2020-12-30 17:34:48', '2020-12-30 17:34:48');
INSERT INTO `tb_file_list` VALUES ('171', 'Mybatis入门看这一篇就够了', 'https://segmentfault.com/a/1190000013661958', '0', '2020-12-30 17:34:48', '2020-12-30 17:34:48');
INSERT INTO `tb_file_list` VALUES ('172', '[Mybatis【配置文件】就是这么简单]', 'https://segmentfault.com/a/1190000013674305', '0', '2020-12-30 17:34:48', '2020-12-30 17:34:48');
INSERT INTO `tb_file_list` VALUES ('173', '- [Mybatis【一对多、多对一、多对多】知识要点](', 'https://segmentfault.com/a/1190000013690643', '0', '2020-12-30 17:34:48', '2020-12-30 17:34:48');
INSERT INTO `tb_file_list` VALUES ('174', 'Mybatis【逆向工程，缓存，代理】知识要点', 'https://segmentfault.com/a/1190000013680313', '0', '2020-12-30 17:34:49', '2020-12-30 17:34:49');
INSERT INTO `tb_file_list` VALUES ('175', 'Mybatis与Spring整合', 'https://segmentfault.com/a/1190000013695117', '0', '2020-12-30 17:34:49', '2020-12-30 17:34:49');
INSERT INTO `tb_file_list` VALUES ('176', '[Mybatis常见面试题]', 'https://segmentfault.com/a/1190000013678579', '0', '2020-12-30 17:34:49', '2020-12-30 17:34:49');
INSERT INTO `tb_file_list` VALUES ('177', '[计算机网络【开山篇】', 'https://mp.weixin.qq.com/s?__biz=MzI4Njg5MDA5NA==&mid=2247484322&idx=1&sn=3b5502e5ce0cad773a595360705e8d56&chksm=ebd742a3dca0cbb5e61f1140876f7a8d12b500914881ef0911d38837e58f337eb757a6233d3f#rd', '0', '2020-12-30 17:34:49', '2020-12-30 17:34:49');
INSERT INTO `tb_file_list` VALUES ('178', '[物理层]', 'https://mp.weixin.qq.com/s?__biz=MzI4Njg5MDA5NA==&mid=2247484322&idx=2&sn=a746183ab24e28a9219dc3a93855933e&chksm=ebd742a3dca0cbb5b71f0b8a5b05d0f029262feb03dfec59de8013639c54d544b55a93e645cf#rd', '0', '2020-12-30 17:34:49', '2020-12-30 17:34:49');
INSERT INTO `tb_file_list` VALUES ('179', '数据链路层', 'https://mp.weixin.qq.com/s?__biz=MzI4Njg5MDA5NA==&mid=2247484322&idx=3&sn=1d9efb28f6535a78ab7c3b2f5e850d2d&chksm=ebd742a3dca0cbb5d46fe381cbedb7204e3837be0821c1625b8762620d4cfb7efdd4429ef441#rd', '0', '2020-12-30 17:34:49', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('180', '网络层【第一篇】', 'https://mp.weixin.qq.com/s?__biz=MzI4Njg5MDA5NA==&mid=2247484322&idx=4&sn=e173d048444d0dc36f948d57a603859e&chksm=ebd742a3dca0cbb564cc12a8de5243b32679ab13d5333781db9acbe297088f7ff36461b4eaf2#rd', '0', '2020-12-30 17:34:49', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('181', '[网络层【第二篇】', 'https://mp.weixin.qq.com/s?__biz=MzI4Njg5MDA5NA==&mid=2247484322&idx=5&sn=c5dc305c782314a238c91e1058a664c7&chksm=ebd742a3dca0cbb581a4dacf520178e9ccb89b573fecc6131f43dec0a041a4bc714af0c62583#rd', '0', '2020-12-30 17:34:49', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('182', '[网络层【第三篇】', 'https://mp.weixin.qq.com/s?__biz=MzI4Njg5MDA5NA==&mid=2247484322&idx=6&sn=bb77dadb64282f9d579ec97806525a00&chksm=ebd742a3dca0cbb5b4e926987f0f889a1684f833b3364d277329b18d6af046dbda20d96563e8#rd', '0', '2020-12-30 17:34:49', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('183', '[运输层]', 'https://mp.weixin.qq.com/s?__biz=MzI4Njg5MDA5NA==&mid=2247484322&idx=7&sn=cde9aa52b0c62efc642401c87e9a8c01&chksm=ebd742a3dca0cbb53a459c500e310dc49fccf8df577b95806aaf34d3220c288337cc6d4132fe#rd', '0', '2020-12-30 17:34:49', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('184', '[应用层]', 'https://mp.weixin.qq.com/s?__biz=MzI4Njg5MDA5NA==&mid=2247484322&idx=8&sn=9dda601c5387ed04fbd7bfd83fda0da1&chksm=ebd742a3dca0cbb52d4993e0b4c38199520a685b5b966e7c43679c310c14dc5b535551876e79#rd', '0', '2020-12-30 17:34:49', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('185', '[操作系统第一篇【引论】', 'https://mp.weixin.qq.com/s?__biz=MzI4Njg5MDA5NA==&mid=2247484186&idx=2&sn=e272d8e95a5677c75c21b058a064f0f8&chksm=ebd7421bdca0cb0d9d15da009894c8d1b503acbeb601af180ad7408bf2ff191de4995cccf0aa#rd', '0', '2020-12-30 17:34:50', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('186', '[操作系统第二篇【进程管理】	', 'https://mp.weixin.qq.com/s?__biz=MzI4Njg5MDA5NA==&mid=2247484186&idx=3&sn=cefa7781f34e2244b5eea83b7e242c3e&chksm=ebd7421bdca0cb0de76d3f1705f43cbdd41d0c9eb58cf4b55f32793d4f9f8ae2efbd539c8c30#rd', '0', '2020-12-30 17:34:50', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('187', '[操作系统第三篇【线程】', 'https://mp.weixin.qq.com/s?__biz=MzI4Njg5MDA5NA==&mid=2247484186&idx=4&sn=c8d83a508f7a87ad49dcfd6965779129&chksm=ebd7421bdca0cb0d309a3c444240b3677755c7b3083e9dce5e7d70d8d5dbb6e57bd14a7f38fc#rd', '0', '2020-12-30 17:34:50', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('188', '[操作系统第四篇【处理机调度】', 'https://mp.weixin.qq.com/s?__biz=MzI4Njg5MDA5NA==&mid=2247484186&idx=5&sn=54bda03c277af5283c9daff07fff4246&chksm=ebd7421bdca0cb0da6de8e2211049a7b9e95b0d4f5a76b9f6c68682d8648ecc71d92b12bcde3#rd', '0', '2020-12-30 17:34:50', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('189', '[操作系统第五篇【死锁】', 'https://mp.weixin.qq.com/s?__biz=MzI4Njg5MDA5NA==&mid=2247484186&idx=6&sn=fbe59571e8469fe953404cc632723646&chksm=ebd7421bdca0cb0d85c3a6651e765821d8e0b8aba43e2358d6f3be550a10e0b3ef02bc603715#rd', '0', '2020-12-30 17:34:50', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('190', '[操作系统第六篇【存储器管理】', 'https://mp.weixin.qq.com/s?__biz=MzI4Njg5MDA5NA==&mid=2247484186&idx=7&sn=3e027ee134e65c5cfae67218ce69a06a&chksm=ebd7421bdca0cb0d29437cad1483f5f59cf1ea9da57bf64900e52a2cd3d63e8fbaaeef9f2c51#rd', '0', '2020-12-30 17:34:50', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('191', '操作系统第七篇【设备管理】', 'https://mp.weixin.qq.com/s?__biz=MzI4Njg5MDA5NA==&mid=2247484186&idx=8&sn=01562e2dee725260460898e31edd8d29&chksm=ebd7421bdca0cb0d9011b0e63154b0052ede92030537c9be3fcf3a34dac059f79926bdaf98ca#rd', '0', '2020-12-30 17:34:50', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('192', '【Java EE】从零开始写项目【总结】', 'https://segmentfault.com/a/1190000014102239', '0', '2020-12-30 17:34:50', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('193', '[无忧日志网]', 'https://github.com/ZhongFuCheng3y/JournalSystem', '0', '2020-12-30 17:34:50', '2020-12-30 17:34:50');
INSERT INTO `tb_file_list` VALUES ('194', '从零单排学Redis【青铜】', 'https://segmentfault.com/a/1190000016837791', '0', '2020-12-30 17:34:50', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('195', '从零单排学Redis【白银】', 'https://segmentfault.com/a/1190000016951866', '0', '2020-12-30 17:34:50', '2020-12-30 17:34:50');
INSERT INTO `tb_file_list` VALUES ('196', '从零单排学Redis【黄金】', 'https://segmentfault.com/a/1190000016964511', '0', '2020-12-30 17:34:50', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('197', '从零单排学Redis【铂金一】', 'https://segmentfault.com/a/1190000017170690', '0', '2020-12-30 17:34:51', '2020-12-30 17:34:51');
INSERT INTO `tb_file_list` VALUES ('198', '从零单排学Redis【铂金二】', 'https://segmentfault.com/a/1190000017250990', '0', '2020-12-30 17:34:51', '2020-12-30 18:42:06');
INSERT INTO `tb_file_list` VALUES ('199', '缓存雪崩、缓存穿透、缓存更新了解多少？', 'https://segmentfault.com/a/1190000017882763', '0', '2020-12-30 17:34:51', '2020-12-30 17:34:51');
INSERT INTO `tb_file_list` VALUES ('200', 'Java马士兵：链接： 【密码：v3xb】 ', 'https://pan.baidu.com/s/1jJRvxGi', '0', '2020-12-30 17:34:51', '2020-12-30 17:34:51');
INSERT INTO `tb_file_list` VALUES ('201', ' vaSE基础：链接：密码：st7h ', 'https://pan.baidu.com/s/1FGUKwY30T_A3cmAikIzPQQ', '0', '2020-12-30 17:34:51', '2020-12-30 17:34:51');
INSERT INTO `tb_file_list` VALUES ('202', 'Java数据结构：链接：【密码：bx0s】', 'https://pan.baidu.com/s/1mjv3ovu', '0', '2020-12-30 17:34:51', '2020-12-30 17:34:51');
INSERT INTO `tb_file_list` VALUES ('203', 'java面试题链接密码：【3ddq】', 'https://pan.baidu.com/s/11kMLiU8SN8jBjKlQ9rHDRA', '0', '2020-12-30 17:34:51', '2020-12-30 17:34:51');
INSERT INTO `tb_file_list` VALUES ('204', 'BAT面试题链接【密码：xy2a】', 'https://pan.baidu.com/s/1tFUhZ3ucGF6ipUSSvMk0rg', '0', '2020-12-30 17:34:51', '2020-12-30 17:34:51');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL COMMENT '主键ID',
  `NAME` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Jone', '18', 'test1@baomidou.com');
INSERT INTO `user` VALUES ('2', 'Jack', '20', 'test2@baomidou.com');
INSERT INTO `user` VALUES ('3', 'Tom', '28', 'test3@baomidou.com');
INSERT INTO `user` VALUES ('4', 'Sandy', '21', 'test4@baomidou.com');
INSERT INTO `user` VALUES ('5', 'Billie', '24', 'test5@baomidou.com');

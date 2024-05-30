/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t055`;
CREATE DATABASE IF NOT EXISTS `t055` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t055`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `addtime`, `userid`, `address`, `name`, `phone`, `isdefault`) VALUES
	(1, '2021-04-26 02:06:39', 1, '宇宙银河系金星1号', '金某', '13823888881', '是'),
	(2, '2021-04-26 02:06:39', 2, '宇宙银河系木星1号', '木某', '13823888882', '是'),
	(3, '2021-04-26 02:06:39', 3, '宇宙银河系水星1号', '水某', '13823888883', '是'),
	(4, '2021-04-26 02:06:39', 4, '宇宙银河系火星1号', '火某', '13823888884', '是'),
	(5, '2021-04-26 02:06:39', 5, '宇宙银河系土星1号', '土某', '13823888885', '是'),
	(6, '2021-04-26 02:06:39', 6, '宇宙银河系月球1号', '月某', '13823888886', '是');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'meirongyongpin' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1705724142760 DEFAULT CHARSET=utf8mb3 COMMENT='购物车表';

DELETE FROM `cart`;
INSERT INTO `cart` (`id`, `addtime`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`) VALUES
	(1705724142759, '2024-01-20 04:15:42', 'meirongyongpin', 11, 53, '美容品名3', 'http://localhost:8080/springbootsw863/upload/meirongyongpin_tupian3.jpg', 1, 99.9, 0);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(2, 'picture2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(3, 'picture3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `huiyuan`;
CREATE TABLE IF NOT EXISTS `huiyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanzhanghao` varchar(200) NOT NULL COMMENT '会员账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `huiyuanxingming` varchar(200) NOT NULL COMMENT '会员姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `jifen` float DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huiyuanzhanghao` (`huiyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='会员';

DELETE FROM `huiyuan`;
INSERT INTO `huiyuan` (`id`, `addtime`, `huiyuanzhanghao`, `mima`, `huiyuanxingming`, `xingbie`, `nianling`, `shouji`, `shenfenzheng`, `touxiang`, `jifen`, `money`) VALUES
	(21, '2021-04-26 02:06:39', '会员1', '123456', '会员姓名1', '男', 1, '13823888881', '440300199101010001', 'http://localhost:8080/springbootsw863/upload/huiyuan_touxiang1.jpg', 10000, 100),
	(22, '2021-04-26 02:06:39', '会员2', '123456', '会员姓名2', '男', 2, '13823888882', '440300199202020002', 'http://localhost:8080/springbootsw863/upload/huiyuan_touxiang2.jpg', 10000, 100),
	(23, '2021-04-26 02:06:39', '会员3', '123456', '会员姓名3', '男', 3, '13823888883', '440300199303030003', 'http://localhost:8080/springbootsw863/upload/huiyuan_touxiang3.jpg', 10000, 100),
	(24, '2021-04-26 02:06:39', '会员4', '123456', '会员姓名4', '男', 4, '13823888884', '440300199404040004', 'http://localhost:8080/springbootsw863/upload/huiyuan_touxiang4.jpg', 10000, 100),
	(25, '2021-04-26 02:06:39', '会员5', '123456', '会员姓名5', '男', 5, '13823888885', '440300199505050005', 'http://localhost:8080/springbootsw863/upload/huiyuan_touxiang5.jpg', 10000, 100),
	(26, '2021-04-26 02:06:39', '会员6', '123456', '会员姓名6', '男', 6, '13823888886', '440300199606060006', 'http://localhost:8080/springbootsw863/upload/huiyuan_touxiang6.jpg', 10000, 100);

DROP TABLE IF EXISTS `huiyuannianxiaofeixinxi`;
CREATE TABLE IF NOT EXISTS `huiyuannianxiaofeixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '会员账号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianxiaofeie` int DEFAULT NULL COMMENT '年消费额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb3 COMMENT='会员年消费信息';

DELETE FROM `huiyuannianxiaofeixinxi`;
INSERT INTO `huiyuannianxiaofeixinxi` (`id`, `addtime`, `huiyuanzhanghao`, `huiyuanxingming`, `xingbie`, `nianxiaofeie`) VALUES
	(171, '2021-04-26 02:06:39', '会员账号1', '会员姓名1', '性别1', 1),
	(172, '2021-04-26 02:06:39', '会员账号2', '会员姓名2', '性别2', 2),
	(173, '2021-04-26 02:06:39', '会员账号3', '会员姓名3', '性别3', 3),
	(174, '2021-04-26 02:06:39', '会员账号4', '会员姓名4', '性别4', 4),
	(175, '2021-04-26 02:06:39', '会员账号5', '会员姓名5', '性别5', 5),
	(176, '2021-04-26 02:06:39', '会员账号6', '会员姓名6', '性别6', 6);

DROP TABLE IF EXISTS `huiyuanyuexiaofeixinxi`;
CREATE TABLE IF NOT EXISTS `huiyuanyuexiaofeixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '会员账号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yuexiaofeie` int DEFAULT NULL COMMENT '月消费额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb3 COMMENT='会员月消费信息';

DELETE FROM `huiyuanyuexiaofeixinxi`;
INSERT INTO `huiyuanyuexiaofeixinxi` (`id`, `addtime`, `huiyuanzhanghao`, `huiyuanxingming`, `xingbie`, `yuexiaofeie`) VALUES
	(161, '2021-04-26 02:06:39', '会员账号1', '会员姓名1', '性别1', 1),
	(162, '2021-04-26 02:06:39', '会员账号2', '会员姓名2', '性别2', 2),
	(163, '2021-04-26 02:06:39', '会员账号3', '会员姓名3', '性别3', 3),
	(164, '2021-04-26 02:06:39', '会员账号4', '会员姓名4', '性别4', 4),
	(165, '2021-04-26 02:06:39', '会员账号5', '会员姓名5', '性别5', 5),
	(166, '2021-04-26 02:06:39', '会员账号6', '会员姓名6', '性别6', 6);

DROP TABLE IF EXISTS `huiyuanyuyuexinxi`;
CREATE TABLE IF NOT EXISTS `huiyuanyuyuexinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `huiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '会员账号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `yuyuexiangqing` varchar(200) DEFAULT NULL COMMENT '预约详情',
  `zhidingjishi` varchar(200) DEFAULT NULL COMMENT '指定技师',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='会员预约信息';

DELETE FROM `huiyuanyuyuexinxi`;
INSERT INTO `huiyuanyuyuexinxi` (`id`, `addtime`, `xiangmumingcheng`, `huiyuanzhanghao`, `huiyuanxingming`, `shouji`, `zhaopian`, `yuyueshijian`, `yuyuexiangqing`, `zhidingjishi`, `sfsh`, `shhf`, `userid`) VALUES
	(81, '2021-04-26 02:06:39', '项目名称1', '会员账号1', '会员姓名1', '手机1', 'http://localhost:8080/springbootsw863/upload/huiyuanyuyuexinxi_zhaopian1.jpg', '2021-04-26 10:06:39', '预约详情1', '指定技师1', '是', '', 1),
	(82, '2021-04-26 02:06:39', '项目名称2', '会员账号2', '会员姓名2', '手机2', 'http://localhost:8080/springbootsw863/upload/huiyuanyuyuexinxi_zhaopian2.jpg', '2021-04-26 10:06:39', '预约详情2', '指定技师2', '是', '', 2),
	(83, '2021-04-26 02:06:39', '项目名称3', '会员账号3', '会员姓名3', '手机3', 'http://localhost:8080/springbootsw863/upload/huiyuanyuyuexinxi_zhaopian3.jpg', '2021-04-26 10:06:39', '预约详情3', '指定技师3', '是', '', 3),
	(84, '2021-04-26 02:06:39', '项目名称4', '会员账号4', '会员姓名4', '手机4', 'http://localhost:8080/springbootsw863/upload/huiyuanyuyuexinxi_zhaopian4.jpg', '2021-04-26 10:06:39', '预约详情4', '指定技师4', '是', '', 4),
	(85, '2021-04-26 02:06:39', '项目名称5', '会员账号5', '会员姓名5', '手机5', 'http://localhost:8080/springbootsw863/upload/huiyuanyuyuexinxi_zhaopian5.jpg', '2021-04-26 10:06:39', '预约详情5', '指定技师5', '是', '', 5),
	(86, '2021-04-26 02:06:39', '项目名称6', '会员账号6', '会员姓名6', '手机6', 'http://localhost:8080/springbootsw863/upload/huiyuanyuyuexinxi_zhaopian6.jpg', '2021-04-26 10:06:39', '预约详情6', '指定技师6', '是', '', 6);

DROP TABLE IF EXISTS `jishi`;
CREATE TABLE IF NOT EXISTS `jishi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jishigonghao` varchar(200) NOT NULL COMMENT '技师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jishixingming` varchar(200) NOT NULL COMMENT '技师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jifen` float DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jishigonghao` (`jishigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='技师';

DELETE FROM `jishi`;
INSERT INTO `jishi` (`id`, `addtime`, `jishigonghao`, `mima`, `jishixingming`, `xingbie`, `nianling`, `lianxidianhua`, `shenfenzheng`, `zhaopian`, `jifen`, `money`) VALUES
	(31, '2021-04-26 02:06:39', '技师1', '123456', '技师姓名1', '男', 1, '13823888881', '440300199101010001', 'http://localhost:8080/springbootsw863/upload/jishi_zhaopian1.jpg', 10000, 100),
	(32, '2021-04-26 02:06:39', '技师2', '123456', '技师姓名2', '男', 2, '13823888882', '440300199202020002', 'http://localhost:8080/springbootsw863/upload/jishi_zhaopian2.jpg', 10000, 100),
	(33, '2021-04-26 02:06:39', '技师3', '123456', '技师姓名3', '男', 3, '13823888883', '440300199303030003', 'http://localhost:8080/springbootsw863/upload/jishi_zhaopian3.jpg', 10000, 100),
	(34, '2021-04-26 02:06:39', '技师4', '123456', '技师姓名4', '男', 4, '13823888884', '440300199404040004', 'http://localhost:8080/springbootsw863/upload/jishi_zhaopian4.jpg', 10000, 100),
	(35, '2021-04-26 02:06:39', '技师5', '123456', '技师姓名5', '男', 5, '13823888885', '440300199505050005', 'http://localhost:8080/springbootsw863/upload/jishi_zhaopian5.jpg', 10000, 100),
	(36, '2021-04-26 02:06:39', '技师6', '123456', '技师姓名6', '男', 6, '13823888886', '440300199606060006', 'http://localhost:8080/springbootsw863/upload/jishi_zhaopian6.jpg', 10000, 100);

DROP TABLE IF EXISTS `jishinianyejitongji`;
CREATE TABLE IF NOT EXISTS `jishinianyejitongji` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jishigonghao` varchar(200) DEFAULT NULL COMMENT '技师工号',
  `jishixingming` varchar(200) DEFAULT NULL COMMENT '技师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `fuwucishu` int DEFAULT NULL COMMENT '服务次数',
  `nianyejie` int DEFAULT NULL COMMENT '年业绩额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb3 COMMENT='技师年业绩统计';

DELETE FROM `jishinianyejitongji`;
INSERT INTO `jishinianyejitongji` (`id`, `addtime`, `jishigonghao`, `jishixingming`, `xingbie`, `fuwucishu`, `nianyejie`) VALUES
	(191, '2021-04-26 02:06:39', '技师工号1', '技师姓名1', '性别1', 1, 1),
	(192, '2021-04-26 02:06:39', '技师工号2', '技师姓名2', '性别2', 2, 2),
	(193, '2021-04-26 02:06:39', '技师工号3', '技师姓名3', '性别3', 3, 3),
	(194, '2021-04-26 02:06:39', '技师工号4', '技师姓名4', '性别4', 4, 4),
	(195, '2021-04-26 02:06:39', '技师工号5', '技师姓名5', '性别5', 5, 5),
	(196, '2021-04-26 02:06:39', '技师工号6', '技师姓名6', '性别6', 6, 6);

DROP TABLE IF EXISTS `jishiyueyejitongji`;
CREATE TABLE IF NOT EXISTS `jishiyueyejitongji` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jishigonghao` varchar(200) DEFAULT NULL COMMENT '技师工号',
  `jishixingming` varchar(200) DEFAULT NULL COMMENT '技师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `fuwucishu` int DEFAULT NULL COMMENT '服务次数',
  `yueyejie` int DEFAULT NULL COMMENT '月业绩额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb3 COMMENT='技师月业绩统计';

DELETE FROM `jishiyueyejitongji`;
INSERT INTO `jishiyueyejitongji` (`id`, `addtime`, `jishigonghao`, `jishixingming`, `xingbie`, `fuwucishu`, `yueyejie`) VALUES
	(181, '2021-04-26 02:06:39', '技师工号1', '技师姓名1', '性别1', 1, 1),
	(182, '2021-04-26 02:06:39', '技师工号2', '技师姓名2', '性别2', 2, 2),
	(183, '2021-04-26 02:06:39', '技师工号3', '技师姓名3', '性别3', 3, 3),
	(184, '2021-04-26 02:06:39', '技师工号4', '技师姓名4', '性别4', 4, 4),
	(185, '2021-04-26 02:06:39', '技师工号5', '技师姓名5', '性别5', 5, 5),
	(186, '2021-04-26 02:06:39', '技师工号6', '技师姓名6', '性别6', 6, 6);

DROP TABLE IF EXISTS `kucunxinxi`;
CREATE TABLE IF NOT EXISTS `kucunxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meirongpinming` varchar(200) DEFAULT NULL COMMENT '美容品名',
  `tongjishijian` datetime DEFAULT NULL COMMENT '统计时间',
  `kucunyuliang` int DEFAULT NULL COMMENT '库存余量',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb3 COMMENT='库存信息';

DELETE FROM `kucunxinxi`;
INSERT INTO `kucunxinxi` (`id`, `addtime`, `meirongpinming`, `tongjishijian`, `kucunyuliang`, `leixing`, `zhaopian`) VALUES
	(111, '2021-04-26 02:06:39', '美容品名1', '2021-04-26 10:06:39', 1, '类型1', 'http://localhost:8080/springbootsw863/upload/kucunxinxi_zhaopian1.jpg'),
	(112, '2021-04-26 02:06:39', '美容品名2', '2021-04-26 10:06:39', 2, '类型2', 'http://localhost:8080/springbootsw863/upload/kucunxinxi_zhaopian2.jpg'),
	(113, '2021-04-26 02:06:39', '美容品名3', '2021-04-26 10:06:39', 3, '类型3', 'http://localhost:8080/springbootsw863/upload/kucunxinxi_zhaopian3.jpg'),
	(114, '2021-04-26 02:06:39', '美容品名4', '2021-04-26 10:06:39', 4, '类型4', 'http://localhost:8080/springbootsw863/upload/kucunxinxi_zhaopian4.jpg'),
	(115, '2021-04-26 02:06:39', '美容品名5', '2021-04-26 10:06:39', 5, '类型5', 'http://localhost:8080/springbootsw863/upload/kucunxinxi_zhaopian5.jpg'),
	(116, '2021-04-26 02:06:39', '美容品名6', '2021-04-26 10:06:39', 6, '类型6', 'http://localhost:8080/springbootsw863/upload/kucunxinxi_zhaopian6.jpg');

DROP TABLE IF EXISTS `meirongbuwei`;
CREATE TABLE IF NOT EXISTS `meirongbuwei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meirongbuwei` varchar(200) DEFAULT NULL COMMENT '美容部位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COMMENT='美容部位';

DELETE FROM `meirongbuwei`;
INSERT INTO `meirongbuwei` (`id`, `addtime`, `meirongbuwei`) VALUES
	(91, '2021-04-26 02:06:39', '美容部位1'),
	(92, '2021-04-26 02:06:39', '美容部位2'),
	(93, '2021-04-26 02:06:39', '美容部位3'),
	(94, '2021-04-26 02:06:39', '美容部位4'),
	(95, '2021-04-26 02:06:39', '美容部位5'),
	(96, '2021-04-26 02:06:39', '美容部位6');

DROP TABLE IF EXISTS `meirongxiangmu`;
CREATE TABLE IF NOT EXISTS `meirongxiangmu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xiangmutupian` varchar(200) DEFAULT NULL COMMENT '项目图片',
  `meirongbuwei` varchar(200) DEFAULT NULL COMMENT '美容部位',
  `shiyongnianling` varchar(200) DEFAULT NULL COMMENT '适用年龄',
  `xiangmujiage` int DEFAULT NULL COMMENT '项目价格',
  `xiangqing` longtext COMMENT '详情',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `jishigonghao` varchar(200) DEFAULT NULL COMMENT '技师工号',
  `jishixingming` varchar(200) DEFAULT NULL COMMENT '技师姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619403066019 DEFAULT CHARSET=utf8mb3 COMMENT='美容项目';

DELETE FROM `meirongxiangmu`;
INSERT INTO `meirongxiangmu` (`id`, `addtime`, `xiangmumingcheng`, `xiangmutupian`, `meirongbuwei`, `shiyongnianling`, `xiangmujiage`, `xiangqing`, `kaishishijian`, `jishigonghao`, `jishixingming`, `lianxidianhua`) VALUES
	(61, '2021-04-26 02:06:39', '项目名称1', 'http://localhost:8080/springbootsw863/upload/meirongxiangmu_xiangmutupian1.jpg', '美容部位1', '适用年龄1', 1, '详情1', '2021-04-26', '技师工号1', '技师姓名1', '联系电话1'),
	(62, '2021-04-26 02:06:39', '项目名称2', 'http://localhost:8080/springbootsw863/upload/meirongxiangmu_xiangmutupian2.jpg', '美容部位2', '适用年龄2', 2, '详情2', '2021-04-26', '技师工号2', '技师姓名2', '联系电话2'),
	(63, '2021-04-26 02:06:39', '项目名称3', 'http://localhost:8080/springbootsw863/upload/meirongxiangmu_xiangmutupian3.jpg', '美容部位3', '适用年龄3', 3, '详情3', '2021-04-26', '技师工号3', '技师姓名3', '联系电话3'),
	(64, '2021-04-26 02:06:39', '项目名称4', 'http://localhost:8080/springbootsw863/upload/meirongxiangmu_xiangmutupian4.jpg', '美容部位4', '适用年龄4', 4, '详情4', '2021-04-26', '技师工号4', '技师姓名4', '联系电话4'),
	(65, '2021-04-26 02:06:39', '项目名称5', 'http://localhost:8080/springbootsw863/upload/meirongxiangmu_xiangmutupian5.jpg', '美容部位5', '适用年龄5', 5, '详情5', '2021-04-26', '技师工号5', '技师姓名5', '联系电话5'),
	(66, '2021-04-26 02:06:39', '项目名称6', 'http://localhost:8080/springbootsw863/upload/meirongxiangmu_xiangmutupian6.jpg', '美容部位6', '适用年龄6', 6, '详情6', '2021-04-26', '技师工号6', '技师姓名6', '联系电话6'),
	(1619403066018, '2021-04-26 02:11:05', '美容', 'http://localhost:8080/springbootsw863/upload/1619403058622.jpg', '美容部位1', '33', 1111, '<p>12312321</p>', '2021-04-28', '技师1', '技师姓名1', '13823888881');

DROP TABLE IF EXISTS `meirongxiangmuniantongji`;
CREATE TABLE IF NOT EXISTS `meirongxiangmuniantongji` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xiangmuzhaopian` varchar(200) DEFAULT NULL COMMENT '项目照片',
  `meirongbuwei` varchar(200) DEFAULT NULL COMMENT '美容部位',
  `tongjiriqi` date DEFAULT NULL COMMENT '统计日期',
  `xiangmujiage` int DEFAULT NULL COMMENT '项目价格',
  `nianxiaoliang` int DEFAULT NULL COMMENT '年销量',
  `nianxiaoshoue` int DEFAULT NULL COMMENT '年销售额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb3 COMMENT='美容项目年统计';

DELETE FROM `meirongxiangmuniantongji`;
INSERT INTO `meirongxiangmuniantongji` (`id`, `addtime`, `xiangmumingcheng`, `xiangmuzhaopian`, `meirongbuwei`, `tongjiriqi`, `xiangmujiage`, `nianxiaoliang`, `nianxiaoshoue`) VALUES
	(131, '2021-04-26 02:06:39', '项目名称1', 'http://localhost:8080/springbootsw863/upload/meirongxiangmuniantongji_xiangmuzhaopian1.jpg', '美容部位1', '2021-04-26', 1, 1, 1),
	(132, '2021-04-26 02:06:39', '项目名称2', 'http://localhost:8080/springbootsw863/upload/meirongxiangmuniantongji_xiangmuzhaopian2.jpg', '美容部位2', '2021-04-26', 2, 2, 2),
	(133, '2021-04-26 02:06:39', '项目名称3', 'http://localhost:8080/springbootsw863/upload/meirongxiangmuniantongji_xiangmuzhaopian3.jpg', '美容部位3', '2021-04-26', 3, 3, 3),
	(134, '2021-04-26 02:06:39', '项目名称4', 'http://localhost:8080/springbootsw863/upload/meirongxiangmuniantongji_xiangmuzhaopian4.jpg', '美容部位4', '2021-04-26', 4, 4, 4),
	(135, '2021-04-26 02:06:39', '项目名称5', 'http://localhost:8080/springbootsw863/upload/meirongxiangmuniantongji_xiangmuzhaopian5.jpg', '美容部位5', '2021-04-26', 5, 5, 5),
	(136, '2021-04-26 02:06:39', '项目名称6', 'http://localhost:8080/springbootsw863/upload/meirongxiangmuniantongji_xiangmuzhaopian6.jpg', '美容部位6', '2021-04-26', 6, 6, 6);

DROP TABLE IF EXISTS `meirongxiangmuyuetongji`;
CREATE TABLE IF NOT EXISTS `meirongxiangmuyuetongji` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xiangmuzhaopian` varchar(200) DEFAULT NULL COMMENT '项目照片',
  `meirongbuwei` varchar(200) DEFAULT NULL COMMENT '美容部位',
  `tongjiriqi` date DEFAULT NULL COMMENT '统计日期',
  `xiangmujiage` int DEFAULT NULL COMMENT '项目价格',
  `yuexiaoliang` int DEFAULT NULL COMMENT '月销量',
  `yuexiaoshoue` int DEFAULT NULL COMMENT '月销售额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 COMMENT='美容项目月统计';

DELETE FROM `meirongxiangmuyuetongji`;
INSERT INTO `meirongxiangmuyuetongji` (`id`, `addtime`, `xiangmumingcheng`, `xiangmuzhaopian`, `meirongbuwei`, `tongjiriqi`, `xiangmujiage`, `yuexiaoliang`, `yuexiaoshoue`) VALUES
	(121, '2021-04-26 02:06:39', '项目名称1', 'http://localhost:8080/springbootsw863/upload/meirongxiangmuyuetongji_xiangmuzhaopian1.jpg', '美容部位1', '2021-04-26', 1, 1, 1),
	(122, '2021-04-26 02:06:39', '项目名称2', 'http://localhost:8080/springbootsw863/upload/meirongxiangmuyuetongji_xiangmuzhaopian2.jpg', '美容部位2', '2021-04-26', 2, 2, 2),
	(123, '2021-04-26 02:06:39', '项目名称3', 'http://localhost:8080/springbootsw863/upload/meirongxiangmuyuetongji_xiangmuzhaopian3.jpg', '美容部位3', '2021-04-26', 3, 3, 3),
	(124, '2021-04-26 02:06:39', '项目名称4', 'http://localhost:8080/springbootsw863/upload/meirongxiangmuyuetongji_xiangmuzhaopian4.jpg', '美容部位4', '2021-04-26', 4, 4, 4),
	(125, '2021-04-26 02:06:39', '项目名称5', 'http://localhost:8080/springbootsw863/upload/meirongxiangmuyuetongji_xiangmuzhaopian5.jpg', '美容部位5', '2021-04-26', 5, 5, 5),
	(126, '2021-04-26 02:06:39', '项目名称6', 'http://localhost:8080/springbootsw863/upload/meirongxiangmuyuetongji_xiangmuzhaopian6.jpg', '美容部位6', '2021-04-26', 6, 6, 6);

DROP TABLE IF EXISTS `meirongyongpin`;
CREATE TABLE IF NOT EXISTS `meirongyongpin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meirongpinming` varchar(200) DEFAULT NULL COMMENT '美容品名',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `kucun` int DEFAULT NULL COMMENT '库存',
  `shiyongfangfa` longtext COMMENT '使用方法',
  `shiyongnianling` varchar(200) DEFAULT NULL COMMENT '适用年龄',
  `meirongbuwei` varchar(200) DEFAULT NULL COMMENT '美容部位',
  `meironggongxiao` longtext COMMENT '美容功效',
  `jifen` int DEFAULT '-1' COMMENT '积分',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='美容用品';

DELETE FROM `meirongyongpin`;
INSERT INTO `meirongyongpin` (`id`, `addtime`, `meirongpinming`, `tupian`, `leixing`, `kucun`, `shiyongfangfa`, `shiyongnianling`, `meirongbuwei`, `meironggongxiao`, `jifen`, `price`) VALUES
	(51, '2021-04-26 02:06:39', '美容品名1', 'http://localhost:8080/springbootsw863/upload/meirongyongpin_tupian1.jpg', '类型1', 1, '使用方法1', '适用年龄1', '美容部位1', '美容功效1', 10000, 99.9),
	(52, '2021-04-26 02:06:39', '美容品名2', 'http://localhost:8080/springbootsw863/upload/meirongyongpin_tupian2.jpg', '类型2', 2, '使用方法2', '适用年龄2', '美容部位2', '美容功效2', 10000, 99.9),
	(53, '2021-04-26 02:06:39', '美容品名3', 'http://localhost:8080/springbootsw863/upload/meirongyongpin_tupian3.jpg', '类型3', 3, '使用方法3', '适用年龄3', '美容部位3', '美容功效3', 10000, 99.9),
	(54, '2021-04-26 02:06:39', '美容品名4', 'http://localhost:8080/springbootsw863/upload/meirongyongpin_tupian4.jpg', '类型4', 4, '使用方法4', '适用年龄4', '美容部位4', '美容功效4', 10000, 99.9),
	(55, '2021-04-26 02:06:39', '美容品名5', 'http://localhost:8080/springbootsw863/upload/meirongyongpin_tupian5.jpg', '类型5', 5, '使用方法5', '适用年龄5', '美容部位5', '美容功效5', 10000, 99.9),
	(56, '2021-04-26 02:06:39', '美容品名6', 'http://localhost:8080/springbootsw863/upload/meirongyongpin_tupian6.jpg', '类型6', 6, '使用方法6', '适用年龄6', '美容部位6', '美容功效6', 10000, 99.9);

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'meirongyongpin' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='订单';

DELETE FROM `orders`;

DROP TABLE IF EXISTS `putongyonghu`;
CREATE TABLE IF NOT EXISTS `putongyonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jifen` float DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='普通用户';

DELETE FROM `putongyonghu`;
INSERT INTO `putongyonghu` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `nianling`, `shouji`, `shenfenzheng`, `zhaopian`, `jifen`, `money`) VALUES
	(11, '2021-04-26 02:06:39', '普通用户1', '123456', '姓名1', '男', 1, '13823888881', '440300199101010001', 'http://localhost:8080/springbootsw863/upload/putongyonghu_zhaopian1.jpg', 10000, 100),
	(12, '2021-04-26 02:06:39', '普通用户2', '123456', '姓名2', '男', 2, '13823888882', '440300199202020002', 'http://localhost:8080/springbootsw863/upload/putongyonghu_zhaopian2.jpg', 10000, 100),
	(13, '2021-04-26 02:06:39', '普通用户3', '123456', '姓名3', '男', 3, '13823888883', '440300199303030003', 'http://localhost:8080/springbootsw863/upload/putongyonghu_zhaopian3.jpg', 10000, 100),
	(14, '2021-04-26 02:06:39', '普通用户4', '123456', '姓名4', '男', 4, '13823888884', '440300199404040004', 'http://localhost:8080/springbootsw863/upload/putongyonghu_zhaopian4.jpg', 10000, 100),
	(15, '2021-04-26 02:06:39', '普通用户5', '123456', '姓名5', '男', 5, '13823888885', '440300199505050005', 'http://localhost:8080/springbootsw863/upload/putongyonghu_zhaopian5.jpg', 10000, 100),
	(16, '2021-04-26 02:06:39', '普通用户6', '123456', '姓名6', '男', 6, '13823888886', '440300199606060006', 'http://localhost:8080/springbootsw863/upload/putongyonghu_zhaopian6.jpg', 10000, 100);

DROP TABLE IF EXISTS `qiantai`;
CREATE TABLE IF NOT EXISTS `qiantai` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiantaizhanghao` varchar(200) NOT NULL COMMENT '前台账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiantaixingming` varchar(200) NOT NULL COMMENT '前台姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jifen` float DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiantaizhanghao` (`qiantaizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='前台';

DELETE FROM `qiantai`;
INSERT INTO `qiantai` (`id`, `addtime`, `qiantaizhanghao`, `mima`, `qiantaixingming`, `xingbie`, `nianling`, `shouji`, `zhaopian`, `jifen`, `money`) VALUES
	(41, '2021-04-26 02:06:39', '前台1', '123456', '前台姓名1', '男', 1, '13823888881', 'http://localhost:8080/springbootsw863/upload/qiantai_zhaopian1.jpg', 10000, 100),
	(42, '2021-04-26 02:06:39', '前台2', '123456', '前台姓名2', '男', 2, '13823888882', 'http://localhost:8080/springbootsw863/upload/qiantai_zhaopian2.jpg', 10000, 100),
	(43, '2021-04-26 02:06:39', '前台3', '123456', '前台姓名3', '男', 3, '13823888883', 'http://localhost:8080/springbootsw863/upload/qiantai_zhaopian3.jpg', 10000, 100),
	(44, '2021-04-26 02:06:39', '前台4', '123456', '前台姓名4', '男', 4, '13823888884', 'http://localhost:8080/springbootsw863/upload/qiantai_zhaopian4.jpg', 10000, 100),
	(45, '2021-04-26 02:06:39', '前台5', '123456', '前台姓名5', '男', 5, '13823888885', 'http://localhost:8080/springbootsw863/upload/qiantai_zhaopian5.jpg', 10000, 100),
	(46, '2021-04-26 02:06:39', '前台6', '123456', '前台姓名6', '男', 6, '13823888886', 'http://localhost:8080/springbootsw863/upload/qiantai_zhaopian6.jpg', 10000, 100);

DROP TABLE IF EXISTS `qiantainianyejitongji`;
CREATE TABLE IF NOT EXISTS `qiantainianyejitongji` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiantaizhanghao` varchar(200) DEFAULT NULL COMMENT '前台账号',
  `qiantaixingming` varchar(200) DEFAULT NULL COMMENT '前台姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lalongkehurenshu` int DEFAULT NULL COMMENT '拉拢客户人数',
  `nianyejie` int DEFAULT NULL COMMENT '年业绩额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb3 COMMENT='前台年业绩统计';

DELETE FROM `qiantainianyejitongji`;
INSERT INTO `qiantainianyejitongji` (`id`, `addtime`, `qiantaizhanghao`, `qiantaixingming`, `xingbie`, `lalongkehurenshu`, `nianyejie`) VALUES
	(211, '2021-04-26 02:06:39', '前台账号1', '前台姓名1', '性别1', 1, 1),
	(212, '2021-04-26 02:06:39', '前台账号2', '前台姓名2', '性别2', 2, 2),
	(213, '2021-04-26 02:06:39', '前台账号3', '前台姓名3', '性别3', 3, 3),
	(214, '2021-04-26 02:06:39', '前台账号4', '前台姓名4', '性别4', 4, 4),
	(215, '2021-04-26 02:06:39', '前台账号5', '前台姓名5', '性别5', 5, 5),
	(216, '2021-04-26 02:06:39', '前台账号6', '前台姓名6', '性别6', 6, 6);

DROP TABLE IF EXISTS `qiantaiyueyejitongji`;
CREATE TABLE IF NOT EXISTS `qiantaiyueyejitongji` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiantaizhanghao` varchar(200) DEFAULT NULL COMMENT '前台账号',
  `qiantaixingming` varchar(200) DEFAULT NULL COMMENT '前台姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lalongkehurenshu` int DEFAULT NULL COMMENT '拉拢客户人数',
  `yueyejie` int DEFAULT NULL COMMENT '月业绩额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb3 COMMENT='前台月业绩统计';

DELETE FROM `qiantaiyueyejitongji`;
INSERT INTO `qiantaiyueyejitongji` (`id`, `addtime`, `qiantaizhanghao`, `qiantaixingming`, `xingbie`, `lalongkehurenshu`, `yueyejie`) VALUES
	(201, '2021-04-26 02:06:39', '前台账号1', '前台姓名1', '性别1', 1, 1),
	(202, '2021-04-26 02:06:39', '前台账号2', '前台姓名2', '性别2', 2, 2),
	(203, '2021-04-26 02:06:39', '前台账号3', '前台姓名3', '性别3', 3, 3),
	(204, '2021-04-26 02:06:39', '前台账号4', '前台姓名4', '性别4', 4, 4),
	(205, '2021-04-26 02:06:39', '前台账号5', '前台姓名5', '性别5', 5, 5),
	(206, '2021-04-26 02:06:39', '前台账号6', '前台姓名6', '性别6', 6, 6);

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 31, '技师1', 'jishi', '技师', 'vc4ajxgpw9ke8au0drlcaga4r9wp19i7', '2021-04-26 02:10:47', '2021-04-26 03:10:47'),
	(2, 41, '前台1', 'qiantai', '前台', 'vkxo8fww52puhcjtql87j0qgrsg2z6bj', '2021-04-26 02:12:08', '2021-04-26 03:12:09'),
	(3, 21, '会员1', 'huiyuan', '会员', 'dbn7jht2c3cekal0g5al0y46eafvs71j', '2021-04-26 02:13:28', '2021-04-26 03:13:28'),
	(4, 1, 'admin', 'users', '管理员', 'q4zoxtzod02yjz5usmrf59z9kiz815qu', '2024-01-20 04:10:10', '2024-01-20 05:10:11'),
	(5, 11, '普通用户1', 'putongyonghu', '普通用户', 'uk64haraczx07h3168fcegywl8o1hyar', '2024-01-20 04:14:45', '2024-01-20 05:14:46');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-26 02:06:39');

DROP TABLE IF EXISTS `xiaoliangxinxi`;
CREATE TABLE IF NOT EXISTS `xiaoliangxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meirongpinming` varchar(200) DEFAULT NULL COMMENT '美容品名',
  `xiaoshoushizhang` varchar(200) DEFAULT NULL COMMENT '销售时长',
  `xiaoshouliang` int DEFAULT NULL COMMENT '销售量',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 COMMENT='销量信息';

DELETE FROM `xiaoliangxinxi`;
INSERT INTO `xiaoliangxinxi` (`id`, `addtime`, `meirongpinming`, `xiaoshoushizhang`, `xiaoshouliang`, `leixing`, `zhaopian`) VALUES
	(101, '2021-04-26 02:06:39', '美容品名1', '销售时长1', 1, '类型1', 'http://localhost:8080/springbootsw863/upload/xiaoliangxinxi_zhaopian1.jpg'),
	(102, '2021-04-26 02:06:39', '美容品名2', '销售时长2', 2, '类型2', 'http://localhost:8080/springbootsw863/upload/xiaoliangxinxi_zhaopian2.jpg'),
	(103, '2021-04-26 02:06:39', '美容品名3', '销售时长3', 3, '类型3', 'http://localhost:8080/springbootsw863/upload/xiaoliangxinxi_zhaopian3.jpg'),
	(104, '2021-04-26 02:06:39', '美容品名4', '销售时长4', 4, '类型4', 'http://localhost:8080/springbootsw863/upload/xiaoliangxinxi_zhaopian4.jpg'),
	(105, '2021-04-26 02:06:39', '美容品名5', '销售时长5', 5, '类型5', 'http://localhost:8080/springbootsw863/upload/xiaoliangxinxi_zhaopian5.jpg'),
	(106, '2021-04-26 02:06:39', '美容品名6', '销售时长6', 6, '类型6', 'http://localhost:8080/springbootsw863/upload/xiaoliangxinxi_zhaopian6.jpg');

DROP TABLE IF EXISTS `yonghunianxiaofeixinxi`;
CREATE TABLE IF NOT EXISTS `yonghunianxiaofeixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianxiaofeie` int DEFAULT NULL COMMENT '年消费额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb3 COMMENT='用户年消费信息';

DELETE FROM `yonghunianxiaofeixinxi`;
INSERT INTO `yonghunianxiaofeixinxi` (`id`, `addtime`, `zhanghao`, `xingming`, `xingbie`, `nianxiaofeie`) VALUES
	(151, '2021-04-26 02:06:39', '账号1', '姓名1', '性别1', 1),
	(152, '2021-04-26 02:06:39', '账号2', '姓名2', '性别2', 2),
	(153, '2021-04-26 02:06:39', '账号3', '姓名3', '性别3', 3),
	(154, '2021-04-26 02:06:39', '账号4', '姓名4', '性别4', 4),
	(155, '2021-04-26 02:06:39', '账号5', '姓名5', '性别5', 5),
	(156, '2021-04-26 02:06:39', '账号6', '姓名6', '性别6', 6);

DROP TABLE IF EXISTS `yonghuyuexiaofeixinxi`;
CREATE TABLE IF NOT EXISTS `yonghuyuexiaofeixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yuexiaofeie` int DEFAULT NULL COMMENT '月消费额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb3 COMMENT='用户月消费信息';

DELETE FROM `yonghuyuexiaofeixinxi`;
INSERT INTO `yonghuyuexiaofeixinxi` (`id`, `addtime`, `zhanghao`, `xingming`, `xingbie`, `yuexiaofeie`) VALUES
	(141, '2021-04-26 02:06:39', '账号1', '姓名1', '性别1', 1),
	(142, '2021-04-26 02:06:39', '账号2', '姓名2', '性别2', 2),
	(143, '2021-04-26 02:06:39', '账号3', '姓名3', '性别3', 3),
	(144, '2021-04-26 02:06:39', '账号4', '姓名4', '性别4', 4),
	(145, '2021-04-26 02:06:39', '账号5', '姓名5', '性别5', 5),
	(146, '2021-04-26 02:06:39', '账号6', '姓名6', '性别6', 6);

DROP TABLE IF EXISTS `yonghuyuyuexinxi`;
CREATE TABLE IF NOT EXISTS `yonghuyuyuexinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `yuyuexiangqing` varchar(200) DEFAULT NULL COMMENT '预约详情',
  `zhidingjishi` varchar(200) DEFAULT NULL COMMENT '指定技师',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='用户预约信息';

DELETE FROM `yonghuyuyuexinxi`;
INSERT INTO `yonghuyuyuexinxi` (`id`, `addtime`, `xiangmumingcheng`, `zhanghao`, `xingming`, `shouji`, `zhaopian`, `yuyueshijian`, `yuyuexiangqing`, `zhidingjishi`, `sfsh`, `shhf`, `userid`) VALUES
	(71, '2021-04-26 02:06:39', '项目名称1', '账号1', '姓名1', '手机1', 'http://localhost:8080/springbootsw863/upload/yonghuyuyuexinxi_zhaopian1.jpg', '2021-04-26 10:06:39', '预约详情1', '指定技师1', '是', '', 1),
	(72, '2021-04-26 02:06:39', '项目名称2', '账号2', '姓名2', '手机2', 'http://localhost:8080/springbootsw863/upload/yonghuyuyuexinxi_zhaopian2.jpg', '2021-04-26 10:06:39', '预约详情2', '指定技师2', '是', '', 2),
	(73, '2021-04-26 02:06:39', '项目名称3', '账号3', '姓名3', '手机3', 'http://localhost:8080/springbootsw863/upload/yonghuyuyuexinxi_zhaopian3.jpg', '2021-04-26 10:06:39', '预约详情3', '指定技师3', '是', '', 3),
	(74, '2021-04-26 02:06:39', '项目名称4', '账号4', '姓名4', '手机4', 'http://localhost:8080/springbootsw863/upload/yonghuyuyuexinxi_zhaopian4.jpg', '2021-04-26 10:06:39', '预约详情4', '指定技师4', '是', '', 4),
	(75, '2021-04-26 02:06:39', '项目名称5', '账号5', '姓名5', '手机5', 'http://localhost:8080/springbootsw863/upload/yonghuyuyuexinxi_zhaopian5.jpg', '2021-04-26 10:06:39', '预约详情5', '指定技师5', '是', '', 5),
	(76, '2021-04-26 02:06:39', '项目名称6', '账号6', '姓名6', '手机6', 'http://localhost:8080/springbootsw863/upload/yonghuyuyuexinxi_zhaopian6.jpg', '2021-04-26 10:06:39', '预约详情6', '指定技师6', '是', '', 6);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

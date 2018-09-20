-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.47-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 nodeim 的数据库结构
CREATE DATABASE IF NOT EXISTS `nodeim` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `nodeim`;


-- 导出  表 nodeim.node_app 结构
CREATE TABLE IF NOT EXISTS `node_app` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `sys_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '系统ID',
  `app_id` varchar(32) NOT NULL COMMENT '应用ID',
  `app_secret` varchar(32) NOT NULL COMMENT '应用密钥',
  `title` varchar(32) NOT NULL COMMENT '应用名称',
  `is_queue_publish` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否支持队列发布消息',
  `is_save_msg` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否存储消息',
  `is_watch_quit` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否监听退出事件',
  `is_watch_delete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否监听删除消息',
  `is_able` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可用',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_app_id` (`app_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='NODE应用';

-- 正在导出表  nodeim.node_app 的数据：~6 rows (大约)
/*!40000 ALTER TABLE `node_app` DISABLE KEYS */;
INSERT INTO `node_app` (`aid`, `sys_id`, `app_id`, `app_secret`, `title`, `is_queue_publish`, `is_save_msg`, `is_watch_quit`, `is_watch_delete`, `is_able`, `update_time`) VALUES
	(1, 1, 'l8_mhpu4tgyp73q728sxqq23bdl5y4q0', 'aijz2e18atndm_owjvgxdm0h3k9y26i6', 'aa', 0, 0, 0, 0, 1, '2018-08-22 10:44:14'),
	(2, 1, '_nuipkpfp8xvpq52oaaw4tovbcnnqxhk', 'vfo6orgm7ayu4zzg1coyas6qonjmeqoz', 'bb', 1, 0, 1, 0, 1, '2018-08-31 09:03:06'),
	(4, 10, 'y8felt0ab6zctjgm2gqfj35i2ikzex2b', 'p58f5dqbf_5y7twsdxofrybmer70ralz', 'cc', 0, 1, 0, 1, 1, '2018-08-31 10:48:28'),
	(5, 100, '13i2nnkg1oqw0t834azn_tdsqnxm_iwb', 'ak17ecjxbie3065wiry0ux_cn8rs3k8l', 'DEMO演示', 0, 0, 0, 1, 1, '2018-09-07 11:28:07'),
	(6, 1, '92ty409iyambhtd7d6r4zfeksyqg06cl', 'szi20ajiu_roky3k3i538eltr_jzt2nx', 'dd', 0, 1, 1, 1, 1, '2018-09-10 06:33:17'),
	(7, 20, 'odk62jzeknpshtwbavcf96za9n5g9khp', '0g1jxoxyu21zq1js3d6gb6i57hlumhol', 'ee', 0, 0, 1, 0, 1, '2018-09-06 11:29:36');
/*!40000 ALTER TABLE `node_app` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-06-23 03:24:23
-- 服务器版本： 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zhihuiyuan`
--

-- --------------------------------------------------------

--
-- 表的结构 `new`
--

CREATE TABLE `new` (
  `id` int(10) NOT NULL,
  `classify` varchar(255) NOT NULL,
  `head` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `pay` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `come` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `cons` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `new`
--

INSERT INTO `new` (`id`, `classify`, `head`, `img`, `pay`, `class`, `come`, `adress`, `cons`, `time`, `name`) VALUES
(1, '园区动态', '市科委委员王建新市科委委员王建新', 'hyjdxq@3x.png', '', '', '', '', '面积大酒店少年黄飞鸿吃就看水电费污染费日说不定否二姑夫成都市那妇人', '2016/07/08 11:30', ''),
(2, '培训活动', 'PHP进阶学习培训', 'hyjdxq@3x.png', '4000', '软件类', '', '国际软件大厦<200m', '', '', ''),
(3, '社区新帖', '', 'hyjdxq@3x.png', '', '', '众创空间', '', '深圳实盘记录:从30万到百万之路', '2016/11/16 11.30', '宁静如水'),
(4, '优惠活动', '', '', '', '', '', '', '电视剧不成佛ID驾驶舱内到处电视剧不成佛ID驾驶舱内到处电视剧不成佛ID驾驶舱内到处', '', ''),
(5, '园区动态', '市科委委员王建新', 'hyjdxq@3x.png', '', '', '', '', '面积大酒店少年黄飞鸿吃就看水电费污染费日说不定否二姑夫成都市那妇人', '2016/07/08 11:30', '');

-- --------------------------------------------------------

--
-- 表的结构 `register`
--

CREATE TABLE `register` (
  `id` int(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `register`
--

INSERT INTO `register` (`id`, `phoneNumber`, `password`) VALUES
(2, '13012341234', '123456'),
(3, '13043214321', '123456'),
(4, '18612483406', '123456'),
(5, '123', '1'),
(6, '1', '12'),
(7, '13131257861', '55'),
(8, '1313125761', '2222222');

-- --------------------------------------------------------

--
-- 表的结构 `renwuzb`
--

CREATE TABLE `renwuzb` (
  `id` int(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `period` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `people` varchar(255) NOT NULL,
  `tele` varchar(255) NOT NULL,
  `timer` varchar(255) NOT NULL,
  `cons` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `renwuzb`
--

INSERT INTO `renwuzb` (`id`, `type`, `name`, `period`, `price`, `people`, `tele`, `timer`, `cons`) VALUES
(1, '软件开发', 'APP', '10', '100', '啊啊啊', '123', '21061212', '顿饭的餐具费v'),
(13, '软件开发', '12', '12', '12', '12', '112', 'Thu Jun 22 2017 10:31:03 GMT+0800 (CST)', '12'),
(21, 'VI/UI', 'gb', 'gb', 'gbbg', 'bg', 'bv', '2017/6/22', 'vbvc');

-- --------------------------------------------------------

--
-- 表的结构 `takePastime`
--

CREATE TABLE `takePastime` (
  `id` int(255) NOT NULL,
  `shopsName` varchar(255) CHARACTER SET utf32 NOT NULL,
  `shopsPhone` varchar(255) CHARACTER SET utf8 NOT NULL,
  `shopsAddress` varchar(255) CHARACTER SET utf8 NOT NULL,
  `shopsImg` varchar(255) NOT NULL,
  `usersImg` varchar(255) CHARACTER SET utf8 NOT NULL,
  `usersmonth` varchar(255) CHARACTER SET utf8 NOT NULL,
  `usersAdd` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `takePastime`
--

INSERT INTO `takePastime` (`id`, `shopsName`, `shopsPhone`, `shopsAddress`, `shopsImg`, `usersImg`, `usersmonth`, `usersAdd`) VALUES
(1, '蓝鸥科技', '010-8888888', '北京市昌平区立业路8号', 'caiping.png', '', '', ''),
(2, '孟祥控股', '010-88888888', '北京市中关村软件园', 'caiping.png', '', '', ''),
(3, '宁宁控股', '123333363332', '北京市天安门街道办事处', 'caiping.png', '', '', ''),
(4, '帆哥控股', '13221105928', '北京市垃圾场办事处', 'caiping.png', '', '', ''),
(5, '鹏飞控股', '13843838438', '北京市污水处理厂街道办事处', 'caiping.png', '', '', ''),
(6, '南阳控股', '14384381438', '北京市粪便处理厂街道办事处', 'caiping.png', '', '', ''),
(7, '32322222', '34323243', 'r44342354rj4424`', 'jiaolian.png', 'jiaolian.png', '30', '102');

-- --------------------------------------------------------

--
-- 表的结构 `taskpark`
--

CREATE TABLE `taskpark` (
  `id` int(255) NOT NULL,
  `taskname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `classify` varchar(255) CHARACTER SET utf8 NOT NULL,
  `companyname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` datetime NOT NULL,
  `cycle` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` int(255) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `claim` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `taskpark`
--

INSERT INTO `taskpark` (`id`, `taskname`, `classify`, `companyname`, `time`, `cycle`, `price`, `status`, `claim`, `img`) VALUES
(1, '微信商家管理', '软件开发', '瑞斯康达科技发展股份有限公司', '2017-03-20 09:12:00', '10天', 5000, '报名中', '项目周期:10天\r\n技能要求你:php,html\r\n倾向的接包方:不限\r\n需要接包方提供发票:不需要', 'taskPark/8social.png'),
(2, '网站美工UI', 'VI/UI', '瑞斯达科技发展股份有限公司', '2017-03-21 08:09:56', '3天', 1500, '报名中', '1. 调整我们网站的UI,我们能提供素材.\r\n2. 按开发规范完成工作,填写我每天的工作日志,汇报进展,我方将按任务完成情况进行验收.', 'taskPark/8social.png'),
(3, '影视信息咨询聚类网站开发', '软件开发', '北京华胜天成科技股份有限公司', '2017-03-20 09:12:00', '35天', 5000, '报名中', '项目周期:10天\r\n技能要求:快速开发能力,Python,php,java等\r\n倾向的接包方:不限\r\n需要接包方提供发票:不需要', ''),
(4, 'APP数据库开发', '软件开发', '北京华胜天成科技股份有限公司', '2017-03-20 09:12:00', '10天', 4000, '以结束', '需要1名满足本需求所述的高级开发工程师偶尔驻场开发', ''),
(5, '办公系统定制叮叮猫办公', '软件开发', '英业达集团北京电子技术有限公司', '2017-03-20 10:02:16', '一个月', 29000, '报名中', '软件模式:定制开发 成品购买 成品租赁\r\n架构: B/S\r\n应用平台:电脑端 移动端\r\n行业场景:物流 /运输/交通/地图/农/林/能源/环保/IT/物联网/ 医疗/卫生 生活/娱乐 机旅/酒店 机电/汽车 等\r\n开发语言:C# JavaScript node.js\r\n数据库:SQL Server', ''),
(6, '办公系统定制叮叮猫办公', '软件开发', '英业达集团北京电子技术有限公司', '2017-03-20 10:02:16', '一个月', 59200, '报名中', '软件模式:定制开发 成品购买 成品租赁\r\n架构: B/S\r\n应用平台:电脑端 移动端\r\n行业场景:物流 /运输/交通/地图/农/林/能源/环保/IT/物联网/ 医疗/卫生 生活/娱乐 机旅/酒店 机电/汽车 等\r\n开发语言:C# JavaScript node.js\r\n数据库:SQL Server', ''),
(7, '办公系统定制叮叮猫办公', '软件开发', '英业达集团北京电子技术有限公司', '2017-03-20 10:02:16', '三个月', 10800, '报名中', '软件模式:定制开发 成品购买 成品租赁\r\n架构: B/S\r\n应用平台:电脑端 移动端\r\n行业场景:物流 /运输/交通/地图/农/林/能源/环保/IT/物联网/ 医疗/卫生 生活/娱乐 机旅/酒店 机电/汽车 等\r\n开发语言:C# JavaScript node.js\r\n数据库:SQL Server', ''),
(8, '办公系统定制叮叮猫办公', '软件开发', '英业达集团北京电子技术有限公司', '2017-03-20 10:02:16', '两个月', 76200, '报名中', '软件模式:定制开发\r\n架构:B/S\r\n应用平台:电脑端\r\n行业场景: 政务/社区/房建/装饰 文化/教育 机旅/酒店', ''),
(9, '合同管理软件,合同管理软件开发', '软件开发', '英业大集团北京电子技术有限公司', '2017-03-20 10:02:16', '2个月', 15000, '报名中', '软件模式:定制开发 成品购买 成品租赁\r\n架构: B/S\r\n应用平台:电脑端 移动端\r\n行业场景:物流 /运输/交通/地图/农/林/能源/环保/IT/物联网/ 医疗/卫生 生活/娱乐 机旅/酒店 机电/汽车 批发/零售 工业/制造 等\r\n开发语言:C# JavaScript node.js\r\n数据库:SQL Server', ''),
(10, '旧网站更新,包括风格和内容', 'VI/UI', '腾讯公司', '2017-06-03 11:19:36', '12天', 6000, '报名中', '1.0 美工UI设计;要求有时代感和科技感.比较炫酷\r\n2.0 开发实现:主要功能是页面展示和跳转,没有后代交互和业务逻辑\r\n3. 大概有40个左右的页面,大部分都是重复的页面', ''),
(11, '企业网站建设公司UI定制开发制作设计手机端', 'VI/UI', '英业大集团北京电子技术有限公司', '2017-06-03 09:39:34', '7天', 3618, '报名中', '应用类型:整套设计', ''),
(12, '企业网站建设公司UI定制开发制作设计手机端', 'VI/UI', '英业大集团北京电子技术有限公司', '2017-06-03 09:39:34', '20天', 8000, '报名中', '开发语言:PHP ASP与.NET', ''),
(13, '企业网站建设公司UI定制开发制作设计手机端', 'VI/UI', '英业大集团北京电子技术有限公司', '2017-06-03 09:39:34', '1个月', 11800, '报名中', '行业:商业/零售/服务 企业/组织机构\r\n类型:VI设计(全套)', ''),
(14, 'APP数据库开发', '软件开发', '北京华胜天成科技股份有限公司', '2017-03-20 09:12:00', '10天', 4000, '以结束', '需要1名满足本需求所述的高级开发工程师偶尔驻场开发', ''),
(15, '办公系统定制叮叮猫办公', '软件开发', '英业达集团北京电子技术有限公司', '2017-03-20 10:02:16', '一个月', 29000, '报名中', '软件模式:定制开发 成品购买 成品租赁\r\n架构: B/S\r\n应用平台:电脑端 移动端\r\n行业场景:物流 /运输/交通/地图/农/林/能源/环保/IT/物联网/ 医疗/卫生 生活/娱乐 机旅/酒店 机电/汽车 等\r\n开发语言:C# JavaScript node.js\r\n数据库:SQL Server', ''),
(16, '办公系统定制叮叮猫办公', '软件开发', '英业达集团北京电子技术有限公司', '2017-03-20 10:02:16', '一个月', 59200, '报名中', '软件模式:定制开发 成品购买 成品租赁\r\n架构: B/S\r\n应用平台:电脑端 移动端\r\n行业场景:物流 /运输/交通/地图/农/林/能源/环保/IT/物联网/ 医疗/卫生 生活/娱乐 机旅/酒店 机电/汽车 等\r\n开发语言:C# JavaScript node.js\r\n数据库:SQL Server', ''),
(17, '办公系统定制叮叮猫办公', '软件开发', '英业达集团北京电子技术有限公司', '2017-03-20 10:02:16', '三个月', 10800, '报名中', '软件模式:定制开发 成品购买 成品租赁\r\n架构: B/S\r\n应用平台:电脑端 移动端\r\n行业场景:物流 /运输/交通/地图/农/林/能源/环保/IT/物联网/ 医疗/卫生 生活/娱乐 机旅/酒店 机电/汽车 等\r\n开发语言:C# JavaScript node.js\r\n数据库:SQL Server', ''),
(18, '办公系统定制叮叮猫办公', '软件开发', '英业达集团北京电子技术有限公司', '2017-03-20 10:02:16', '两个月', 76200, '报名中', '软件模式:定制开发\r\n架构:B/S\r\n应用平台:电脑端\r\n行业场景: 政务/社区/房建/装饰 文化/教育 机旅/酒店', ''),
(19, '合同管理软件,合同管理软件开发', '软件开发', '英业大集团北京电子技术有限公司', '2017-03-20 10:02:16', '2个月', 15000, '报名中', '软件模式:定制开发 成品购买 成品租赁\r\n架构: B/S\r\n应用平台:电脑端 移动端\r\n行业场景:物流 /运输/交通/地图/农/林/能源/环保/IT/物联网/ 医疗/卫生 生活/娱乐 机旅/酒店 机电/汽车 批发/零售 工业/制造 等\r\n开发语言:C# JavaScript node.js\r\n数据库:SQL Server', ''),
(20, '旧网站更新,包括风格和内容', 'VI/UI', '腾讯公司', '2017-06-03 11:19:36', '12天', 6000, '报名中', '1.0 美工UI设计;要求有时代感和科技感.比较炫酷\r\n2.0 开发实现:主要功能是页面展示和跳转,没有后代交互和业务逻辑\r\n3. 大概有40个左右的页面,大部分都是重复的页面', ''),
(21, '企业网站建设公司UI定制开发制作设计手机端', 'VI/UI', '英业大集团北京电子技术有限公司', '2017-06-03 09:39:34', '7天', 3618, '报名中', '应用类型:整套设计', ''),
(22, '企业网站建设公司UI定制开发制作设计手机端', 'VI/UI', '英业大集团北京电子技术有限公司', '2017-06-03 09:39:34', '20天', 8000, '报名中', '开发语言:PHP ASP与.NET', ''),
(23, '企业网站建设公司UI定制开发制作设计手机端', 'VI/UI', '英业大集团北京电子技术有限公司', '2017-06-03 09:39:34', '1个月', 11800, '报名中', '行业:商业/零售/服务 企业/组织机构\r\n类型:VI设计(全套)', ''),
(24, '企业形象全案设计/办公/应用设计', 'VI/UI', '英业达集团北京电子技术有限公司', '2017-03-21 08:09:56', '1天', 600, '报名中', '行业:日化/工业/服装/珠宝', '类型:VI设计'),
(25, 'app新闻类 app咨询类 新闻资讯类', '法务咨询', '英业达集团北京电子技术有限公司', '2017-03-20 10:24:16', '1个月', 29900, '报名中', '数据库:MySQL SQLite Microsoft SQL Server Microsoft Access\r\n提供驻地开发:是\r\n开发环境:Android ios\r\nAPP分类: 新闻咨询', ''),
(26, 'app新闻类 app咨询类 新闻资讯类', '法务咨询', '英业达集团北京电子技术有限公司', '2017-03-20 10:24:16', '1个月', 29900, '报名中', '报名中数据库:MySQL SQLite Microsoft SQL Server Microsoft Access\r\n提供驻地开发:是\r\n开发环境:Android ios\r\nAPP分类: 新闻咨询', ''),
(27, 'app新闻类 app咨询类 新闻资讯类', '法务咨询', '英业达集团北京电子技术有限公司', '2017-03-20 10:24:16', '1个月', 29900, '报名中', '数据库:MySQL SQLite Microsoft SQL Server Microsoft Access\r\n提供驻地开发:是\r\n开发环境:Android ios\r\nAPP分类: 新闻咨询', ''),
(28, 'app新闻类 app咨询类 新闻资讯类', '法务咨询', '英业达集团北京电子技术有限公司', '2017-03-20 10:24:16', '2个月', 29900, '报名中', '数据库:MySQL SQLite Microsoft SQL Server Microsoft Access\r\n提供驻地开发:是\r\n开发环境:Android ios\r\nAPP分类: 新闻咨询', ''),
(29, 'app新闻类 app咨询类 新闻资讯类', '法务咨询', '英业达集团北京电子技术有限公司', '2017-03-20 10:24:16', '2个月', 29900, '报名中', '数据库:MySQL SQLite Microsoft SQL Server Microsoft Access\r\n提供驻地开发:是\r\n开发环境:Android ios\r\nAPP分类: 新闻咨询', ''),
(30, 'app新闻类 app咨询类 新闻资讯类', '法务咨询', '英业达集团北京电子技术有限公司', '2017-03-20 10:24:16', '1个月', 29900, '报名中', '数据库:MySQL SQLite Microsoft SQL Server Microsoft Access\r\n提供驻地开发:是\r\n开发环境:Android ios\r\nAPP分类: 新闻咨询', ''),
(31, 'app新闻类 app咨询类 新闻资讯类', '英业达集团北京电子技术有限公司', '英业达集团北京电子技术有限公司', '2017-03-20 10:24:16', '1个月', 18000, '数据库:MySQL SQLite Microsoft SQL Server Microsoft Access\r\n提供驻地开发:是\r\n开发环境:Android ios\r\nAPP分类: 新闻咨询', '数据库:MySQL SQLite Microsoft SQL Server Microsoft Access\r\n提供驻地开发:是\r\n开发环境:Android ios\r\nAPP分类: 新闻咨询', ''),
(32, '产品数据后台管理', '网站开发', '北京华胜天成科技股份有限公司', '2017-03-22 09:39:34', '30天', 6000, '报名中', '1.0 商品数据包ftp管理(增加,修改,删除,下载权限控制)\r\n2.0 工厂、经销商管理（互相管理管理，产品数据包权限控制）\r\n3.0 用户权限管理。{不同用户登录高功能，不同用户级别可下载数据包范围控制）\r\n', ''),
(33, '对网站项目做长期持续的维护和开发', '网站开发', '北京华胜天成科技股份有限公司', '2017-06-03 09:39:34', '20天', 2000, '报名中', '现有一个基于php的web网站和两个基于nod.js的网站需要长期维护，比如集成设计账号登录，自动发送邮件，运营后台功能该井等等。需要找一个洞html css js php nodejs mysqli 的工程师长期合作，注意是长期合作，可能是几年哦。如果会java 运维就更棒了！', ''),
(34, '网站优化', '网站开发', '腾讯公司', '2017-03-20 11:13:32', '10天', 2000, '报名中', '界面已经N多年没有更新了 改下版 要求华丽 简洁大气即可', ''),
(35, '网站后台会员管理系统开发', '网站开发', '文思海辉技术有限公司', '2017-03-20 11:13:32', '2月', 18000, '报名中', '1.0 语言PHP5.2以上\r\n2.0 项目计划\r\n3.0 概要设计\r\n4.0 详细设计\r\n5.0 系统平台源码交付', ''),
(36, '大学生创业园数字门户平台', '网站开发', '北京君正集成电路股份有限公司', '2017-03-20 11:13:32', '10个月', 15000000, '报名中', '', ''),
(37, '移动端红包发放系统', '微信应用', '瑞斯康达科技发展股份有限公司', '2017-03-20 11:13:32', '8天', 8000, '报名中', '主要分为4大块：\r\n用户拆红包：约3个页面，红包金额后台计算表后，抽中即下发到用户账户，分享提示静态页；\r\n用户前台页面：包括个人钱包页，红包明细记录展示、余额下发（微信支付）、全部任务列表等商家发布活动页：自定义文本内容的填写、活动图片的上传、红包的设置 活动页预览、红包金额支付（微信支付）、前台身份判定后，可以查活动明细（参与人数、剩余金额、发放记录、活动下架、退款、删除等）', ''),
(38, '前端美工', '微信应用', '亚信科技（中国）有限公司', '2017-03-20 11:13:32', '1天', 200, '报名中', 'H5页面，主要运用于微信平台，App等移动端\r\n【人员要求】\r\n不限地区，有丰富经验，需要长期合作，人员暂定3个。\r\n【交付要求】\r\n使用SVN提交静态页面，工资按项目结，或者按月结', ''),
(39, 'App开发，安卓和ios', '移动开发', '瑞斯康达科技发展股份有限公司', '2017-03-20 11:13:32', '30天', 15000, '以报名', '【业务需要】\r\n聊天设计应用，对界面开发比较熟练。\r\n【人员要求】\r\n安卓或ios开发都需要，3年以上开发经验\r\n【交付要求】\r\n按天计算佣金500每天', ''),
(40, 'OCR识别功能', '移动开发', '北京华胜天成科技股份有限公司', '2017-03-22 14:22:11', '45天', 5000, '已结束', '需要在Android手机上实现OCR识别功能；\r\n识别的是手机即使拍摄的电脑屏幕（照片），然后从照片上的内容识别出其中的（中文）文字；\r\n识别准确率必须在95%以上。', ''),
(41, 'Android移动开发', '移动开发', '亚信科技（中国）有限公司', '2017-03-23 13:41:25', '30天', 18000, '报名中', '协助Android工程师进行App开发，负责其中两个模块的开发', ''),
(42, '', '', '', '0000-00-00 00:00:00', '', 0, '', '', ''),
(43, '企业形象全案设计/办公/应用设计', 'VI/UI', '英业达集团北京电子技术有限公司', '2017-03-21 08:09:56', '1天', 600, '报名中', '行业:日化/工业/服装/珠宝', '类型:VI设计'),
(44, 'app新闻类 app咨询类 新闻资讯类', '法务咨询', '英业达集团北京电子技术有限公司', '2017-03-20 10:24:16', '1个月', 29900, '报名中', '数据库:MySQL SQLite Microsoft SQL Server Microsoft Access\r\n提供驻地开发:是\r\n开发环境:Android ios\r\nAPP分类: 新闻咨询', ''),
(45, 'app新闻类 app咨询类 新闻资讯类', '法务咨询', '英业达集团北京电子技术有限公司', '2017-03-20 10:24:16', '1个月', 29900, '报名中', '报名中数据库:MySQL SQLite Microsoft SQL Server Microsoft Access\r\n提供驻地开发:是\r\n开发环境:Android ios\r\nAPP分类: 新闻咨询', ''),
(46, 'app新闻类 app咨询类 新闻资讯类', '法务咨询', '英业达集团北京电子技术有限公司', '2017-03-20 10:24:16', '1个月', 29900, '报名中', '数据库:MySQL SQLite Microsoft SQL Server Microsoft Access\r\n提供驻地开发:是\r\n开发环境:Android ios\r\nAPP分类: 新闻咨询', ''),
(47, 'app新闻类 app咨询类 新闻资讯类', '法务咨询', '英业达集团北京电子技术有限公司', '2017-03-20 10:24:16', '2个月', 29900, '报名中', '数据库:MySQL SQLite Microsoft SQL Server Microsoft Access\r\n提供驻地开发:是\r\n开发环境:Android ios\r\nAPP分类: 新闻咨询', ''),
(48, 'app新闻类 app咨询类 新闻资讯类', '法务咨询', '英业达集团北京电子技术有限公司', '2017-03-20 10:24:16', '2个月', 29900, '报名中', '数据库:MySQL SQLite Microsoft SQL Server Microsoft Access\r\n提供驻地开发:是\r\n开发环境:Android ios\r\nAPP分类: 新闻咨询', ''),
(49, 'app新闻类 app咨询类 新闻资讯类', '法务咨询', '英业达集团北京电子技术有限公司', '2017-03-20 10:24:16', '1个月', 29900, '报名中', '数据库:MySQL SQLite Microsoft SQL Server Microsoft Access\r\n提供驻地开发:是\r\n开发环境:Android ios\r\nAPP分类: 新闻咨询', ''),
(50, 'app新闻类 app咨询类 新闻资讯类', '英业达集团北京电子技术有限公司', '英业达集团北京电子技术有限公司', '2017-03-20 10:24:16', '1个月', 18000, '数据库:MySQL SQLite Microsoft SQL Server Microsoft Access\r\n提供驻地开发:是\r\n开发环境:Android ios\r\nAPP分类: 新闻咨询', '数据库:MySQL SQLite Microsoft SQL Server Microsoft Access\r\n提供驻地开发:是\r\n开发环境:Android ios\r\nAPP分类: 新闻咨询', ''),
(51, '产品数据后台管理', '网站开发', '北京华胜天成科技股份有限公司', '2017-03-22 09:39:34', '30天', 6000, '报名中', '1.0 商品数据包ftp管理(增加,修改,删除,下载权限控制)\r\n2.0 工厂、经销商管理（互相管理管理，产品数据包权限控制）\r\n3.0 用户权限管理。{不同用户登录高功能，不同用户级别可下载数据包范围控制）\r\n', ''),
(52, '对网站项目做长期持续的维护和开发', '网站开发', '北京华胜天成科技股份有限公司', '2017-06-03 09:39:34', '20天', 2000, '报名中', '现有一个基于php的web网站和两个基于nod.js的网站需要长期维护，比如集成设计账号登录，自动发送邮件，运营后台功能该井等等。需要找一个洞html css js php nodejs mysqli 的工程师长期合作，注意是长期合作，可能是几年哦。如果会java 运维就更棒了！', ''),
(53, '网站优化', '网站开发', '腾讯公司', '2017-03-20 11:13:32', '10天', 2000, '报名中', '界面已经N多年没有更新了 改下版 要求华丽 简洁大气即可', ''),
(54, '网站后台会员管理系统开发', '网站开发', '文思海辉技术有限公司', '2017-03-20 11:13:32', '2月', 18000, '报名中', '1.0 语言PHP5.2以上\r\n2.0 项目计划\r\n3.0 概要设计\r\n4.0 详细设计\r\n5.0 系统平台源码交付', ''),
(55, '大学生创业园数字门户平台', '网站开发', '北京君正集成电路股份有限公司', '2017-03-20 11:13:32', '10个月', 15000000, '报名中', '', ''),
(56, '移动端红包发放系统', '微信应用', '瑞斯康达科技发展股份有限公司', '2017-03-20 11:13:32', '8天', 8000, '报名中', '主要分为4大块：\r\n用户拆红包：约3个页面，红包金额后台计算表后，抽中即下发到用户账户，分享提示静态页；\r\n用户前台页面：包括个人钱包页，红包明细记录展示、余额下发（微信支付）、全部任务列表等商家发布活动页：自定义文本内容的填写、活动图片的上传、红包的设置 活动页预览、红包金额支付（微信支付）、前台身份判定后，可以查活动明细（参与人数、剩余金额、发放记录、活动下架、退款、删除等）', ''),
(57, '前端美工', '微信应用', '亚信科技（中国）有限公司', '2017-03-20 11:13:32', '1天', 200, '报名中', 'H5页面，主要运用于微信平台，App等移动端\r\n【人员要求】\r\n不限地区，有丰富经验，需要长期合作，人员暂定3个。\r\n【交付要求】\r\n使用SVN提交静态页面，工资按项目结，或者按月结', ''),
(58, 'App开发，安卓和ios', '移动开发', '瑞斯康达科技发展股份有限公司', '2017-03-20 11:13:32', '30天', 15000, '以报名', '【业务需要】\r\n聊天设计应用，对界面开发比较熟练。\r\n【人员要求】\r\n安卓或ios开发都需要，3年以上开发经验\r\n【交付要求】\r\n按天计算佣金500每天', ''),
(59, 'OCR识别功能', '移动开发', '北京华胜天成科技股份有限公司', '2017-03-22 14:22:11', '45天', 5000, '已结束', '需要在Android手机上实现OCR识别功能；\r\n识别的是手机即使拍摄的电脑屏幕（照片），然后从照片上的内容识别出其中的（中文）文字；\r\n识别准确率必须在95%以上。', ''),
(60, 'Android移动开发', '移动开发', '亚信科技（中国）有限公司', '2017-03-23 13:41:25', '30天', 18000, '报名中', '协助Android工程师进行App开发，负责其中两个模块的开发', ''),
(61, '', '', '', '0000-00-00 00:00:00', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `washclothes`
--

CREATE TABLE `washclothes` (
  `id` int(255) NOT NULL,
  `classfiy` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `clothname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `discount` decimal(10,1) NOT NULL,
  `pirce` decimal(10,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `washclothes`
--

INSERT INTO `washclothes` (`id`, `classfiy`, `img`, `clothname`, `discount`, `pirce`) VALUES
(1, '上衣类', 'shangyi7.png', '真丝衬衫', '28.0', '28.0'),
(2, '上衣类', 'shangyi1.png', '西装上衣', '25.0', '25.0'),
(3, '上衣类', 'shangyi2.png', '夹克', '25.0', '25.0'),
(4, '上衣类', 'shangyi3.png', '衬衫', '17.0', '17.0'),
(5, '上衣类', 'shangyi4.png', '毛衣', '25.0', '25.0'),
(6, '上衣类', 'shangyi5.png', '羊毛（绒）衬衫', '25.0', '25.0'),
(7, '上衣类', 'shangyi6.png', '运动休闲上衣', '25.0', '25.0'),
(8, '上衣类', 'shangyi8.png', '文衬衫', '25.0', '25.0'),
(9, '上衣类', 'shangyi9.png', 'T侐衫', '17.0', '17.0'),
(10, '上衣类', 'shangyi10.png', '真丝西装上衣', '38.0', '38.0'),
(11, '上衣类', 'shnagyi12.png', '女生短袖衫', '17.0', '17.0'),
(12, '裙子类', 'qunzi1.png', '连衣裙', '38.0', '38.0'),
(13, '裙子类', 'qunzi2.png', '短裙', '17.0', '17.0'),
(14, '裙子类', 'qunzi3.png', '晚礼服裙', '120.0', '120.0'),
(15, '裙子类', 'qunzi4.png', '百褶裙裙（长）', '48.0', '48.0'),
(16, '裙子类', 'qunzi5.png', '长短裙', '32.0', '32.0'),
(17, '裙子类', 'qunzi6.png', '旗袍（短）', '68.0', '68.0'),
(18, '裙子类', 'qunzi1.png', '连衣裙', '38.0', '38.0'),
(19, '裙子类', 'qunzi2.png', '短裙', '17.0', '17.0'),
(20, '裙子类', 'qunzi3.png', '晚礼服裙', '120.0', '120.0'),
(21, '裙子类', 'qunzi4.png', '百褶裙裙（长）', '48.0', '48.0'),
(22, '裙子类', 'qunzi5.png', '长短裙', '32.0', '32.0'),
(23, '裙子类', 'qunzi6.png', '旗袍（短）', '68.0', '68.0'),
(24, '裤子', 'kuzi1.png', '真丝短裙', '20.0', '20.0'),
(25, '裤子', 'kuzi2.png', '真丝库', '28.0', '28.0'),
(26, '裤子', 'kuzi3.png', '牛仔裤', '17.0', '17.0'),
(27, '裤子', 'kuzi4.png', '运动/休闲裤', '17.0', '17.0'),
(28, '裤子', 'kuzi5.png', '西短裤', '14.0', '14.0'),
(29, '裤子', 'kuzi6.png', '棉毛裤', '32.0', '32.0'),
(30, '小件类', 'xiaojian1.png', '领带', '17.0', '17.0'),
(31, '小件类', 'xiaojian2.png', '围巾', '12.0', '12.0'),
(32, '小件类', 'xiaojian3.png', '袜子', '10.0', '10.0'),
(33, '小件类', 'xiaojian4.png', '内衣', '10.0', '10.0'),
(34, '小件类', 'xiaojian5.png', '手帕', '10.0', '10.0'),
(35, '小件类', 'xiaojian6.png', '拉杆箱', '100.0', '100.0'),
(36, '小件类', 'xiaojian7.png', '手套', '10.0', '10.0'),
(37, '小件类', 'xiaojian8.png', '鞋', '40.0', '40.0'),
(38, '裤子', 'kuzi1.png', '真丝短裙', '20.0', '20.0'),
(39, '裤子', 'kuzi2.png', '真丝库', '28.0', '28.0'),
(40, '裤子', 'kuzi3.png', '牛仔裤', '17.0', '17.0'),
(41, '裤子', 'kuzi4.png', '运动/休闲裤', '17.0', '17.0'),
(42, '裤子', 'kuzi5.png', '西短裤', '14.0', '14.0'),
(43, '裤子', 'kuzi6.png', '棉毛裤', '32.0', '32.0'),
(44, '小件类', 'xiaojian1.png', '领带', '17.0', '17.0'),
(45, '小件类', 'xiaojian2.png', '围巾', '12.0', '12.0'),
(46, '小件类', 'xiaojian3.png', '袜子', '10.0', '10.0'),
(47, '小件类', 'xiaojian4.png', '内衣', '10.0', '10.0'),
(48, '小件类', 'xiaojian5.png', '手帕', '10.0', '10.0'),
(49, '小件类', 'xiaojian6.png', '拉杆箱', '100.0', '100.0'),
(50, '小件类', 'xiaojian7.png', '手套', '10.0', '10.0'),
(51, '小件类', 'xiaojian8.png', '鞋', '40.0', '40.0'),
(52, '皮衣类', 'piyi1.png', '普通皮短大衣', '156.0', '180.0'),
(53, '皮衣类', 'piyi2.png', '绒面皮短大衣', '185.0', '200.0'),
(54, '皮衣类', 'piyi3.png', '苯胺革短大衣', '232.0', '250.0'),
(55, '皮衣类', 'piyi4.png', '磨砂皮短大衣', '238.0', '260.0'),
(56, '皮衣类', 'piyi5.png', '羊剪绒短大衣', '266.0', '280.0'),
(57, '皮衣类', 'piyi6.png', '裘皮短大衣', '396.0', '420.0'),
(58, '皮衣类', 'piyi1.png', '普通皮短大衣', '156.0', '180.0'),
(59, '皮衣类', 'piyi2.png', '绒面皮短大衣', '185.0', '200.0'),
(60, '皮衣类', 'piyi3.png', '苯胺革短大衣', '232.0', '250.0'),
(61, '皮衣类', 'piyi4.png', '磨砂皮短大衣', '238.0', '260.0'),
(62, '皮衣类', 'piyi5.png', '羊剪绒短大衣', '266.0', '280.0'),
(63, '皮衣类', 'piyi6.png', '裘皮短大衣', '396.0', '420.0'),
(64, '特殊类', 'teshu1.png', '民族特色服装', '100.0', '100.0'),
(65, '特殊类', 'teshu2.png', '舞台服装', '200.0', '200.0'),
(66, '特殊类', 'teshu3.png', '毛领', '30.0', '35.0'),
(67, '特殊类', 'teshu4.png', '婚纱', '200.0', '200.0'),
(68, '特殊类', 'teshu5.png', '羊毛坐垫', '100.0', '100.0'),
(69, '特殊类', 'teshu6.png', '小羊剪绒坐垫', '40.0', '40.0'),
(70, '特殊类', 'teshu1.png', '民族特色服装', '100.0', '100.0'),
(71, '特殊类', 'teshu2.png', '舞台服装', '200.0', '200.0'),
(72, '特殊类', 'teshu3.png', '毛领', '30.0', '35.0'),
(73, '特殊类', 'teshu4.png', '婚纱', '200.0', '200.0'),
(74, '特殊类', 'teshu5.png', '羊毛坐垫', '100.0', '100.0'),
(75, '特殊类', 'teshu6.png', '小羊剪绒坐垫', '40.0', '40.0'),
(76, '卧位类', 'wowei1.png', '双人被', '88.0', '88.0'),
(77, '卧位类', 'wowei2.png', '包', '10.0', '12.0'),
(78, '卧位类', 'wowei9.png', ' 床单（单）', '28.0', '28.0'),
(79, '卧位类', 'wowei4.png', '浴巾', '22.0', '22.0'),
(80, '卧位类', 'wowei5.png', '枕套/枕巾', '10.0', '10.0'),
(81, '卧位类', 'wowei6.png', '浴袍', '32.0', '32.0'),
(82, '卧位类', 'wowei7.png', '床单（双）', '48.0', '48.0'),
(83, '卧位类', 'wowei8.png', '被罩', '58.0', '58.0'),
(0, '', '', '', '0.0', '0.0'),
(84, '家居类', 'jiaju1.png', '亚麻汽车坐垫', '28.0', '30.0'),
(85, '家居类', 'jiaju2.png', '汽车座套', '90.0', '90.0'),
(86, '家居类', 'jiaju3.png', '汽车坐垫', '28.0', '28.0'),
(87, '家居类', 'jiaju4.png', '沙发靠垫', '22.0', '22.0'),
(88, '家居类', 'jiaju5.png', '小毛绒玩具', '38.0', '40.0'),
(89, '外套类', 'waitao1.png', '毛尼外套', '38.0', '50.0'),
(90, '外套类', 'waitao2.png', '羽绒（棉）大衣', '68.0', '68.0'),
(89, '外套类', 'waitao1.png', '毛尼外套', '38.0', '50.0'),
(90, '外套类', 'waitao2.png', '羽绒（棉）大衣', '68.0', '68.0'),
(91, '外套类', 'waitao3.png', '羊绒外套', '48.0', '48.0'),
(92, '外套类', 'waitao4.png', '皮毛里（短）', '80.0', '80.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `new`
--
ALTER TABLE `new`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `renwuzb`
--
ALTER TABLE `renwuzb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `takePastime`
--
ALTER TABLE `takePastime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taskpark`
--
ALTER TABLE `taskpark`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `new`
--
ALTER TABLE `new`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `register`
--
ALTER TABLE `register`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `renwuzb`
--
ALTER TABLE `renwuzb`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- 使用表AUTO_INCREMENT `takePastime`
--
ALTER TABLE `takePastime`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `taskpark`
--
ALTER TABLE `taskpark`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

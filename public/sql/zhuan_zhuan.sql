SET NAMES UTF8;
DROP DATABASE IF EXISTS zhuan_zhuan;
CREATE DATABASE zhuan_zhuan  CHARSET=UTF8;
USE zhuan_zhuan;
#创建存储，页面的商标版权的信息表
CREATE TABLE zhuan_xinxi(
	xid int PRIMARY KEY AUTO_INCREMENT,
	img VARCHAR(30),
	jieshao VARCHAR(100)
);
INSERT INTO zhuan_xinxi VALUES(1,'图片路径','转转二手交易网-一个帮你赚钱的网站');
INSERT INTO zhuan_xinxi VALUES(NULL,'图片路径','每年帮助超过1000万用户卖出宝贝');
INSERT INTO zhuan_xinxi VALUES(NULL,'图片路径','北京转转精神科技有限责任公司 联系我们 微信服务号：转转');
INSERT INTO zhuan_xinxi VALUES(NULL,'图片路径','Copyright 2015-2018 zhuanzhuan.com All Right Reserved');
INSERT INTO zhuan_xinxi VALUES(NULL,'图片路径','违法信息举报：jubao@zhuanzhuan.com');
INSERT INTO zhuan_xinxi VALUES(NULL,'图片路径','增值电信业务经营许可证：京B2-20180057');
INSERT INTO zhuan_xinxi VALUES(NULL,'图片路径','京公网备11010502034724号');
INSERT INTO zhuan_xinxi VALUES(NULL,'图片路径','违法不良信息举报电话：（010）83416704');
INSERT INTO zhuan_xinxi VALUES(NULL,'图片路径','网络食品销售第三方平台提供者备案：京食药网食备201810024号');
INSERT INTO zhuan_xinxi VALUES(NULL,'图片路径','出版物经营许可证：新出发京零字第海180144号');
INSERT INTO zhuan_xinxi VALUES(NULL,'图片路径','广播电视节目制作经营许可证（京）字第11824号');
INSERT INTO zhuan_xinxi VALUES(NULL,'图片路径','北京转转精神科技有限责任公司营业执照');


#创建用户登陆、注册表
CREATE TABLE zhuan_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(18) NOT NULL UNIQUE,
	upwd VARCHAR(18) NOT NULL,
	email VARCHAR(18) NOT NULL UNIQUE,
	phone VARCHAR(11) NOT NULL UNIQUE
);
INSERT INTO zhuan_user VALUES(1,'dingding','123456','78qq.co','182118599');
INSERT INTO zhuan_user VALUES(NULL,'tingting','1234569','963qq.com','82118599');
INSERT INTO zhuan_user VALUES(NULL,'tangtang','14459','77qq.com','8211899');
INSERT INTO zhuan_user VALUES(NULL,'wangwang','18834569','55qq.com','11859889');


#创建存储头部导航的表
CREATE TABLE zhuan_tou(
	tname VARCHAR(10) NOT NULL UNIQUE,
	touurl  VARCHAR(50) NOT NULL
);
INSERT INTO zhuan_tou VALUES('下载APP','a标签的跳转路径');
INSERT INTO zhuan_tou VALUES('|转转小程序','a标签的跳转路径');
INSERT INTO zhuan_tou VALUES('|转转公众号','a标签的跳转路径');
INSERT INTO zhuan_tou VALUES('|联系我们','a标签的跳转路径');
INSERT INTO zhuan_tou VALUES('|转转游戏','a标签的跳转路径');
INSERT INTO zhuan_tou VALUES('平台规则','a标签的跳转路径');

#创建转转什么都能买的轮播图表
CREATE TABLE zhuan_what(
	bgimg VARCHAR(50),
	img   VARCHAR(50),
	text  VARCHAR(50),
	aurl  VARCHAR(50)
);
INSERT INTO zhuan_what VALUES('轮播背景图路径','主图图片路径','电脑换了卖了赚1000','a标签的跳转路径');
INSERT INTO zhuan_what VALUES('轮播背景图路径','主图图片路径','手机换了卖了赚600','a标签的跳转路径');
INSERT INTO zhuan_what VALUES('轮播背景图路径','主图图片路径','沙发换了卖了赚2000','a标签的跳转路径');
INSERT INTO zhuan_what VALUES('轮播背景图路径','主图图片路径','化妆品换了卖了赚100','a标签的跳转路径');
INSERT INTO zhuan_what VALUES('轮播背景图路径','主图图片路径','衣服换了卖了赚800','a标签的跳转路径');
INSERT INTO zhuan_what VALUES('轮播背景图路径','主图图片路径','孩子长快了换了卖了赚200','a标签的跳转路径');

#创建转转 我现在就要买轮播表
CREATE TABLE zhuan_mai(
	touxiang VARCHAR(20),
	name		VARCHAR(10),
	miaoshu	VARCHAR(50),
	pinglun	VARCHAR(60) NOT NULL
);
INSERT INTO zhuan_mai VALUES('头像路径','没刘海的妹子','卖了金立手机赚1000','买家人品很好，不错');
INSERT INTO zhuan_mai VALUES('头像路径','问题金柜','卖了溜冰鞋200','买家人品很好，不错');
INSERT INTO zhuan_mai VALUES('头像路径','七里香772','卖了书本赚89','买家人品很好，不错');
INSERT INTO zhuan_mai VALUES('头像路径','我叫珊珊','卖了耐克运动鞋600','快递发的很快，很喜欢');
INSERT INTO zhuan_mai VALUES('头像路径','忘情水','卖了二手电脑赚500','买家人品很好，不错');



#创建转转 专业团队介绍表
CREATE TABLE zhuan_tuan(
	turl VARCHAR(40),
	biaoti VARCHAR(5),
	jieshao VARCHAR(20)
);
INSERT INTO zhuan_tuan VALUES('图片路径','腾讯投资','微信支付 平台担保交易');
INSERT INTO zhuan_tuan VALUES('图片路径','转转&富士康','联合制定手机权威质检标准');
INSERT INTO zhuan_tuan VALUES('图片路径','真是个人','各项实名认证 层层把关');
INSERT INTO zhuan_tuan VALUES('图片路径','帮你卖','海量竞拍 帮你卖高价');

#创建重新定义二手手机表
CREATE TABLE zhuan_phone(
	img				VARCHAR(50),
	touxiang	VARCHAR(50) NOT NULL,
	name			VARCHAR(12) NOT NULL,
	jieshao		VARCHAR(50)
);
INSERT INTO zhuan_phone VALUES('左边的图片','头像','风清扬','质量很好，评测很精准');
INSERT INTO zhuan_phone VALUES('左边的图片','头像','王者之风','质量很好，评测很精准');
INSERT INTO zhuan_phone VALUES('左边的图片','头像','天天吃鸡','质量很好，评测很精准');
INSERT INTO zhuan_phone VALUES('左边的图片','头像','你男友不是对手','质量很好，评测很精准');

#创建什么都能卖表
CREATE TABLE  zhuan_biao(
	tupian	VARCHAR(50),
	utouxiang	VARCHAR(50),
	wangming	VARCHAR(30),
	jiage   DECIMAL(6,2)
);
INSERT INTO zhuan_biao VALUES('商品图片路径','头像路径','你男友不是对手','1280');
INSERT INTO zhuan_biao VALUES('商品图片路径','头像路径','坑断肠','3306');
INSERT INTO zhuan_biao VALUES('商品图片路径','头像路径','无与伦比','500');
INSERT INTO zhuan_biao VALUES('商品图片路径','头像路径','成王败寇','9000');
INSERT INTO zhuan_biao VALUES('商品图片路径','头像路径','空白格','1200');

#创建最有兴趣的人都在转转表
CREATE TABLE zhuan_youqu(
	benimg	VARCHAR(50),
	wangming	VARCHAR(10),
	quanzhu		VARCHAR(20)
);
INSERT INTO zhuan_youqu VALUES('本人照片的路径','灰太狼何时能吃到羊','果粉圈圈主');
INSERT INTO zhuan_youqu VALUES('本人照片的路径','形象顾问拉拉','海贼王圈圈主');
INSERT INTO zhuan_youqu VALUES('本人照片的路径','酸辣粉太酸','汉服圈圈主');
INSERT INTO zhuan_youqu VALUES('本人照片的路径','保温杯是黑色','翡翠圈圈主');
INSERT INTO zhuan_youqu VALUES('本人照片的路径','学子只到','小米圈圈主');
INSERT INTO zhuan_youqu VALUES('本人照片的路径','我哭了','二次元圈圈主');
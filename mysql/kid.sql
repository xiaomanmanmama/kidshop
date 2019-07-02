SET NAMES UTF8;
DROP DATABASE IF EXISTS kid;
CREATE DATABASE kid CHARSET=UTF8;
USE kid;
#网站的基本信息
CREATE TABLE kid_site_info(
	site_name VARCHAR(16),
	logo VARCHAR(64),
	copyright VARCHAR(64)
);
INSERT INTO kid_site_info VALUES("Colorful World","img.png","copyright");
#导航条目
#轮播图
#商品列表
#用户列表
CREATE TABLE kid_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(18),
	upwd  VARCHAR(32),
	email VARCHAR(64),
	phone CHAR(11),
	sex   INT
);
INSERT INTO kid_user VALUES("1","zhouhaiyuan","123456","789216994@qq.com","18321935976","1"),
("NULL","Tom","zbcdfg","257931684@qq.com","19916755231","1"),
("NULL","July","888888","258941365@qq.com","16052311236","0"),
("NULL","Lily","15936.","123698123@qq.com","16021388564","0"),
("NULL","hanmeimei","ab11.9","569781236@qq.com","13960233214","0"),
("NULL","lilei","5891hg","695412369@qq.com","13914669523","1"),
("NULL","Summer","mki268","125974561@qq.com","15822366987","0"),
("NULL","superstar","qof986","654198723@qq.com","18236554120","1"),
("NULL","Kevin","12589k","159763246@qq.com","16684512620","1"),
("NULL","Peter","26fhwv","365479921@qq.com","13914523210","1"),
("NULL","Abel","klf289","584321697@qq.com","19912385649","0"),
("NULL","Vicky","ki45ge","695412369@qq.com","17702345690","0"),
("NULL","Adam","kkd966","123698453@qq.com","18321932169","1"),
("NULL","Kayla","654321","159874562@qq.com","18323691238","1"),
("NULL","Cassie","12973d","598712649@qq.com","19902368941","0"),
("NULL","Helen","203dge","598123694@qq.com","13690246851","0");



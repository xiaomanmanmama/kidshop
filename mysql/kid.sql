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
CREATE TABLE kid_navigation(
	name VARCHAR(16),
	url  VARCHAR(64),
	title VARCHAR(32)
);
INSERT INTO kid_site_info VALUES("夏季上新","image/dh.jpg","五彩的夏装"),
("春秋款","image/dh.jpg","习习的凉风"),
("热卖款","image/dh.jpg","大家都喜欢"),
("家具服套装","image/dh.jpg","给孩子舒服的感觉"),
("男童专区","image/dh.jpg","帅气的孩子"),
("女童专区","image/dh.jpg","美美的公主");

#轮播图
CREATE TABLE kid_carousel(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	pic VARCHAR(128),
	url VARCHAR(128),
	title VARCHAR(32)
);
INSERT INTO kid_carousel VALUES("NULL","image/pic_1.jpg","/m1.html","清凉夏日"),
("NULL","image/pic_2.jpg","/m1.htm2","公主梦"),
("NULL","image/pic_3.jpg","/m1.htm3","蓝蓝的大海");
#收货地址信息
CREATE TABLE kid_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(18),          #用户名称
  receiver VARCHAR(16),       #接收人姓名
  province VARCHAR(16),       #省
  city VARCHAR(16),           #市
  county VARCHAR(16),         #县
  address VARCHAR(128),       #详细地址
  cellphone VARCHAR(16),      #手机
  postcode CHAR(6),           #邮编
  tag VARCHAR(16),            #标签名
  is_default BOOLEAN          #是否为当前用户的默认收货地址
);

#购物车条目
CREATE TABLE kid_shoppingcart(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,      #用户编号
  product_id INT,   #商品编号
  count INT,        #购买数量
  is_checked BOOLEAN #是否已勾选，确定购买
);

#用户订单
CREATE TABLE kid_order(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  address_id INT,
  status INT,             #订单状态  1-等待付款  2-等待发货  3-运输中  4-已签收  5-已取消
  order_time BIGINT,      #下单时间
  pay_time BIGINT,        #付款时间
  deliver_time BIGINT,    #发货时间
  received_time BIGINT    #签收时间
)AUTO_INCREMENT=10000000;

#用户订单
CREATE TABLE kid_order_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,           #订单编号
  product_id INT,         #产品编号
  count INT               #购买数量
);

#商品列表
CREATE TABLE kid_product(
	lid INT NOT NULL,
	price INT NOT NULL,
	title VARCHAR(50),
	Cname VARCHAR(20),
	size  SMALLINT,
	color VARCHAR(20)
);
INSERT INTO kid_product VALUES("1","89","女宝宝洋气彩色波点吊带裙","裙子","80cm","白色彩色波点"),
("2","110","外贸欧美童装夏季宝宝连体裙","裙子","90cm","白雪公主"),
("3","90","萌萌哒童装夏季男童卡通宽松短袖","短袖","100cm","黄色"),
("4","105","男宝宝运动套装新款夏季","运动套装","90cm","红色运动套装"),
("5","128","儿童防蚊裤宝宝哈伦长裤秋季","裤子","100cm","绿色"),
("6","135","齐齐熊男宝宝秋装运动卫衣套装卡通印花","运动衫","100cm","灰绿"),
("7","100","夏季新款女童连衣裙宝宝纱裙公主背心裙","裙子","80cm","粉色"),
("8","95","童装女装秋装2019新款韩版春秋洋气长袖裤子两件套","套装","80cm","黄色"),
("9","88","女童装时髦套装春秋公主衣服","裙子","90cm","粉红色"),
("10","138","儿童新款秋季纯棉三件套女宝宝可爱春秋装","三件套","100cm","萌兔三件套");




	
#用户列表
CREATE TABLE kid_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(18),
	upwd  VARCHAR(20),
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



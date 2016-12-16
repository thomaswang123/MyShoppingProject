/*y用户数据*/
insert into user values (1001,123456,123456);
insert into user values (1002,654321,123456);
insert into user values (1003,65432144,123456);
insert into user values (1004,65432122,123456);

/*用户基本信息数据*/
insert into userinfo values(1001,'哈哈','男',18,'12313245658','湖南长沙');
insert into userinfo values(1002,'哼哼','男',19,'12312312465','湖南长沙');
insert into userinfo values(1003,'哈哈一','男',18,'46546718798','湖南株洲');
insert into userinfo values(1004,'哼哼二','男',19,'12311879812','湖南湘潭');
update userinfo set uinfo_phone =12311879812 where uinfo_id = 1004;

/*管理员*/
insert into admin values(1001,3);
insert into admin values(1002,3);
insert into admin values(1003,1);
insert into admin values(1004,1);

/*钱包*/
insert into wallet values(1001,99999.9,123456);
insert into wallet values(1002,99999.9,123456);
insert into wallet values(1003,99999.9,123456);
insert into wallet values(1004,99999.9,123456);

/*密保*/
insert  into passwordprotection values(2001,1001,'你自己的姓名','哈哈');
insert  into passwordprotection values(2002,1001,'你最好的朋友姓名','啊哈哈');
insert  into passwordprotection values(2003,1001,'你最好异性名字','哦哈哈');

insert  into passwordprotection values(2004,1002,'你自己的姓名','哼哼');
insert  into passwordprotection values(2005,1002,'你最好的朋友姓名','啊哼哼');
insert  into passwordprotection values(2006,1002,'你最好异性名字','哦哼哼');

insert  into passwordprotection values(2007,1003,'你自己的姓名','一哈哈');
insert  into passwordprotection values(2008,1003,'你最好的朋友姓名','哈哈一');
insert  into passwordprotection values(2009,1003,'你最好异性名字','哈一哈');


insert  into passwordprotection values(2010,1004,'你自己的姓名','一哼哼');
insert  into passwordprotection values(2011,1004,'你最好的朋友姓名','哼哼一');
insert  into passwordprotection values(2012,1004,'你最好异性名字','哼一哼');

/*商品表*/
insert into goods values(1111,'生日蛋糕','2.png',100,'用于生日宴会以及家庭生日的一筐蛋糕');
insert into goods values(1112,'巧克力风味蛋糕','g1.jpg',152.50,'如果你是喜欢吃巧克力的人，这是绝对是非常棒的选择');
insert into goods values(1113,'三层塔式奶酪式蛋糕','g2.jpg',200,'如果是开宴会，这也是一款不错的选择');
insert into goods values(1114,'爱心巧克力蛋糕','g8.png',450.90,'这是一款适合约会使用一款蛋糕');
insert into goods values(1115,'七彩色式祷告','g9_png',320.40,'一款适合孩子们一起过生的蛋糕');
insert into goods values(1116,'三层粉色时蛋糕','m1.png',420.2,'用于女孩子生日聚会上使用');
insert into goods values(1117,'玫瑰花式蛋糕','m2.png',300,'典雅高端的宴会最热的选择');
insert into goods values(1118,'曲奇饼式蛋糕','s2.png',251.20,'十一款不错的早餐的蛋糕选择');
insert into goods values(1119,'翠绿三层塔式蛋糕','m3.png',300.20,'适合在野外聚会使用，具有独特的风趣，也是不错搭配选择');
insert into goods values(1120,'猫式粉色蛋糕','g3.png',400.50,'也是公主风式的搭配选择');

/*库存*/
insert into repertory values(1111,50);
insert into repertory values(1112,30);
insert into repertory values(1113,40);
insert into repertory values(1114,30);
insert into repertory values(1115,40);
insert into repertory values(1116,50);
insert into repertory values(1117,30);
insert into repertory values(1118,50);
insert into repertory values(1119,20);
insert into repertory values(1120,10);

/*意见*/
insert into opinion values(1,1111,1001,4,'非常满意');
insert into opinion values(2,1111,1003,4,'如果没有这款蛋糕，生日气氛也没有这么好');
insert into opinion values(3,1111,1002,4,'还不错');
insert into opinion values(4,1111,1004,4,'还不错');
insert into opinion values(5,1112,1001,4,'还不错');
insert into opinion values(6,1113,1002,4,'还不错');
insert into opinion values(7,1113,1004,4,'还不错');
insert into opinion values(8,1114,1002,4,'非常满意');
insert into opinion values(9,1114,1003,4,'还不错');
insert into opinion values(10,1115,1002,5,'非常满意');
insert into opinion values(11,1115,1003,5,'还不错');
insert into opinion values(12,1116,1004,5,'还不错');
insert into opinion values(13,1117,1001,4,'还不错');
insert into opinion values(14,1117,1001,4,'非常满意');
insert into opinion values(15,1118,1003,4,'还不错');
insert into opinion values(16,1119,1004,4,'非常满意');
insert into opinion values(17,1119,1002,4,'还不错');
insert into opinion values(18,1120,1003,4,'非常满意');



select * from goods
select * from wallet
select * from user
select * from userinfo
select * from passwordprotection
select * from repertory




DROP TABLE Opinion;

CREATE TABLE Opinion
(
  on_id          INT                           NOT NULL ,
  on_gid         INT                           NOT NULL ,
  on_uid         INT                           NOT NULL ,
  on_grade       INT                           NOT NULL ,
  on_discuss   VARCHAR (100)                     ,
  CONSTRAINT PK_OPINION_ONID PRIMARY KEY (on_id),
  FOREIGN KEY (on_gid) REFERENCES Goods (g_id)
);
ALTER TABLE Opinion modify on_id   INTEGER DEFAULT '1';
ALTER TABLE Opinion modify on_id   INTEGER auto_increment ;
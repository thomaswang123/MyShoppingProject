--管理员表关联了管理员详细信息表

--删除表

drop table Administrator;
use accout_demo;
--管理员表
create table Administrator(
Adm_Id integer primary key,
Adm_Name varchar(16) not null,
Adm_PassWord varchar(16) not null
);


--设置id默认值和自定增长序列
alter table Administrator modify Adm_Id integer default '1';
alter table Administrator modify Adm_Id integer auto_increment ;

--删除表

drop table AdmInfo;


--管理员详细信息表
create table AdmInfo(
Adm_Id integer primary key,
AdmInfo_Sex char(2),
Adminfo_IdNum varchar(18),
Adminfo_Phone varchar(11),
Adminfo_Address varchar(50),
foreign key(Adm_Id) references Administrator(Adm_Id)
);

--用户信息表关联了用户详细信息表
--用户信息表关联了购物车表
--用户信息表关联了钱包表

--用户信息表
create table User(
  U_Id integer primary key,
  U_Name varchar(16) not null,
  U_PassWord varchar(16) not null
);

alter table User modify U_Id integer default '1';
alter table User modify U_Id integer auto_increment ;


--创建用户详细信息表
create table UserInfo(
  U_Id integer primary key,
  UInfo_Sex char(2),
  UInfo_Age int,
  UInfo_Phone varchar(11),
  U_Address varchar(50),
  U_Remark varchar(200),
  foreign key(U_Id) references User(U_Id)
);


--删除表

drop table PasswordProtection;

--用户密保表
create table PasswordProtection(
  PP_Id integer primary key,
  U_Id integer not null,
  PP_Question varchar(50),
  PP_Answer varchar(50),
  foreign key(U_Id) references UserInfo(U_Id)
);

--设置PP_Id默认值和自定增长序列
alter table PasswordProtection modify PP_Id integer default '1';
alter table PasswordProtection modify PP_Id integer auto_increment ;


--删除表

drop table Wallet;

--钱包表
create table Wallet(
  U_Id integer primary key,
  W_Number float(7,2),
  W_PassWord int(6),
  foreign key(U_Id) references User(U_Id)
);

--购物车表
create table ShoppingCart(
  SC_Id integer primary key,
  U_Id integer not null,
  G_Id integer,
  SC_IsBuy char(2),
  foreign key(U_Id) references User(U_Id)
);


--设置PP_Id默认值和自定增长序列
alter table ShoppingCart modify SC_Id integer default '1';
alter table ShoppingCart modify SC_Id integer auto_increment ;


--订单表
create table Orders(
  O_Id integer primary key,
  U_Id integer not null,
  G_Id integer not null,
  G_Name varchar(16) not null,
  G_Price float(7,2) not null,
  O_Number integer,
  O_Date varchar(15),
  foreign key(U_Id) references User(U_Id)
);

--设置PP_Id默认值和自定增长序列
alter table Orders modify O_Id integer default '1';
alter table Orders modify O_Id integer auto_increment ;

--删除表

drop table Goods;


--商品表
create table Goods (
  G_Id       INTEGER PRIMARY KEY,
  G_Name     VARCHAR(16),
  G_Picture  VARCHAR(16),
  G_Price    FLOAT(7, 2),
  G_Describe VARCHAR(100),
  G_Grade    INTEGER
);
--设置PP_Id默认值和自定增长序列
alter table Goods modify G_Id integer default '1';
alter table Goods modify G_Id integer auto_increment ;


insert into Administrator (Adm_Name,Adm_PassWord) values('张三','123');

insert into AdmInfo (Adm_Id,AdmInfo_Sex,Adminfo_IdNum,Adminfo_Phone,Adminfo_Address) values(1,'男','441414',13203200681,'湖南省长沙市岳麓区');


insert into User(U_Name,U_PassWord)values('李四','123456');



insert into UserInfo(U_Id,UInfo_Sex,UInfo_Age,UInfo_Phone,U_Address,U_Remark)values(1,'男',12,'13257298980','北京中关村','我是大帅哥');


insert into PasswordProtection(U_Id,PP_Question,PP_Answer)values(1,'我的生日是多少？','1995/8/25');

insert into Wallet(U_Id,W_Number,W_PassWord)values(1,500.00,123456);

insert into ShoppingCart(U_Id,G_Id,SC_IsBuy)values(1,1,'否');

insert into Orders(U_Id,G_Id,G_Name,G_Price,O_Number,O_Date)values(1,1,'iphone',2000.00,3,'14/3/2');


insert into Goods(G_Name,G_Picture,G_Price,G_Describe,G_Grade)values('红旗牌自行车','42.jpg',888.00,'国产东风系列',4);
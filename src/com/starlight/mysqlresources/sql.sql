/*创建数据库*/

CREATE database accout_demo;

/*使用数据库*/
use accout_demo;

/***********************************************************************************/
/*用户表*/
DROP TABLE User;

CREATE TABLE User
(
   u_id         INT         ,
   u_name       VARCHAR (16)                   NOT NULL ,
   u_pwd        VARCHAR (16)                   NOT NULL ,
   CONSTRAINT  PK_USER_UID PRIMARY KEY (u_id)
);

/*创建自增长序列*/

ALTER TABLE User modify u_id INTEGER DEFAULT '1';
ALTER TABLE User modify u_id INTEGER auto_increment ;


/***********************************************************************************/
/*用户密保*/
DROP TABLE PasswordProtection;

CREATE TABLE PasswordProtection
(
   pp_id                INT                           ,
   pp_uid               INT                            ,
   pp_question          VARCHAR (50)                  ,
   pp_answer            VARCHAR (20)                  ,
   CONSTRAINT PK_PASSWORDPROTECTION_PPID PRIMARY KEY (pp_id),
   FOREIGN KEY (pp_uid) REFERENCES User(u_id)
);

/*创建自增长序列*/
ALTER TABLE PasswordProtection modify pp_id INTEGER DEFAULT '1';
ALTER TABLE PasswordProtection modify pp_id INTEGER auto_increment ;

/***********************************************************************************/
/*钱包*/
DROP TABLE Wallet;

CREATE TABLE Wallet
(
   w_id           INT                           ,
   w_money        FLOAT (7,2),
   w_paypwd       INT                            NOT NULL ,
   CONSTRAINT PK_WALLET_WID PRIMARY KEY (w_id ),
   FOREIGN KEY (w_id) REFERENCES User(u_id)
);

/***********************************************************************************/
/*用户信息表*/
DROP TABLE UserInfo;

CREATE TABLE UserInfo
(
   uinfo_id      INT                            ,
   uinfo_nickname VARCHAR (16)                 ,
   uinfo_sex        CHAR (2)                    NOT NULL ,
   uinfo_age      INT                           NOT NULL ,
   uinfo_phone    VARCHAR (11)                  NOT NULL ,
   uinfo_address  VARCHAR (50)                  NOT NULL ,
   CONSTRAINT PK_USERINF_ID PRIMARY KEY (uinfo_id),
   FOREIGN KEY (uinfo_id) REFERENCES User(u_id)
);
/***********************************************************************************/
/*商品表*/
DROP TABLE Goods;

CREATE TABLE Goods
(
   g_id         INT                            ,
   g_name       VARCHAR (16)                   NOT NULL ,
   g_picture    VARCHAR (16)                   NOT NULL ,
   g_price      FLOAT (7,2)                    NOT NULL ,
   g_describe   VARCHAR (100)                  ,
   CONSTRAINT PK_GOODS_GID PRIMARY KEY (g_id)
);

/*创建自增长序列*/
ALTER TABLE Goods modify g_id   INTEGER DEFAULT '1';
ALTER TABLE Goods modify g_id   INTEGER auto_increment ;


/***********************************************************************************/
/*购物车*/
DROP TABLE ShoppingCart;

CREATE TABLE ShoppingCart
(
   sc_id   INT                            ,
   sc_uid      INT                        NOT NULL ,
   sc_gid     INT                         NOT NULL ,
   sc_number    INT                       NOT NULL ,
   sc_date      DATE                      NOT NULL ,
   sc_summoney    FLOAT (7,2)            NOT NULL ,
   CONSTRAINT PK_SHOPPINGCART_SCID PRIMARY KEY (sc_id),
   FOREIGN KEY (sc_uid) REFERENCES User(u_id),
   FOREIGN KEY (sc_gid) REFERENCES Goods(g_id)
);

/*创建自增长序列*/
ALTER TABLE ShoppingCart modify sc_id  INTEGER DEFAULT '1';
ALTER TABLE ShoppingCart modify sc_id  INTEGER auto_increment ;

/***********************************************************************************/
/*订单表*/
DROP TABLE Orders;

CREATE TABLE Orders
(
   o_id         INT                            ,
   o_uid        INT                            NOT NULL ,
   o_gid        INT                            NOT NULL ,
   o_money        FLOAT (7,2)                  NOT NULL ,
   o_date         DATE                          NOT NULL ,
   o_number       INT                          NOT NULL ,
   CONSTRAINT PK_ORDERS_OID PRIMARY KEY (o_id),
   FOREIGN KEY (o_uid) REFERENCES User (u_id)
);

/*创建自增长序列*/
ALTER TABLE Orders modify o_id   INTEGER DEFAULT '1';
ALTER TABLE Orders modify o_id   INTEGER auto_increment ;

/***********************************************************************************/
/*库存*/
DROP TABLE Repertory;

CREATE TABLE Repertory
(
   ry_id        INT                            ,
   ry_number    INT                            NOT NULL,
   CONSTRAINT PK_REPERTORY_RYID PRIMARY KEY (ry_id),
   FOREIGN KEY (ry_id) REFERENCES Goods (g_id)
);

/***********************************************************************************/
/*意见表*/
DROP TABLE Opinion;

CREATE TABLE Opinion
(
   on_id          INT                            ,
   on_grade      INT                           NOT NULL ,
   on_discuss   VARCHAR (100)                     ,
   on_gid         INT,
   on_uid         INT,
   CONSTRAINT PK_OPINION_ONID PRIMARY KEY (on_id),
   FOREIGN KEY (on_gid) REFERENCES Goods (g_id)
);
/*创建自增长序列*/
ALTER TABLE Opinion modify on_id   INTEGER DEFAULT '1';
ALTER TABLE Opinion modify on_id   INTEGER auto_increment ;

/***********************************************************************************/
/*管理员*/
DROP TABLE Admin;

CREATE TABLE Admin
(
   admin_id      INT                           NOT NULL ,
   admin_classes INT                          NOT NULL,
   CONSTRAINT PK_ADMIN_ADMINID PRIMARY KEY (admin_id),
   FOREIGN KEY (admin_id) REFERENCES User(u_id)
);


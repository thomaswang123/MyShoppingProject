/*用户表*/
create table Users
(
   u_id         int                            not null,
   u_name       varchar(16)                    not null,
   u_pawd       varchar(16)                    not null,
   constraint PK_USER  primary key clustered (u_id)
);
/*用户密保*/
create table PasswordProtection
(
   pp_id                int                            not null,
   pp_question          varchar(50)                    not null,
   pp_answer            varchar(20)                    not null,
   constraint PK_PASSWORDPROTECTION primary key clustered (pp_id)
);
/*钱包*/
create table Wallet
(
   w_id            int                            not null,
   w_money         float(7,2)                     ,
   w_paypawd       int                              not null,
   constraint PK_WALLET primary key clustered (w_id)
);
/*用户信息表*/
create table UserInfo
(
   uinfo_id      int                            not null,
   uinfo_sex        char(2)                      not null,
   uinfo_age      int                            not null,
   uinfo_phone    varchar(11)                    ,
   uinfo_address  varchar(50)                    ,
   constraint PK_USERINF primary key clustered (uinfo_id)
);
/*购物车*/
create table ShoppingCart
(
   sc_id(         int                            not null,
   sc_uid         int                          not  null,
   sc_gid         int                           not  null,
   sc_number      int                          not  null,
   sc_summoney    float(7,2)                 not   null,
   sc_date        date                         not   null,
   sc_oid         int                         not   null,
   constraint PK_SHOPPINGCART primary key clustered (sc_id)
);
/*订单表*/
create table Orders
(
   o_id           int                            not    null,
   o_uid          int                            not    null,
   o_gid          int                            not    null,
   o_money        float(7,2)                   not    null,
   o_date         date                         not    null,
   o_number       int                                  null,
   constraint PK_ORDERS primary key clustered (o_id)
);
/*商品表*/
create table Goods
(
   g_id         int                             not null,
   g_name       varchar(16)                    not null,
   g_price     float(7,2)                      not null,
   g_describe   varchar(100)                   ,
   constraint PK_GOODS primary key clustered (g_id)
);
/*库存*/
create table Repertory
(
  ry_id        int                            not null,
  ry_number    int                            ,
  constraint PK_REPERTORY primary key clustered (ry_id)
);
/*意见表*/
create table Opinion
(
   on_id          int                            not null,
   on_gerade      int                            not null,
   on_discuss   varchar(100)                     ,
   constraint PK_OPINION primary key clustered (on_id)
);
/*管理员*/
create table Admin
(
   admin_id      int                            not null,
   admin_classes int                          not null,
   constraint PK_ADMIN primary key clustered (admin_id)
);
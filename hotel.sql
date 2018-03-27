create database hotel;
use hotel;

##用户表
create table user(
	uid bigint not null,
    loginname varchar(50) not null,
    pwd varchar(50) not null,
    telnum varchar(20) not null,
    realname varchar(20) not null,
    sex varchar(5) not null,
    email varchar(20) not null,
    primary key(uid)
)engine=InnoDB
 default CHARACTER SET=utf8
 COLLATE = utf8_general_ci;

##房间表
create table rooms(
	rid bigint not null,
	roomID varchar(20) not null unique comment'房间号',
    roomType varchar(50) not null COMMENT'房间类型',			## ，还可以拆分成一张表
    roomState char(2) not null comment'0:未入住 1：已入住',	
    roomTel varchar(20) not null comment'房间电话',	
    roomLoc varchar(10) not null comment'位置',	
    remark varchar(100) comment'备注',
    primary key(rid)
)engine=InnoDB
 default CHARACTER SET=utf8
 COLLATE = utf8_general_ci;
 
 ##房间类型表
 create table roomType(
	roomTypeID bigint not null,
    roomType varchar(2) not null comment'A:总统套房，B:豪华双人房，C:豪华大床房,D:情侣房,E:麻将房,F：标间,G:大床房,H：单间',
    price decimal(10,4) not null,
    primary key(roomTypeID)
 )engine=InnoDB
 default CHARACTER SET=utf8
 COLLATE = utf8_general_ci;

##入住联系人表
create table contactUser(
	cid bigint not null,
    uid bigint not null,
	c_name varchar(20) not null,
	c_sex varchar(5) not null,
    c_tel varchar(20) not null,
    c_email varchar(20),
    primary key(cid)
)engine=InnoDB
 default CHARACTER SET=utf8
 COLLATE = utf8_general_ci;
 
 ##订单表
 create table orders(
	oid bigint not null,
    create_time datetime not null default current_timestamp,
    update_time timestamp not null default current_timestamp,
	primary key(oid)
 )engine=InnoDB
 default CHARACTER SET=utf8
 COLLATE = utf8_general_ci;
 
 ##订单明细表
 create table orderDetail(
	did bigint not null comment'订单明细编号',
    uid bigint not null,
    oid bigint not null,
    liveInTime datetime not null,
    leftTime datetime not null,
    rommID varchar(100) not null,
    account decimal(10,4) not null default 0 comment'订单金额',
    totallive int not null comment'入住人数',
	primary key(did)
 );
 
 ##订单联系人表
 create table odercontactUser(
	odercontactUser bigint not null,
    oid bigint not null,
    cid bigint not null,
    primary key(odercontactUser)
 
 )engine=InnoDB
 default CHARACTER SET=utf8
 COLLATE = utf8_general_ci;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
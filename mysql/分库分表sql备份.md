```sql
create schema `ds-0` collate utf8mb4_unicode_ci;

create schema `ds-1` collate utf8mb4_unicode_ci;

create schema study collate utf8mb4_unicode_ci;

create table t_config
(
	id bigint not null
		primary key,
	remark varchar(50) charset utf8 null,
	create_time timestamp default CURRENT_TIMESTAMP not null,
	last_modify_time timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
)
charset=latin1;

create table `ds-1`.t_config
(
	id bigint not null
		primary key,
	remark varchar(50) charset utf8 null,
	create_time timestamp default CURRENT_TIMESTAMP not null,
	last_modify_time timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
)
charset=latin1;

create table t_order_0
(
	order_id bigint not null
		primary key,
	order_no varchar(100) null,
	create_name varchar(50) null,
	price decimal(10,2) null
)
charset=utf8;

create table `ds-1`.t_order_0
(
	order_id bigint not null
		primary key,
	order_no varchar(100) null,
	create_name varchar(50) null,
	price decimal(10,2) null
)
charset=utf8;

create table t_order_1
(
	order_id bigint not null
		primary key,
	order_no varchar(100) null,
	create_name varchar(50) null,
	price decimal(10,2) null
)
charset=utf8;

create table `ds-1`.t_order_1
(
	order_id bigint not null
		primary key,
	order_no varchar(100) null,
	create_name varchar(50) null,
	price decimal(10,2) null
)
charset=utf8;

create table t_order_2
(
	order_id bigint not null
		primary key,
	order_no varchar(100) null,
	create_name varchar(50) null,
	price decimal(10,2) null
)
charset=utf8;

create table `ds-1`.t_order_2
(
	order_id bigint not null
		primary key,
	order_no varchar(100) null,
	create_name varchar(50) null,
	price decimal(10,2) null
)
charset=utf8;

create table study.t_order_cancel_log
(
	id int auto_increment comment 'pk'
		primary key,
	order_id bigint not null comment '订单id',
	order_user_id bigint not null comment '订单对应的userId',
	type int default 0 not null comment '0:用户取消订单',
	cancel_reason varchar(255) default '' not null comment '取消原因',
	cancel_remark varchar(255) default '' not null comment '原因备注（用户取消，用户更换司机）',
	create_time datetime default CURRENT_TIMESTAMP not null comment '创建时间'
)
comment '订单取消记录表' charset=utf8;

create index t_order_cancel_log_order_id_index
	on study.t_order_cancel_log (order_id);

create index t_order_cancel_log_order_user_id_index
	on study.t_order_cancel_log (order_user_id);

create table t_order_item_0
(
	item_id bigint not null
		primary key,
	order_no varchar(200) not null,
	item_name varchar(50) null,
	price decimal(10,2) null
)
charset=utf8;

create table `ds-1`.t_order_item_0
(
	item_id bigint not null
		primary key,
	order_no varchar(200) not null,
	item_name varchar(50) null,
	price decimal(10,2) null
)
charset=utf8;

create table t_order_item_1
(
	item_id bigint not null
		primary key,
	order_no varchar(200) not null,
	item_name varchar(50) null,
	price decimal(10,2) null
)
charset=utf8;

create table `ds-1`.t_order_item_1
(
	item_id bigint not null
		primary key,
	order_no varchar(200) not null,
	item_name varchar(50) null,
	price decimal(10,2) null
)
charset=utf8;

create table t_order_item_2
(
	item_id bigint not null
		primary key,
	order_no varchar(200) not null,
	item_name varchar(50) null,
	price decimal(10,2) null
)
charset=utf8;

create table `ds-1`.t_order_item_2
(
	item_id bigint not null
		primary key,
	order_no varchar(200) not null,
	item_name varchar(50) null,
	price decimal(10,2) null
)
charset=utf8;

create table study.user_info
(
	id bigint auto_increment
		primary key,
	name varchar(32) not null,
	age int not null,
	sex tinyint default 1 not null,
	create_time datetime not null,
	update_time datetime not null
)
comment '用户表';




```

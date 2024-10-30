##### D/N : store (P06_실습) #####

drop database if exists store;

create database if not exists store;
use store;

create table product (
num			int			not null	auto_increment	,
goodsCode	char(30)	not null					,
goodsName 	char(30)	not null					,
price		int			default 0					,
stock		int			default 0					,
constraint primary key(goodsCode)					,
constraint unique(num)
);

desc product;

drop table product;

insert into product (goodsCode, goodsName, price, stock)
values ('D450B', '스피커', 70000, 14);

select * from product order by num desc;

set sql_safe_updates=0;
delete from product;
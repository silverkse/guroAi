##### D/N : store_Manager

drop database store_Manager;

create database store_Manager;
use store_Manager;

create table goodsList(
number		int			auto_increment	primary key	,
oriFName	char(255)	not null					,
upFName		char(255)	not null					,
goodsName	char(255)	not null					,
price		int			not null					,
content		char(255)	not null					,
regTM		timestamp	default now()				,
remoteIP	char(30)	not null					
);

desc goodsList;

select * from goodsList order by number desc;
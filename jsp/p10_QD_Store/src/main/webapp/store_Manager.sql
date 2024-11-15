create database store_Manager;
use store_Manager;

create table goodsList (
num				int			auto_increment	,
originalFile	char(255)	not null		,
uploadFile		char(255)	not null		,
fileType		char(255)	not null		,
fileSize		int			not null		,
goodsName		char(50)	not null		,
price			int			default 0		,
goodsDesc		char(255)					,
regTM			datetime	default now()	,
remoteIP		char(15)					,
constraint primary key(num)					
);

drop table goodsList;

desc goodsList;

select * from goodsList order by num desc;
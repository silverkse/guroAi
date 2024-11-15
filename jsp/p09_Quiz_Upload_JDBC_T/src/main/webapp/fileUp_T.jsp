##### D/N : fileUp #####

create database if not exists fileUp;
use fileUp;

create table uploadTbl (
num				int			auto_increment	,
subject			char(255)					,
content			text						,
originalFile	char(100)					,
uploadFile		char(100)					,
fileType		char(20)					,
regTM			timestamp	default now()	,
remoteIP		char(15)					,
fileSize		int							,
constraint primary key(num)
);
desc uploadTbl;
alter table uploadTbl change column fileType fileType char(255);

drop table uploadTbl;

select * from uploadTbl order by num desc;
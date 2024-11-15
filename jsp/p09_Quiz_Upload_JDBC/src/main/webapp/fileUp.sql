create database fileUp;
use fileUp;

create table fileList (
num				int			auto_increment	,
subject			char(50)	not null		,
content			char(255)					,
uploadFile		char(100)	not null		,
originalFile	char(100)	not null		,
filesize		int			not null		,
constraint primary key(num)
);

desc fileList;
drop table fileList;

select * from fileList order by num desc;
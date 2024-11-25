##### D/N : myBatis_BBS

create database myBatis_BBS;
use myBatis_BBS;

create table board (
num			int			auto_increment	,
writer		char(30)	not null		,
title		char(100)	not null		,
content		char(255)					,
constraint primary key(num)
);
desc board;

select * from board order by num desc;
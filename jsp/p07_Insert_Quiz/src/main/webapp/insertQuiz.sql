create database insertQuiz;
use insertQuiz;

create table bbs(
num			int			auto_increment		,
title		char(50)	not null			,
content		char(255)						,
writer		char(20)	not null			,
regTM		timestamp	default now()		,
constraint primary key(num)				
);
-- Error Code: 1074. Column length too big for column 'content' (max = 255); use BLOB or TEXT instead
desc bbs;


drop table bbs;
#### D/N : insertQuiz

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
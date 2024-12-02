##### D/N : JobManager

create database JobManager;
use JobManager;

drop database JobManager;

create table applyList (
num			int			auto_increment	,
userName	char(20)	not null		,
userPhone	char(15)	not null		,
applyPart	char(20)	not null		,
applyMotive	char(255)					,
applyTM		timestamp	default now()	,
constraint unique(num)					,
constraint primary key(userName, userPhone)
);
-- userName과 userPhone을 결합 해 primary key로 사용

desc applyList;

select * from applyList order by num desc;
create database JobManager;
use JobManager;

create table resume (
num		int			auto_increment	,
rName	char(10)	not null		,
phone	char(15)	not null		,
field	char(10)	not null		,
motive	text		null			,
regTM	timestamp	default now()	,
constraint primary key(num)
);
desc resume;

drop table resume;

select * from resume order by num desc;
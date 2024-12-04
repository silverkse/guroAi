##### D/N : ScoreRecordT

create database ScoreRecordT;
use ScoreRecordT;

create table scoreList(
num			int			auto_increment	,
code		char(10)	unique			,
userName	char(10)	not null		,
kor			int			not null		,
history		int			not null		,
phone		char(13)	not null		,
regTM		timestamp	default now()	,
constraint primary key(num)
);
desc scoreList;

select * from scoreList order by num desc;
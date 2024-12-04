##### D/N : ScoreRecord
create database ScoreRecord;
use ScoreRecord;

drop database ScoreRecord;

create table scoreList(
num			int			auto_increment	,
regNum		char(10)					,
regName		char(10)	not null		,
korScore	int			default 0		,
hstoryScore	int			default 0		,
regPhone	char(15)	not null		,
regTM		timestamp	default now()	,
avgScore	double		not null		,
constraint primary key(regNum)			,
constraint unique(num)
);

drop table scoreList;

desc scoreList;

select * from scoreList order by num desc;
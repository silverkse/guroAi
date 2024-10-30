##### P06. Quiz 기존 테이블 수정 #####
use company;

drop table staffList;

create table staffList (
num			int			not null	auto_increment	,
id			char(10)	not null					,
name		char(10)	not null					,
yearRank	int						default 0		,
position	char(20)								,
constraint primary key(id)							,
constraint unique(num)
);
desc staffList;

select * from staffList order by num desc;

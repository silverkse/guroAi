create database JDBC_Company;
use JDBC_Company;

create table staffList (
num			int			not null	auto_increment	,
id			char(10)	not null					,
name		char(10)	not null					,
yearRank	int			default 0					,
position	char(20)								,
constraint primary key(id)							,
constraint unique(num)
);
desc staffList;

drop table staffList;

insert into staffList (id, name, yearRank, position)
values
('hy_Ahn', '안혜영', 3, '대리');

select * from staffList order by num desc;
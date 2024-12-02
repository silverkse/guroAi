##### D/N : SBP_Community

drop database SBP_Community;
create database SBP_Community;
use SBP_Community;

create table user (
num			int			auto_increment	,
userid		char(20)	not null		,
password	char(20)	not null		,
email		char(30)	not null		,
regTM		timestamp	default now()	,
constraint primary key(num)				,
constraint unique(userid)
);
desc user;

select num, userid, password, email, regTM, role from user order by num desc;

select num, title, userid, content, readcnt, regTM from post order by num desc;
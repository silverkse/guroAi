##### D/N : ajaxTest

create database ajaxTest;
use ajaxTest;

create table member (
num			int			auto_increment	unique	,
userId		char(20)	primary key				,
userPw		char(20)	not null				,
joinTM		timestamp	default now()			
);
desc member;

insert into member (userId, userPw) values
('test', '1234'),
('sample', '1234'),
('apple', '1234');

select * from member order by num desc;

select count(*) from member where userId='sample';
-- 이렇게 작성하면 서버에서 rs.getInt(1)로 받음 

select count(*) as 'cnt' from member where userId='sample';
-- 이렇게 작성하면 서버에서 rs.getInt(1)과 rs.getInt("cnt") 둘 다 받을 수 있음
##### D/N : sampleData

 use sampleData;
 
 create table member (
 uid		char(20)	,
 uname		char(20)
 );
 
 desc member;
 
 insert into member values
 ('tester01', '테스터01'),
 ('guest02', '게스트02'),
 ('lemon', '레몬');
 
 select * from member order by uid;
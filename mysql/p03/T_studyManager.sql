##### D/N: studyManager #####

create database if not exists studyManager;
# 기재된 DB가 없다면 생성하고, 존재하고 있다면 생성하지 않는다.

use studyManager;

create table memInfo (
seq 			int 			auto_increment not null 	,
name 			char(5) 									,
userid 			char(15) 		not null 					,
email 			char(30) 		not null 					,
tel1 			char(4) 									,
tel2 			char(4) 									,
tel3 			char(4) 									,
age 			int 			default 0 					,
address 		char(50) 									,
joinTM 			timestamp 		default now() 				,
constraint primary key(userid, email)						,
constraint unique key(seq)
);

desc memInfo;

insert into memInfo (name, userid, email, tel1, tel2, tel3, age, address, joinTM)
values
('한규준', 'hjoon', 'you@naver.com', '010', '1111', '1234', 32, '서울시 서초구 방배2동', '2021-02-03'),
('피터', 'peter', ' momo@daum.net', '011', '2222', '2234', null, '경기도 성남시 야탑동 100', '2021-02-04'),
('박희진', 'park', 'phj@google.com', '010', '3333', '3234', 32, '인천시 연수구 청학동', null),
('토르', 'thor', '', '019', '4444', '4234', 36, '서울시 중랑구 상봉동 99', '2021-03-11'),
('최주연', 'juyeon', 'great4@apple.com', '010', '5555', '5234', 49, '서울시 마포구 망원동', '2021-05-29'),
('유채연', 'yuchae', 'bchae@daum.net', '010', '6666', '6234', 32, '', '2021-06-14'),
('스타크', 'stark', 'tony@stark.com', '017', '7777', '7234', 54, '대전시 유성구 구성동', '2021-09-03')
;

select * from memInfo;

#3
select * from memInfo where seq=4;
update memInfo set email='thor@naver.com' where seq=4;
select * from memInfo where seq=4;

#4
select * from memInfo where userid='yuchae';
update memInfo set address='경기도 고양시 마두동' where userid='yuchae';
select * from memInfo where userid='yuchae';

#5
select tel1 from memInfo order by seq desc;
update memInfo set tel1='010' where tel1<>'010';
select tel1 from memInfo order by seq desc;
# 연산자 <> 은 != Java/JS의 != 와 동일함

#6
delete from memInfo where seq=7;
select * from memInfo order by seq desc;

#7
update memInfo set age=21 where userid='peter';
select * from memInfo order by seq desc;

#8
select * from memInfo where age between 30 and 39 order by seq desc;

#9
select * from memInfo where address like '서울시%' order by seq desc;

#10
select * from memInfo where email like '%@daum.net' order by seq desc;

#11
select * from memInfo order by name;

#12
select * from memInfo order by age desc, name;

#13
select * from memInfo where joinTM is null order by seq;
# null 데이터 조회 => C/N is null
# null이 아닌 데이터 조회 => C/N is not null
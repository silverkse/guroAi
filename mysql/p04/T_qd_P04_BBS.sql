##### D/N : p04_BBS ####

create database if not exists p04_BBS;
use p04_BBS;
show tables;

# table1. T/N: userTbl
create table userTbl (
no			int			not null	auto_increment	,
userID		char(20)	not null					,
userPW		char(20)	not null					,
userNick	char(20)	not null					,
userLevel	char					default '1'		,
email		char(30)	not null					,
cellPhone	char(15)								,
joinTime	timestamp	not null	default now()	,
constraint primary key(userID)						,
constraint	unique(no)
);
desc userTbl;

insert into userTbl (userID, userPW, userNick, userLevel, email, cellPhone, joinTime)
values
('goodman', 'a123', '머그컵', '1', 'goodman@naver.com', '010-123-4567', '2018-06-11'),
('tree', 'b123', '노을', '1', 'tree@daum.net', '017-423-4568', '2018-07-24'),
('apple', 'c123', '커피', '2', 'apple@naver.com', '010-723-4569', '2018-11-01'),
('sea', 'd123', '캠핑', '3', 'sea@apple.com', '011-323-4560', '2019-02-17'),
('bridge', 'e123', '허브', '2', 'bridge@nate.com', '010-2623-4561', '2019-04-23');
select * from userTbl order by no desc;

# table2. T/N: articleTbl
create table articleTbl (
no				int				not null	auto_increment	,
writerID		char(20)		not null					,
title			char(100)		not null					,
content			char(200)		not null					,
writeTime		timestamp		null		default now()	,
boardType		char(10)		not null					,
constraint primary key(no)									,
constraint foreign key(writerID)
references userTbl(userID)
);
insert into articleTbl
(writerID, title, content, writeTime, boardType)
values
('goodman', '가입인사', '반갑습니다.', '2018-06-12', 'free'),
('apple', '문의사항', '이미지 업로드 안됩니다.', '2018-12-23', 'image'),
('tree', '연락처변경', '연락처 변경 어떻게 하나요?', '2019-01-05', 'qna');
select * from articleTbl order by no desc;

# table3. T/N: emailTbl
create table emailTbl (
no				int				not null	auto_increment	,
sendID			char(20)		not null					,
sendEmail		char(30)		not null					,
emailTitle		char(100)		not null					,
emailContent	char(200)		null						,
receiveEmail	char(30)		not null					,
sendTime		timestamp		not null	default now()	,
constraint primary key(no)									,
constraint foreign key(sendID)
references userTbl(userID)				
);

insert into emailTbl
( sendID, sendEmail, emailTitle, emailContent, receiveEmail, sendTime)
values
('bridge', 'bridge@nate.com', '휴대폰 분실', '연락 안됩니다.', 'manager@nate.com', '2020-03-31'),
('tree', 'tree@daum.net', '휴가 보고서', '첨부 파일 참조', 'admin@comp.co.kr', '2020-06-29');
select * from emailTbl order by no desc;

# 문제1 Union : 순번, 제목, 내용, 시간 필드
select no, title, content, writeTime from articleTbl
union
select no, emailTitle, emailContent, sendTime from emailTbl;

# 문제2 Inner Join으로 구현하고 이를 bbsView라는 이름으로 View 객체를 생성

select * from userTbl order by no desc;
select * from articleTbl order by no desc;
# select * from emailTbl order by no desc;

create view bbsView as
select
a.no '순번',
a.writerID '작성자 ID',
u.userNick '닉네임',
u.userLevel '회원레벨',
a.title '글제목',
date(a.writeTime) '글작성시간' from
articleTbl as a inner join userTbl as u
on a.writerID=u.userID
order by a.no;

select * from bbsView;

# 문제 3. userTbl 회원정보 삭제
set sql_safe_updates=0;

# 참조 관계의 테이블에 자료가 있을 경우 삭제/수정 등이 선행되어야 함.
select * from articleTbl order by no desc;
delete from articleTbl where writerID='apple';

delete from userTbl where userID='apple';
# Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`p04_bbs`.`articletbl`,
# CONSTRAINT `articletbl_ibfk_1` FOREIGN KEY (`writerID`) REFERENCES `usertbl` (`userID`))

select * from userTbl order by no desc;
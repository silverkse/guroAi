create database p04_BBS;
use p04_BBS;

# 1. userTbl 테이블 구현(회원목록 테이블)
create table userTbl (
no				int				not null	auto_increment	,
userID			char(20)		not null					,
userPW			char(20)		not null					,
userNick		char(20)		not null					,
userLevel		char			null  		default '1'		,
email			char(30)		not	null					,
cellPhone		char(15)		null						,
joinTime		timestamp		not null	default now()	,
constraint primary key(userID),
constraint unique(no)
);
desc userTbl;

insert into userTbl (userID, userPW, userNick, userLevel, email, cellPhone, joinTime)
values
('goodman', 'a123', '머그컵', '1', 'goodman@naver.com', '010-123-4567', '2018-06-11'),
('tree', 'b123', '노을', '1', 'tree@daum.net', '017-423-4568', '2018-07-24'),
('apple', 'c123', '커피', '2', 'apple@naver.com', '010-723-4569', '2018-11-01'),
('sea', 'd123', '캠핑', '3', 'sea@apple.com', '011-323-4560', '2019-02-17'),
('bridge', 'e123', '허브', '2', 'bridge@nate.com', '010-2623-4561', '2019-04-23');

select * from userTbl order by no;

drop table userTbl;

# 2. articleTbl 테이블 구현(게시판목록 테이블)
create table articleTbl (
no				int				not null	auto_increment	,
writerID		char(20)		not null					,
title			char(100)		not null					,
content			char(200)		not null					,
writeTime		timestamp		null		default now()	,
boardType		char(10)		not null					,
foreign key(writerID) references userTbl(userID)			,
constraint primary key(no)
);

insert into articleTbl (writerID, title, content, writeTime, boardType)
values
('goodman', '가입인사', '반갑습니다.', '2018-06-12', 'free'),
('apple', '문의사항', '이미지 업로드 안됩니다.', '2018-12-23', 'image'),
('tree', '연락처변경', '연락처 변경 어떻게 하나요?', '2019-01-05', 'qna');

select * from articleTbl order by no;


# 3. emailTbl 테이블 구현(이메일 발신 내역 테이블)
create table emailTbl (
no				int				not null	auto_increment	,
sendID			char(20)		not null					,
sendEmail		char(30)		not null					,
emailTitle		char(100)		not null					,
emailContent	char(200)		null						,
receiveEmail	char(30)		not null					,
sendTime		timestamp		not null	default now()	,
foreign key(sendID) references userTbl(userID)				,
constraint primary key(no)
);

insert into emailTbl ( sendID, sendEmail, emailTitle, emailContent, receiveEmail, sendTime)
values
('bridge', 'bridge@nate.com', '휴대폰 분실', '연락 안됩니다.', 'manager@nate.com', '2020-03-31'),
('tree', 'tree@daum.net', '휴가 보고서', '첨부 파일 참조', 'admin@comp.co.kr', '2020-06-29')
;

select * from emailTbl order by no;


# 4. 게시판목록 테이블(articleTbl)과 이메일 발신 내역 테이블(emailTbl)을 사용하여
# [순번, 제목, 내용, 시간] 필드로 구성된 Union 결과를 조회하시오.
select no '순번', title '제목', content '내용', writeTime '시간' from articleTbl
union
select no, emailTitle, emailContent, sendTime from emailTbl;


# 5. 
select a.no '순번', userID '작성자 ID', userNick '닉네임', userLevel '회원레벨', title '글제목', writeTime '글작성시간'
from userTbl as u inner join articleTbl as a on u.userID = a.writerID order by a.no;

create view bbsView as
select a.no '순번', userID '작성자 ID', userNick '닉네임', userLevel '회원레벨', title '글제목', writeTime '글작성시간'
from userTbl as u inner join articleTbl as a on u.userID = a.writerID order by a.no;

select * from bbsView;


# 6. userTbl 테이블에서 순번 3에 해당하는 회원 ID : apple 자료를 삭제합니다.
# 	• 참고. 정상적으로 삭제되지 않습니다. 삭제에 필요한 추가 작업을 적절히 적용해야만 삭제할 수 있습니다.
set sql_safe_updates=0;
delete from emailTbl where sendID='apple';
delete from articleTbl where writerID='apple';
delete from userTbl where userID='apple';
select userID from userTbl order by userID;

drop database p04_BBS;
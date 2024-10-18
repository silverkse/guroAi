##### D/N : community #####

create database community;
use community;

create table bbs_TBL (
no 				int 			auto_increment,
writerID 		char(30) 		not null,
articleTitle	char(50) 		not null,
readCnt 		int 			not null,
writeTM 		timestamp 		not null,
filename 		char(100) 		null,
constraint pk_BBS_TBL primary key (no)
);
desc bbs_TBL;

insert into bbs_TBL
(writerID, articleTitle, readCnt, writeTM)
values
('tree', '연습글제목입니다.', 0, now());

insert into bbs_TBL
(writerID, articleTitle, readCnt, writeTM)
values
('hana02', '안녕하세요!', 0, now()),
('tree', '자기 소개입니다.', 0, now()),
('camping', '카페 매니저님 질문있습니다!', 0, now());

select * from bbs_TBL order by no desc;
select count(*) from bbs_TBL; 									# 입력된 자료의 수를 보여준다.
select concat(count(*), '개') from bbs_TBL;						# 자료에 '개'를 붙여서 출력할 수 있다.
select concat(count(*), '개') as '전체 개수' from bbs_TBL; 		# field의 제목을 정해줄 수 있다.
select concat(count(*), '개') '전체 개수' from bbs_TBL; 		# as는 생략 가능하다.
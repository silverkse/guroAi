##### D/N: GYM_Management #####

create database GYM_Management;
use GYM_Management;


create table userList (
no			int			auto_increment  not null		,
userID		char(20) 	not null			,
userPW 		char(20) 	not null							,
userNick 	char(20) 	not null							,
userLevel 	char		not null 	default '1'				,
email 		char(30) 	not null 							,
cellPhone 	char(15) 	null 								,
joinTime 	datetime 	not null 	default now() 			,
constraint primary key(userID),
constraint unique(no)	
);
desc userList;
# auto_increment 사용 시 unique나 pk를 지정해주지 않으면 아래와 같은 오류가 발생한다.
# Error Code: 1075. Incorrect table definition; there can be only one auto column and it must be defined as a key

# primary key를 이중으로 적용 시 아래와 같은 오류가 발생한다.
# Error Code: 1068. Multiple primary key defined
# 그래서 다음과 같이 field 두 개에 한 번에 primary key를 지정할 수 있다.
# constraint primary key(no, userID)	

# unique는 unique()로 사용해도 되고, unique key()로 사용해도 된다.

drop table userList;

# table 명 변경
alter table userList rename memberList;
desc memberList;

# column 명 변경
alter table memberList change column userNick name char(20);

# 자료형 변경
alter table memberList change column joinTime joinTime timestamp;

# column 추가
alter table memberList add column address char(50) null;

# column 삭제
alter table memberList drop column cellPhone; 

##############################################

# quiz01
alter table memberList add column age smallint null;
alter table memberList change column address addr char(50) null;
alter table memberList drop column userLevel;
alter table memberList drop column joinTime;
alter table memberList drop column userLevel, drop column joinTime;

#quiz02
desc memberList;
insert into memberList values
(1, 'hana02', '1234', '김하나', 'hana@naver.com', '서울시 송파구 성내동 23', 25),
(2, 'orange', '1234', '이성수', 'ssyu3@daum.net', '경기도 부천시 원미구 중동 46', 36),
(3, 'camping', '1234', '박인호', 'good@google.com', '서울시	서대문구 대현동 9', 24),
(4, 'amp93', '1234', '김시현', 'card@naver.com', '경기도 파주시 운정동 85', 36),
(5, 'boxer', '1234', '최정인', 'send@test.co.kr', '서울시 강남구 역삼동 12', 30),
(6, 'time5', '1234', '하정태', 'hajeong@daum.net', '경기도 용인시 기흥구 보라동 63', 31),
(7, 'skyblue', '1234', '박윤정', 'heart@google.com', '경기도 남양주시 다산동 205', 36),
(8, 'tree', '1234', '이가람', 'tree@naver.com', '경기도 부천시 원미구 상동 7', 31);

insert into memberList (userID, userPW, name, email, addr, age) values
('hana02', '1234', '김하나', 'hana@naver.com', '서울시 송파구 성내동 23', 25),
('orange', '1234', '이성수', 'ssyu3@daum.net', '경기도 부천시 원미구 중동 46', 36),
('camping', '1234', '박인호', 'good@google.com', '서울시 서대문구 대현동 9', 24),
('amp93', '1234', '김시현', 'card@naver.com', '경기도 파주시 운정동 85', 36),
('boxer', '1234', '최정인', 'send@test.co.kr', '서울시 강남구 역삼동 12', 30),
('time5', '1234', '하정태', 'hajeong@daum.net', '경기도 용인시 기흥구 보라동 63', 31),
('skyblue', '1234', '박윤정', 'heart@google.com', '경기도 남양주시 다산동 205', 36),
('tree', '1234', '이가람', 'tree@naver.com', '경기도 부천시 원미구 상동 7', 31);

select * from memberList order by no asc;
select count(*) from memberList;
select count(age) from memberList;

set sql_safe_updates=0;
delete from memberList;

select * from memberList order by no asc;

select distinct userPW from memberList; 		# 중복데이터를 하나로 표시한다.
select distinct(age) from memberList;
select distinct(age), name from memberList; 	# 이런 경우 모두 표시된다.
select count(distinct age) from memberList;

select * from memberList order by no;
# select * from T/N where C/N 및 적용할 조건;
select * from memberList where age>=25 and age<=30;
select * from memberList where age between 25 and 30;
# && 기호도 가능 => 논리곱, and 조건, 연속구간
# 이상과 이하를 의미하는 구간을 지칭할 때 위의 논리곱을 적용한다. 또한, 이것은 아래 구문으로 사용할 수 있다.
# C/N between A and B
# => A는 최소 범위, B는 최대 범위
select * from memberList where age<25 or age>30;
# || => 논리합, or조건, 분산구간
# 미만, 이하, 이상, 초과
#  <     <=    >=     >
#        =<    =>       안됨

select * from memberList order by no;

# 문자열 조건 검색(조회)
select * from memberList where name='김시현';
select * from memberList where addr='서울시'; 		# =을 사용했기 때문에 전체 문자열이 서울시인것을 찾음
# 대표문자 = 와일드 카드(Wild Card) => %와 like 조합 => = 기호를 사용하지 않음
select * from memberList where addr like '서울시%'; # %서울시, %서울시%, 서울시%
select * from memberList order by no asc;

# 여러 자료를 검색할 때
select * from memberList where userID='camping' or userID='tree';
# 아래와 동일함
select * from memberList where userID in ('camping', 'tree');

# 전체 자료에서 google 이메일 계정을 사용하는 모든 자료 조회 해보기
select * from memberList where email like '%google%';

select * from memberList order by no asc; 	# no 컬럼의 1차 정렬 = 전체 자료 정렬

# 2차 정렬 = 1차 정렬의 결과 중에서 동일한 대상의 재정렬

# 1차 정렬 보기
select * from memberList order by age desc;

# 2차 정렬 보기
select * from memberList order by age desc, name desc;

# 출력 범위 지정(=출력 개수 지정)
select * from memberList order by no asc;
# select * from memberList order by 시작인덱스번호, 출력할 개수;
select * from memberList order by no asc limit 0, 2;
select * from memberList order by no asc limit 4, 2;

# Quiz3
select no, userID, name, email from memberList where name like '이%';
# T answer
select no, userID, name, email from memberList where name like '이%' order by no asc;
# %이%로 하면 김이나, 정한이 등등이 안걸러진다.

# Quiz4
select no, name as '이름', addr as '주소', userId, age from memberList where addr like '경기도%' order by name asc;
# T answer
select no, name '이름', addr '주소', userID, age from memberList where addr like '경기도%' order by name asc;

# quiz5
select count(email) as '네이버 메일 사용자 수' from memberList where email like '%naver%';
-- count 사용 시 *을 쓰는것을 권장함. naver라고하면 naver@google.com 같은 것을 못 골라 냄.
# T answer
select count(*) '네이버 메일 사용자 수' from memberList where email like '%@naver.com%';

select * from memberList group by age order by no;
# Error Code: 1055. Expression #1 of SELECT list is not in GROUP BY
# clause and contains nonaggregated column 'gym_management.memberList.name'
# which is not functionally dependent on columns in GROUP BY clause;
# this is incompatible with sql_mode=only_full_group_by


select distinct age from memberList;
# 중복된 데이터를 1개로 표시한다.

select count(name), age from memberList group by age;

# 그룹을 지정한 대상의 다른 컬럼에 대해 집계함수를 적용해야만 한다.
# 집계함수 => count(), max(), min(), avg(), sum(), ...
# group by를 적용한 컬럼(age)은 같은 데이터들을 묶어 1개로 표시하기 때문에
# 집계함수를 적용할 데이터가 존재하고 있음.

# select count(name), distinct age from memberList group by age; 	에러발생

select name, age from memberList order by age desc;

# group by의 조건절 having
# having 조건절은 group by를 반드시 사용해야만 적용할 수 있다.
# 또한 having은 group by 결과에 대한 조건만 적용할 수 있다.
# 참고. where 조건절은 전체 데이터에 대하여 조건을 적용하는 것.

select no, name, age, addr from memberList order by no asc;
select age from memberList where age>=30 order by no asc;

select count(no), age from memberList group by age having count(no)>=2;
# having은 group by 결과에 대한 조건

select * from memberList order by no;
select * from memberList group by age;

# DDL, DCL, DML, TCL(Transaction Control Language)
set sql_safe_updates=0; 	# update, delete 제한 없음
set sql_safe_updates=1; 	# 기본 설정 / update, delete 제한

# set sql_safe_updates 쿼리는 TCL과 직접적인 관계없음.

set autocommit=0;
# set autocommit은
# insert, update, delete를 사용할 때 작업을 임시적용하는 단계를 별도로 지정해둔다.
# 곧바로 최종적용되지는 않음

select * from memberList order by no;
insert into memberList (userID, userPW, name, email, addr, age) values ('lemon', '1234', '레몬', 'lemon@nate.com', '서울시 구로구', 41);
commit;

delete from memberList where userID='lemon';

rollback;

# TCL 구문 => insert, update, delete 구문에 대하여 실행 후 최종 적용까지
# 			  rollback, commit의 명령어를 사용하여 적용여부를 결정하는 구문
# 			  먼저 set autocommit=0;으로 설정해야만 위의 기능을 적용할 수 있다.
# 			  set autocommit=1;로 설정하면 위의 기능은 해제된다. 즉, 실행즉시 최종 적용된다.

commit;
select * from memberList order by no asc;
set autocommit=0; 	# rollback, commit 을 기능 여부를 결정하는 쿼리
					# insert, update, delete에 대한 최정 적용 대기 설정

set sql_safe_updates=0; 	# update, delete 실행에 대한 허용

delete from memberList where no=18;
# set autocommit=0; => 자동 적용(autocommit) 설정이 해제되어 있으므로 select로 조회 후
# 작업하는 예상 결과와 동일하다면 commit을 실행하여 최종반영하고, 예상결과와 다르다면 rollback을 실행하여
# 작업 전 상태로 되돌린다.

select * from memberList order by no asc;
commit;
rollback;

savepoint ppp; 	# commit, rollback 시작지점

update memberList set addr='중랑구 면목동' where no=16;

rollback to ppp; 	# 명령을 몇개를 실행했어도 savepoint를 설정한 시점으로 돌아간다.
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
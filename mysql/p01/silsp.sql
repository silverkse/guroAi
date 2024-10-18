create database school;
use school;

create table student (
	num			int			not null	,		-- not null은 미입력 불허 = 필수입력
    id			char(10)	primary key	,		# primary key는 기본키
    name		char(10)	not null	,		# 기본키의 값은 중복값을 불허하고 not null이다.
    age			int			null		,		# null은 미입려 허용
    address		char(50)	not null	
);

drop table student;

# describe T/N;
describe student;
desc student;

# 자료입력
# insert into T/N (C/N1, C/N2, ...) values (Data1, Data2, ...);
insert into student (num, id, age, name, address)
	values (1, 'tester01', 17, '테스터01', '경기도 남양주시');
# Error Code: 1062. Duplicate entry 'tester01' for key 'student.PRIMARY'
insert into student (num, id, age, name, address)
	values (2, 'lemon', 23, '레몬', '서울 상봉동');


    
# 수정, 삭제 하기전 설정
set sql_safe_updates=0;

# 수정
# update T/N set 수정할C/N1=수정할Data1, 수정할C/N2=수정할Data2, ...;
desc student;
select * from student;
update student set age=20;
update student set age=17 where num=2;
#						  ----------- 조건절

# 자료조회 (여러 줄 블럭 잡고 ctrl+shift+enter하면 전부 다 실행 됨)
select num, id, name from student;
select id, num, name, age, address, age from student;
select * from student;

# 0. 현재 MySQL의 데이터베이스 목록 보기
#	show databases;

# 1. 데이터베이스 생성
# 	create database D/N;
# 	참고. DB 삭제 => drop database D/N;

#	현재 DB의 테이블 목록 보기(use D/N; 선행 후 확인)
#	=> show tables;

# 2. 사용할 데이터베이스 지정
# 	use D/N; 

# 3. 테이블 생성
# 	create table T/N (
# 	C/N1		D/T(L)		[Constraint],
# 	C/N2		D/T(L)		[Constraint],
# 	...
# 	);
# 	D/T => int, char(개수)
# 	Constraint(제약조건)
# 	=> null/not null, primary key, unique
# 		자동증가 속성 auto-increment
# 		기본값 속성 default

#	자료의 CRUD 관련 내용(Insert, Select, Update, Delete)

# 생성된 테이블의 명세(=구조 보기)
#	desc T/N; 또는 describe T/N;

# 생성된 테이블 삭제
# 	drop table T/N; (만일 참조키 설정이 되어있고, 실제 데이터가 있다면 삭제 안됨.
#					-> 데이터 삭제 후 테이블 제거 가능)

# 4. 자료의 입력
# 	insert into T/N (C/N1, C/N2, ... )
# 	values (Data1, Data2, ... );
#	컬럼의 개수와 입력 값의 개수는 동일해야 함
# 	모든 컬럼에 자료를 입력할 경우 컬럼명을 생략할 수 있음
#	insert into T/N values (Data1, Data2, ... );
#	단, desc T/N; 명령을 실행했을 때의 컬럼 순서대로 자료를 입력해야 함

# 5. 자료의 조회
# 	select C/N1, C/N2, ... from T/N;
# 	select * from T/N;
#	* = all
#	특정 자료의 조회
#	select C/N1, C/N2, ... from T/N where 특정C/N=특정Data;

# 6. 자료의 수정, 삭제
# 	먼저 set sql_safe_updates=0; 실행(이것을 하지 않으면 업데이트나 삭제에서 적용되지 않는 것도 있음)

# 	1) 전체 자료의 수정
#		update T/N set 수정할C/N1=수정할Data1,
#						수정할C/N2=수정할Data2
#						...;
# 	2) 특정 자료의 수정
#		update T/N set 수정할C/N1=수정할Data1,
#						수정할C/N2=수정할Data2
#						...
#						where 특정C/N=특정Data;
#						=> 특정 자료만 수정 됨. where를 조건절 또는 부속절이라고 한다.

# 	3) 전체 자료의 삭제
#		delete from T/N;

# 	4) 특정 자료의 삭제
#		delete from T/N where 특정C/N=특정Data;

show databases;
use school;
show tables;
desc student;

select * from student;
select num, name, age, id from student;
select * from student where id='lemon';

insert into student values (3, 'sky', '하늘', 37, '대전시');

# 출력결과는 PK 오름차순이 자동적용된다.
# 참고. PK(프라이머리 키, 기본키, 쿼리 작성에서는 반드시 primary key)
# PK 자동정렬방식이 아닌 수동 정렬을 지정 
# 오름차순 정렬
# select C/N1, ... from T/N order by 정렬한컬럼 asc;
#	단, asc가 기본값이므로 생략 가능
#	select C/N1, ... from T/N order by 정렬한컬럼;

# 내림차순 정렬
# select C/N1, ... from T/N order by 정렬한컬럼 desc;

select * from student order by name;
select * from student order by num asc;
select * from student order by address desc;

select * from student order by num asc;

# 테스터01 => 나무
set sql_safe_updates=0;		# 처음 수정, 삭제할 때는 반드시 실행
update student set name='나무' where id='teset01';
# 하늘 data만 지워보기
delete from student where id='sky';


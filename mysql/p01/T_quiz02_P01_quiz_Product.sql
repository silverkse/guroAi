##### D/N : p01_quiz_product #####

drop database p01_quiz_product;

create database p01_quiz_product;
use p01_quiz_product;

create table goodsList(
num 		int 					,
code		char(5)		not null	,
name		char(30)	not null	,
price		int						,
maker		char(20)	null		,
cnt			int						,
mfg			timestamp				,
constraint goodsListPK primary key(num)
);

# timestamp에 default now() 사용해보기
create table goodsList(
num 		int 					,
code		char(5)		not null	,
name		char(30)	not null	,
price		int						,
maker		char(20)	null		,
cnt			int						,
mfg			timestamp	default now()	,
constraint goodsListPK primary key(num)
);
desc goodsList;

insert into goodsList values
(1, 'A001', '디지털TV', 520000, '제일', 7,'2016-04-27'),
(2, 'A002', 'DVD', 240000, '제일', 4,'2016-06-08'),
(3, 'U101', 'DSLR', 830000, '우수', 8,'2015-12-19'),
(4, 'U102', '전자사전', 160000, '우수', 3,'2015-11-30'),
(5, 'H704', '전자렌지', 90000, '하나', 11,'2016-02-15');

insert into goodsList values
(1, 'A001', '디지털TV', 520000, '제일', 7,'2016-04-27');

# insert into goodsList values
# (2, 'A002', 'DVD', 240000, '제일', 4);
# Error Code: 1136. Column count doesn't match value count at row 1
# 위 처럼 컬럼의 일부에만 데이터를 입력한다면, 아래 쿼리 처럼 컬럼을 명시해주어야 정상 실행된다. 
insert into goodsList (num, code, name, price, maker, cnt) values
(2, 'A002', 'DVD', 240000, '제일', 4);

select * from goodsList order by num desc;

insert into goodsList values
(3, 'U101', 'DSLR', 830000, '우수', 8,'2015-12-19'),
(4, 'U102', '전자사전', 160000, '우수', 3,'2015-11-30'),
(5, 'H704', '전자렌지', 90000, '하나', 11,'2016-02-15');

select * from goodsList order by num desc;				-- 표준SQL
select * from goodsList order by num desc limit 0, 3;	-- 개별SQL, MySQL에서 가능
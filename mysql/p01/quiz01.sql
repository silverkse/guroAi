create database p01_quiz_store;
show databases;
use p01_quiz_store;

create table orderList (
	num			int			primary key		,
    item		char(30)	not null		,
    unitPrice	int							,
    price		int							,
    cnt			int
);

show tables;
desc orderList;

insert into orderList values (
	1, '햄버거', 6000, 12000, 2
);
insert into orderList values (
	2, '피자', 21000, 21000, 1
);
insert into orderList values (
	3, '커피', 2500, 7500, 3
);

select * from orderList;
select * from orderList order by num asc;

# 데이터 삭제 후 여러개 한 번에 insert 하기
set sql_safe_updates=0;
delete from orderList;
insert into orderList values
(1, '햄버거', 6000, 12000, 2),
(2, '피자', 21000, 21000, 1),
(3, '커피', 2500, 7500, 3)
;
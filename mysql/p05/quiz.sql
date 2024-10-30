create database p01_quiz_store;		# 이미 있음
use p01_quiz_store;

create table orderList (			
num			int							,
item		char(30)		not null	,
unitPrice	int							,
price		int							,
cnt			int							,
constraint primary key(num)
);

insert into orderList values
(1, '햄버거', 6000, 12000, 2),
(2, '피자', 21000, 21000, 1),
(3, '커피', 2500, 7500, 3);

select * from orderList order by num;
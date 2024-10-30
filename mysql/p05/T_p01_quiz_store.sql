##### D/N : p01_quiz_store #####
## 


create database p01_quiz_store;
use p01_quiz_store;

create table orderList (
num			int						,
item 		char(30)	not null	,
unitPrice	int						,
price		int						,
cnt			int						,
constraint primary key(num)
);
desc orderList;

select * from orderlist order by num desc;

update orderList set unitPrice=21000 where num=2;
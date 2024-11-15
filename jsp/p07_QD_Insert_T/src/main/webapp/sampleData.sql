##### D/N : sampleData

create database sampleData;
use sampleData;

drop database sampleData;

create table goodsList (
num			int			auto_increment	unique	,
goodsCode	char(20)					,
goodsName	char(20)	not null		,
price		int							,
cnt			int							,
constraint unique(num)					,
constraint primary key(goodsCode)		
);

desc goodsList;

insert into goodsList values
(1, 'bread03', '단팥빵', 2000, 23),
(2, 'coffee05', '라떼', 3500, 50),
(3, 'milk', '우유', 1200, 35);

select * from goodsList order by num desc;
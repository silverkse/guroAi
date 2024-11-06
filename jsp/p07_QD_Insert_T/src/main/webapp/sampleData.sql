##### D/N : sampleData

create database sampleData;
use sampleData;

create table goodsList (
num			int			auto_increment	unique	,
goodsCode	char(20)					,
goodsName	char(20)	not null		,
price		int							,
cnt			int							,
constraint unique(num)					,
constraint primary key(goodsCode)		
);
##### D/N : shopManager

create database shopManager;
use shopManager;

create table goodsList (
num			int			auto_increment	,
goodsCode	char(20)					,
goodsName	char(20)	not null		,
price		int			null			,
cnt			int			not null		,
regTM		timestamp	default now()	,
constraint primary key(goodsCode)		,
constraint unique(num)
);
desc goodsList;

drop table goodsList;

insert into goodsList (goodsCode, goodsName, price, cnt) values
('deo200', '디퓨저', 15000, 142),
('re03', '디퓨저 리필', 8000, 370);

select * from goodsList order by num desc;

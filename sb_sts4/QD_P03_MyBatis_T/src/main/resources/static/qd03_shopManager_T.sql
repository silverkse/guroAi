##### D/N : shop Manager
create database shopManager;
use shopManager;

create table goodsList (
num			int 		auto_increment	,
goodsCode	char(20)					,
goodsName	char(20)	not null		,
price		int							,
cnt			int			not null		,
regTM		timestamp	default now()	,
constraint primary key(goodsCode)		,
constraint unique(num)
);
desc goodsList;

select * from goodsList order by num desc;

set autocommit = 1;

delete from goodsList where num = 2;
delete from goodsList where num = 1;

delete from goodsList where num in (2, 1);

rollback;
##### D/N : stock_Mgr #####

create database stock_Mgr;
use stock_Mgr;

create table goodsList (
num			int			auto_increment	,
gCode		char(20)	not null		,
gName		char(20)	not null		,
price		int			default 0		,
regTM		timestamp	default now()	,
constraint primary key(gCode)			,
constraint unique(num)
);
desc goodsList;

alter table goodsList change column gName gName char(20) not null;

insert into goodsList (gCode, gName, price, regTM)
values ('a001', '헤드폰', 245000, '2019-11-30');

select * from goodsList order by num desc;

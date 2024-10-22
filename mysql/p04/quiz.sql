create database shoppingMall;
use shoppingMall;

create table productList (
seq				int				not null auto_increment		,
productCode		char(30)		not null					,
productName		char(10)		null						,
stockVol		int											,
pDate			char(20)									,
personCharge	char(20)									,
sellPrice		int				null	default 0			,
constraint unique(seq),
constraint primary key(productCode) 
);
desc productList;

drop table store;

alter table productList rename store;
desc store;

alter table store change column productCode pCode char(30);
alter table store change column productName pName char(30) null;
alter table store change column pDate pDate datetime null;
alter table store add column pCost int null;
alter table store add column gType char(30) null;
alter table store add column salesVol int null;
alter table store drop column personCharge;

insert into store (pCode, pName, stockVol, salesVol, pDate, sellPrice, pCost, gType)
values
('F257', '삼겹살', 52, 71, '2020-03-11', 6400, 4800, 'Food'),
('D105', '썬크림', 30, 104, '2020-02-24', null, 5200, 'Daily'),
('P30', '보급형	휴대폰', 5, 7, '2020-12-27', 360000, 470000, 'Phone'),
('P70', '폴더블	폰', 2, 2, '2020-03-04', 1325000, 1190000, 'Phone'),
('F330', '생수', 61, 242, '2020-02-26', 7800, 6100, 'Food'),
('C45', '발목양말', 27, 71, ' 2019-11-30', 1500, 840, 'Wear'),
('F647', '라면', 260, 193, ' 2020-02-25', 4150, 3300, 'Food'),
('D002', '치약', 23, 0, '2020-01-09', 0, 0, null),
('D913', '키친타월', 46, 15, '2019-12-14', 4580, 2900, 'Daily'),
('D854', '핸드크림', 9, 3, '2019-07-08', 5000, 5000, 'Daily')
;
# 10 row(s) affected, 2 warning(s): 4096 Delimiter ' ' in position 0 in datetime value ' 2019-11-30' at
# row 6 is superfluous and is deprecated. Please remove. 4096 Delimiter ' ' in position 0 in datetime
# value ' 2020-02-25' at row 7 is superfluous and is deprecated. Please remove. Records: 10  Duplicates: 0 Warnings: 2

select * from store order by seq;

# 1.
select seq, pCode, pName, sellPrice, gType from store where sellPrice is null or gType is null;

# 2.
set sql_safe_updates=0;
update store set sellPrice=8500 where pCode='D105';

# 3.
update store set salesVol=54, sellPrice=5900, pCost=3400, gType='Daily' where pCode='D002';

# 4.
select * from store order by salesVol desc limit 0,3;

# 5.
select gType from store group by gType;
select distinct gType from store;

# 6.
select * from store order by gType asc, stockVol desc;

# 7.
select * from store where pCode like '%F%' or pCode like '%D%' order by seq;

# 8.
select * from store where stockVol <= 30;

# 9.
update store set pCode='F412', pDate='2020-03-21' where pName='삼겹살';

# 10.
select max(salesVol), min(salesVol) from store where gType='Food';

select * from store order by seq;

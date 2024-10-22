##### D/N : shoppingMall #####

create database if not exists shoppingMall;
use shoppingMall;

create table productList (
seq				int			not null auto_increment		,
productCode		char(30)	not null					,
productName		char(10)								,
stockVol		int										,
pDate			char(20)								,
personCharge	char(20)								,
sellPrice		int			default 0					,
constraint primary key(productCode)						,
constraint unique(seq) 
);
desc productList;

# 테이블 명 변경 : productList => store
alter table productList rename store;
show tables;

# 1. 필드명 변경
alter table store change column productCode pCode char(30) not null;

# 2. 필드명, 자료형 변경
alter table store change column productName pName char(30) null;

# 3. 자료형 변경
alter table store change column pDate pDate datetime;

# 4. 필드 추가
alter table store add column pCost int null;

# 5. 필드 추가
alter table store add column gType char(30);

# 6. 필드 추가
alter table store add column salesVol int;

# 7. 필드 삭제
alter table store drop column personCharge;

desc store;

insert into store
(pCode, pName, stockVol, salesVol, pDate, sellPrice, pCost, gType)
values
('F257', '삼겹살', 52, 71, '2020-03-11', 6400, 4800, 'Food'),
('D105', '썬크림', 30, 104, '2020-02-24', null, 5200, 'Daily'),
('P30', '보급형 휴대폰', 5, 7, '2020-12-27', 360000, 470000, 'Phone'),
('P70', '폴더블	폰', 2, 2, '2020-03-04', 1325000, 1190000, 'Phone'),
('F330', '생수', 61, 242, ' 2020-02-26', 7800, 6100, 'Food'),
('C45', '발목양말', 27, 11, '2019-11-30', 1500, 840, 'Wear'),
('F647', '라면', 260, 193, ' 2020-02-25', 4150, 3300, 'Food'),
('D002', '치약', 23, 0, '2020-01-09', 0, 0, null),
('D913', '키친타월', 46, 15, '2019-12-14', 4580, 2900, 'Daily'),
('D854', '핸드크림', 9, 3, '2019-07-08', 5000, 5000, 'Daily');

select * from store order by seq desc;

# 1. 전체자료에서 판매가 필드와 분류 필드에 NULL이 입력되어 있는 자료만 조회하세요.
# (출력 필드 ➜ 번호, 상품코드, 상품명, 판매가,	분류)
select seq, pCode, pName, sellPrice, gType from store where sellPrice is null or gType is null order by seq;
select * from store order by seq desc;

# 2. 상품코드 D105인 썬크림의 판매가를 8500원으로 수정하세요.
set sql_safe_updates=0;
update store set sellPrice=8500 where pCode='D105';
select * from store order by seq desc;

# 3. 상품코드	D002,	상품명	치약의	데이터를	아래	내용으로	수정하세요.	
#	• 판매량 ➜ 54개		• 판매가 ➜ 5900원		• 원가 ➜ 3400원		• 분류 ➜ Daily
update store set
salesVol=54,
sellPrice=5900,
pCost=3400,
gType='Daily'
where pCode='D002';

select * from store order by seq desc;

# 4. 전체데이터에서 판매량의 내림차순으로 상위 3개의 데이터만 조회하세요.
select * from store order by salesVol desc limit 0, 3;
select * from store order by salesVol desc;

# 5. 상품 분류 컬럼에서 상품의 종류를 중복하지 않고 1개씩 조회하세요. 단, 분류필드만 조회합니다.
select gType from store;
select distinct gType from store;

# 6. 전체 데이터를 상품 분류의 오름차순으로 정렬하여 조회한 결과에서
# 분류가 동일한 데이터의 재고량 내림차순으로 정렬하여 조회하세요.
select gType, stockVol, pName from store
order by gType, stockVol desc;

# 7. 상품코드에서 'D'와 'F'를 포함하는 모든 자료를 조회하세요.
select * from store where pCode like 'D%' or pCode like 'F%' order by seq desc;

# 8. 재고량이 30개 이하인 모든 상품을 조회하세요.
select * from store where stockVol <= 30 order by stockVol desc;

# 9. 상품명이 '삼겹살'인 제품의 상품코드와 생산일을 각각 'F412'와 '2020-03-21'로 변경하세요.
update store set
pCode='F412',
pDate='2020-03-21'
where pName='삼겹살';

# 10. 상품분류에서 'Food'에 해당하는 상품들중에서 최대판매량 제품과 최소판매량 제품을 조회하세요.
# 1) 최대 판매량 산출 
select
max(salesVol) as '최대판매량'
from store
where gType='Food';

# 2) 최대판매량을 사용한 제품명 출력
select pName from store where salesVol in (242);

# 1), 2) 결합
select
max(salesVol) as '최대판매량'
from store
where gType='Food';

select
pName as '최대판매량'
from store
where salesVol in (select max(salesVol) from store where gType='Food');

select pName, gType, salesVol from store where gType='Food' order by salesVol desc;

show tables;
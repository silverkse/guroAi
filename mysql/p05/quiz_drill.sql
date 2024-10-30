use community;
show tables;
select * from bbs_tbl;

create table memberList (
seq			int			auto_increment	,
name		char(10)	not null		,
memID		char(20)	not null		,
tel			char(15)					,
regTM		timestamp	default now()	,
constraint unique(seq)					,
constraint primary key(memID));

insert into memberList (name, memID, tel, regTM) values
('바다', 'sea', '0102223333', '2022-07-12'),
('망고', 'yellow', '0105556666', '2022-08-29'),
('나무', 'tree', '0108889999', default);

select * from memberList order by seq;
drop table memberList;

create table clubFee (
seq		int			auto_increment	,
memID	char(20)	not null		,
money	int			not null		,
payTM	timestamp	not null		,
constraint primary key(seq)
);

insert into clubFee (memID, money, payTM) values
('yellow', 20000, '2023-01-05'),
('sea', 20000, '2023-01-07'),
('sea', 25000, '2023-02-06'),
('yellow', 25000, '2023-02-10');

select * from clubFee order by seq;

select cF.seq, name, mL.memID, cF.money, cF.payTM
from memberList mL inner join clubFee cF 
on mL.memID=cF.memID order by cF.seq desc;
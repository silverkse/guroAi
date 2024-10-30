create table memberList (
seq			int			auto_increment	,
name		char(10)	not null		,
memID		char(20)	not null		,
tel			char(15)					,
regTM		timestamp	default now()	,
constraint unique(seq)					,
constraint primary key(memID)
);
desc memberList;

insert into memberList
(name, memID, tel, regTm)
values
('바다', 'sea', '0102223333', '2022-07-12'),
('망고', 'yellow', '0105556666', '2022-08-29'),
('나무', 'tree', '0108889999', now());


create table clubFee (
seq			int			auto_increment	,
memID		char(20)	not null		,
money		int			not null		,
payTM		timestamp	not null		,
constraint primary key(seq)
);
desc clubFee;

insert into memberList
(memID, money, payTM)
values
('yellow', 20000, '2023-01-05'),
('sea', 20000, '2023-01-27'),
('sea', 25000, '2023-02-06'),
('yellow', 25000, '2023-02-10');

select * from clubFee order by seq desc;

create view clubFeeView as
select
c.seq, m.name, c.memID, money, payTM
from memberList m inner join clubFee c
on m.memID=c.memID
order by c.seq desc;

select seq, name, memID, money, payTM from clubFeeView;use GYM_Management;
use GYM_Management;

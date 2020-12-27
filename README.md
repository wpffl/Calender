# -Calender

[ 데이터 베이스 테이블 ]

create table sch(
idx number,
nickname nvarchar2(10) not null, 
type nvarchar2(2),
title nvarchar2(50),
content nvarchar2(50), 
startyear number not null,
startmonth number not null,
startday number not null,
starthour number not null,
startminute number not null,
endyear number not null,
endmonth number not null,
endday number not null,
endhour number not null,
endminute number not null,
regdate date default sysdate not null,
locker int not null, 
constraint fk_nickname foreign key(nickname) 
references usertbl(nickname)
);

create sequence s_idx 
start with 1
increment by 1;

select * from sch;

create table usertbl(
id nvarchar2(10) not null unique,
pwd nvarchar2(20) not null,
name nvarchar2(10) not null,
nickname nvarchar2(10) not null primary key,
birthy number not null,
birthm number not null,
birthd number not null,
ph1 number not null,
ph2 number not null,
ph3 number not null,
email nvarchar2(50) not null
);

select * from usertbl;

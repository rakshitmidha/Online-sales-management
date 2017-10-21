create table OSM_PRODUCT(
ID varchar2(12) primary key,
name varchar2(50),
category varchar2(50),
price number(38),
quantity number(38),
status varchar2(50)
);

create table OSM_STORE(
ID number(10) PRIMARY KEY,
NAME varchar2(20),
REGION varchar2(10),
STATUS varchar2(10)
);

create table OSM_EMPLOYEE(
id number PRIMARY KEY,
name varchar2(50),
age number(2),
role varchar2(15),
phone number(38),
gender varchar2(10),
address varchar2(100)
);


create table OSM_QUERIES(
name varchar(20),
email varchar2(50),
meassage varchar2(50)
);


create sequence SEQ_EMPLOYEE
start with 100
increment by 1;

select * from OSM_PRODUCT
select * from OSM_STORE
select * from OSM_QUERIES
select * from OSM_EMPLOYEE;

drop table OSM_PRODUCT;
drop table OSM_EMPLOYEE;
drop table OSM_STORE;
drop table OSM_QUERIES;

delete * from OSM_EMPLOYEE

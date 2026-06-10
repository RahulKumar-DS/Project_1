create database sql10;
use sql10;
create table ayodhya (c1 int, c2 varchar(20));
create table ranopali (c1 int, c2 varchar(20), c3 date);
insert into ayodhya values (1,'hostel');
insert into ayodhya values (2,'room-3');
insert into ranopali values (3,"crossing","2018-06-01");
insert into ranopali values (4,"saket","2015-08-11");
select * from ayodhya;
select * from ranopali;
alter table ayodhya add column c3 varchar(20);
alter table ranopali add column c4 smallint;
insert into ayodhya values   (1,'hostel','room');

update ayodhya set c3='raj' where c1=1;


create table list(list_id int primary key  AUTO_INCREMENT, list_name varchar(20),mrp int);
insert into list(list_name,mrp) values('RENT',8000),('FEES',16500),('OTHERS',15000);
select * from list;
-- after (auto_increment) column name then values..

create table company(id int primary key auto_increment,name varchar(30),post varchar(30),salary int);
create table estimate(id int,estimate_name varchar(40),price int,quantity int);
insert into company(NAME,POST,SALARY) values("KAUSHAL","GM",10000),("MAHESH","CEO",9000),("VIJAY","MANAGER",8000),("AKASH","HR",7000);
insert into estimate values(ID,ESTIMATE_NAME,PRICE,QUANTITY),(1,'TENT',80000,20),(2,'FOOD',70000,56),(3,'NASTA',30000,7),
(4,'SWEETS',25000,10);
select*from company;
SELECT * FROM ESTIMATE;

select estimate_name,price, row_number() over (order by price desc ) as Rankings from estimate ;
select name,salary,row_number()over(order by salary desc) as ranking from company;

USE SQL10;
START transaction;
create table empA(id int PRIMARY KEY, ename VARCHAR (20), salary INT);
insert into empA values(1,'Raj',1000),(2,'Kishor',2000);
select * from empA;

UPDATE empA set salary=salary+500 where id=1;
UPDATE empA set salary= salary-200 where id=2;
select*from empA;
SAVEPOINT SP1;
ROLLBACK;
SELECT * FROM empA;
UPDATE empA set salary=salary+300 where id=2;
select * from empA;
COMMIT;
rollback;
UPDATE empA SET SALARY=SALARY+100 WHERE ID=2;
rollback;
SELECT*FROM empA;
update empA set salary=salary-200 where id=2;
commit;
update empA set salary=salary+200 where id=2;
rollback;

CREATE TABLE DEPTB(ID INT,NAME VARCHAR(20),SALARY INT);
INSERT INTO DEPTB VALUES(1,'ANKIT',1500),(2,'ALOK',1700);

USE SQL10;
START transaction;
create table empR(id int PRIMARY KEY, ename VARCHAR (20), salary INT);
insert into empR values(1,'JACK',1100),(2,'KishAN',2200);
SELECT * FROM empR;
start transaction;
update empR set salary = salary-200 where id=1;                -- debit--------------------
commit;





start transaction;
delete FROM empR WHERE salary=900;
SELECT * FROM EMPR;
rollback;
CREATE TABLE ITBP(ID INT,NAME VARCHAR(20),SALARY INT);
INSERT INTO ITBP VALUES(1,'ANKUR',1700),(2,'ANIL',1800);
start transaction;
update ITBP SET SALARY=SALARY+200 WHERE ID=1;
select * from itbp;
DROP TABLE ITBP;















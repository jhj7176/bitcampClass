drop table deptTest;
drop table empTest;
create table deptTest(
	deptno number primary key,
	loc varchar2(30) not null
);
insert into deptTest values (10, '서울');
insert into deptTest values (20, '부산');
insert into deptTest values (30, '대구');
insert into deptTest values (40, '대전');
create table empTest(
	empno number primary key,
	deptno number, 
	foreign key(deptno) references deptTest(deptno) on delete cascade
);
insert into empTest values(1111, 20);
insert into empTest values(5555, 10);
insert into empTest values(4444, 40);
insert into empTest values(2222, 30);
commit
select * from empTest;
select * from deptTest;
--delete from deptTest where deptno = 20;
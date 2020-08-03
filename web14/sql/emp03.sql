drop table emp03;
drop sequence emp03_seq;
create table emp03(
	sabun number primary key,
	name varchar2(30) not null,
	sub varchar2(50),
	nalja date,
	pay number(4)
);
create sequence emp03_seq;
insert into emp03 values (emp03_seq.nextval,'test1'||emp03_seq.currval,'dept'||emp03_seq.currval,sysdate,1000);
insert into emp03 values (emp03_seq.nextval,'test1'||emp03_seq.currval,'dept'||emp03_seq.currval,sysdate,1000);
insert into emp03 values (emp03_seq.nextval,'test1'||emp03_seq.currval,'dept'||emp03_seq.currval,sysdate,1000);
insert into emp03 values (emp03_seq.nextval,'test1'||emp03_seq.currval,'dept'||emp03_seq.currval,sysdate,1000);
insert into emp03 values (emp03_seq.nextval,'test1'||emp03_seq.currval,'dept'||emp03_seq.currval,sysdate,1000);
insert into emp03 values (emp03_seq.nextval,'test1'||emp03_seq.currval,'dept'||emp03_seq.currval,sysdate,1000);
insert into emp03 values (emp03_seq.nextval,'test1'||emp03_seq.currval,'dept'||emp03_seq.currval,sysdate,1000);
insert into emp03 values (emp03_seq.nextval,'test1'||emp03_seq.currval,'dept'||emp03_seq.currval,sysdate,1000);
commit;

select * from emp03;
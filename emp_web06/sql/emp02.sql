drop table emp02;
drop sequence emp02_seq;
create table emp02(
	sabun number primary key,
	name varchar2(30),
	hiredate date,
	pay number
);
create sequence emp02_seq;
--dummy data
insert into emp02 (sabun, name, hiredate, pay) values (emp02_seq.nextval+1110, '°­±æµ¿', sysdate, 1800);
insert into emp02 (sabun, name, hiredate, pay) values (emp02_seq.nextval+1110, 'È«±æµ¿', sysdate, 1200);
insert into emp02 (sabun, name, hiredate, pay) values (emp02_seq.nextval+1110, 'ÈïºÎ', sysdate, 400);
insert into emp02 (sabun, name, hiredate, pay) values (emp02_seq.nextval+1110, '³îºÎ', sysdate, 7500);
insert into emp02 (sabun, name, hiredate, pay) values (emp02_seq.nextval+1110, 'ÀÓ²©Á¤', sysdate, 2200);
insert into emp02 (sabun, name, hiredate, pay) values (emp02_seq.nextval+1110, 'ÀÌ¼ø½Å', sysdate, 5000);
--
commit;
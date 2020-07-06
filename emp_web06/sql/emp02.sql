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
insert into emp02 (sabun, name, hiredate, pay) values (emp02_seq.nextval+1110, '���浿', sysdate, 1800);
insert into emp02 (sabun, name, hiredate, pay) values (emp02_seq.nextval+1110, 'ȫ�浿', sysdate, 1200);
insert into emp02 (sabun, name, hiredate, pay) values (emp02_seq.nextval+1110, '���', sysdate, 400);
insert into emp02 (sabun, name, hiredate, pay) values (emp02_seq.nextval+1110, '���', sysdate, 7500);
insert into emp02 (sabun, name, hiredate, pay) values (emp02_seq.nextval+1110, '�Ӳ���', sysdate, 2200);
insert into emp02 (sabun, name, hiredate, pay) values (emp02_seq.nextval+1110, '�̼���', sysdate, 5000);
--
commit;
drop table dept01;
drop sequence dept01_seq;
create table dept01(
	num number primary key,
	id varchar2(30) unique not null,
	pw varchar2(16) not null,
	lev varchar2(15),
	dname varchar2(15),
	dtime date
);
create sequence dept01_seq;
--
insert into dept01 (num, id, pw, lev, dname, dtime) values (dept01_seq.nextval, 'admin', 'asdfasdf', '�������', '�������', sysdate);
insert into dept01 (num, id, pw, lev, dname, dtime) values (dept01_seq.nextval, 'monitor', 'asdfasdf', '����͸�', '����͸�', sysdate);
insert into dept01 (num, id, pw, lev, dname, dtime) values (dept01_seq.nextval, 'guest', 'asdfasdf', 'ȸ��', 'ȸ����', sysdate);
commit;
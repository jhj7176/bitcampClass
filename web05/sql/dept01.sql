drop table dept01;
drop sequence dept01_seq;
create table dept01(
	num number primary key,
	id varchar2(50) unique not null,
	pw varchar2(16) not null,
	name varchar(30) not null,
	lev number default 0
);
create sequence dept01_seq;
insert into dept01 values (dept01_seq.nextval, 'admin', 'asdfasdf', '주인' , 5);
insert into dept01 values (dept01_seq.nextval, 'master', '12341234', '관리자' , 4);
insert into dept01 values (dept01_seq.nextval, 'guest', '12341234', '손님', 2);
commit;
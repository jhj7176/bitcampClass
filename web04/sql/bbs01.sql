drop table bbs01;
drop sequence bbs01_seq;
--
create table bbs01 (
	num number primary key,
	sub varchar2(30) default '�������',
	nalja DATE,
	id varchar2(30),
	content varchar2(2000),
	ref number,
	no number,
	lev number
);
--dummy date
create sequence bbs01_seq;
commit;
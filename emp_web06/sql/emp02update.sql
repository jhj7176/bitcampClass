create or replace procedure emp02update
(
result out binary_integer,
psabun emp02.sabun%type,
pname emp02.name%type,
ppay emp02.pay%type
)
is
begin
update emp02 set name=pname, hiredate = sysdate, pay=ppay where sabun=psabun;
--
result :=sql%rowcount;
commit;
end;
/
/*
declare
	res binary_integer;
begin
	emp02update(res, 1113, '김대리', 2000);
	dbms_output.put_line('result='||res);
end;
/ 
*/
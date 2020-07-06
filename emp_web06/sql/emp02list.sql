--emp02list
create or replace procedure emp02list
(cur out sys_refcursor, cur2 out sys_refcursor)
is	
begin
	open cur for select * from emp02 order by sabun;
	open cur2 for select * from dept;
end;
/
declare
v_row emp02%rowtype;
cur sys_refcursor;
begin
emp02detail(7777, cur);
dbms_output.put_line(v_row.sabun||', '||v_row.name);
close cur;
end;
/
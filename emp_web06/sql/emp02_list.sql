declare
--먼저 정의된 list의 select문이 와일드일경우 필요한 컬럼만 뽑고 싶을 때는
--레코드 타입을 직접 정의해서 한다. 
--모든 컬럼을 조회할 경우 emp02%rowtype으로 해도 무방하다. 
	type emp02row is record(
		psabun emp02.sabun%type,
		pname emp02.name%type,
		phiredate emp02.hiredate%type,
		ppay emp02.pay%type
	);
	cur sys_refcursor;
	v_row emp02row; --emp02%rowtype;으로해도 무방 
begin
	emp02list(cur);
	loop
		fetch cur into v_row;
		exit when cur%notfound;
		dbms_output.put_line(v_row.psabun||', '||v_row.pname||', '||v_row.phiredate||', '||v_row.ppay);
	end loop;
	close cur;
end;
/
drop procedure bbs_update;
create or replace procedure bbs_update
(param_ref number, param_no number)
is
	cnt number;
begin
	select count(lev) into cnt from bbs01 where lev = (select max(lev) from bbs01);
	param_num := param_num + cnt;
	update bbs01 set no=no+1 where ref=param_ref and no>param_no;
end;
/
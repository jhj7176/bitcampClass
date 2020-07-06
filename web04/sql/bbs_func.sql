create or replace procedure bbs_update
--() 매개변수 있으면 입력
(int param_ref, int param_no)
is
--변수선언
	cnt number;
begin
	select count(lev) into cnt from bbs01 where lev = (select max(lev) from bbs01);
	
	param_num := param_num + cnt;
	update bbs01 set no = no+1 where bbs01.ref = param_ref and bbs01.no  >  param_no;
end;
/
define var1 = hoge
define var2 = &1

col cl1 format a10
col cl2 format a10

variable bind_var1 varchar2(100)
execute :bind_var1 := 'var1';
variable bind_var2 varchar2(100)
execute :bind_var2 := '&var2';

select :bind_var1 as cl1,:bind_var2 as cl2 from dual;


set lines 120
set pages 100
set term on
clear col

col username             format a20
col default_tablespace   format a20
col temporary_tablespace format a20

select
  username,
  default_tablespace,
  temporary_tablespace
from
  dba_users
/

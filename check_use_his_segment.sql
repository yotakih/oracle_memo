set lines 120
set pages 100
set term on
clear col

select
  tablespace_name,
  sum(bytes)/1024/1024 "mbytes"
from
  dba_segments
group by
  tablespace_name
/

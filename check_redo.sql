set lines 120
set pages 100
set term on
clear col
col GROUP# format 90
col STATUS format a7
col TYPE format a6
col MEMBER format a50
select
  group#,
  status,
  type,
  member
from
  v$logfile
/

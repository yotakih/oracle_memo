set lines 120
set pages 100
set term on
clear col
col tablespace_name format a10
col file_name       format a35
col status          format a10
col mbytes          format 9,999,990
col incre           format 9,999,990
col autoextensible  format a5
col online_status   format a6

select
  tablespace_name,
  file_name,
  status,
  bytes/1024/1024 mbytes,
  increment_by,
  autoextensible,
  online_status
from
  dba_data_files
/

set lines 120
set pages 100
set term on
clear col
select tablespace_name, status, sum(bytes)/1024/1024
  from dba_undo_extents
	group by tablespace_name, status
/


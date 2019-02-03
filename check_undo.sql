set lines 120
set pages 100
set term on
clear col
select t1.tablespace_name,
			 to_char(sysdate,'YYYY/MM/DD HH24:MI:SS') "TIME",
       round("USED_SIZE(MB)", 3) "USED(MB)",
       round("TBS_SIZE(MB)", 3)  "TBS(MB)",
       round("USED_SIZE(MB)"/"TBS_SIZE(MB)" * 100, 3) "USAGE(%)"
  from (select tablespace_name , sum(BYTES)/1024/1024 "USED_SIZE(MB)"
          from DBA_UNDO_EXTENTS
         where STATUS in ('ACTIVE', 'UNEXPIRED')
				 group by tablespace_name
			) t1,
       (select tablespace_name, sum(BYTES)/1024/1024 "TBS_SIZE(MB)"
          from DBA_DATA_FILES
					group by tablespace_name
			) t2
  where t1.tablespace_name = t2.tablespace_name
/


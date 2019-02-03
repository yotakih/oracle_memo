set pagesize 1000
set linesize 1000
col username for a10
col machine for a20

select inst_id,username,machine,count(*) from gv$session group by inst_id,username,machine;

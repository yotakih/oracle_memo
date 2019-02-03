set lines 120
set pages 100
set term on
clear col
col parameter format a30
col value     format a20

select
	parameter,
	value
from
  nls_database_parameters
where
	parameter like '%CHARACTERSET%'
/

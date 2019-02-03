#!/usr/bin/sh

echo -e 
echo -----check_undo_parameter
echo 'show parameter undo_' | sqlplus -s / as sysdba

echo -e 
echo ------check_dbf
more check_dbf.sql | sqlplus -s / as sysdba

echo -e 
echo ------check_undo
more check_undo.sql | sqlplus -s / as sysdba

echo -e 
echo ------check_use_his_segment
more check_use_his_segment.sql | sqlplus -s / as sysdba


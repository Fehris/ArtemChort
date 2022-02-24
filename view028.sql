create schema lab_view;
alter table fn set schema lab_view;
alter materialized view fn_all set schema lab_view;
alter table fn_backup set schema lab_view;
alter foreign table fn_file set schema lab_view;
alter materialized view fn_view set schema lab_view;
alter view positive set schema lab_view;
alter view positive_tab set schema lab_view;
alter view roots set schema lab_view;
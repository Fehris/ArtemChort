create rule prevent_updates AS ON UPDATE TO fn_backup do instead nothing;
select * from pg_rules; 

update fn_backup set y = 0;
select * from fn_backup limit 10;
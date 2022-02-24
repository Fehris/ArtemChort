CREATE TABLE positive_tab(x FLOAT, y FLOAT);

CREATE RULE "_RETURN" AS ON SELECT TO positive_tab DO INSTEAD
select * from fn where y > 0.0;
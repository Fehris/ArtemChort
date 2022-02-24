Insert into positive (x) Select 10 + random() * 10 from generate_series(1, 10000);
update fn set y = sin(x);
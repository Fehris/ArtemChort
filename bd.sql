Create table student (id integer , first varchar(50),last  varchar(50), sex varchar(1));
alter table student add constraint pk_id primary key (id);
create table mark (id integer , exam integer, stud integer,res integer);
alter table mark add constraint id_pk primary key (id);
--alter table mark add constraint fk_exam foreign key (exam) references exam 
create table exam (id integer, discip integer, ts timestamp);
alter table exam add constraint pk_exam primary key (id);

create table discipline (id integer, descr varchar(50));
alter table discipline add constraint pk_dis primary key (id);
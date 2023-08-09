create table cources (
c_id char(8) constraint c_courceid_pk primary key,
c_name varchar(20) 
);

alter table student add  cource_id char(8);

alter table student add constraint student_cource_fk foreign key (cource_id) references cources(c_id);
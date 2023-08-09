create table stud1 (
s1_id int,
s1_name varchar(20)
);

insert into stud1 values ( 1, 'ahmed');

create table stud2 (
s2_id int,
s2_name varchar(20)
);

insert into stud2 ( s2_id , s2_name) select s1_id , s1_name from stud1;
select * from stud2;
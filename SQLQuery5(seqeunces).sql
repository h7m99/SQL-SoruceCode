create sequence add2
start with 2 
increment by 1 ;

create sequence seq1
start with 1
increment by 1
maxvalue 10;

select * from sys.sequences where name = 'add2';
select * from sys.sequences where name = 'sqe1';

create sequence smallseq
as smallint;
select * from sys.sequences where name = 'smallseq';


create sequence decseq
as decimal (3,0)
START with 125
increment by 25
minvalue 100
maxvalue 200
cycle
cache 3;

select next value for decseq;



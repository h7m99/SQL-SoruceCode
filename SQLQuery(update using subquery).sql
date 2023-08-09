select * from student;
insert into student values (13, 'hamza', 'nizwa');

update student set Std_Location = ( 
select Std_Location from student where Std_name = 'hamza') where Std_name = 'osama';

select * from student;
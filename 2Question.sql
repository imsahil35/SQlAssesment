2....


create table contacttable(
Id int primary key,
Email varchar(20),
fname varchar(20),
lname varchar(20),
company varchar(20),
Active_flag int,
opt_out int
);

insert into contacttable values(123,"a@a.com","Kian","Seth","ABC",1,1),
(133,"b@b.com","Neha","Seth","ABC",1,0),
(234,"c@c.com","Puru","Malik","CDF",0,0),
(342,"d@d.com","Sid","Maan","TEG",1,0);

select * from contacttable;



-- 1 Select all columns from the contact table where the active flag is 1
select * from contacttable where Active_flag = 1;

-- 2 Deactivate contacts who are opted out 
UPDATE contact_table SET Active_flag=0 WHERE opt_out = 0;

-- 3 Delete all the contacts who have the company name as ‘ABC’
delete from contacttable where company = "ABC";

-- 4 Insert a new row with id as 658, name as ‘mili’, email as ‘mili@gmail.com’, the company as ‘DGH’, active flag as 1, opt-out flag as 1
insert into contact_table values(658, 'mili@gmail.com', 'mili','DGH', 1, 1);

-- 5 Pull out the unique values of the company column 
select distinct(company) from contact_table;

-- 6 Update name “mili” to “niti”.
update contact_table set fname='niti' where fname="mili";


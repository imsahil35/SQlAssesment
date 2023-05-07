-- 3.
-- Write a SQL query to find those customers with a grade less than 100. It should return cust_name, customer city, grade, salesman, and salesman city. 
-- The result should be ordered by ascending customer_id.

create table customer (
	customer_id int primary key,
    cust_name varchar(20) not null,
    city varchar(20) not null,
	grade int not null,
    salesman_id int
);

insert into customer values (3002, "Nick Rimando", "New York", 100, 5001),
		(3007, "Brad Davis", "New York", 200, 5001),
    (3005, "Graham Zusi", "California", 200, 5002),
    (3008, "Julian Green", "London", 300, 5002),
    (3004, "Fabian Johnson", "Paris", 300, 5006),
    (3009, "Geoff Cameron", "Berlin", 100, 5003),
    (3003, "Jozy Altidor", "Moscow", 200, 5007),
    (3001, "Brad Guzan", "London", NULL,5005);
    
select * from customer;



create table salesman (
	salesman_id int primary key
    name varchar(20) not null,
    city varchar(20) not null,
    commission decimal(2,2) not null
);

insert into salesman values(5001, "James Hoog", "New York", 0.15),
        (5002, "Nail Knite", "Paris", 0.13),
        (5005, "Pit Alex", "London", 0.11),
        (5006, "Mc Lyon", "Paris", 0.14),
        (5007, "Paul Adam", "Rome", 0.13),
        (5003, "Lauson Hen", "San Jose", 0.12);
 
select * from salesman;

--Answer to the question.........
-- Write a SQL query to find those customers with a grade less than 100. It should return cust_name, customer city, grade, salesman, and salesman city. 
-- The result should be ordered by ascending customer_id.

select customer.cust_name, customer.city, customer.grade, salesman.name, salesman.city from
 customer inner join salesman on customer.grade < 100 and customer.salesman_id = salesman.salesman_id order by customer_id;


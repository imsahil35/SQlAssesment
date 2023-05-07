Q1....

create database onlineconsignment;

create table doctor(
id int primary key,
name varchar(20),
specialization varchar(20) not null
);

insert into doctor values(100,"sahil","neurosurgeon"),
(101,"naveen","physiatrist"),
(102,"sundar","dermotologist"),
(103,"sneha","cardiologicst");

select * from doctor;

create table appointments(
doc_name varchar(20) not null,
pat_name varchar(20) not null,
date date not null
);

insert into appointments values ("sundar","yogi","2022-08-05"),
("sneha","raj","2022-11-07"),
("sundar","ram","2020-04-04"),
("sahil","krishna","2019-06-17"),
("naveen","hemanth","2023-02-02");

select * from appointments;

create table patient(
name varchar(20) primary key,
age int not null,
phoneno int not null,
address varchar(20) not null
);

insert into patient values("yogi",20,8986857658,"hyderabad"),
("krishna",54,8986856631,"bangalore"),
("hemanth",30,9876543210,"mumbai"),
("ram",50,8986858764,"chennai"),
("raj",29,9963019877,"ahmedabad");

select * from patient;

create table reviews(
date date not null,
pat_name varchar(20),
review varchar(50)
);

insert into reviews values("2022-11-07","raj","Good"),
("2023-02-02","hemanth","Excellent"),
("2019-06-07","krishna","satisfactory"),
("2020-04-04","ram","average"),
("2022-08-05","yogi","bad");

select * from reviews;

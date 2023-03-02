use sys;
create table salesman(
 salesman_id int primary key,
name VARCHAR(25),
city varchar(25),
commission float(25)
);
insert into salesman values( 5001,'James Hoog ',' New York ', 0.15);
insert into salesman values( 5002,'Nail Knite  ',' paris',0.13);
insert into salesman values( 5005,' Pit Alex  ',' london', 0.11);
insert into salesman values( 5006,'Mc Lyong ',' paris ', 0.14);
insert into salesman values( 5007,'Paul Adam',' rome ', 0.13);
insert into salesman values( 5003,'Lauson Hen ',' san jose ', 0.12);
select * from salesman;
create table  customer(
customer_id int,
cust_name varchar(25),
city varchar(25),
grade int,
salesman_id int,
foreign key (salesman_id) references salesman (salesman_id)
);
insert into customer values(3002,'Nick Rimando  ',' New York  ',    100   ,5001);
insert into customer values(3007,'Brad Davis ',' New York  ',    200 ,  5001);
insert into customer values(3005,' Graham Zusi ',' California   ', 200 ,5002);
insert into customer values(3008,' Julian Green  ',' London    ', 300 ,  5002);
insert into customer values(3004,' Fabian Johnson ','  Paris   ', 300 ,  5006);\
insert into customer values(3009,' Geoff Cameron   ',' Berlin   ',  100 ,  5003);
insert into customer values(3003,'Jozy Altidor ',' Moscow  ',    200   ,  5007);
insert into customer (customer_id,cust_name,city,salesman_id)values(3001,' Brad Guzan ','London',  5005);

select * from customer;

select salesman.name AS "Salesman",
customer.cust_name, customer.city 
from salesman,customer 
where salesman.city=customer.city;

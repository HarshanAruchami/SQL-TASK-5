--TABLE CREATION
CREATE TABLE Trainees (
TRAINEE_ID INT NOT NULL PRIMARY KEY,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT,
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);
--INSERTING RECORDS
INSERT INTO Trainees
(TRAINEE_ID, FIRST_NAME, LAST_NAME, SALARY,
JOINING_DATE, DEPARTMENT) VALUES
(002, 'Niharika', 'Verma', 80000, '2023-03-20', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '2023-03-20', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '2023-03-20', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '2023-03-20', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '2023-03-20', 'Account'),
(007, 'Satish', 'Kumar', 75000, '2023-03-20', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '2023-03-20', 'Admin');
--SELECT QUERY
select * from Trainees
--1.Write an SQL query to get the count of employees in each department.
select COUNT(first_name) as 'No of Employees', DEPARTMENT FROM Trainees GROUP BY DEPARTMENT;
--2.Write an SQL query to calculate the estimated induction program day for the trainees from 5 days from JOINING_DATE.
select dateadd(day,5,joining_date)as 'induction day',TRAINEE_ID,FIRST_NAME from Trainees;
--3.Write an SQL query to retrieve the month in words from the Trainees table - JOINING_DATE Column.
SELECT CHOOSE(month([JOINING_DATE]),'January','February','March','April','May','June','July','August','September','October','November','December') AS Joining_month  FROM trainees;
--4.Write an SQL query to perform the total and subtotal of salary in each department.
select COALESCE(department, 'Department Total') as Department,sum(salary) as 'department_salary'from trainees group by rollup (department);
--5.Write an SQL query to retrieve first 3 records randomly.

--6.Show the working of composite key with any example.
CREATE TABLE Trainers (
TRAINER_ID INT,
F_NAME VARCHAR(20),
L_NAME  VARCHAR(20),
SALARY INT,
DEPARTMENT VARCHAR(20)
constraint composite_key primary key (f_name , l_name) 
);
insert into Trainers values (100,'HARSHAN','A',20000,'DEV')
insert into Trainers values (200,'HEMANTH','B',20000,'DES')
select * from Trainers
--7.Show the working of IIF and CASE for the above table.
select TRAINEE_ID,salary,iif(salary>300000,'senior developer','developer') as DESIGNATION from trainees
select first_name,salary ,case when salary>300000 then 'senior developer'when salary >75000 then 'developer'else 'Trainee' end as designation from trainees
--8.Show the working of Sequence.
create sequence training
as int 
start with 5
increment by 1
select  * from sys.sequences where name='training';
--9.Show the working of creation of Synonym for a table in DB1 from DB2.
create synonym emp for dummy.dbo.address
--10.Show the working of IDENTITY_INSERT.
CREATE TABLE workers1
(
id INT PRIMARY KEY IDENTITY(1, 1) ,
f_name VARCHAR(50) ,
);
--turn on 
SET IDENTITY_INSERT workers1 ON;
GO  
INSERT INTO workers1 
(id ,f_name)
VALUES ( 7, 'Harsha');
--turn off
SET IDENTITY_INSERT workers1 OFF;
select * from workers1

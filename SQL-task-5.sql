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
select 
--3.Write an SQL query to retrieve the month in words from the Trainees table - JOINING_DATE Column.
--4.Write an SQL query to perform the total and subtotal of salary in each department.
--5.Write an SQL query to retrieve first 3 records randomly.
--6.key with any exaShow the working of compositemple.
--7.Show the working of IIF and CASE for the above table.
--8.Show the working of Sequence.
--9.Show the working of creation of Synonym for a table in DB1 from DB2.
--10.Show the working of IDENTITY_INSERT.

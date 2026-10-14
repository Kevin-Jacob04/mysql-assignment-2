create database EMPLOYEE;
USE EMPLOYEE;
CREATE TABLE DEPARTMENTS
(DEPARTMENT_ID INT,DEPARTMENT_NAME VARCHAR(100));
CREATE TABLE LOCATION
(LOCATION_ID INT,LOCATION_NAME VARCHAR(30));
CREATE TABLE EMPLOYEES
(EMPLOYEE_ID INT,EMPLOYEE_NAME VARCHAR(50),GENDER enum('M','F'),AGE INT,HIRE_DATE DATE,DESIGNATION VARCHAR(100),DEPARTMENT_ID INT,LOCATION_ID INT,SALARY DECIMAL(10,2));

ALTER TABLE EMPLOYEES ADD EMAIL VARCHAR(30);
ALTER TABLE EMPLOYEES modify DESIGNATION VARCHAR(200);
ALTER TABLE EMPLOYEES DROP COLUMN AGE;
ALTER TABLE EMPLOYEES RENAME COLUMN HIRE_DATE TO DATE_OF_JOINING; 
RENAME TABLE DEPARTMENTS TO DEPARTMENTS_INFO;
RENAME TABLE LOCATION TO LOCATIONS;
SELECT * FROM EMPLOYEES;
TRUNCATE TABLE EMPLOYEES;
DROP  TABLE EMPLOYEES;
DROP  DATABASE EMPLOYEE;


create database EMPLOYEE;
USE EMPLOYEE;
CREATE TABLE DEPARTMENTS
(DEPARTMENT_ID INT primary KEY,DEPARTMENT_NAME VARCHAR(100) NOT NULL);
CREATE TABLE LOCATION
(LOCATION_ID INT PRIMARY KEY,LOCATION_NAME VARCHAR(30));
ALTER TABLE DEPARTMENTS modify DEPARTMENT_ID INT primary KEY;
ALTER TABLE LOCATION modify LOCATION_NAME VARCHAR(30) NOT NULL;
SELECT *FROM DEPARTMENTS;
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
FOREIGN KEY (department_id)REFERENCES Departments(department_id),
FOREIGN KEY (location_id)REFERENCES Location(location_id));

use EMPLOYEE;
ALTER TABLE Employees
ADD salary int;

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');

INSERT INTO location (location_id, location_name) VALUES
(001,'Chennai'),
(002,'Bangalore'),
(003,'Hyderabad'),
(004,'Pune');

INSERT INTO employees (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);

select * from employees;
select * from location;
select * from departments;
show tables;
describe employees;


SELECT DISTINCT Salary
FROM Employees;

SELECT Age AS Employee_Age, Salary AS Employee_Salary
FROM employees;

SELECT * from Employees
WHERE Salary > 50000
AND Hire_Date < '2016-01-01';

select * from employees
where designation is null;

update employees
set designation = 'Data Scientist'
where designation is null;

SET SQL_SAFE_UPDATES = 0;

SELECT * from employees
ORDER BY Department_ID ASC, Salary DESC;

SELECT * from Employees
WHERE Hire_Date >= '2018-01-01'
AND Hire_Date < '2019-01-01'
LIMIT 5;

-- Aggregate funtion
SELECT SUM(e.Salary) AS Total_Salary
from employees e
JOIN Departments d
ON e.Department_ID = d.Department_ID
WHERE d.Department_Name = 'Finance';

SELECT MIN(Age) AS Minimum_Age
from employees;

-- group by
SELECT Location_ID, MAX(Salary) AS Maximum_Salary
from employees
GROUP BY Location_ID;

SELECT Designation, AVG(Salary) AS Average_Salary
from employees
WHERE Designation LIKE '%Analyst%'
GROUP BY Designation;

-- having
SELECT Department_ID, COUNT(*) AS Employee_Count
from employees
GROUP BY Department_ID
HAVING COUNT(*) < 3;

SELECT Location_ID, AVG(Age) AS Average_Age
from employees
WHERE Gender = 'F'
GROUP BY Location_ID
HAVING AVG(Age) < 30;

-- joins
SELECT e.Employee_Name, e.Designation, d.Department_Name
FROM Employees e
INNER JOIN Departments d
ON e.Department_ID = d.Department_ID;

SELECT d.Department_Name, COUNT(e.Employee_ID) AS Employee_Count
FROM Departments d
LEFT JOIN Employees e
ON d.Department_ID = e.Department_ID
GROUP BY d.Department_ID, d.Department_Name;

SELECT l.Location_Name, e.Employee_Name
FROM Employees e
RIGHT JOIN Location l
ON e.Location_ID = l.Location_ID;


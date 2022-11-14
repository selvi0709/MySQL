USE worker;

CREATE TABLE Employee (
  emp_no int,
  first_name varchar(25),
  last_name varchar(25),
  email varchar(40),
  department varchar(25),
  salary int,
  join_date date,
  primary key (emp_no)
);

describe Employee;

INSERT INTO Employee (emp_no, first_name, last_name, email, department, salary, join_date)
VALUES (1, 'Selvi', 'Jayaraman', 'selvijayaraman@guvi.com', 'Technical', '30000', '2019-07-09');


SELECT * FROM Employee;


INSERT INTO Employee (emp_no, first_name, last_name, email, department, salary, join_date)
VALUES (2, 'Ram', 'Sundar', 'ram@gmail.com', 'Technical', '35000', '2018-08-05'),
(3, 'Alex ', 'George', 'alexgeorge@guvi.com', 'Finance', '20000', '2016-11-12'),
(4, 'Andrew', 'Faulkner', 'andrew@guvi.com', 'Development', '55000', '2016-08-05'),
(5, 'Alford', 'Francis', 'alfordfrancis@guvi.com', 'Testing', '25000', '2010-07-09'),
(6, 'Ravi', 'Kumar', 'kumar@solutions.in', 'Development', '40000', '2013-08-19'),
(7, 'Santhosh', 'Kumar', 'santhoshkumar@guvi.com', 'Testing', '30000', '2019-04-09'),
(8, 'Lucida', 'Jose', 'lucidajose@gmail.com', 'Marketing', '80500', '2009-02-24'),
(9, 'Evan', 'Joseph', 'evanjoseph@guvi.com', 'Finance', '32000', '2014-07-09'),
(10, 'Mukesh', 'Kumar', 'mukeshkumar@guvi.com', 'Technical', '85000', '2020-03-05'),
(11, 'John', 'Smith', 'johnsmith@yahoo.com', 'Engineer', '99000', '2009-04-12'),
(12, 'Benjamin', 'Frankilin', 'frank@gmail.com', 'IT support', '60000', '2016-04-12');

INSERT INTO Employee (emp_no, first_name, last_name, email, department, salary, join_date)
VALUES (13, 'Tony', 'Stark', 'stark@guvi.com', 'Salesman', '35000', '2013-08-05'),
(14, 'Tim', 'Adolf', 'adolf@guvi.com', 'Manager', '50000', '2014-11-12'),
(15, 'Kim', 'Jarvis', 'kim@gmail.com', 'Testing', '35000', '2017-08-09'),
(16, 'Evan', 'Joseph', 'evanjoseph@guvi.com', 'Finance', '32000', '2014-07-09'),
(17, 'Sam', 'Miles', 'sammiles@solutions.in', 'Development', '95000', '2018-08-19'),
(18, 'Kevin', 'Hill', 'kevinhill@guvi.com', 'Analyst', '60000', '2019-04-09'),
(19, 'Connie', 'Smith', 'smith@gmail.com', 'Marketing', '30500', '2009-02-14'),
(20, 'Alfred', 'Kinsley', 'kinsley@gmail.com', 'Testing', '52000', '2017-07-09'),
(21, 'Paul', 'Timothy', 'paultimothyh@guvi.com', 'Finance', '90000', '2020-03-15'),
(22, 'John', 'Asghar', 'john@yahoo.com', 'Engineer', '60000', '2019-04-12'),
(23, 'Rose', 'Summers', 'rose@guvi.com', 'IT support', '20000', '2007-06-12');



INSERT INTO Employee (emp_no, first_name, last_name, email, department, salary, join_date)
VALUES (24, 'Andrew', 'Faulkner', 'andrew@guvi.com', 'Development', '55000', '2016-08-05'),
(25, 'Karen', 'Mathew', 'karen@guvi.com', 'Salesman', '40000', '2017-11-12'),
(26, 'Wendy', 'Shawn', 'shawn@guvi.com', 'Testing', '35000', '2019-08-10'),
(27, 'Bella', 'Swan', 'bella@solutions.in', 'Development', '55000', '2013-08-09'),
(28, 'Kevin', 'Hill', 'hillkevin@guvi.com', 'Salesman', '72500', '2019-07-09'),
(29, 'Madii', 'Himbury', 'madii@gmail.com', 'Technical', '30500', '2005-02-16'),
(30, 'Athena', 'Wilson', 'athena@yahoo.com', 'Analyst', '92000', '2015-04-10'),
(31, 'Sam', 'Miles', 'sammiles@solutions.in', 'Development', '95000', '2018-08-19'),
(32, 'Rose', 'Summers', 'rose@guvi.com', 'IT support', '20000', '2007-06-12'),
(33, 'Jennifer', 'Huette', 'jeni@guvi.com', 'Manager', '80000', '2021-04-15'),
(34, 'John', 'Smith', 'johnsmith@yahoo.com', 'Engineer', '99000', '2009-04-12'),
(35, 'Sam', 'Miles', 'sammiles@solutions.in', 'Development', '95000', '2018-08-19'),
(36, 'Alan', 'Mathew', 'mathew@gmail.com', 'IT support', '20000', '2017-06-12');

SELECT * FROM Employee;

# Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name as <WORKER_NAME>
SELECT first_name AS worker_name FROM Employee;

# Write an SQL query to fetch unique values of DEPARTMENT from the Worker table.
SELECT DISTINCT department FROM Employee;


# Write an SQL query to show the last 5 records from a table.
# Type 1
(SELECT * FROM Employee ORDER BY emp_no DESC LIMIT 5)
ORDER BY emp_no ASC;
# Type 2
SELECT * FROM Employee WHERE emp_no > (SELECT count(*) FROM Employee) - 5;

# Write an SQL query to print the first three characters of FIRST_NAME from Worker
SELECT LEFT(first_name, 3) FROM Employee;

# Write an SQL query to find the position of the alphabet (‘a’) in the first name
SELECT first_name, POSITION("a" in first_name) AS a_position FROM Employee;

# Write an SQL query to print the name of employees who have the highest salary in each department
SELECT first_name, department, salary 
FROM Employee 
WHERE (department,salary) IN (
	SELECT department, MAX(salary) 
    FROM Employee 
    GROUP BY department);
    
# Write an SQL query to print the FIRST_NAME from the Worker table after removing white spaces from the right side
SELECT RTRIM(first_name) from Employee;

# Write an SQL query that fetches the unique values of DEPARTMENT from the Worker table and prints its length
SELECT department, LENGTH(department) AS length from Employee GROUP BY department;

# Write an SQL query to fetch n max salaries from a table.
SELECT first_name, salary FROM Employee ORDER BY salary DESC LIMIT 10;

# Write an SQL query to print the FIRST_NAME from the Worker table after replacing ‘a’ with ‘A’.
SELECT first_name, REPLACE(first_name, "a", "A") AS a_to_A FROM Employee;

# Write an SQL query to print all Worker details from the Worker table order FIRST_NAME Ascending and DEPARTMENT Descending.
SELECT *
FROM Employee 
ORDER by first_name ASC, department DESC;

# Write an SQL query to fetch the names of workers who earn the highest salary.
SELECT first_name, salary FROM Employee ORDER BY salary DESC LIMIT 1;

# Write an SQL query to print details of workers excluding first names, “Rose” and “Paul” from the Worker table.
SELECT * FROM Employee WHERE first_name  NOT IN ('Rose', 'Paul');

# Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
SELECT * 
FROM Employee 
WHERE (first_name REGEXP 'h$') AND (LENGTH(first_name)=6);


# Write a query to validate Email of Employee (email should have first name last name and guvi.com example (first name=Kamal last name= raja and the mail id should be kamalraja@guvi.com).
SELECT * FROM Employee
WHERE (email REGEXP CONCAT(LOWER(RTRIM(first_name)),LOWER(last_name), '@guvi.com'));


# Write an SQL query to print details of the Workers who have joined in April ’2021.
SELECT first_name, join_date
FROM Employee
WHERE EXTRACT(YEAR_MONTH FROM join_date)=202104;


# Write an SQL query to fetch duplicates that have matching data in some fields of a table.
SELECT a.* 
FROM Employee a
JOIN (SELECT email, COUNT(*) as frequency
FROM Employee
GROUP BY email
HAVING count(*) > 1) b
ON a.email = b.email
ORDER BY a.email;

# How to remove duplicate rows from the Employees table.
# Step1 - To fetch duplicate rows
SELECT *
    FROM Employee
    WHERE emp_no NOT IN
    (
        SELECT MAX(emp_no)
        FROM Employee
        GROUP BY email
    );
# Step2 - To delete duplicate rows
DELETE FROM Employee
    WHERE emp_no NOT IN
    (
        SELECT MAX(emp_no)
        FROM (SELECT * FROM Employee) AS deleteRecord
        GROUP BY email
    );
# (OR)
DELETE FROM Employee
    WHERE emp_no NOT IN
    (
        SELECT MAX(emp_no)
        FROM Employee
        GROUP BY email
    );


# Write an SQL query to show only odd rows from a table.
SELECT * 
FROM Employee
WHERE emp_no NOT IN
	(
		SELECT emp_no 
		FROM Employee
		WHERE MOD(emp_no,2)=0
	);


# Write an SQL query to clone a new table from another table.
# Type 1
CREATE TABLE clone_employee (
  emp_no int,
  first_name varchar(25),
  last_name varchar(25),
  email varchar(40),
  department varchar(25),
  salary int,
  join_date date,
  primary key (emp_no)
);

INSERT INTO clone_employee (emp_no, first_name, last_name, email, department, salary, join_date)
SELECT *
FROM Employee;

SELECT * FROM clone_employee;

# Type 2
CREATE TABLE clone_employee LIKE Employee;
INSERT INTO clone_employee SELECT * FROM Employee;
SHOW TABLES;
DESCRIBE clone_employee;
SELECT * FROM clone_employee;


# Types of Cloning
# Simple Cloning (does not have auto_increment support in the clone table)
CREATE TABLE clone1 SELECT * FROM Employee;
SHOW TABLES;
DESCRIBE clone1;
SELECT * FROM clone1;

# Shallow Cloning (does not have data inside the clone table)
CREATE TABLE clone2 LIKE Employee;
SHOW TABLES;
DESCRIBE clone2;
SELECT * FROM clone2;

# Deep Cloning (supports both)
CREATE TABLE clone3 LIKE Employee;
INSERT INTO clone3 SELECT * FROM Employee;
SHOW TABLES;
DESCRIBE clone3;
SELECT * FROM clone3;



# Write an SQL query to determine the nth (say n=15) highest salary from a table
# Type 1
SELECT * FROM (SELECT * FROM Employee
        ORDER BY salary DESC LIMIT 15) AS T
		ORDER BY salary ASC LIMIT 1;

# Type 2
SELECT * FROM Employee ORDER BY salary DESC LIMIT 14,1;

# Write an SQL query to determine the 8th highest salary without using TOP or LIMIT methods.
SELECT * 
FROM 
	( SELECT ROW_NUMBER() 
	  OVER (ORDER BY SALARY DESC) AS rownumber,Salary  
	  FROM Employee 
	)  
AS salary  
WHERE rownumber = 8;

# Write an SQL query to fetch the list of employees with the same salary.
SELECT * FROM Employee
WHERE SALARY IN(
	SELECT salary FROM Employee
	GROUP BY salary
	HAVING COUNT(emp_no)>1)
ORDER BY salary DESC;


# Write an SQL query to fetch intersecting records of two tables.
CREATE TABLE Experience (
  emp_no int,
  email varchar(40),
  technology varchar(25),
  years_of_experience int
);

INSERT INTO Experience (emp_no, email, technology, years_of_experience)
VALUES (2, 'ram@gmail.com', 'Front-end', 3),
(3, 'alexgeorge@guvi.com', 'Accounts', 4),
(5, 'alfordfrancis@guvi.com', 'Selenium', 5),
(6, 'kumar@solutions.in', 'Back-end', 6),
(27, 'bella@solutions.in', 'Back-end', 2),
(28, 'hillkevin@guvi.com', 'BI tools', 3),
(29, 'madii@gmail.com', 'Front-end', 7),
(30, 'athena@yahoo.com', 'BI tools', 5),
(31, 'sammiles@solutions.in', 'Back-end', 3),
(32, 'rose@guvi.com', 'OS', 4),
(33, 'jeni@guvi.com', 'BI tools', 6),
(7, 'santhoshkumar@guvi.com', 'Selenium', 2),
(10, 'mukeshkumar@guvi.com', 'Front-end', 6),
(11, 'johnsmith@yahoo.com', 'Back-end', 8),
(15, 'kim@gmail.com', 'Selenium',  7),
(18, 'kevinhill@guvi.com', 'BI tools',  2),
(19, 'smith@gmail.com', 'BI tools', 1),
(21, 'paultimothyh@guvi.com', 'Accounts', 3),
(101, 'lokeshkumar@guvi.com', 'Back-end', 5),
(113, 'arunvarma@yahoo.com', 'Back-end', 8),
(42, 'thara@gmail.com', 'Editing',  7),
(92, 'maya@guvi.com', 'Content writing',  2);

SELECT * FROM Experience;

SELECT Employee.email, Employee.department, Experience.technology, Experience.years_of_experience
FROM Employee
INNER JOIN Experience ON Employee.emp_no = Experience.emp_no;

# Write an SQL query to show records from one table that another table does not have.
SELECT Employee.email, Experience.technology, Experience.years_of_experience
FROM Employee
RIGHT JOIN Experience ON Employee.emp_no = Experience.emp_no
ORDER BY years_of_experience;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
        REFERENCES departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES location(location_id)
);
INSERT INTO employees
(employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary)
VALUES
(101, 'Anu', 'F', 25, '2024-01-10', 'HR Manager', 1, 1, 35000),
(102, 'Rahul', 'M', 28, '2023-05-15', 'Software Developer', 2, 2, 45000),
(103, 'Meera', 'F', 24, '2024-03-20', 'Accountant', 3, 3, 30000),
(104, 'Arun', 'M', 30, '2022-07-01', 'Marketing Executive', 4, 4, 40000);
SELECT * FROM employees;
SELECT COUNT(*) FROM employees;
USE employee;

INSERT INTO employees
(employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary)
VALUES
(101, 'Anu', 'F', 25, '2024-01-10', 'HR Manager', 1, 1, 35000),
(102, 'Rahul', 'M', 28, '2023-05-15', 'Software Developer', 2, 2, 45000),
(103, 'Meera', 'F', 24, '2024-03-20', 'Accountant', 3, 3, 30000),
(104, 'Arun', 'M', 30, '2022-07-01', 'Marketing Executive', 4, 4, 40000);

SELECT 
    e.employee_id,
    e.employee_name,
    e.gender,
    e.age,
    e.designation,
    d.department_name,
    l.location,
    e.salary
FROM employees e
JOIN departments d 
    ON e.department_id = d.department_id
JOIN location l 
    ON e.location_id = l.location_id;
    ALTER TABLE employees
ADD email VARCHAR(100);
ALTER TABLE employees
MODIFY designation VARCHAR(150);
ALTER TABLE employees
RENAME COLUMN employee_name TO emp_name;
ALTER TABLE employees
DROP COLUMN email;
ALTER TABLE employees
RENAME TO employee_details;
ALTER TABLE employee_details
ADD CONSTRAINT chk_salary
CHECK (salary > 0);
ALTER TABLE departments
MODIFY department_name VARCHAR(100) NOT NULL;
USE employee;

SHOW CREATE TABLE employee_details;
SHOW TABLES;
ALTER TABLE employee_details
ADD CONSTRAINT unique_salary UNIQUE (salary);
ALTER TABLE employee_details
DROP COLUMN age;
ALTER TABLE employee_details
RENAME COLUMN hire_date TO date_of_joining;
ALTER TABLE departments
RENAME TO Departments_Info;
ALTER TABLE location
RENAME TO Locations;
TRUNCATE TABLE employee_details;
DROP TABLE employee_details;
DROP DATABASE employee;
CREATE DATABASE employee;
USE employee;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
CREATE TABLE location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(30) NOT NULL UNIQUE
);
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    age INT,
    designation VARCHAR(100),
    salary DECIMAL(10,2),
    hire_date DATE,
    department_id INT,
    location_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (location_id) REFERENCES location(location_id)
);
SHOW TABLES;
INSERT INTO departments (department_id, department_name)
VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');
INSERT INTO location (location)
VALUES
('Kochi'),
('Trivandrum'),
('Kozhikode');
INSERT INTO employees
(employee_id, employee_name, age, designation, salary, hire_date, department_id, location_id)
VALUES
(101, 'Anu', 25, 'Manager', 35000, '2022-01-10', 1, 1),
(102, 'Rahul', 28, 'Developer', 45000, '2021-05-15', 2, 2),
(103, 'Meera', 24, 'Accountant', 30000, '2023-03-20', 3, 3),
(104, 'Arun', 26, 'HR Executive', 28000, '2022-08-12', 1, 1);
SELECT * FROM employees;
ALTER TABLE employees
ADD email VARCHAR(100);
ALTER TABLE employees
DROP COLUMN age;
ALTER TABLE employees
RENAME COLUMN hire_date TO date_of_joining;
ALTER TABLE departments
RENAME TO Departments_Info;
ALTER TABLE location
RENAME TO Locations;
TRUNCATE TABLE employees;
DROP TABLE employees;
DROP DATABASE employee;
CREATE DATABASE employee;
USE employee;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
CREATE TABLE location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(30) NOT NULL UNIQUE
);
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F'),
    age INT,
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (location_id) REFERENCES location(location_id)
);
ALTER TABLE employees
ADD CONSTRAINT chk_age
CHECK (age >= 18);
SHOW CREATE TABLE employees;
SHOW TABLES;
DESCRIBE employees;
SHOW CREATE TABLE employees;DESCRIBE location;
SHOW CREATE TABLE location;
SHOW CREATE TABLE departments;
DESCRIBE location;
SHOW CREATE TABLE employees;
DESCRIBE employees;
SHOW CREATE TABLE employees;
SHOW CREATE TABLE employees;
SHOW INDEX FROM employees;
USE employee;
SELECT * FROM employees;
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

INSERT INTO location (location) VALUES
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');

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
SELECT * FROM employees;

SELECT * FROM departments;

SELECT * FROM location;
SELECT DISTINCT salary
FROM employees;
SELECT
    age AS Employee_Age,
    salary AS Employee_Salary
FROM employees;
SELECT *
FROM employees
WHERE salary > 50000
AND hire_date < '2016-01-01';
SELECT *
FROM employees
WHERE designation IS NULL;
UPDATE employees
SET designation = 'Data Scientist'
WHERE designation IS NULL;
SET SQL_SAFE_UPDATES = 0;
UPDATE employees
SET designation = 'Data Scientist'
WHERE designation IS NULL;
SELECT *
FROM employees
ORDER BY department_id ASC, salary DESC;
SELECT *
FROM employees
WHERE YEAR(hire_date) = 2018
ORDER BY hire_date ASC
LIMIT 5;
SELECT SUM(e.salary) AS Total_Finance_Salary
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_name = 'Finance';
SELECT MIN(age) AS Minimum_Age
FROM employees;
SELECT MAX(salary) AS Maximum_Salary
FROM employees;
SELECT COUNT(*) AS Total_Employees
FROM employees;
SELECT AVG(salary) AS Average_Salary
FROM employees;
SELECT department_id,
AVG(salary) AS Average_Salary
FROM employees
GROUP BY department_id;
SELECT department_id,
AVG(salary) AS Average_Salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 50000;
SELECT 
e.employee_name,
d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;
SELECT
e.employee_name,
d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;
SELECT
e.employee_name,
d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;
DESCRIBE employees;
SELECT
location_id,
MAX(salary) AS Maximum_Salary
FROM employees
GROUP BY location_id;
SELECT
designation,
AVG(salary) AS Average_Salary
FROM employees
WHERE designation LIKE '%Analyst%'
GROUP BY designation;
SELECT

department_id,

COUNT(*) AS Total_Employees

FROM employees

GROUP BY department_id

HAVING COUNT(*) < 3
SELECT
location_id,
AVG(age) AS Average_Age
FROM employees
WHERE gender = 'F'
GROUP BY location_id
HAVING AVG(age) < 30;
SELECT * FROM employees;
SELECT * FROM departments;

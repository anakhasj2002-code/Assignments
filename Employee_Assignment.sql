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
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
CREATE DATABASE IF NOT EXISTS ecomm;
USE ecomm;
CREATE TABLE customer_churn (
    CustomerID INT PRIMARY KEY,
    Churn BIT,
    Tenure INT,
    PreferredLoginDevice VARCHAR(20),
    CityTier INT,
    WarehouseToHome INT,
    PreferredPaymentMode VARCHAR(20),
    Gender ENUM('Male','Female'),
    HourSpendOnApp INT,
    NumberOfDeviceRegistered INT,
    PreferredOrderCat VARCHAR(30),
    SatisfactionScore INT,
    MaritalStatus VARCHAR(10),
    NumberOfAddress INT,
    Complain BIT,
    OrderAmountHikeFromlastYear INT,
    CouponUsed INT,
    OrderCount INT,
    DaySinceLastOrder INT,
    CashbackAmount INT
);
USE ecomm;

CREATE TABLE customer_churn_backup AS
SELECT * FROM customer_churn;
SELECT
    COUNT(*) AS Total_Rows,
    SUM(WarehouseToHome IS NULL) AS Warehouse_Missing,
    SUM(HourSpendOnApp IS NULL) AS AppHours_Missing,
    SUM(OrderAmountHikeFromlastYear IS NULL) AS OrderHike_Missing,
    SUM(DaySinceLastOrder IS NULL) AS Days_Missing,
    SUM(Tenure IS NULL) AS Tenure_Missing,
    SUM(CouponUsed IS NULL) AS Coupon_Missing,
    SUM(OrderCount IS NULL) AS OrderCount_Missing
FROM customer_churn;
SELECT
ROUND(AVG(WarehouseToHome)) AS Warehouse_Mean,
ROUND(AVG(HourSpendOnApp)) AS AppHours_Mean,
ROUND(AVG(OrderAmountHikeFromlastYear)) AS OrderHike_Mean,
ROUND(AVG(DaySinceLastOrder)) AS Days_Mean
FROM customer_churn;
USE ecomm;

UPDATE customer_churn
SET WarehouseToHome = 16
WHERE WarehouseToHome IS NULL;
SET SQL_SAFE_UPDATES = 0;
UPDATE customer_churn
SET
    WarehouseToHome = 16,
    HourSpendOnApp = 3,
    OrderAmountHikeFromlastYear = 16,
    DaySinceLastOrder = 5
WHERE
    WarehouseToHome IS NULL
    OR HourSpendOnApp IS NULL
    OR OrderAmountHikeFromlastYear IS NULL
    OR DaySinceLastOrder IS NULL;
    SELECT
SUM(WarehouseToHome IS NULL) AS Warehouse_Missing,
SUM(HourSpendOnApp IS NULL) AS AppHours_Missing,
SUM(OrderAmountHikeFromlastYear IS NULL) AS OrderHike_Missing,
SUM(DaySinceLastOrder IS NULL) AS Days_Missing
FROM customer_churn;
UPDATE customer_churn
SET
    WarehouseToHome = 16,
    HourSpendOnApp = 3,
    OrderAmountHikeFromlastYear = 16,
    DaySinceLastOrder = 5
WHERE
    WarehouseToHome IS NULL
    OR HourSpendOnApp IS NULL
    OR OrderAmountHikeFromlastYear IS NULL
    OR DaySinceLastOrder IS NULL;
    SELECT
SUM(WarehouseToHome IS NULL) AS Warehouse,
SUM(HourSpendOnApp IS NULL) AS AppHours,
SUM(OrderAmountHikeFromlastYear IS NULL) AS OrderHike,
SUM(DaySinceLastOrder IS NULL) AS Days
FROM customer_churn;
SELECT 'Tenure' AS Column_Name, Tenure AS Mode_Value,
COUNT(*) AS Frequency
FROM customer_churn
WHERE Tenure IS NOT NULL
GROUP BY Tenure
ORDER BY Frequency DESC
LIMIT 1;

SELECT 'CouponUsed' AS Column_Name, CouponUsed AS Mode_Value,
COUNT(*) AS Frequency
FROM customer_churn
WHERE CouponUsed IS NOT NULL
GROUP BY CouponUsed
ORDER BY Frequency DESC
LIMIT 1;

SELECT 'OrderCount' AS Column_Name, OrderCount AS Mode_Value,
COUNT(*) AS Frequency
FROM customer_churn
WHERE OrderCount IS NOT NULL
GROUP BY OrderCount
ORDER BY Frequency DESC
LIMIT 1;
USE ecomm;

TRUNCATE TABLE customer_churn;

INSERT INTO customer_churn
SELECT * FROM customer_churn_backup;
SELECT Tenure AS Mode_Value, COUNT(*) AS Frequency
FROM customer_churn
WHERE Tenure IS NOT NULL
GROUP BY Tenure
ORDER BY Frequency DESC
LIMIT 1;
SELECT
CouponUsed AS Mode_Value,
COUNT(*) AS Frequency
FROM customer_churn
WHERE CouponUsed IS NOT NULL
GROUP BY CouponUsed
ORDER BY Frequency DESC
LIMIT 1;
UPDATE customer_churn
SET
    Tenure = COALESCE(Tenure, 1),
    CouponUsed = COALESCE(CouponUsed, 1),
    OrderCount = COALESCE(OrderCount, 2)
WHERE
    Tenure IS NULL
    OR CouponUsed IS NULL
    OR OrderCount IS NULL;
    UPDATE customer_churn
SET
    WarehouseToHome = COALESCE(WarehouseToHome, 16),
    HourSpendOnApp = COALESCE(HourSpendOnApp, 3),
    OrderAmountHikeFromlastYear = COALESCE(OrderAmountHikeFromlastYear, 16),
    DaySinceLastOrder = COALESCE(DaySinceLastOrder, 5)
WHERE
    WarehouseToHome IS NULL
    OR HourSpendOnApp IS NULL
    OR OrderAmountHikeFromlastYear IS NULL
    OR DaySinceLastOrder IS NULL;
    DELETE FROM customer_churn
WHERE WarehouseToHome > 100;
DELETE FROM customer_churn
WHERE WarehouseToHome > 100;
SELECT COUNT(*) AS Total_Rows
FROM customer_churn;
SELECT
SUM(WarehouseToHome IS NULL) AS Warehouse,
SUM(HourSpendOnApp IS NULL) AS AppHours,
SUM(OrderAmountHikeFromlastYear IS NULL) AS OrderHike,
SUM(DaySinceLastOrder IS NULL) AS Days,
SUM(Tenure IS NULL) AS Tenure,
SUM(CouponUsed IS NULL) AS Coupon,
SUM(OrderCount IS NULL) AS Orders
FROM customer_churn;
DESCRIBE customer_churn;
UPDATE customer_churn
SET PreferredLoginDevice = 'Mobile Phone'
WHERE PreferredLoginDevice = 'Phone';

UPDATE customer_churn
SET PreferedOrderCat = 'Mobile Phone'
WHERE PreferedOrderCat = 'Mobile';

UPDATE customer_churn
SET PreferredPaymentMode = 'Cash on Delivery'
WHERE PreferredPaymentMode = 'COD';

UPDATE customer_churn
SET PreferredPaymentMode = 'Credit Card'
WHERE PreferredPaymentMode = 'CC';
ALTER TABLE customer_churn
RENAME COLUMN HourSpendOnApp TO HoursSpentOnApp;

ALTER TABLE customer_churn
RENAME COLUMN PreferedOrderCat TO PreferredOrderCat;
ALTER TABLE customer_churn
ADD COLUMN ComplaintReceived VARCHAR(10),
ADD COLUMN ChurnStatus VARCHAR(20);
UPDATE customer_churn
SET ComplaintReceived =
CASE
    WHEN Complain = 1 THEN 'Yes'
    ELSE 'No'
END;
UPDATE customer_churn
SET ComplaintReceived =
CASE
    WHEN Complain = 1 THEN 'Yes'
    ELSE 'No'
END;
UPDATE customer_churn
SET ChurnStatus =
CASE
    WHEN Churn = 1 THEN 'Churned'
    ELSE 'Active'
END;
ALTER TABLE customer_churn
DROP COLUMN Churn,
DROP COLUMN Complain;
DESCRIBE customer_churn;
SELECT
    ChurnStatus,
    COUNT(*) AS Customer_Count
FROM customer_churn
GROUP BY ChurnStatus;
SELECT
    AVG(Tenure) AS Average_Tenure,
    SUM(CashbackAmount) AS Total_Cashback
FROM customer_churn
WHERE ChurnStatus = 'Churned';
SELECT
    ROUND(
        SUM(CASE WHEN ComplaintReceived = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*), 2
    ) AS Complaint_Percentage
FROM customer_churn
WHERE ChurnStatus = 'Churned';
SELECT
    CityTier,
    COUNT(*) AS Customer_Count
FROM customer_churn
WHERE ChurnStatus = 'Churned'
AND PreferredOrderCat = 'Laptop & Accessory'
GROUP BY CityTier
ORDER BY Customer_Count DESC
LIMIT 1;
SELECT
    PreferredLoginDevice,
    COUNT(*) AS Churned_Customers
FROM customer_churn
WHERE ChurnStatus = 'Churned'
GROUP BY PreferredLoginDevice
ORDER BY Churned_Customers DESC;
SELECT
    PreferredOrderCat,
    COUNT(*) AS Churned_Customers
FROM customer_churn
WHERE ChurnStatus = 'Churned'
GROUP BY PreferredOrderCat
ORDER BY Churned_Customers DESC;
SELECT
    PreferredPaymentMode,
    COUNT(*) AS Active_Customers
FROM customer_churn
WHERE ChurnStatus = 'Active'
GROUP BY PreferredPaymentMode
ORDER BY Active_Customers DESC
LIMIT 1;
SELECT
    SUM(OrderAmountHikeFromLastYear) AS Total_Order_Hike
FROM customer_churn
WHERE MaritalStatus = 'Single'
AND PreferredOrderCat = 'Mobile Phone';
SELECT
    ROUND(AVG(NumberOfDeviceRegistered), 2)
    AS Average_Devices
FROM customer_churn
WHERE PreferredPaymentMode = 'UPI';
SELECT
    CityTier,
    COUNT(*) AS Customer_Count
FROM customer_churn
GROUP BY CityTier
ORDER BY Customer_Count DESC
LIMIT 1;
SELECT
    Gender,
    SUM(CouponUsed) AS Total_Coupons
FROM customer_churn
GROUP BY Gender
ORDER BY Total_Coupons DESC
LIMIT 1;
SELECT
    MaritalStatus,
    ROUND(AVG(CashbackAmount), 2) AS Average_Cashback
FROM customer_churn
GROUP BY MaritalStatus
ORDER BY Average_Cashback DESC;
SELECT
    PreferredLoginDevice,
    ROUND(AVG(OrderCount), 2) AS Average_Order_Count
FROM customer_churn
GROUP BY PreferredLoginDevice
ORDER BY Average_Order_Count DESC;
SELECT
    CityTier,
    ROUND(AVG(WarehouseToHome), 2) AS Average_Distance
FROM customer_churn
GROUP BY CityTier
ORDER BY CityTier;
SELECT
    SatisfactionScore,
    COUNT(*) AS Churned_Customers
FROM customer_churn
WHERE ChurnStatus = 'Churned'
GROUP BY SatisfactionScore
ORDER BY SatisfactionScore;
SELECT
    Tenure,
    COUNT(*) AS Churned_Customers
FROM customer_churn
WHERE ChurnStatus = 'Churned'
GROUP BY Tenure
ORDER BY Tenure;
SHOW DATABASES;
USE ecomm;
CREATE TABLE customer_returns (
    ReturnID INT PRIMARY KEY,
    CustomerID INT,
    ReturnDate DATE,
    RefundAmount DECIMAL(10,2)
);
INSERT INTO customer_returns
(ReturnID, CustomerID, ReturnDate, RefundAmount)
VALUES
(1001, 50022, '2023-01-01', 2130),
(1002, 50316, '2023-01-23', 2000),
(1003, 51099, '2023-02-14', 2290),
(1004, 52321, '2023-03-08', 2510),
(1005, 52928, '2023-03-20', 3000),
(1006, 53749, '2023-04-17', 1740),
(1007, 54206, '2023-04-21', 3250),
(1008, 54838, '2023-04-30', 1990);
SELECT * FROM customer_returns;
SELECT 
    c.CustomerID,
    c.CustomerName,
    r.ReturnID,
    r.ReturnDate,
    r.RefundAmount
FROM customers c
INNER JOIN customer_returns r
ON c.CustomerID = r.CustomerID;
SHOW TABLES;
DESCRIBE customer_churn;
SELECT 
    c.*,
    r.ReturnID,
    r.ReturnDate,
    r.RefundAmount
FROM customer_churn c
INNER JOIN customer_returns r
ON c.CustomerID = r.CustomerID
WHERE c.ChurnStatus = 'Churned'
AND c.Complain = 1;
SHOW COLUMNS FROM customer_churn;
SELECT
    c.*,
    r.ReturnID,
    r.ReturnDate,
    r.RefundAmount
FROM customer_churn c
INNER JOIN customer_returns r
ON c.CustomerID = r.CustomerID
WHERE c.ChurnStatus = 'Churned'
AND c.ComplaintReceived = 'Yes';
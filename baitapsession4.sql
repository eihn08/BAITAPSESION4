create database companyDB;
use companyDB;
create table employees(
employees_id int primary key auto_increment,
firstname varchar(50),
lastname varchar(50)
);
CREATE DATABASE IF NOT EXISTS companyDB;
USE companyDB;
ALTER TABLE employees
ADD HireDate DATE;
ALTER TABLE employees
ADD Salary INT;
INSERT INTO employees (firstname, lastname, HireDate, Salary)
VALUES
('Nguyen', 'An', '2023-05-10', 12000000),
('Tran', 'Binh', '2024-02-15', 15000000),
('Le', 'Chi', '2022-11-01', 10000000);
UPDATE employees
SET Salary = 4800
WHERE employees_id = 2;
UPDATE employees
SET HireDate = '2021-08-01'
WHERE employees_id = 3;
DELETE FROM employees
WHERE employees_id = 1;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM employees WHERE Salary < 5000;
SET SQL_SAFE_UPDATES = 1;
SELECT *
FROM employees;
SELECT *
FROM employees
WHERE Salary > 5000;
SELECT *
FROM employees
ORDER BY HireDate DESC;
ALTER TABLE employees
ADD Department VARCHAR(50);
UPDATE employees
SET Department = 'HR'
WHERE employees_id = 3;
INSERT INTO employees (firstname, lastname, HireDate, Salary, Department)
VALUES
('Pham', 'Duy', '2024-01-20', 18000000, 'Kinh Doanh'),
('Hoang', 'Thao', '2023-10-05', 4000, 'Kinh Doanh'),
('Vu', 'Nam', '2022-04-15', 25000000, 'IT');
SELECT
    Department,
    COUNT(employees_id) AS TotalEmployees
FROM
    employees
GROUP BY
    Department;
    SELECT
    Department,
    AVG(Salary) AS AverageSalary
FROM
    employees
GROUP BY
    Department;
    SELECT
    Department,
    AVG(Salary) AS AverageSalary
FROM
    employees
GROUP BY
    Department
HAVING
    AVG(Salary) > 5000;
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE,
    is_active BIT
);

# Inserting vales for columns
INSERT INTO employees 
VALUES
(1,'Alice Johnson', 'Sales', 55000.00, '2018-03-15', 1),
(2,'Bob Smith', 'Marketing', 62000.00, '2019-07-01', 1),
(3, 'Charlie Davis', 'Sales', 47000.00, '2020-01-20', 0),
(4,'Diana Garcia', 'HR', 51000.00, '2017-11-10', 1),
(5,'Ethan Brown', 'IT', 72000.00, '2016-05-30', 1),
(6,'Fiona White', 'IT', 68000.00, '2021-08-22', 0),
(7,'George Clark', 'Marketing', 58000.00, '2020-10-12', 1),
(8,'Hannah Lee', 'Sales', 54000.00, '2019-02-14', 1);

# Retrieve all columns for all employees.
SELECT * FROM employees

# Retrieve only the name column for all employees.
SELECT name
FROM employees

# Retrieve the name and department columns for all employees.
SELECT name, department
FROM employees

# Retrieve the id, name, and salary columns for all employees.
SELECT  id, name, salary
FROM employees

# Retrieve the name and salary of all employees, but only show the first 5 rows.
SELECT  name, salary
FROM employees
WHERE id <= 5

# Retrieve the department and hire_date columns for all employees.
SELECT department, hire_date
FROM employees

# Retrieve all employee names and salaries, ordered by salary in ascending order.
SELECT name, salary
FROM employees
ORDER BY salary ASC

# Retrieve all employee names and hire dates, ordered by hire_date in descending order.
SELECT name, hire_date
FROM employees
ORDER BY hire_date DESC

# Retrieve all columns ordered by department in ascending order.
SELECT * 
FROM employees
ORDER BY department ASC

# Count the total number of employees.
SELECT COUNT (id)
FROM employees

# Count how many employees are currently active (is_active = 1).
SELECT COUNT(is_active) 
FROM employees
WHERE is_active = 1

# Count the number of distinct departments.
SELECT COUNT (DISTINCT department)
FROM employees

# Retrieve the department and count of employees in each department
SELECT department, COUNT(id) AS number_of_department
FROM employees
GROUP BY department

# Count the number of employees hired after 2018-01-01 (combine
SELECT COUNT(hire_date) 
FROM employees
WHERE hire_date >= '2018-01-01'

# Calculate the total sum of all employees salaries
SELECT SUM(salary) AS total_salary
FROM employees

# Calculate the total salary of employees in the Sales department.
SELECT SUM(salary) AS total_salary
FROM employees
WHERE department = 'Sales'

# Calculate the total salary of active employees (is_active = 1).
SELECT SUM(salary) AS total_salary
FROM employees
WHERE is_active = 1

# Retrieve the department and total salary of employees in each department (combine with GROUP BY).
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department

# Calculate the total salary of employees hired after 2018-01-01
SELECT SUM(salary) AS total_salary
FROM employees
WHERE hire_date > '2018-01-01'
 
# Calculate the average salary of all employees.
SELECT AVG(salary) AS avg_salary
FROM employees

# Calculate the average salary of employees in the Marketing department.
SELECT AVG(salary) AS avg_salary
FROM employees
WHERE department = 'Marketing'

# Calculate the average salary of active employees (is_active = 1).
SELECT AVG(salary) AS avg_salary
FROM employees
WHERE is_active = 1

# Retrieve the department and average salary for each department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department

# Calculate the average salary of employees hired after 2018-01-01
SELECT AVG(salary) AS avg_salary
FROM employees
WHERE hire_date > '2018-01-01'

# Select the name column and alias it as employee_name.
SELECT name AS employee_name
FROM employees

# select the salary column and alias it as annual_salary.
SELECT salary  AS annual_salary
FROM employees

# Select the department column and alias it as dept.
SELECT department AS dept
FROM employees

# Select the name and salary columns, aliasing them as employee_name and annual_salary, ordered by annual_salary descending.
SELECT name AS employee_name , salary AS annual_salary
FROM employees
ORDER BY annual_salary DESC

# Calculate the average salary and alias the result as avg_salary.
SELECT AVG(salary) AS avg_salary
FROM employees

# Retrieve all columns for employees in the Sales department.
SELECT id, name, department, salary, hire_date, is_active
FROM employees
WHERE department = 'Sales'

# Retrieve all columns for employees with a salary greater than 60000.
SELECT id, name, department, salary, hire_date, is_active
FROM employees
WHERE salary > 60000

# Retrieve all columns for employees who are currently active (is_active = 1).
SELECT id, name, department, salary, hire_date, is_active
FROM employees
WHERE is_active = 1

# Retrieve all columns for employees hired before 2019-01-01.
SELECT id, name, department, salary, hire_date, is_active
FROM employees
WHERE hire_date < '2019-01-01'

# Retrieve name and salary of active employees in the IT department.
SELECT  name, salary
FROM employees
WHERE department = 'IT' and is_active = 1

# Retrieve the names of employees in Marketing or HR departments.
SELECT name 
FROM employees
WHERE department = 'Marketing' OR department = 'HR'

# Retrieve all columns for employees with salary between 50000 and 60000.
SELECT id, name, department, salary, hire_date, is_active
FROM employees
WHERE salary BETWEEN 50000 AND 60000

# Retrieve each department and the count of employees in that department.
SELECT department, COUNT(id) 
FROM employees
GROUP BY department

# Retrieve each department and the total salary of employees in that department.
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department

# Retrieve each department and the average salary of employees in that department.
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department

# Retrieve each department and the count of active employees in that department (is_active = 1).
SELECT department, COUNT(is_active) AS active_count
FROM employees
WHERE is_active = 1
GROUP BY department

# Retrieve each department and the average salary of employees hired after 2017-01-01.
SELECT department, AVG(salary) AS avg_salary
FROM employees
WHERE hire_date > '2017-01-01'
GROUP BY department

# Retrieve departments having more than 2 employees.
SELECT department, COUNT(id) AS count
FROM employees
GROUP BY department
HAVING COUNT(id) > 2

# Retrieve departments having total salary greater than 120000.
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 120000

# Retrieve departments having average salary less than 60000.
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) < 60000

# Retrieve departments having more than 1 active employee (is_active = 1).
SELECT department, COUNT(is_active) AS active_count
FROM employees
WHERE is_active = 1
GROUP BY department
HAVING COUNT(is_active) > 1

# Retrieve departments having average salary greater than 60000 and count of employees greater than 1.
SELECT department, AVG(salary) AS avg_salary, COUNT(id) AS count
FROM employees
GROUP BY department 
HAVING AVG(salary) > 60000 AND COUNT(id) > 1

# Find employees in "Sales" department earning above their departments average salary.
SELECT * 
FROM employees
WHERE department = 'Sales'

USE Question1

SELECT * FROM employees

UPDATE employees
SET hire_date = '2018-05-21'
WHERE id = 1

UPDATE employees
SET salary = 48000,
    department = 'HR',
    hire_date = '2019-08-15'
WHERE id = 2;

UPDATE employees
SET salary = 62000,
    hire_date = '2017-03-12'
WHERE id = 3
   
UPDATE employees
SET salary = 70000,
    department = 'IT',
	hire_date = '2020-11-01'
WHERE id = 4

UPDATE employees
SET name = 'Even',
    salary = 51000,
    department = 'HR',
	hire_date = '2018-01-05'
WHERE id = 5

UPDATE employees
SET salary = 72000,
    hire_date = '2019-04-23',
	is_active = 1
WHERE id = 6

UPDATE employees
SET salary = 58000,
    hire_date = '2021-02-14',
	department = 'Sales',
	is_active = 1
WHERE id = 7

UPDATE employees
SET salary = 68000,
    department = 'IT',
	hire_date = '2016-09-30',
	is_active = 0
WHERE id = 8

INSERT INTO employees(id, name, department, salary, hire_date, is_active)
VALUES
(9, 'lan', 'HR', 53000, '2020-07-19',1),
(10, 'Jane', 'Sales', 60000, '2019-12-11',1)

# Find employees in "Sales" department earning above their departments average salary
SELECT *
FROM employees
WHERE department = 'Sales'
AND salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department = 'Sales'
);









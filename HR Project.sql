show tables;
# Q.1 Retrieve all employees from the "employees" table. 
select * from employees;

# Q.2 Get the details of all employees in the "employees" table who work in the "Sales" department.
SELECT * FROM employees WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'Sales');

# Q.3 Find the names of all departments in the "departments" table.
SELECT department_name FROM departments;
	
# Q.4 Get the average salary of all employees in the "employees" table.
SELECT AVG(salary) FROM employees;

# Q.5 Retrieve the details of employees who have a salary greater than 5000.
SELECT * FROM employees WHERE salary > 5000;

# Q.6 Get the names and job id's of employees who work in the "Marketing" department.
SELECT first_name, last_name, job_id FROM employees
WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'Marketing');

# Q.7 Find the number of employees in each department.
SELECT department_name, COUNT(*) as employee_count FROM employees
JOIN departments ON employees.department_id = departments.department_id GROUP BY department_name;

# Q.8 Retrieve the details of employees who have a commission percentage greater than 0.
SELECT * FROM employees WHERE commission_pct > 0;

# Q.9 Get the names of employees who have a manager.
SELECT first_name, last_name FROM employees WHERE manager_id IS NOT NULL;

# Q.10 Find the maximum salary in the "employees" table.
SELECT MAX(salary) FROM employees;

# Q.11 Retrieve the details of employees who joined the company in the year 1998.
SELECT * FROM employees WHERE EXTRACT(YEAR FROM hire_date) = 1998;

# Q.12 Get the names and job id's  of employees who work in the "Finance" department and have a salary greater than 10000.
SELECT first_name, last_name, job_id FROM employees
WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'Finance') AND salary > 10000;

# Q.13 Find the average salary of employees in the "Sales" department.
SELECT AVG(salary) FROM employees WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'Sales');

# Q.14 Retrieve the details of employees who have a job id of "AD_PRES" or "FI_MGR"
SELECT * FROM employees WHERE job_id IN ('AD_PRES', 'FI_MGR');

# Q.15 Get the names and salaries of employees who have a salary between 3000 and 4000.
SELECT first_name, last_name, salary FROM employees WHERE salary BETWEEN 3000 AND 4000;

# Q.16 Find the department with the highest number of employees.
SELECT department_name, COUNT(*) as employee_count FROM employees
JOIN departments ON employees.department_id = departments.department_id GROUP BY department_name ORDER BY employee_count DESC LIMIT 1;

# Q.17 Retrieve the details of employees who have a job id's that starts with the letter "S".
SELECT * FROM employees WHERE job_id LIKE 'S%';

# Q.18 Get the names of employees who have a salary greater than the average salary.
SELECT first_name, last_name FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

# Q.19 Find the number of employees who joined the company in each year.
SELECT EXTRACT(YEAR FROM hire_date) AS hire_year, COUNT(*) as employee_count FROM employees
GROUP BY hire_year;

# Q.20 Retrieve the details of employees who have a job id's that ends with the letter "r".
SELECT * FROM employees WHERE job_id LIKE '%r';


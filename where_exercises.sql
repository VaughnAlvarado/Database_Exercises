USE employees;
SELECT emp_no,hire_date,first_name,last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT emp_no,birth_date,first_name,last_name
FROM employees
WHERE birth_date like '%12-25%';
SELECT emp_no, first_name, last_name
FROM employees	
WHERE last_name like '%Q%';

WHERE (continued exercises --------->)
USE employees;
-- SELECT emp_no,hire_date,first_name,last_name
-- FROM employees
-- WHERE hire_date <= '1990';

-- SELECT emp_no,birth_date,first_name,last_name
-- FROM employees
-- WHERE birth_date like '%12-25%';
-- SELECT emp_no, first_name, last_name
-- FROM employees	
-- WHERE last_name like '%Q%';

-- WHERE (continued exercises --------->)
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya';
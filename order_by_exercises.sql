-- ordering by names
SELECT emp_no, first_name, last_name, gender
FROM employees
WHERE gender = 'M'
AND (
first_name = 'Irena'
OR first_name =  'Vidya'
OR first_name = 'Maya'
)
ORDER BY last_name ASC, first_name ASC;

-- ordering by employee number
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like '%e%'
ORDER BY 1 DESC;

-- order by oldest guy who has been hired last
SELECT emp_no,hire_date,birth_date, first_name,last_name 
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND (
birth_date like '%12-25%'
)
ORDER BY hire_date DESC, birth_date;



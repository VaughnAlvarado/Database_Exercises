First ten with distinct nsmes starting with a M
SELECT DISTINCT last_name
FROM employees
WHERE first_name LIKE 'M%'
ORDER BY last_name DESC
LIMIT 10;

Limit first 5 on oldest men hired first


Get the 10th batch of results
SELECT emp_no,hire_date,birth_date, first_name,last_name 
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND (
birth_date like '%12-25%'
)
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;

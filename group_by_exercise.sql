SELECT DISTINCT title 
FROM titles;


-----Distinct get all different last and first name combos
SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name like '%e'
AND (
last_name like 'e%'
)
GROUP BY last_name;

SELECT first_name, last_name
FROM employees
WHERE last_name like '%q%'
AND (
last_name NOT LIKE '%qu%'
)
GROUP BY last_name;
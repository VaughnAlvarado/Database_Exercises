USE join_test_db

CREATE TABLE IF NOT EXISTS roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

SELECT COUNT(users.name) AS user_name, roles.name AS role_name
FROM roles
JOIN users ON users.role_id = roles.id
GROUP BY role_name;

	
--  Finding out names of employees that manage a department that are women
-- SELECT CONCAT(e.first_name, ' ',  e.last_name) AS full_name, d.dept_name, e.emp_no
-- FROM employees AS e
-- JOIN dept_emp AS de
-- 	ON de.emp_no = e.emp_no
-- JOIN departments AS d
-- 	ON d.dept_no = de.dept_no
-- JOIN dept_manager AS dm
-- 	ON dm.emp_no = e.emp_no
-- WHERE dm.to_date = '9999-01-01' AND gender LIKE 'F';

--finding out employees in customer service department still working and with a title
-- SELECT COUNT(CONCAT(e.first_name, ' ',  e.last_name)) AS full_name, title
-- FROM employees AS e
-- JOIN dept_emp AS de
-- 	ON de.emp_no = e.emp_no
-- JOIN departments AS d
-- 	ON d.dept_no = de.dept_no
-- JOIN titles AS t
-- 	ON t.emp_no = de.emp_no
-- WHERE d.dept_no = 'd009' AND de.to_date > now() AND t.to_date > NOW()
-- GROUP BY title;


--finding out salaries of all managers that are currently working 
-- SELECT CONCAT(e.first_name, ' ',  e.last_name) AS full_name, d.dept_name, salary
-- FROM employees AS e
-- JOIN dept_emp AS de
-- 	ON de.emp_no = e.emp_no
-- JOIN departments AS d
-- 	ON d.dept_no = de.dept_no
-- JOIN dept_manager AS dm
-- 	ON dm.emp_no = e.emp_no
-- JOIN salaries AS s
-- 	ON s.emp_no = e.emp_no
-- WHERE dm.to_date = '9999-01-01' AND s.to_date > NOW();

--listing all active employees with their managers name
-- SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name, CONCAT(m.first_name, ' ', m.last_name) AS manager_name
-- FROM employees AS e
-- JOIN dept_emp AS de
-- 	ON de.emp_no = e.emp_no
-- JOIN departments AS d
-- 	ON d.dept_no = de.dept_no
-- JOIN dept_manager AS dm
-- 	ON dm.dept_no = d.dept_no
-- JOIN employees AS m
-- 	ON m.emp_no = dm.emp_no 
-- WHERE de.to_date = '9999-01-01' AND dm.to_date > now();




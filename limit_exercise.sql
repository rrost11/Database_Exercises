-- the first 10 distinct last name sorted in descending order
SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC LIMIT 10;

-- first 5 employees born on Christmas and hired in the 90s
SELECT * FROM employees 
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' 
	AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5;

-- the 10th batch of results from the previous query
SELECT * FROM employees 
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' 
	AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;
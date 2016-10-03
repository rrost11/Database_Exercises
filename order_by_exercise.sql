-- unique titles in the titles table
SELECT DISTINCT title FROM titles;
-- sorted alphabetically
SELECT DISTINCT title FROM titles ORDER BY title;

-- unique last names that start *and* end with 'E'
SELECT last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' GROUP BY last_name;

-- unique combinations of first and last names that start *and* end with 'E'
SELECT last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' GROUP BY last_name, first_name;

-- unique last names that have a 'q' but not a 'qu' in them
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
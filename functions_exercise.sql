-- number of employees for each gender with given names
SELECT count(*), gender FROM employees
WHERE first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya' 
GROUP BY gender;

-- first name and last name together
SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

-- number of days the employees who were hired in the 90s and whose birthdays are on Christmas have been working for the company
SELECT first_name, last_name, datediff(now(), hire_date)
FROM employees 
WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31') AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;

-- distinct combinations of first name and last name where the last name contains a 'q' but not a 'qu'
SELECT *, count(last_name) FROM employees 
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' 
GROUP BY last_name, first_name 
ORDER BY last_name, count(last_name) DESC;
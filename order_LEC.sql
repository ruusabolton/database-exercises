use employees

/*ASC by default*/
SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY first_name;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY birth_date;


SELECT first_name, last_name
FROM employees
WHERE gender = 'M'
ORDER BY  last_name DESC;


SELECT first_name, last_name
FROM employees
ORDER BY  last_name ASC;

/*will sort first by first name, then by last name*/
SELECT first_name, last_name
FROM employees
ORDER BY  first_name, last_name;

/*first employee hired*/

SELECT * FROM employees
ORDER BY hire_date;

/*last employee hired*/

SELECT * FROM employees
ORDER BY hire_date DESC;

/*first female employees hired*/
SELECT * FROM employees
ORDER BY gender DESC, hire_date;

/**/
use employees;

SELECT * FROM salaries
ORDER BY to_date DESC;
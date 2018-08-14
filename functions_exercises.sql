use employees;

/*Update your queries for employees whose names start and end with 'E'.
 Use concat() to combine their first and last name together as a single column in your results.*/

/*doesn't care about capitalization*/

SELECT CONCAT (first_name,' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
order by emp_no DESC
LIMIT 10;


SELECT CONCAT (first_name,' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
order by emp_no
LIMIT 10;


/*For your query of employees born on Christmas and hired in the 90s, use datediff()
 to find how many days they have been working at the company (Hint: You will also need to use now() or curdate()).*/

/*Option1*/
SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date , hire_date DESC;

/*Option2*/

SELECT * FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date , hire_date DESC;

select concat(
'Teaching people for ', datediff() - datediff(curnow()), ' seconds.'
);

SELECT CONCAT(last_name,' was hired on ', hire_date,'. It has been ', DATEDIFF(hire_date, now()), ' days since ', hire_date, '.')
FROM employees
ORDER BY emp_no
LIMIT 10;

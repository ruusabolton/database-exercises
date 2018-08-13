use employees;
SELECT 'Find all employees with first names ''Irena'', ''Vidya'', or ''Maya'' ' AS 'exercise 2';


/* — 709 rows (Hint: Use IN).*/
SELECT * FROM employees
where first_name IN ('Irena', 'Vidya', 'Maya');

SELECT 'Find all employees whose last name starts with ''E'' — 7,330 rows. ' AS 'exercise 3';

/**/

SELECT * FROM employees
WHERE last_name LIKE 'E%';


SELECT 'Find all employees hired in the 90s — 135,214 rows. ' AS 'exercise 4';

/**/
SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';


SELECT 'Find all employees born on Christmas — 842 rows. ' AS 'exercise 5';

/**/

SELECT * FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT 'Find all employees with a ''q'' in their last name — 1,873 rows.' AS 'exercise 6';


SELECT * FROM employees
WHERE last_name LIKE '%q%';


SELECT 'Find all employees with first names ''Irena'', ''Vidya'', or ''Maya'' — 709 rows (Hint: Use OR).
 ' AS 'exercise 1';

/*Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use OR).*/
SELECT * FROM employees
where first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya';

SELECT 'Find all employees with first names ''Irena'', ''Vidya'', or ''Maya'' and are male— 441 rows .
' AS 'exercise 2';
SELECT * FROM employees
WHERE first_name IN ('Irena',
 'Vidya',
 'Maya')
AND gender = 'M';


SELECT 'Find all employees whose last name starts or ends with ''E'' — 30,723 rows.' AS 'exercise 3';

SELECT * FROM employees
WHERE last_name LIKE '%e'
OR last_name LIKE 'e%';

SELECT 'Find all employees whose last name starts AND ends with ''E'' — 899 rows.
' AS 'exercise 4';

SELECT * FROM employees
WHERE last_name LIKE '%e'
AND last_name LIKE 'e%';

SELECT 'Find all employees hired in the 90s and born on Christmas — 362 rows.
' AS 'exercise 5';

SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25';

SELECT 'Find all employees with a ''q'' in their last name but not ''qu'' — 547 rows.
' AS 'exercise 6';

SELECT * FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';

use employees;
SELECT 'Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Simmen. ' AS 'exercise 2';


/* — 709 rows (Hint: Use IN).*/
SELECT * FROM employees
where first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

/*Update the query to order by first name and then last name.
The first result should now be Irena Acton and the last should be Vidya Zweizig.*/

SELECT * FROM employees
where first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

/**Change the order by clause so that you order by last name before first name.
Your first result should still be Irena Acton but now the last result should be Maya Zyda./
 */

SELECT * FROM employees
where first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY  last_name, first_name;

/*Update your queries for employees with 'E' in their
 last name to sort the results by their employee number. Your results should not change!*/
SELECT 'Find all employees whose last name starts with ''E'' — 7,330 rows. ' AS 'exercise 3';

/*doesn't care about capitalization*/

SELECT * FROM employees
WHERE last_name LIKE 'E%'
order by emp_no;
/*Now reverse the sort order for both queries.*/
SELECT * FROM employees
WHERE last_name LIKE 'E%'
order by emp_no DESC;


/*Change the query for employees hired in the 90s and born on Christmas such
that the first result is the oldest employee who was hired last. It should be Khun Bernini.*/
SELECT 'Find all employees hired in the 90s and born on Christmas — 362 rows.
' AS 'exercise 5';

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


use employees;

/*Find all the employees with the same hire date as employee 101010 using a sub-query. 69 Rows*/

SELECT emp_no, first_name, last_name, hire_date
  FROM employees
  WHERE hire_date IN (SELECT hire_date
    FROM employees
    WHERE emp_no = 101010);

/*Find all the titles held by all employees with the first name Aamod.
314 total titles, 6 unique titles*/

SELECT title
  FROM titles
  WHERE emp_no IN (
    SELECT emp_no FROM employees
    WHERE first_name = 'Aamod'
  )
  GROUP BY title
  ORDER BY title desc;

/*Find all the current department managers that are female.*/
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
  WHERE to_date > now()
  AND emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE gender = 'F'
  )
);


/*Find all the department names that currently have female managers.*/

SELECT dept_name
FROM departments
WHERE dept_no IN (
  SELECT dept_no
  FROM dept_manager
  WHERE to_date > now()
  AND emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE gender = 'F'
  )
);

/*Find the first and last name of the employee with the highest salary.*/

SELECT MAX(salary) AS adg
  FROM salaries
   WHERE emp_no IN (SELECT concat_ws(' | ', first_name, last_name)
FROM employees);

SELECT  first_name
FROM employees
where emp_no IN
(
SELECT MAX(salary) FROM salaries

);

select emp_no,
-- CREATE DATABASE `join_test_db`;
-- show databases;

-- use join_test_db;

-- CREATE TABLE roles (
--   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--   name VARCHAR(100) NOT NULL,
--   PRIMARY KEY (id)
-- );

-- show tables;

-- CREATE TABLE users (
--   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--   name VARCHAR(100) NOT NULL,
--   email VARCHAR(100) NOT NULL,
--   role_id INT UNSIGNED DEFAULT NULL,
--   PRIMARY KEY (id),
--   FOREIGN KEY (role_id) REFERENCES roles (id)
-- );

-- INSERT INTO roles (name) VALUES ('admin');
-- INSERT INTO roles (name) VALUES ('author');
-- INSERT INTO roles (name) VALUES ('reviewer');
-- INSERT INTO roles (name) VALUES ('commenter');

-- select * from roles;

-- INSERT INTO users (name, email, role_id) VALUES
-- ('bob', 'bob@example.com', 1),
-- ('joe', 'joe@example.com', 2),
-- ('sally', 'sally@example.com', 3),
-- ('adam', 'adam@example.com', 3),
-- ('jane', 'jane@example.com', null),
-- ('mike', 'mike@example.com', null);

-- select * from users;

/*Use count and the appropriate join type to get a list of roles along with the number of users
that has the role. Hint: You will also need to use group by in the query.*/

--
-- SELECT users.role_id,  COUNT(*) AS 'Users in this role',roles.name
-- FROM users
-- JOIN roles ON users.role_id = roles.id
-- group by  users.role_id, roles.name;


-- select * from users;

/*employee database exercise*/
use employees;

/*write a query that shows each department along with the name of the current manager for that department.*/

SELECT  departments.dept_name as 'Department Name', concat_ws(' ', employees.first_name, employees.last_name) AS 'Department Manager'
FROM departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
where dept_manager.to_date = '9999-01-01'
GROUP BY  employees.first_name, employees.last_name, departments.dept_name
order by departments.dept_name;

/*Find the name of all departments currently managed by women.*/

SELECT  departments.dept_name as 'Department Name', concat_ws(' ', employees.first_name, employees.last_name) AS 'Department Manager',employees.gender
FROM departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE employees.gender = 'F'
AND  dept_manager.to_date > NOW();

/*Find the current titles of employees currently working in the Customer Service department.*/

SELECT  titles.title AS Title, Count(*) AS Count
FROM titles
JOIN employees ON employees.emp_no =titles.emp_no
JOIN dept_emp ON titles.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Customer Service'
AND  titles.to_date > NOW()
GROUP BY titles.title;


/*Find the current salary of all current managers.*/

SELECT DISTINCT departments.dept_name as 'Department Name', concat(employees.first_name, ' ', employees.last_name) AS 'Department Manager', salaries.salary AS Salary
FROM departments
LEFT JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
LEFT JOIN salaries ON salaries.emp_no = dept_manager.emp_no
LEFT JOIN employees ON employees.emp_no= salaries.emp_no
WHERE dept_manager.to_date > NOW()
And salaries.to_date > now()
GROUP BY    employees.last_name, employees.first_name, salary, departments.dept_name
order by salaries.salary;




/*Find the names of all current employees, their department name, and their current manager's name.*/
SELECT DISTINCT concat( e.first_name,' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', concat(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM employees e
INNER JOIN dept_manager dm ON dm.emp_no = e.emp_no
JOIN departments d ON d.dept_no = dm.dept_no
JOIN dept_emp de ON de.dept_no = d.dept_no
UNION
SELECT DISTINCT concat( e.first_name,' ' , e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', concat(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM employees e
JOIN dept_manager AS dm ON e.emp_no != dm.emp_no
JOIN departments d ON d.dept_no = dm.dept_no
JOIN dept_emp de ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01';

UNION ALL

SELECT concat( e.first_name,' ', e.last_name) , d.dept_name AS 'Department Name', concat(e.first_name, ' ', e.last_name) AS 'Department Mgr'
FROM departments d
JOIN dept_manager dm ON dept_manager.dept_no = d.dept_no
JOIN employees e ON dept_manager.emp_no = employees.emp_no
where dm.to_date = '9999-01-01'
GROUP BY  e.first_name, e.last_name, d.dept_name


SELECT
concat(mortals.first_name, ' ',
mortals.last_name) AS 'Employee Name',
d.dept_name AS 'Department Name',
concat(mgmt.first_name, ' ',
mgmt.last_name) AS 'Manager Name'


FROM employees mortals
JOIN dept_emp de ON mortals.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
JOIN dept_manager manager on d.dept_no = manager.dept_no
JOIN employees mgmt ON manager.emp_no = mgmt.emp_no

WHERE de.to_date > now()
AND manager.to_date > now()
ORDER BY d.dept_name asc, mgmt.last_name DESC;

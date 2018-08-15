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

/*FUNCTIONS*/
/*CONCAT FX*/

select 'something';
SELECT CONCAT (first_name, ' ', last_name, ' was born on ', birth_date)
FROM employees
LIMIT 5;

/*show length of a string*/
/*will print how many characters*/
SELECT length('superagdagdgasgdsy4w3y64jgtjsf34y');
/*will print first 5 characters from the left*/
SELECT left('superagdagdgasgdsy4w3y64jgtjsf34y',5);

select trim ('sdahery   ');

select unix_timestamp();

select concat(
'Teaching people for ', unix_timestamp() - unix_timestamp(2014-02-14), ' seconds.'
);

show warnings;

SELECT first_name
FROM employees
GROUP BY first_name;

/* group column by common attributes,
e.g. gender or sometimes birthdates, needs to be specific in the SELECT statement*/

SELECT *
FROM employees
WHERE birth_date LIKE '%-05-03';


/*will return the single birhdate that everyone shares*/
SELECT birth_date
FROM employees
WHERE birth_date = '1961-05-03'
GROUP BY birth_date;

/*will return the single birthdate that everyone shares, and number of how many entries have that birthdate*/
SELECT birth_date, count(birth_date) number_of_entries
FROM employees
WHERE birth_date = '1961-05-03'
GROUP BY birth_date;


/*will return the 2 entries of birthdates and number of how many entries have that specific birthdate*/
SELECT birth_date, count(birth_date)  AS number_of_entries
FROM employees
WHERE birth_date = '1961-05-03'
  OR birth_date IN ('1958-05-03')
GROUP BY birth_date;

/* same count will be returned with below select count fx*/
SELECT birth_date, COUNT(*) AS number_of_entries FROM employees WHERE birth_date = '1961-05-03';

/*Aggregate Fxs*/
/*columns in select statement must be called in group by, otherwise error;
EXCEPT aggregate fxs like Count, sum, datediff(), etc*/
/*print names that do not have 'a' in them*/

SELECT COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%';

SELECT birth_date, count(birth_date)  AS number_of_entries, first_name, last_name
FROM employees
WHERE birth_date = '1961-05-03'
  OR birth_date IN ('1958-05-03')
GROUP BY birth_date, first_name, last_name
ORDER BY number_of_entries ASC;

SELECT count(first_name), " is", gender
FROM employees e
WHERE e.first_name = 'Kokou'
  GROUP BY e.gender;


/*INDICES*/

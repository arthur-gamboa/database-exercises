USE employees;

SELECT emp_no, first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '199%';

SELECT birth_date
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT first_name
FROM employees
WHERE first_name = 'Irena' AND gender = 'M'
OR (first_name = 'Vidya' AND gender = 'M'
OR first_name = 'Maya' AND gender = 'M');

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%e';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%e';

SELECT first_name, last_name
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
AND NOT last_name LIKE '%qu%';

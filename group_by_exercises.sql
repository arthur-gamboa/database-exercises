USE employees;

# LECTURE EXERCISES
# SELECT count(*) AS 'number_of_employees' FROM employees;
#
# SELECT first_name, COUNT(first_name) AS TOTAL
# FROM employees
# GROUP BY first_name DESC;
#
# SELECT last_name, first_name, COUNT(first_name) AS 'total'
# FROM employees
# GROUP BY last_name, first_name
# ORDER BY total DESC;
#
# SELECT * FROM employees WHERE first_name = 'Laurentiu' AND last_name = 'Cesareni';

SELECT DISTINCT title
FROM titles;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY last_name ASC;

SELECT DISTINCT last_name, first_name
FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY last_name ASC, first_name ASC;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND NOT last_name LIKE '%qu%';

SELECT last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%'
AND NOT last_name LIKE '%qu%'
GROUP BY last_name;

SELECT CONCAT(COUNT(gender), ' ', gender)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
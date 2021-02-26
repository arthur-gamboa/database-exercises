USE employees

SELECT count(*) AS 'number_of_employees' FROM employees;

SELECT first_name, COUNT(first_name)
FROM employees
GROUP BY first_name DESC;

SELECT * FROM employees WHERE first_name = 'Georgi';

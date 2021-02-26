USE employees;

SELECT emp_no, CONCAT_WS (' ', first_name, last_name)
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%e'
ORDER BY emp_no DESC;


SELECT *, DATEDIFF(CURDATE(), hire_date)
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;


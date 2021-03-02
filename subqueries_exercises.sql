USE employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);


SELECT t.title AS 'Titles', COUNT(title)
FROM titles t
WHERE t.emp_no IN (
    SELECT e.emp_no
    FROM employees e
    WHERE e.first_name = 'Aamod'
)
GROUP BY title;


SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW() AND gender = 'F'
    );
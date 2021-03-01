# # CREATE DATABASE join_test_db;
# USE join_test_db;
#
# CREATE TABLE roles (
# id INT UNSIGNED NOT NULL AUTO_INCREMENT,
# name VARCHAR(100) NOT NULL,
# PRIMARY KEY (id)
# );
#
# CREATE TABLE users (
# id INT UNSIGNED NOT NULL AUTO_INCREMENT,
# name VARCHAR(100) NOT NULL,
# email VARCHAR(100) NOT NULL,
# role_id INT UNSIGNED DEFAULT NULL,
# PRIMARY KEY (id),
# FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name) VALUES ('admin');
# INSERT INTO roles (name) VALUES ('author');
# INSERT INTO roles (name) VALUES ('reviewer');
# INSERT INTO roles (name) VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id) VALUES
# ('bob', 'bob@example.com', 1),
# ('joe', 'joe@example.com', 2),
# ('sally', 'sally@example.com', 3),
# ('adam', 'adam@example.com', 3),
# ('jane', 'jane@example.com', null),
# ('mike', 'mike@example.com', null),
# ('john', 'john@example.com', 2),
# ('lexi', 'lexi@example.com', 2),
# ('ricky', 'ricky@example.com', 2),
# ('pam', 'pam@example.com', null);
#
# SHOW TABLES;
#
# DESCRIBE users;
# DESCRIBE roles;
#
# -- Join / Inner Join
#
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
# JOIN roles ON users.role_id = roles.id;
#
# -- Left Join
#
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
# LEFT JOIN roles ON users.role_id = roles.id;
#
# -- Right Join
#
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
# RIGHT JOIN roles ON users.role_id = roles.id;

USE employees;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e on dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;


SELECT t.title AS 'Title', COUNT(*) AS 'Head Count'
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON d.dept_no = de.dept_no
JOIN titles t ON e.emp_no = t.emp_no
WHERE de.to_date > NOW() AND t.to_date > NOW() AND d.dept_name = 'Customer Service'
GROUP BY t.title;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM departments d
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e ON dm.emp_no = e.emp_no
JOIN salaries s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;
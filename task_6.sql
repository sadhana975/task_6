-- inner,left,right joins

create database joins_db;
use joins_db ;
CREATE TABLE departments (
    id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO departments (id, dept_name, location) VALUES
(1, 'HR', 'New York'),
(2, 'IT', 'San Diego'),
(3, 'Marketing', 'New York');


CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

INSERT INTO employees (id, name, salary, department_id) VALUES
(1, 'Alice', 80000, 1),
(2, 'Bob', 60000, 1),
(3, 'Charlie', 90000, 2),
(4, 'David', 50000, 2),
(5, 'Eva', 70000, 3);



CREATE TABLE projects (
    id INT PRIMARY KEY,
    employee_id INT,
    project_name VARCHAR(100),
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

INSERT INTO projects (id, employee_id, project_name) VALUES
(1, 1, 'App Redesign'),
(2, 3, 'Website Revamp'),
(3, 5, 'Ad Campaign');

select * from departments;
select * from employees;
select * from projects;


--  Subquery in SELECT

SELECT 
  name,
  (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees;

-- Subquery in WHERE – Using IN

SELECT name 
FROM employees 
WHERE department_id IN (
  SELECT id FROM departments WHERE location = 'New York'
);


-- Subquery in WHERE – Using EXISTS

SELECT name 
FROM employees e 
WHERE EXISTS (
  SELECT 1 FROM projects p WHERE p.employee_id = e.id
);

-- Subquery in WHERE – Using =

SELECT name 
FROM employees 
WHERE salary = (
  SELECT MAX(salary) FROM employees
);

-- Subquery in FROM Clause

SELECT dept_name, avg_salary 
FROM (
  SELECT department_id, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department_id
) AS dept_avg
JOIN departments ON departments.id = dept_avg.department_id;
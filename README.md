📘 SQL Joins and Subqueries Project
🎯 Objective
Demonstrate the use of INNER, LEFT, and RIGHT JOINs, along with various types of subqueries (SELECT, WHERE, FROM) to build advanced querying logic.

🛠️ Tools Used
MySQL Workbench / DB Browser for SQLite

SQL (Structured Query Language)

🧱 Database Structure
1. departments
Contains department ID, name, and location.

2. employees
Contains employee details including name, salary, and a foreign key linking to the department.

3. projects
Contains project assignments with a foreign key to the corresponding employee.

🧪 Test Data
Sample data was inserted into each table to represent:

Departments located in different cities.

Employees assigned to various departments.

Projects assigned to certain employees.

📌 Key Concepts Demonstrated
🔄 Joins (to be added later)
Inner Join: Matches rows from both tables.

Left Join: Returns all rows from the left table and matched rows from the right.

Right Join: Returns all rows from the right table and matched rows from the left.

(Note: This template includes placeholder text for joins — actual join queries are not yet written in the script.)

🔍 Subqueries
1. Subquery in SELECT Clause
Demonstrates scalar subquery usage by embedding an aggregated value into each row.

2. Subquery in WHERE Clause
IN: Filters employees based on matching department locations.

EXISTS: Returns employees involved in at least one project.

=: Filters for the employee with the maximum salary.

3. Subquery in FROM Clause
Shows how to treat a subquery as a temporary table (inline view) to combine aggregated data with base tables.

✅ Learning Outcome
By completing this project, you gain hands-on experience with:

Writing and interpreting scalar, correlated, and nested subqueries.

Using subqueries in different clauses to extract meaningful insights.

Structuring databases and linking tables using foreign keys.

Preparing for complex SQL interview scenarios or analytical tasks.


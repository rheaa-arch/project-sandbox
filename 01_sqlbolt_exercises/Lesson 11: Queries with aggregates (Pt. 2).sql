-- Lesson 11: QUUERY basics
-- Practice queries from SQLBolt
-- Table used: employees (columns: role, name, building, years_employed)

SELECT count(role) FROM employees where role = 'Artist';
SELECT role ,count(role) FROM employees group by role;
SELECT role ,sum(years_employed) FROM employees where role = 'Engineer';

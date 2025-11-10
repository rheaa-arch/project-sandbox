-- Lesson 10: QUUERY basics
-- Practice queries from SQLBolt
-- Table used: employees (columns: role, name, building, years_employed)

SELECT name, max(years_employed) FROM employees;
SELECT role, avg(years_employed) FROM employees group by role;
SELECT building, sum(years_employed) FROM employees group by building;

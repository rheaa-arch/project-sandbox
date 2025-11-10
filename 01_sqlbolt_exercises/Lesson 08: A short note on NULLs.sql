-- Lesson 08: NULL basics
-- Practice queries from SQLBolt
-- Table used: buildings (columns: building_name, capacity)
-- Table used: employees (columns: role	name, building, years_employed)

SELECT name, role FROM employees left join buildings on employees.building = buildings.building_name where building is null;
SELECT building_name FROM buildings left join employees on buildings.building_name = employees.building  where building is null;

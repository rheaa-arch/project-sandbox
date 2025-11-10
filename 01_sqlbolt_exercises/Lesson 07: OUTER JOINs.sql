-- Lesson 07: OUTER JOIN basics
-- Practice queries from SQLBolt
-- Table used: buildings (columns: building_name, capacity)
-- Table used: employees (columns: role, name, building, years_employed)

SELECT distinct(building_name) FROM buildings left join employees on buildings.building_name = employees.building where building is not null;
SELECT distinct(building_name), capacity FROM buildings left join employees on buildings.building_name = employees.building;
SELECT distinct(role), building_name FROM buildings left join employees on buildings.building_name = employees.building;

-- Lesson 02: WHERE basic
-- Filtering rows with logical conditions
-- Practice queries from SQLBolt
-- Table used: movies (columns: id, title, director, year, length_minutes)

SELECT * FROM movies where id = 6;
SELECT * FROM movies where year between 2000 and 2010;
SELECT * FROM movies where year not between 2000 and 2010;
SELECT title, year FROM movies limit 5;

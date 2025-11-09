-- Lesson 04: FILTERING basics
-- Practice queries from SQLBolt
-- Table used: movies (columns: id, title, director, year, length_minutes)

SELECT distinct(director) FROM movies order by director asc;
SELECT title, year FROM movies order by year desc limit 4;
SELECT title, year FROM movies order by title asc limit 5;
SELECT title, year FROM movies order by title asc limit 5 offset 5;

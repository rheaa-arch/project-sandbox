-- Lesson 03: JOIN basic
-- Combining data from multiple tables
-- Practice queries from SQLBolt
-- Table used: movies (columns: id, title, director, year, length_minutes)

SELECT id, title FROM movies where title like "Toy Story%";
SELECT id, title FROM movies where director = "John Lasseter";
SELECT title, director FROM movies where director is not "John Lasseter";
SELECT title FROM movies where title like "WALL-%";

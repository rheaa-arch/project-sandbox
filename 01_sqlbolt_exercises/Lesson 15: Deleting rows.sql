-- Lesson 15: DELETE basics
-- Practice queries from SQLBolt
-- Table used: movies (columns: id, title, director, year, length_minutes)

delete from Movies where year < 2005;
delete from Movies where director = 'Andrew Stanton';

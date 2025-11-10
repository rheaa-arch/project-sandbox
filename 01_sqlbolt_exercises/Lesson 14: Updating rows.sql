-- Lesson 14: UPDATE basics
-- Practice queries from SQLBolt
-- Table used: movies (columns: id, title, director, year, length_minutes)

update Movies set director = 'John Lasseter' where title = "A Bug's Life";
update Movies set year = 1999 where title = "Toy Story 2";
update Movies set title = 'Toy Story 3', director = 'Lee Unkrich' where title = "Toy Story 8";

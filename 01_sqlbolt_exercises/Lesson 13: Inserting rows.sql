-- Lesson 13: INSERT basics
-- Practice queries from SQLBolt
-- Table used: movies (columns: id, title, director, year, length_minutes)
-- Table used: boxoffice  (columns: movie_id, rating, domestic_sales, international_sales)

insert into Movies (id, title, director, year, length_minutes) values (15, 'Toy Story 4', 'John Lasseter', 2025, 110);
insert into Boxoffice (movie_id, rating, domestic_sales, international_sales) values (15, 8.7, 340000000, 270000000);

-- Lesson 09: QUERY basics
-- Practice queries from SQLBolt
-- Table used: movies (columns: id, title,	director,	year, length_minutes)
-- Table used: boxoffice (columns: movie_id, rating, domestic_sales, international_sales)

SELECT title, (domestic_sales+international_sales)/1000000 as combined_sales FROM movies inner join boxoffice on movies.id = boxoffice.movie_id;
SELECT title, (rating)*10.0   FROM movies inner join boxoffice on movies.id = boxoffice.movie_id;
SELECT title, year FROM movies inner join boxoffice on movies.id = boxoffice.movie_id where year % 2 = 0;

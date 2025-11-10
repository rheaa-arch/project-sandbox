-- Lesson 12: QUERY basics
-- Practice queries from SQLBolt
-- Table used: movies (columns: id, title, director, year, length_minutes)
-- Table used: boxoffice (columns: movie_id, rating, domestic_sales, international_sales)


SELECT director, count(title) FROM movies group by director;
SELECT director, sum(domestic_sales+international_sales) as attributed_sales FROM movies inner join boxoffice on movies.id = boxoffice.movie_id group by director;

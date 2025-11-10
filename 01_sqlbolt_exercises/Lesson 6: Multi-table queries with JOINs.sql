-- Lesson 06: JOIN basics
-- Practice queries from SQLBolt
-- Table used: movies (columns: id, title, director, year, length_minutes)
-- Table used: boxoffice (columns: movie_id,	rating,	domestic_sales,	international_sales)


SELECT distinct(title), domestic_sales, international_sales FROM movies inner join boxoffice on movies.id=boxoffice.movie_id;
SELECT distinct(title), domestic_sales, international_sales FROM movies inner join boxoffice on movies.id=boxoffice.movie_id where international_sales > domestic_sales;
SELECT  title, rating FROM movies inner join boxoffice on movies.id=boxoffice.movie_id order by rating desc;

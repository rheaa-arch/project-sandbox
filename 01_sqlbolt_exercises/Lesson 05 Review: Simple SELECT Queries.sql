-- Review: SELECT basics
-- Practice queries from SQLBolt
-- Table used: north_american_cities (columns: city,	country,	population,	latitude,	longitude)

SELECT city, population FROM north_american_cities where country = 'Canada';
SELECT city, population FROM north_american_cities where country = 'United States' order by latitude desc;
SELECT city FROM north_american_cities where longitude < -87.629798 order by longitude asc;
SELECT city FROM north_american_cities where country = 'Mexico' order by population desc limit 2;
SELECT city, population FROM north_american_cities where country = 'United States' order by population desc limit 2 offset 2;

-- Lesson 17: ALTER TABLE basics
-- Practice queries from SQLBolt
-- Table used: movies (columns: id, title, director, year, length_minutes)

ALTER TABLE Movies ADD aspect_ratio float;

ALTER TABLE Movies
    ADD language text OptionalTableConstraint 
    DEFAULT English;

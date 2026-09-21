-- I will revise my sql concepts today.
-- I will focus on understanding the basics of SQL, including SELECT statements WHERE clauses,

--  JOIN operations, and aggregate functions.
--  I will also practice writing queries to retrieve data from different tables and apply filters to get specific results.
--  Additionally, I will review the use of GROUP BY and ORDER BY clauses to organize and summarize data effectively. 


-- Exercise 1 for simple fetching data from tables

Select title from movies;
Select director from movies;
Select title,director from movies;
Select title,yyear from movies;
Select * from movies;

-- Exercise 2 for fetching data from tables with conditions (where clause)

-- selecting the row where id is 6
select * from movies where id=6

-- selecting the range of movies released in between 2000 and 2010
Select * from movies where Year BETWEEN 2000 AND 2010;

-- selecting the range of movies not released in years between 2000 and 2010
Select * from movies where Year not Between 2000 and 2010;

-- Find the first 5 Pixar movies and their release year
SELECT Title, Year FROM movies Where id <=5;

-- Exercise 3 for  data from tables with sensitive/insensitive case operators

-- (case sensitive are =,!=,<>)(case insensitive are like, not like)
-- also we will learn use of % , _ , IN and NOT IN operators 

-- finding multiple movies where namee maches wih toy story irrespective of case sensitivity
Select * from movies where Title Like "%toy story%"

-- finding movies where director is John Lasseter strictly case sensitive
Select * from movies where Director ="John Lasseter"


-- finding movies and directors where director is John Lasseter strictly case sensitive
Select Title , Director from movies where Director <> "John Lasseter"
-- Find all the WALL-* movies 
This question means to find all the movies whose title has start word wall- This (*) means all the movies which have wall- in their title.
Select * from movies where Title Like "wall-%"

-- Exercise 4 (Distinct, Order By Asc/Desc,LIMIT,OFFSET )


-- List all directors of Pixar movies (alphabetically), without duplicates
SELECT Distinct Director from movies ORDER BY DIRECTOR ASC
-- List the last four Pixar movies released (ordered from most recent to least) 
Select * from movies order by year desc limit 4
-- List the first five Pixar movies sorted alphabetically 
Select * from movies order by title asc limit 5
-- List the next five Pixar movies sorted alphabetically
Select * from movies order by title asc limit 5 offset 5

-- Review of Select Querries
-- List all the Canadian cities and their populations
Select City ,Population from north_american_cities where Country="Canada"
-- Order all the cities in the United States by their latitude from north to south
-- North and south depend only on latitude
-- A bigger latitude number means further north,
--  so "north to south" means sorting from the biggest
--   latitude to the smallest
Select * from north_american_cities where country like"united states" order by latitude desc
-- List all the cities west of Chicago, ordered from west to east
-- Longitude measures east/west
-- "West of Chicago" means a longitude smaller than Chicago's
Select city ,longitude from north_american_cities where longitude <
 (Select longitude from north_american_cities where city="Chicago" )
  order by longitude 
--   List the two largest cities in Mexico (by population)
Select * from north_american_cities where country="Mexico" order by population desc limit 2
-- List the third and fourth largest cities (by population) in the United States and their population
Select * from north_american_cities where country="United States" order by population desc limit 2 offset 2
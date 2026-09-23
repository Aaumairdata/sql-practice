

-- Exercise no 6 Joins (INNER JOIN)
-- Find the domestic and international sales for each movie
Select Title ,Domestic_sales,International_sales 
from movies 
inner join boxoffice on movies.id=boxoffice.Movie_id 

-- Show the sales numbers for each movie 
-- that did better internationally rather than domestically
Select title , domestic_sales,international_sales
from movies 
inner join boxoffice on movies.id=boxoffice.movie_id
 where boxoffice.international_sales>boxoffice.domestic_sales

--  List all the movies by their ratings in descending order
Select Title ,Rating 
from movies 
inner join boxoffice on movies.id=boxoffice.movie_id 
Order by Rating desc




-- Exercise no 7

-- Find the list of all buildings that have employees
SELECT Distinct b.Building_name
FROM Buildings b
INNER JOIN Employees e
  ON b.Building_name = e.Building;

-- Find the list of all buildings and their capacity
SELECT Building_name, Capacity
FROM Buildings;

-- List all buildings and the distinct employee 
-- roles in each building (including empty buildings)
  SELECT DISTINCT b.Building_name, e.Role
FROM Buildings b
LEFT JOIN Employees e
  ON b.Building_name = e.Building;


--   Exercise no 8 Dealing with null values

-- Find the name and role of all employees
--  who have not been assigned to a building
Select Name , Role from Employees where building IS NULL;

-- Find the names of the buildings that hold no employees
Select building_name from Buildings b Left Join Employees e
on b.building_name=e.building where e.Name is Null

-- Exercise no 9 Combining data from multiple tables

-- List all movies and their combined sales in millions of dollars
SELECT m.Title,
       (b.Domestic_sales + b.International_sales) / 1000000.0
         AS Combined_sales_millions
FROM Movies m
INNER JOIN Boxoffice b
  ON m.Id = b.Movie_id;

-- List all movies and their ratings in percent
Select title,
         rating*10 as Rating_percent 
from movies
 inner join boxoffice 
 ON movies.id=boxoffice.movie_id 

--  List all movies that were released on even number years
Select Title ,Year as Even_Years from movies where Year % 2 =0
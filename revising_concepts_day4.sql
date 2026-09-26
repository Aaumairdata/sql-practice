-- Exercise 12

-- Find the number of movies each director has directed 
SELECT director, COUNT(Title) FROM movies GROUP BY director;

-- Find the total domestic and international sales that can be attributed to each director
Select director,SUM((domestic_sales+international_sales)) as Total_Sales
from movies 
Inner join boxoffice on movies.id=boxoffice.movie_id 
Group by director


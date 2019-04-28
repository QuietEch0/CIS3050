/* Write a query to display the movie title and movie year for all movies that have a price code.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MEM_NUM. */


SELECT MOVIE_TITLE, MOVIE_YEAR
FROM MOVIE
WHERE PRICE_CODE IS NOT NULL;
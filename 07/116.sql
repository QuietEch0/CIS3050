/* Write a query to display the movie genre and average rental fee for movies in each genre that have a price.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MEM_NUM. */


SELECT MOVIE.MOVIE_GENRE, ROUND(AVG(PRICE.PRICE_RENTFEE),2) AS 'Average Rental Fee'
FROM MOVIE
INNER JOIN PRICE ON MOVIE.PRICE_CODE = PRICE.PRICE_CODE
GROUP BY MOVIE_GENRE;
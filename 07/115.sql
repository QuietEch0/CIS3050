/* Write a query to display the movie title, movie genre, price description, and price rental fee for all movies with a price code.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MEM_NUM. */


SELECT MOVIE.MOVIE_TITLE, MOVIE.MOVIE_GENRE, PRICE.PRICE_DESCRIPTION, PRICE.PRICE_RENTFEE
FROM MOVIE
INNER JOIN PRICE ON MOVIE.PRICE_CODE = PRICE.PRICE_CODE;
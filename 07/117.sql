/* Write a query to display the movie title and breakeven amount for each movie that has a price. The breakeven amount is the movie cost divided by the price rental fee for each movie that has a price; it determines the number of rentals needed to break even on the purchase of the movie.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MEM_NUM. */


SELECT MOVIE.MOVIE_TITLE, ROUND(MOVIE.MOVIE_COST / PRICE.PRICE_RENTFEE, 2) AS 'Breakeven Rentals'
FROM MOVIE
INNER JOIN PRICE ON MOVIE.PRICE_CODE = PRICE.PRICE_CODE;
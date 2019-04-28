/* Write a query to display the movie title, movie genre, and movie cost for all movies that cost between $44.99 and $49.99.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MEM_NUM. */


SELECT MOVIE_TITLE, MOVIE_GENRE, MOVIE_COST
FROM MOVIE
WHERE MOVIE_COST > 44.99 AND MOVIE_COST < 49.99;
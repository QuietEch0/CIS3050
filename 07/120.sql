/* Write a query to display the movie title, price description, price rental fee, and genre for all movies that are in the genres of family, comedy, or drama.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MOVIE_TITLE. */


SELECT MOVIE.MOVIE_TITLE, PRICE.PRICE_DESCRIPTION, PRICE.PRICE_RENTFEE, MOVIE.MOVIE_GENRE
FROM MOVIE
INNER JOIN PRICE ON MOVIE.PRICE_CODE = PRICE.PRICE_CODE
WHERE MOVIE.MOVIE_GENRE = 'FAMILY'
OR MOVIE.MOVIE_GENRE = 'COMEDY'
OR MOVIE.MOVIE_GENRE = 'DRAMA';
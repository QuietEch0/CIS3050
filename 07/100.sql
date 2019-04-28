/* Write the SQL command to change the price code for all action movies to price code 3. */


UPDATE MOVIE
SET PRICE_CODE = 3
WHERE MOVIE_GENRE = 'ACTION';
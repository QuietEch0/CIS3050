/* Write a query to display the rental number, rental date, movie title, and detail fee for each movie that was returned on or before the due date.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MOVIE_TITLE. */


SELECT ALPHA.RENT_NUM, ALPHA.RENT_DATE, BETA.MOVIE_TITLE, CHARLIE.DETAIL_FEE
FROM RENTAL AS ALPHA
INNER JOIN DETAILRENTAL AS CHARLIE ON ALPHA.RENT_NUM = CHARLIE.RENT_NUM
INNER JOIN VIDEO ON VIDEO.VID_NUM = CHARLIE.VID_NUM
INNER JOIN MOVIE AS BETA ON VIDEO.VID_NUM = BETA.MOVIE_NUM;
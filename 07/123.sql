/* Write a query to display the rental number, rental date, video number, movie title, due date, and return date for all videos that were returned after the due date. Sort the results by rental number and movie title.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MOVIE_TITLE. */


SELECT ALPHA.RENT_NUM, DELTA.RENT_DATE, CHARLIE.MOVIE_TITLE, ALPHA.DETAIL_DUEDATE, ALPHA.DETAIL_RETURNDATE
FROM DETAILRENTAL AS ALPHA
INNER JOIN VIDEO AS BETA ON ALPHA.VID_NUM = BETA.VID_NUM
INNER JOIN MOVIE AS CHARLIE ON BETA.MOVIE_NUM = CHARLIE.MOVIE_NUM
INNER JOIN RENTAL AS DELTA ON ALPHA.RENT_NUM = DELTA.RENT_NUM
WHERE ALPHA.DETAIL_DUEDATE < ALPHA.DETAIL_RETURNDATE
ORDER BY ALPHA.RENT_NUM ASC, CHARLIE.MOVIE_TITLE ASC;
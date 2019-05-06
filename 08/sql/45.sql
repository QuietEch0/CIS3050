/* Write a query to display the patron ID, book number, and days kept for each check- out. “Days Kept” is the difference from the date on which the book is returned to the date it was checked out. */


SELECT PATRON.PAT_ID AS 'PATRON', BOOK_NUM AS 'BOOK', DATEDIFF(CHECK_IN_DATE, CHECK_OUT_DATE) AS 'Days Kept'
FROM PATRON, CHECKOUT
WHERE PATRON.PAT_ID = CHECKOUT.PAT_ID
LIMIT 20;
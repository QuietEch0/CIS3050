/* Write a query to display the author ID, author last name, book title, checkout date, and patron last name for all the books written by authors with the last name “Bruer” that have ever been checked out by patrons with the last name “Miles”. */


SELECT AUTHOR.AU_ID, AU_LNAME, BOOK_TITLE, DATE_FORMAT(CHECK_OUT_DATE, '%m/%d/%Y') AS 'CHECK_OUT_DATE', PAT_LNAME
FROM WRITES
JOIN BOOK ON BOOK.BOOK_NUM = WRITES.BOOK_NUM
JOIN AUTHOR ON AUTHOR.AU_ID = WRITES.AU_ID
JOIN CHECKOUT ON CHECKOUT.BOOK_NUM = BOOK.BOOK_NUM
JOIN PATRON ON PATRON.PAT_ID = CHECKOUT.PAT_ID
WHERE AU_LNAME = "Bruer" AND PAT_LNAME = "Miles"
LIMIT 10;
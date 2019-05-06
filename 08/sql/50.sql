/* Write a query to display the author last name, first name, book title, and year for each book. */


SELECT AU_LNAME, AU_FNAME, BOOK_TITLE, BOOK_YEAR
FROM WRITES
JOIN BOOK ON (BOOK.BOOK_NUM = WRITES.BOOK_NUM)
JOIN AUTHOR ON (AUTHOR.AU_ID = WRITES.AU_ID)
LIMIT 20;
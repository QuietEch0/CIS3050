/* Write a query to display the author last name, author first name, and book number for each book written by that author. */

SELECT AUTHOR.AU_LNAME, AUTHOR.AU_FNAME, BOOK.BOOK_NUM
FROM BOOK, WRITES, AUTHOR
WHERE WRITES.BOOK_NUM = BOOK.BOOK_NUM
AND WRITES.AU_ID = AUTHOR.AU_ID
LIMIT 20;
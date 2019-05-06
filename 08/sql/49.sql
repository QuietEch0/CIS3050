/* Write a query to display the author ID, book number, title, and year for each book. */


SELECT WRITES.AU_ID, BOOK.BOOK_NUM, BOOK_TITLE, BOOK_YEAR
FROM BOOK, WRITES
WHERE BOOK.BOOK_NUM = WRITES.BOOK_NUM
LIMIT 20;
/* Write a query to display the book number, title with year, and subject for each book. */

SELECT BOOK_NUM, CONCAT(BOOK_TITLE, " (", BOOK_YEAR, ")")AS "BOOK", BOOK_SUBJECT
FROM BOOK
LIMIT 20;
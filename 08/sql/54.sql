/* Write a query to display the author ID, first and last name, book number, and book title of all books in the subject “Cloud”. Sort the results by book title and then by author last name. */


SELECT AUTHOR.AU_ID, AUTHOR.AU_FNAME, AUTHOR.AU_LNAME, BOOK.BOOK_NUM, BOOK.BOOK_TITLE
FROM BOOK
JOIN WRITES ON (WRITES.BOOK_NUM = BOOK.BOOK_NUM)
JOIN AUTHOR ON (WRITES.AU_ID = AUTHOR.AU_ID)
WHERE BOOK.BOOK_TITLE LIKE '%cloud%'
ORDER BY BOOK_TITLE ASC, AU_LNAME ASC;
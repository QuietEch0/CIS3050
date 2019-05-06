/* Write a query to display the book number, title, and number of times each book has been checked out. Include books that have never been checked out. Sort the results in descending order by the number times checked out, then by title. */


SELECT CHECKOUT.BOOK_NUM, BOOK_TITLE, COUNT(CHECK_OUT_DATE) AS "Times Checked Out"
FROM CHECKOUT
JOIN BOOK ON CHECKOUT.BOOK_NUM = BOOK.BOOK_NUM
GROUP BY CHECKOUT.BOOK_NUM
ORDER BY COUNT(CHECK_OUT_DATE) DESC, BOOK_TITLE ASC
LIMIT 20;
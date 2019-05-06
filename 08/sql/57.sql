/* Write a query to display the book number, title, and number of times each book has been checked out. Limit the results to books that have been checked out more than five times. Sort the results in descending order by the number of times checked out, and then by title. */


SELECT CHECKOUT.BOOK_NUM, BOOK_TITLE, COUNT(CHECK_OUT_DATE) AS "Times Checked Out"
FROM CHECKOUT
JOIN BOOK ON CHECKOUT.BOOK_NUM = BOOK.BOOK_NUM
GROUP BY CHECKOUT.BOOK_NUM
HAVING COUNT(CHECK_OUT_DATE) > 5
ORDER BY COUNT(CHECK_OUT_DATE) DESC, BOOK_TITLE ASC
LIMIT 20;
/* Assuming that you completed Problem 10, write the query that will list the names and ages of your customers. */


SELECT CUST_LNAME, CUST_FNAME, TIMESTAMPDIFF(YEAR, CUST_DOB, CURDATE()) AS AGE
FROM CUSTOMER;
/* Write the query that will show only the duplicate customer records. */


SELECT CUSTOMER.CUST_LNAME, CUSTOMER.CUST_FNAME
FROM CUSTOMER
INNER JOIN CUSTOMER_2 ON CUSTOMER.CUST_LNAME = CUSTOMER_2.CUST_LNAME AND CUSTOMER.CUST_FNAME = CUSTOMER_2.CUST_FNAME;
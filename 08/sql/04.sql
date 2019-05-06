/* Write the query that will generate a combined list of customers to include the duplicate customer records. */


SELECT CUST_LNAME, CUST_FNAME FROM CUSTOMER
UNION ALL
SELECT CUST_LNAME, CUST_FNAME FROM CUSTOMER_2;
/* Assuming that the CUSTOMER table contains a CUST_AGE attribute, write the query to update the values in that attribute. (Hint: Use the results of the previous query.) */


UPDATE CUSTOMER SET CUST_AGE = TIMESTAMPDIFF(YEAR, CUST_DOB, CURDATE());
/* Write a query to display the membership number, name, street, state, and balance for all members in Tennessee (TN), with a balance less than $5, and whose street name ends in “Avenue”.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MEM_NUM. */


SELECT MEM_NUM, MEM_FNAME, MEM_LNAME, MEM_STREET, MEM_STATE, MEM_BALANCE
FROM MEMBERSHIP
WHERE MEM_STREET LIKE '%Avenue' AND MEM_STATE = 'TN' AND MEM_BALANCE < 5;
/* Write a query to display the starting salary for each employee. The starting salary would be the entry in the salary history with the oldest salary start date for each employee. Sort the output by employee number. */


SELECT LGEMPLOYEE.EMP_NUM, EMP_LNAME, EMP_FNAME, ROUND(MIN(LGSALARY_HISTORY.SAL_AMOUNT),2) AS SAL_AMOUNT
FROM LGEMPLOYEE, LGSALARY_HISTORY
WHERE LGEMPLOYEE.EMP_NUM = LGSALARY_HISTORY.EMP_NUM
GROUP BY LGEMPLOYEE.EMP_NUM, EMP_LNAME, EMP_FNAME
ORDER BY LGEMPLOYEE.EMP_NUM ASC
LIMIT 20;
/* Write a query to display the current salary for each employee in department 300. Assume that only current employees are kept in the system, and therefore the most current salary for each employee is the entry in the salary history with a NULL end date. Sort the output in descending order by salary amount. */


SELECT LGEMPLOYEE.EMP_NUM, EMP_LNAME, EMP_FNAME, LGSALARY_HISTORY.SAL_AMOUNT
FROM LGEMPLOYEE, LGSALARY_HISTORY
WHERE LGEMPLOYEE.EMP_NUM = LGSALARY_HISTORY.EMP_NUM
AND LGSALARY_HISTORY.SAL_END IS NULL
AND DEPT_NUM = 300
ORDER BY SAL_AMOUNT DESC
LIMIT 50;
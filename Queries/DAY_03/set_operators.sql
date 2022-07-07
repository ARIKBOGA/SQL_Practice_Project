SELECT *
FROM DEVELOPERS
UNION ALL
SELECT *
FROM TESTERS;

SELECT Names
FROM DEVELOPERS
MINUS
SELECT Names
FROM TESTERS;


SELECT Names
FROM DEVELOPERS
INTERSECT
SELECT Names
FROM TESTERS;

-- HOW TO FIND DUPLICATE NAMES IN EMPLOYEES TABLE
SELECT FIRST_NAME, COUNT(FIRST_NAME)
FROM EMPLOYEES
GROUP BY FIRST_NAME
HAVING COUNT(FIRST_NAME) > 1;
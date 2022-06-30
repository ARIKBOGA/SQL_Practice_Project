--HOW TO RENAME COLUMNS AFTER QUERIED
SELECT FIRST_NAME AS "AD", LAST_NAME "SOYAD"
FROM EMPLOYEES;

-- FULL NAME
SELECT FIRST_NAME || ' ' || LAST_NAME AS "FULL_NAME"
FROM EMPLOYEES;

-- ADD "@BURAK.COM" DOMAIN TO EMAIL COLUMN
SELECT EMAIL || '@BURAK.COM' AS "FULL_EMAIL"
FROM EMPLOYEES;

-- MAKE LOWERCASE ALL
SELECT LOWER(EMAIL || '@BURAK.COM') AS "FULL_EMAIL"
FROM EMPLOYEES;

-- MAKE UPPERCASE ALL
SELECT UPPER(EMAIL || '@burak.com') AS "FULL_EMAIL"
FROM EMPLOYEES;

-- LENGTH FUNCTION
SELECT LAST_NAME, LENGTH(LAST_NAME)
FROM EMPLOYEES
ORDER BY LENGTH(LAST_NAME) DESC;

-- SUBSTR ( COL_NAME, BEG_INDEX, NUMBER_OF_CHAR)
SELECT SUBSTR(FIRST_NAME, 0, 1) || '.' || SUBSTR(LAST_NAME, 0, 1) || '.' AS "INITIALS"
FROM EMPLOYEES;

-- VIEW CREATION VIRTUALLY
CREATE VIEW EMAIL_LIST_BURAK AS SELECT SUBSTR(FIRST_NAME, 0, 1) || '.' || SUBSTR(LAST_NAME, 0, 1) || '.' AS "INITIALS",
                                       FIRST_NAME || ' ' || LAST_NAME AS "FULL_NAME",
                                       LOWER(EMAIL || '@GMAIL.COM') AS "FULL_EMAIL"
FROM EMPLOYEES;

--CREATE & DROP PRACTICE
CREATE VIEW EMAIL_LIST AS SELECT SUBSTR(FIRST_NAME, 0, 1) || '.' || SUBSTR(LAST_NAME, 0, 1) || '.' AS "INITIALS",
                                       FIRST_NAME || ' ' || LAST_NAME AS "FULL_NAME",
                                       LOWER(EMAIL || '@GMAIL.COM') AS "FULL_EMAIL"
FROM EMPLOYEES;

DROP VIEW EMAIL_LIST;

-- select * from sh.CUSTOMERS
-- Questions on Where
-- 1. Find customers born after the year 1990.
-- select * from sh.CUSTOMERS where CUST_YEAR_OF_BIRTH > 1990
-- desc sh.customers

-- 2. List all male customers (`CUST_GENDER = 'M'`).
-- select * from sh.CUSTOMERS where CUST_GENDER = 'M'

-- 3. Retrieve all female customers (`CUST_GENDER = 'F'`) living in Sydney.
-- SELECT * FROM SH.CUSTOMERS WHERE CUST_GENDER = 'F' AND CUST_CITY = 'Sydney'

-- 4. Find customers with income level `"G: 130,000 - 149,999"`.
-- SELECT * FROM SH.CUSTOMERS WHERE CUST_INCOME_LEVEL = 'G: 130,000 - 149,999'

-- 5. Get all customers with a credit limit above 10,000.
-- SELECT * FROM SH.CUSTOMERS WHERE CUST_CREDIT_LIMIT > 10000

-- 6. Retrieve customers from the state "California".
-- SELECT * FROM SH.CUSTOMERS WHERE CUST_STATE_PROVINCE = 'California'

-- 7. Find customers who have provided an email address.
-- SELECT * FROM SH.CUSTOMERS WHERE CUST_EMAIL  IS NOT NULL

-- 8. List customers with missing marital status.
-- SELECT * FROM SH.CUSTOMERS WHERE CUST_MARITAL_STATUS IS NULL

-- 9. Find customers whose postal code starts with "53".
-- SELECT * FROM SH.CUSTOMERS WHERE CUST_POSTAL_CODE LIKE '53%'

-- 10. Get customers born before 1980 with a credit limit above 5,000.
-- SELECT * FROM SH.CUSTOMERS WHERE CUST_YEAR_OF_BIRTH < 1980 AND CUST_CREDIT_LIMIT > 5000

-- 11. Retrieve customers from Almere or Amersfoort.
-- SELECT * FROM SH.CUSTOMERS WHERE CUST_CITY  = 'Almere' or CUST_CITY = 'Amersfoort'

-- 12. Find customers who do not have a credit limit.
-- SELECT CUST_ID, CUST_CREDIT_LIMIT FROM SH.CUSTOMERS WHERE CUST_CREDIT_LIMIT IS NULL

-- 13. List customers whose phone number starts with "487".
-- SELECT CUST_ID, CUST_FIRST_NAME, CUST_LAST_NAME, CUST_MAIN_PHONE_NUMBER 
-- FROM SH.CUSTOMERS WHERE CUST_MAIN_PHONE_NUMBER LIKE '487%' 

-- 14. Find married customers with income level `"Medium"`.
-- SELECT CUST_ID, CUST_FIRST_NAME, CUST_LAST_NAME, CUST_MARITAL_STATUS, CUST_INCOME_LEVEL
-- FROM SH.CUSTOMERS
-- WHERE CUST_MARITAL_STATUS = 'married' AND CUST_INCOME_LEVEL = 'G: 130,000 - 149,999'


-- 15. Get customers whose last name starts with "G".
-- SELECT CUST_ID, CUST_FIRST_NAME, CUST_LAST_NAME
-- FROM SH.CUSTOMERS
-- WHERE CUST_LAST_NAME LIKE 'G%'

-- 16. Find customers with city_id = 51057.
-- SELECT CUST_ID, CUST_FIRST_NAME, CUST_LAST_NAME, CUST_CITY_ID
-- FROM SH.CUSTOMERS
-- WHERE CUST_CITY_ID = '51057'

-- 17. Retrieve all customers who are valid (`CUST_VALID = 'A'`).
-- SELECT CUST_ID, CUST_FIRST_NAME, CUST_LAST_NAME, CUST_VALID
-- FROM SH.CUSTOMERS WHERE CUST_VALID = 'A'

-- 18. Find customers whose effective start date (`CUST_EFF_FROM`) is after 2020.
-- SELECT CUST_ID, CUST_FIRST_NAME, CUST_LAST_NAME, CUST_VALID
-- FROM SH.CUSTOMERS WHERE CUST_VALID = 'A'

-- 19. Retrieve customers whose effective end date (`CUST_EFF_TO`) is before 2021.
-- SELECT CUST_ID, CUST_FIRST_NAME, CUST_LAST_NAME, CUST_EFF_TO
-- FROM SH.CUSTOMERS WHERE CUST_EFF_TO < '2021'

-- 20. Find customers with credit limit between 5,000 and 9,000.
-- SELECT CUST_ID, CUST_FIRST_NAME, CUST_LAST_NAME, CUST_CREDIT_LIMIT 
-- FROM SH.CUSTOMERS
-- WHERE CUST_CREDIT_LIMIT BETWEEN 5000 AND 9000

-- 21. Get all customers from country_id = 101.
-- SELECT CUST_ID, CUST_FIRST_NAME, CUST_LAST_NAME, country_id
-- FROM SH.CUSTOMERS
-- WHERE COUNTRY_ID = '101'

-- 22. Find customers whose email ends with `"@company.example.com"`.
-- SELECT CUST_ID, CUST_FIRST_NAME, CUST_LAST_NAME, CUST_EMAIL
-- FROM SH.CUSTOMERS
-- WHERE CUST_EMAIL LIKE '%@company.example.com'

-- 23. List customers with `CUST_TOTAL_ID = 52772`.
-- SELECT CUST_ID, CUST_FIRST_NAME, CUST_LAST_NAME, CUST_TOTAL_ID
-- FROM SH.CUSTOMERS
-- WHERE CUST_TOTAL_ID = 52772


-- 24. Find customers with `CUST_SRC_ID` in (10, 20, 30).
-- SELECT CUST_ID, CUST_FIRST_NAME, CUST_LAST_NAME, CUST_SRC_ID
-- FROM SH.CUSTOMERS
-- WHERE CUST_SRC_ID LIKE '10,20,30'

-- 25. Retrieve customers who either do not have email or do not have a credit limit.
-- SELECT CUST_ID, CUST_FIRST_NAME, CUST_LAST_NAME, CUST_CREDIT_LIMIT, CUST_EMAIL
-- FROM SH.CUSTOMERS
-- WHERE CUST_EMAIL IS NULL OR CUST_CREDIT_LIMIT IS NULL



-- Questions on GROUP BY and HAVING
-- 26. Count the number of customers in each city.
-- SELECT CUST_CITY, COUNT(*) AS CUSTOMERS 
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_CITY

-- 27. Find cities with more than 100 customers.
-- SELECT CUST_CITY, COUNT(*) AS CUSTOMERS 
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_CITY
-- HAVING COUNT(*) > 100

-- 28. Count the number of customers in each state.
-- SELECT CUST_STATE_PROVINCE, COUNT(*) AS CUSTOMERSBYPROV 
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_STATE_PROVINCE

-- 29. Find states with fewer than 50 customers.
-- SELECT CUST_STATE_PROVINCE, COUNT(*) AS CUSTOMERSBYPROV 
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_STATE_PROVINCE
-- HAVING COUNT(*) < 50

-- 30. Calculate the average credit limit of customers in each city.
-- SELECT CUST_CITY, AVG(CUST_CREDIT_LIMIT) AS "AVERAGE CUST"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_CITY

-- 31. Find cities with average credit limit greater than 8,000.
-- SELECT CUST_CITY, AVG(CUST_CREDIT_LIMIT) AS "AVERAGE CUST > 8k"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_CITY
-- HAVING AVG(CUST_CREDIT_LIMIT) > 8000

-- 32. Count customers by marital status.
-- SELECT CUST_MARITAL_STATUS, COUNT(*) AS "CUSTOMERS"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_MARITAL_STATUS

-- 33. Find marital statuses with more than 200 customers.
-- SELECT CUST_MARITAL_STATUS, COUNT(*) AS "CUSTOMERS > 200"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_MARITAL_STATUS
-- HAVING COUNT(CUST_MARITAL_STATUS) > 200

-- 34. Calculate the average year of birth grouped by gender.
-- SELECT CUST_GENDER, AVG(CUST_YEAR_OF_BIRTH) AS "AVERAGE"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_GENDER

-- 35. Find genders with average year of birth after 1990.
-- SELECT CUST_GENDER, AVG(CUST_YEAR_OF_BIRTH) AS "AVERAGE > 1990"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_GENDER
-- HAVING AVG(CUST_YEAR_OF_BIRTH) > 1990

-- 36. Count the number of customers in each country.
-- SELECT COUNTRY_ID, COUNT(*) CUSTOMERS
-- FROM SH.CUSTOMERS
-- GROUP BY COUNTRY_ID


-- 37. Find countries with more than 1,000 customers.

-- 38. Calculate the total credit limit per state.
-- SELECT CUST_STATE_PROVINCE, SUM(CUST_CREDIT_LIMIT) AS "TOTAL CREDIT LIMIT"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_STATE_PROVINCE

-- 39. Find states where the total credit limit exceeds 100,000.
-- SELECT CUST_STATE_PROVINCE, SUM(CUST_CREDIT_LIMIT) AS "TOTAL CREDIT LIMIT > 1L"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_STATE_PROVINCE
-- HAVING SUM(CUST_CREDIT_LIMIT) > 100000

-- 40. Find the maximum credit limit for each income level.
-- SELECT CUST_INCOME_LEVEL, MAX(CUST_CREDIT_LIMIT) AS "MAX CRED LIMIT"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_INCOME_LEVEL

-- 41. Find income levels where the maximum credit limit is greater than 15,000.
-- SELECT CUST_INCOME_LEVEL, MAX(CUST_CREDIT_LIMIT) AS "MAX CRED LIMIT > 15K"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_INCOME_LEVEL
-- HAVING MAX(CUST_CREDIT_LIMIT) > 15000

-- 42. Count customers by year of birth.
-- SELECT CUST_YEAR_OF_BIRTH, COUNT(*) CUSTOMERS
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_YEAR_OF_BIRTH

-- 43. Find years of birth with more than 50 customers.
-- SELECT CUST_YEAR_OF_BIRTH, COUNT(*) "CUSTOMERS > 50"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_YEAR_OF_BIRTH
-- HAVING COUNT(*) > 50

-- 44. Calculate the average credit limit per marital status.
-- SELECT CUST_MARITAL_STATUS, AVG(CUST_CREDIT_LIMIT) AS "AVG CREDIT LIMIT"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_MARITAL_STATUS

-- 45. Find marital statuses with average credit limit less than 5,000.
-- SELECT CUST_MARITAL_STATUS, AVG(CUST_CREDIT_LIMIT) AS "AVG CREDIT LIMIT < 5K"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_MARITAL_STATUS
-- HAVING AVG(CUST_CREDIT_LIMIT) < 5000

-- 46. Count the number of customers by email domain (e.g., `company.example.com`).
-- SELECT CUST_EMAIL, COUNT(*) AS "CUSTOMER COUNT"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_EMAIL

-- 47. Find email domains with more than 300 customers.
-- SELECT CUST_EMAIL, COUNT(*) AS "CUSTOMER COUNT > 300"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_EMAIL
-- HAVING COUNT(*) > 300

-- 48. Calculate the average credit limit by validity (`CUST_VALID`).
-- SELECT CUST_VALID, AVG(CUST_CREDIT_LIMIT) AS "AVG CRED LIMIT"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_VALID

-- 49. Find validity groups where the average credit limit is greater than 7,000.
-- SELECT CUST_VALID, AVG(CUST_CREDIT_LIMIT) AS "AVG CRED LIMIT > 7K"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_VALID
-- HAVING AVG(CUST_CREDIT_LIMIT) > 7000

-- 50. Count the number of customers per state and city combination where there are more than 50 customers.
-- SELECT CUST_CITY, CUST_STATE_PROVINCE, COUNT(*) AS "Customer Count"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_CITY, CUST_STATE_PROVINCE
-- HAVING COUNT(*) > 50



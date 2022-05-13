-- TODO: STRING Function
-- SELECT name, LENGTH(name) as "Character" FROM users;

-- SELECT name, LOWER(name) as "LowerCase" FROM hobbies;

-- SELECT LTRIM("         Ankush") as "Trimmed";

--  SELECT RTRIM("         Ankush                    ") as "Trimmed";

-- SELECT REPEAT("Ankush ",  5) as "Repeated Name";

-- SELECT STRCMP ("Ankush", "ANKUSH") as "String Compare";

-- SELECT name, email, STRCMP(name, email) as "Matching 2 columns" from users; 

-- SELECT email, SUBSTR(email, 3, 8) as "Extracted Text" from users;

-- SELECT TRIM("       ANKUSH     ") as "Trimmed Text";

-- SELECT REPLACE ("Ankush Thakur", "Thakur", "Sharma") as "Replace";


-- TODO: Numeric Function
-- SELECT ABS(-17.7);

-- SELECT ROUND(AVG(Income)) as "AVG INCOME" from userinfo;

-- SELECT CEIL (2.1);
-- SELECT CEIL(AVG(Income)) as "AVG INCOME" from userinfo;

-- SELECT FLOOR (2.9);
-- SELECT FLOOR(AVG(Income)) as "AVG INCOME" from userinfo;

-- SELECT COUNT(name) as "Total Record" FROM employees;

-- SELECT MAX(Income) as "Maximum Income" from userinfo;

-- SELECT MIN(Income) as "Minimum Income" from userinfo;

-- SELECT ROUND(25.555) as "Round Value"

-- SELECT SUM(Income) as "SUM" from userinfo;


-- TODO: DATE function
-- SELECT CURDATE();

-- SELECT DATE_FORMAT("2022-04-14", "%Y");
-- SELECT JoiningDate, DATE_FORMAT(JoiningDate, "%b") As "Joining Month" from employees;

-- SELECT CURRENT_TIME();

-- SELECT CURRENT_TIMESTAMP() ; 

-- SELECT DATEDIFF("2022-04-20", "2022-04-10") AS "Date Difference";

--  SELECT DATE_ADD("2022-04-14", INTERVAL 10 DAY) as "Changed Date";

-- SELECT JoiningDate, DATE_ADD(JoiningDate, INTERVAL 2 Year) as "New DATE" from employees;

-- SELECT JoiningDate, DAYNAME(JoiningDate) as "Joining Day" from employees;

-- SELECT JoiningDate, DAYOFMONTH(JoiningDate) as "Joining Day" from employees;

-- SELECT JoiningDate, DAYOFWEEK(JoiningDate) as "Joining WEEK" from employees;

-- TODO: ADVANCE FUNCTION
-- SELECT CAST(150 AS CHAR) AS "Cast";

-- SELECT COALESCE(NULL, NULL, "Ankush", NULL) as "Data";

-- SELECT Profile, Income, IF(Income>15000, "Above Average", "Below Average") as "Salary" FROM userinfo;

-- SELECT IFNULL(NULL, 500);

-- SELECT ISNULL(NULL);
-- SELECT ISNULL("");

-- SELECT NULLIF(25, 25);
-- SELECT NULLIF(25, 23);


-- SELECT CONV(101, 2, 10);
-- SELECT CONV(88, 10, 16);

-- SELECT CURRENT_USER(); 

SELECT VERSION();
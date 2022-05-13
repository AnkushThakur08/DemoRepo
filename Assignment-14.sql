-- TODO: Q1
-- SELECT * FROM SalesPerson  
-- ORDER BY RAND()  
-- LIMIT 1;

-- TODO: Q2
-- CREATE TABLE Emp (
--     id INTEGER PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(50) NOT NULL
-- )

-- INSERT INTO Emp(name) VALUES 
-- ("A"), ("B"), ("A"), ("A"), ("B"), ("D"), ("C"), ("M"),("A")

-- TODO: Q3
/* UPDATE Emp
SET name = 
CASE
    WHEN name = "A" THEN "B"
    WHEN name = "B" THEN "A"
END
    WHERE name in("A", "B")

SELECT * FROM Emp; */

-- TODO: Q4

/* WITH RECURSIVE print (printfifty) AS (
    SELECT 1
    UNION ALL
    SELECT printfifty + 1
    FROM print 
    WHERE printfifty < 50
)
SELECT printfifty AS "Number" FROM print;
 */

--  TODO: Q5
 
-- select LENGTH("aakash") - LENGTH(REPLACE("aakash", 'a', '')) AS "Result";

select firstName, LENGTH(firstName) - LENGTH(REPLACE(firstName, 'a', '')) AS "No. of A" FROM workers;

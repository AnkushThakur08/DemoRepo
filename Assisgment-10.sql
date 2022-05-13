-- CREATE TABLE Employee2(
--     EmployeeID INTEGER PRIMARY KEY AUTO_INCREMENT,
--     firstName VARCHAR(100) NOT NULL,
--     lastName VARCHAR(100) NOT NULL,
--     SALARY INT NOT NULL,
--     JoiningDate DATE NOT NULL,
--     Department VARCHAR(100) NOT NULL
-- )

-- CREATE TABLE Rewards(
--     EmpID INT NOT NULL,
--     RewardDate DATE NOT NULL,
--     Amount INT NOT NULL,
--     FOREIGN KEY (EmpID) REFERENCES Employee2(EmployeeID)
-- )

/* INSERT INTO Employee2(firstName, lastName,SALARY, JoiningDate, Department ) VALUES
("Ankush", "Thakur", 200000, "2022-04-08", "FullStack"),
("Sourav", "Kumar", 300000, "2022-01-10", "BackEnd"),
("Kunal", "Sharma", 300000, "2022-01-20", "BackEnd"),
("Amit", "Bhatia", 350000, "2022-01-30", "FrontEnd"),
("Ajay", "Singh", 350000, "2022-02-10", "Tester"),
("Diksha", "Thakur", 40000, "2022-02-20", "FulStack"),
("Anushka", "Thakur", 500000, "2022-03-10", "FullStack"),
("Vaneet", "Thakur", 50000, "2022-03-20", "FrontEnd"),
("Orion", "Sharma", 10000, "2022-03-20", "Intern") */

-- INSERT INTO Rewards(EmpId, RewardDate, Amount) VALUES
-- (1, "2022-04-30", 10000),
-- (2, "2022-04-30", 4000),
-- (3, "2022-04-30", 8000),
-- (4, "2022-05-30", 11000),
-- (5, "2022-05-30", 15000),
-- (6, "2022-05-30", 21000),
-- (7, "2022-05-30", 51000),
-- (8, "2022-06-30", 100),
-- (9, "2022-06-30", 100)

-- TODO: Q1
-- SELECT CONCAT(firstName, " ", lastName) AS "Name Field" FROM Employee2;

-- TODO: Q2
-- SELECT SUBSTR(lastname, 1, 3) AS "First 3 Char" FROM Employee2;

-- TODO: Q3
-- SELECT firstName ,YEAR(JoiningDate) AS "Year", MONTH(JoiningDate) AS "Month", DAY(JoiningDate) AS "Day" FROM Employee2;

-- TODO:Q4
-- SELECT firstName FROM Employee2 ORDER BY firstName ASC;
-- SELECT Salary FROM Employee2 ORDER BY Salary DESC;

-- TODO:Q5
--  SELECT REPLACE(firstName, 'A', '#') AS "Name Change" from Employee2;

-- TODO:Q6
-- SELECT firstName, LENGTH(firstName) FROM Employee2;

-- TODO:Q7
-- SELECT * FROM Employee2 WHERE firstName != "Sourav" AND firstName != "Kunal";

-- TODO:Q8
-- SELECT * FROM Employee2 WHERE firstName LIKE "S%";

-- TODO:Q9
-- SELECT * FROM Employee2 WHERE firstName LIKE "%o%";

-- TODO:Q10
-- SELECT * FROM Employee2 WHERE SALARY BETWEEN 200000 AND 500000;
-- SELECT * FROM Employee2 WHERE SALARY >=200000 AND SALARY <=500000;







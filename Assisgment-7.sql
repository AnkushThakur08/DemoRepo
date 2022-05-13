-- TODO:TABLE CREATION
-- CREATE TABLE Assigment7(
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     firstName VARCHAR(100) NOT NULL,
--     lastName VARCHAR(100) NOT NULL,
--     createdDate DATE,
--     createdAccount INT,
--     Age INT
-- );

-- INSERT INTO Assigment7 (firstName, lastName, createdDate, createdAccount, Age) VALUES 
-- ("John", "Thakur", "2021-11-20", 1, 20),
-- ("Sam", "sharma", "2021-12-20", 2, 16),
-- ("Ankush", "Thakur", "2021-12-28", 1, 23),
-- ("Diksha", "Thakur" ,"2022-1-20", 3, 25),
-- ("Anshika", "Thakur", "2022-1-5", 4, 18),
-- ("Vikas", "Singh", "2022-1-20", 1, 35),
-- ("John", "Mathew", "2022-1-29", 2, 60),
-- ("Sant", "Ram", "2022-2-2", 3, 55),
-- ("Arjun", "Matta", "2022-2-28", 4, 40),
-- ("Kalpana", "Kumari", "2022-3-3", 3, 26),
-- ("Amit", "Bhatia", "2022-3-20", 3, 19),
-- ("Vipul", "Chachaun", "2022-4-2", 4, 15),
-- ("KArtik", "Gandhi", "2022-4-12", 4, 26)

-- TODO: Q1
-- SELECT COUNT(*) AS "Account Created FROM Facebook" FROM Assigment7 WHERE 
-- createdDate BETWEEN "2021-11-20" AND "2022-04-13"
-- AND createdAccount = 1


-- TODO: Q2
-- SELECT firstName, lastName,
--     CASE
--         WHEN createdAccount = 1 THEN 'Facebook'
--         WHEN createdAccount = 2 THEN 'gmail'
--         WHEN createdAccount = 3 THEN 'twitter'
--         WHEN createdAccount = 4 THEN 'linkedln'
--         ELSE 'other'
--     END AS CreatedAccount
-- from Assigment7;

-- TODO: Q3
-- SELECT firstName, lastName,
--     CASE
--         WHEN Age <=20 THEN 'Under Aged'
--         WHEN Age BETWEEN 21 AND 50 THEN 'Eligible for getting basic benefits'
--         WHEN Age BETWEEN 51 AND 75 THEN 'Eligible for getting SPECIAL benefits'
--         ELSE 'NO Benefits'
--     END AS CreatedAccount
-- from Assigment7;


-- TODO: Q5
-- SELECT firstName, lastName FROM Assigment7 ORDER BY firstName DESC;

-- TODO: Q6

-- CREATE TABLE Topics(
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     Name VARCHAR(255) NOT NULL,
--     userID INT,
--     FOREIGN KEY(userID) REFERENCES Assigment7(id)
-- );

-- INSERT INTO Topics(Name, userID) VALUES
-- ("Indian History", 1),
-- ("Indian Polity", 2) ,
-- ("Devops", 5),
-- ("Front End Tech", 8),
-- ("Back End Tech", 10),
-- ("Cloud Enginner", 12)

-- SELECT Assigment7.FirstName, Assigment7.lastName, Assigment7.createdDate, Topics.Name
-- FROM (Topics
-- INNER JOIN Assigment7 ON Topics.userID = Assigment7.id)
-- WHERE createdDate BETWEEN "2021-11-20" AND "2022-03-01" ;

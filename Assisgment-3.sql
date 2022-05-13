-- TODO: Q1
-- SELECT MAX(age) FROM users WHERE 
-- age < ( SELECT MAX(age) FROM users);

-- TODO: Q2
-- CREATE TABLE employees (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(100) NOT NULL DEFAULT "No Name entered",
--     JoiningDate DATE NOT NULL,
--     Department Varchar(100) NOT NULL DEFAULT "Intern"
-- )

-- INSERT INTO employees (name, JoiningDate, department) VALUES
-- ("John", "2022-01-15", "Front End"),
-- ("Sam", "2022-02-22", "Back End"),
-- ("Karan", "2022-03-01", "Full Stack"),
-- ("Ankush", "2022-03-15", "Full Stack"),
-- ("Arjun", "2022-04-01", "Front End"),
-- ("Vikas", "2022-04-05", "Front End"),
-- ("Mohit", "2022-05-10", "DevOps"),
-- ("Rohit", "2022=06-20", "Cloud Dev"),
-- ("Yash", "2022-03-01", "DevOps"),
-- ("Diksha", "2022-05-10", "DevOps"),
-- ("Kalpana", "2022-05-10", "Game Eng"),
-- ("Vipul", "2022-06-20", "Game Eng");

-- SELECT * from employees WHERE 
-- JoiningDate BETWEEN "2022-02-21" AND "2022-04-07" ;

-- SELECT COUNT(*), JoiningDate from employees GROUP BY JoiningDate;

-- TODO: Q3
-- SELECT * FROM employees WHERE name LIKE "____n%";   

-- TODO: Q4
-- SELECT * from employees WHERE id = 1 OR id = 5 OR id = 7 LIMIT 5;

-- TODO: Q5
-- CREATE TABLE LOCATION(
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     Location VARCHAR(120) NOT NULL
-- )

-- INSERT INTO LOCATION (Location) VALUES
-- ("Shimla"), ("Kashmir"), ("Chandigarh"), ("Delhi"), ("Kullu-Manali"), ("Goa"), ("Tamil Nadu");

-- CREATE TABLE FavLoc (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     userID INT NOT NULL,
--     locationID INT NOT NULL,
--     isMarkedFavorite INT,
--     FOREIGN KEY (userID) REFERENCES employees(id),
--     FOREIGN KEY (locationID) REFERENCES location(id)
-- )

-- INSERT INTO FavLoc(userID, locationID, isMarkedFavorite) VALUES
-- (1,1,0), (2,1,1), (3,7,0), (4,6,1), (5,3,0), (6,3,0), (7,2,1), (8,2,1), (9,2,1), (10,4,1), (11,2,0), (12,1,1)

-- SELECT employees.id, employees.name, Location.Location, FavLoc.isMarkedFavorite 
-- FROM ((FavLoc
-- INNER JOIN employees ON employees.id = FavLoc.userID)
-- INNER JOIN Location ON Location.id = FavLOC.locationID)

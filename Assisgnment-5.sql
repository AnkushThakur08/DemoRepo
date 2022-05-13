-- TODO: Q1
-- CREATE TABLE Friend(
--     id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(255) NOT NULL
-- );

-- INSERT INTO Friend(name) VALUES
-- ("Karan"), ("Ankush"), ("Vikas"), ("Mohit"), ("Anshika"), ("Ash"), ("Vipul"), ("Saurav"), ("Vaneet");

-- SELECT name FROM employees
-- UNION 
-- SELECT name FROM friend;

-- SELECT name FROM employees
-- UNION
-- SELECT name FROM friend;

-- TODO: Q2
-- CREATE TABLE users2(
--     id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(255) NOT NULL
-- );

-- CREATE TABLE Location2(
--     id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     CurrentLocation VARCHAR(255) NOT NULL,
--     isDeleted INT NOT NULL,
--     userID INT NOT NULL,
--     FOREIGN KEY(userID) REFERENCES users2(id)
-- );

-- INSERT INTO users2(name) VALUES
-- ("Jay"),
-- ("Ankush"),
-- ("Vijay"),
-- ("Rahul"),
-- ("Rajeev"),
-- ("Vipul")

-- INSERT INTO Location2(CurrentLocation, isDeleted, userID) VALUES
-- ("Shimla", 0, 1),
-- ("Chandigarh", 0, 2),
-- ("Delhi", 0, 3),
-- ("Goa", 0, 4),
-- ("Shimla", 0, 5),
-- ("Mumbai", 0, 6)

-- TODO: Query1
-- SELECT users2.name, location2.CurrentLocation 
-- FROM (users2
-- INNER JOIN location2 ON users2.id = location2.userID)

-- CREATE TABLE Location_to_visited(
--     Name VARCHAR(255) NOT NULL,
--     isVisited INT NOT NULL,
--     userID INT NOT NULL,
--     FOREIGN KEY (userID) REFERENCES users2 (id)
-- )

-- INSERT INTO Location_to_visited(Name, isVisited, userID) VALUES
-- ("Manali", 0, 1),
-- ("Manali", 1, 2),
-- ("Leh Ladak", 0, 2),
-- ("Leh Ladak", 1, 1),
-- ("Goa", 0, 3),
-- ("Goa", 1, 4),
-- ("Udaipur", 1, 3),
-- ("Udaipur", 0, 4),
-- ("Gangtok", 0, 5),
-- ("Gangtok", 1, 6)

-- SELECT  users2.id, users2.name, Location_to_visited.Name
-- FROM (users2
-- INNER JOIN Location_to_visited ON users2.id = Location_to_visited.userID)

-- SELECT  users2.id, users2.name , Location_to_visited.Name AS "Location Already Visited"
-- FROM (users2
-- INNER JOIN Location_to_visited ON users2.id = Location_to_visited.userID)
-- WHERE isVisited = 1;

-- CREATE TABLE Favorate_Location(
--     Name VARCHAR(255) NOT NULL,
--     isFavorite INT NOT NULL,
--     userID INT NOT NULL,
--     FOREIGN KEY (userID) REFERENCES users2 (id)
-- )

-- INSERT INTO Favorate_Location(Name, isFavorite, userID) VALUES
-- ("Manali", 0, 1),
-- ("Manali", 1, 2),
-- ("Leh Ladak", 0, 2),
-- ("Leh Ladak", 1, 1),
-- ("Goa", 0, 3),
-- ("Goa", 1, 4),
-- ("Udaipur", 1, 3),
-- ("Udaipur", 0, 4),
-- ("Gangtok", 0, 5),
-- ("Gangtok", 1, 6)

-- SELECT  users2.id, users2.name , Favorate_Location.Name AS "Favorate Location"
-- FROM (users2
-- INNER JOIN Favorate_Location ON users2.id = Favorate_Location.userID)
-- WHERE isFavorite = 1;





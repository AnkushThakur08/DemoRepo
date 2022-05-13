-- CREATE DATABASE applify;

-- use applify;

-- show tables;

-- CREATE TABLE users(
-- user_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
-- name VARCHAR(35) NOT NULL,
-- email VARCHAR(50) NOT NULL,
-- gender CHAR(1) NOT NULL,
-- ProfilePic BLOB,
-- age INT(3) NOT NULL
-- );

-- DESC users;

-- CREATE TABLE hobbies(
-- id INT NOT NULL PRIMARY KEY,
-- name VARCHAR(35) NOT NULL
-- );

-- DESC hobbies;

-- CREATE TABLE user_hobbies(
-- userID INT NOT NULL,
-- hobbyID INT NOT NULL,
-- FOREIGN KEY(userID) REFERENCES users(user_id),
-- FOREIGN KEY(hobbyID) REFERENCES hobbies(id)
-- );

-- DESC user_hobbies

-- ALTER TABLE users MODIFY user_id INT NOT NULL AUTO_INCREMENT;


-- -- TODO: Entering DATA

-- INSERT INTO users(name, email, gender, age)
-- VALUES ("Ajay", "ajay@gmail.com", "M", 22),
-- ("Vijay", "vijay@gmail.com", "M", 24),
-- ("Pankaj", "panjay@gamil.com", "M", 25),
-- ("Diksha", "Diksha@gmail,com", "F", 23),
-- ("Anshika", "Anshika@gmail.com", "F", 24),
-- ("Ankush", "Ankush@gmail.com", "M", 23)


-- INSERT INTO hobbies(id, name)
-- VALUES (1, "Programming"),
-- (2, "Cricket"),
-- (3, "VideoGames"),
-- (4, "Playing Guitar"),
-- (5, "Reading Novels"),
-- (6, "Treeking")


-- ALTER TABLE user_hobbies ADD CreatedAt timestamp NOT NULL default CURRENT_TIMESTAMP

-- INSERT INTO user_hobbies(userID, hobbyID)
-- VALUES (1, 4),
-- (2, 3),
-- (3, 6),
-- (4, 2),
-- (5, 1),
-- (6, 5);

-- -- TODO: JOINS

-- SELECT users.name, hobbies.name
-- FROM ((user_hobbies
-- INNER JOIN users ON user_hobbies.userID = users.user_id)
-- INNER JOIN hobbies ON user_hobbies.hobbyID = hobbies.id )


-- -- TODO: Extra Question
-- UPDATE operation on users

-- UPDATE users SET age = 24 
-- WHERE user_id = 5;

-- ALTER TABLE users MODIFY name VARCHAR(35) default "No Name Added";

-- INSERT INTO users(email, gender, age)
-- VALUES ("abc@gmail.com", "M", 30);


-- -- TODO: Delete query
-- DELETE FROM users where user_id = 7;


-- -- TODO: Creating another table
-- CREATE TABLE UserInfo(
--     userID INT NOT NULL,
--    Profile VARCHAR(60) NOT NULL Default "Yet to Add",
--    Income INT NOT NULL,
--    Assets VARCHAR(60) NOT NULL Default "NO assets",
--    FOREIGN KEY (userID) REFERENCES users (user_id),
--    CHECK (Income>=10000)
-- )

-- -- TODO: Adding DATA
-- INSERT INTO userInfo(userID, Profile, Income, Assets) VALUES
-- (1, "MERN STACK", 25000, "Laptop" ),
-- (5, "React Native Developer", 30000, "MAC Book"),
-- (6, "MERN STACK", 50000, "laptop")

-- INSERT INTO userInfo(userID, Income) VALUES
-- (2, 10000),
-- (3, 15000),
-- (4, 12000);

-- -- TODO: Operation
-- SELECT users.user_id, users.name, userInfo.Profile, userInfo.Income, userInfo.Assets
-- FROM (users
-- INNER JOIN userInfo ON users.user_id = userInfo.userID);

-- UPDATE userInfo set Profile = "React Developer" WHERE userID = 4;
-- UPDATE userInfo set Profile = "Angular Developer", Assets = "DESKTOP" WHERE userID = 3;
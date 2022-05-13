-- TODO:Q2
-- CREATE TABLE nameOne(
-- user_id INT PRIMARY KEY AUTO_INCREMENT,
-- name VARCHAR(35) NOT NULL
-- )

-- CREATE TABLE nameTwo(
-- id INT PRIMARY KEY AUTO_INCREMENT,
-- name VARCHAR(35) NOT NULL
-- )

-- INSERT INTO nameOne(name) 
-- VALUES ("Yash"), ("Rahul"), ("Ankush"), ("Diksha")

-- INSERT INTO nameTwo(name) 
-- VALUES ("Matta"), ("Sharma"), ("Thakur"), ("Thakur")

-- CREATE TABLE names(
--     name_id INT PRIMARY KEY AUTO_INCREMENT, 
--     user_id INT NOT NULL, 
--     id INT NOT NULL,
--     FOREIGN KEY (user_id) REFERENCES nameOne(user_id),
--     FOREIGN KEY (id) REFERENCES nameTwo(id)
-- );

-- INSERT INTO names(user_id,id ) 
-- VALUES (1,1), (2,2), (3,3), (4,4);

-- SELECT nameOne.user_id, nameOne.name, nameTwo.name
-- FROM ((names
-- INNER JOIN nameOne ON names.user_id = nameOne.user_id)
-- INNER JOIN nameTwo ON names.id = nameTwo.id)

-- start transaction;
-- insert into nameOne(name)
-- value("Mohit");
-- insert into nameTwo(name)
-- value("Ramola");
-- insert into names(user_id, id)
-- value(5,5);

-- SELECT nameOne.user_id, nameOne.name, nameTwo.name
-- FROM ((names
-- INNER JOIN nameOne ON names.user_id = nameOne.user_id)
-- INNER JOIN nameTwo ON names.id = nameTwo.id);

-- commit;

-- TODO: Q3
-- lock table nameOne write;

-- lock table nameOne read;

-- INSERT INTO nameOne(name) 
-- VALUES ("XYZ");

-- SELECT * FROM nameOne

-- unlock table;

-- INSERT INTO nameOne(name) 
-- VALUES ("XYZ");

-- SELECT * FROM nameOne;

-- TODO: Q4
-- CREATE TABLE Products(
--     id INT PRIMARY KEY AUTO_INCREMENT, 
--     name VARCHAR(50) NOT NULL,
--     description VARCHAR(255) NOT NULL,
--     price INT
-- );

-- INSERT INTO Products(name, description, price) VALUES
-- ("Smart phone", "A good Phone", 20000),
-- ("Smart Watch", "A good Watch", 3000)

-- START TRANSACTION;
-- INSERT INTO Products(name, description, price) VALUES ("Laptop", "A Perfect Laptop to work on", 50000);
-- SELECT * FROM Products;
-- commit;

-- TODO: Q4.2

-- CREATE TABLE productDocument(
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     productID INT NOT NULL,
--     document VARCHAR(255) NOT NULL,
--     FOREIGN KEY (productID) REFERENCES Products(id)
-- )

-- INSERT INTO productDocument (ProductID, document) VALUES
-- (1,"Phone Document"),
-- (2,"Watch Document"),
-- (3,"Laptop Document");

-- START TRANSACTION
-- INSERT INTO productDocument (ProductID, document) VALUES
-- (4,"TV Document");
-- commit;

-- SELECT productID, document FROM productDocument;

SELECT * FROM productDocument;


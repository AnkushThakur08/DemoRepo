-- CREATE TABLE SalesPerson(
--     id INTEGER PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(100) NOT NULL,
--     city VARCHAR(100) NOT NULL,
--     commission DECIMAL(4,2) NOT NULL
-- )

-- INSERT INTO SalesPerson (name, city, commission) VALUES
-- ("Vikas", "Shimla", 10.58)
-- ("Rahul", "Chandigarh", 12.58),
-- ("Ajay", "Chennai", 13.48),
-- ("Anshul", "Punjab", 5.56),
-- ("Narwla", "Haryana", 6.00),
-- ("Naveen", "Delhi", 5.00),
-- ("Shashank", "Delhi", 15.00),
-- ("Anushaka", "Delhi", 20.00)



-- CREATE TABLE Customers(
--     id INTEGER PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(255) NOT NULL,
--     city VARCHAR(100) NOT NULL,
--     grade VARCHAR(2) NOT NULL,
--     salesman_id INTEGER NOT NULL,
--     FOREIGN KEY (salesman_id) REFERENCES SalesPerson(id)
-- )

-- INSERT INTO Customers (name, city, grade, salesman_id) VALUES 
-- ("Ankush", "Shimla", "A", 1),
-- ("Diksha", "Shimla", "A", 2),
-- ("Kalpana", "Chennai", "B", 3),
-- ("Vijay", "Punjab", "B",  4),
-- ("Anshika", "Chandigarh", "B", 5),
-- ("Vipul", "Chandigarh", "C", 6),
-- ("Amit", "Delhi", "C" ,7),
-- ("Yash", "Delhi", "D" ,8)

-- CREATE TABLE table_order(
--     id INTEGER PRIMARY KEY AUTO_INCREMENT,
--     purch_amt INTEGER NOT NULL,
--     ord_Date DATE,
--     customer_id INTEGER NOT NULL,
--     salesman_id INTEGER NOT NULL,
--     FOREIGN Key(customer_id) REFERENCES Customers(id),
--     FOREIGN Key(salesman_id) REFERENCES SalesPerson(id)
-- )

-- INSERT INTO table_order(purch_amt, ord_Date, customer_id, salesman_id) VALUES
-- -- (1500,"2022-01-25", 1, 1)
-- (1700, "2022-01-20", 2,2),
-- (1000, "2022-02-10", 3, 3),
-- (1200, "2022-02-20", 4, 4),
-- (500, "2022-03-05", 5, 5),
-- (3000, "2022-03-20", 6, 6),
-- (2500, "2022-03-30", 7, 7),
-- (5000, "2022-04-10", 8, 8)

-- TODO: Q1
/* SELECT  SalesPerson.name AS "SalesPerson Name", Customers.name AS "Customer Name", SalesPerson.city AS "SalesPerson City", Customers.city AS "Customer City"
FROM (SalesPerson
INNER JOIN Customers ON SalesPerson.id = Customers.salesman_id)
WHERE SalesPerson.city = Customers.city; */

-- TODO: Q2
-- SELECT * FROM table_order
-- WHERE purch_amt BETWEEN 1100 AND 1800

-- TODO: Q3
-- SELECT  SalesPerson.name AS "SalesPerson Name", Customers.name AS "Customer Name"
-- FROM (SalesPerson
-- INNER JOIN Customers ON SalesPerson.id = Customers.salesman_id)

-- TODO: Q4
-- SELECT name, commission FROM SalesPerson
-- WHERE commission > 10

-- TODO: Q5
SELECT  SalesPerson.name AS "SalesPerson Name", Customers.name AS "Customer Name", SalesPerson.commission, SalesPerson.city AS "SalesPerson City", Customers.city AS "Customer City"
FROM (SalesPerson
INNER JOIN Customers ON SalesPerson.id = Customers.salesman_id)
WHERE SalesPerson.city != Customers.city AND SalesPerson.commission > 14

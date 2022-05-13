/* CREATE TABLE users(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
) */

-- INSERT INTO users(name) VALUES
-- ("Ankush"), ("Diksha"), ("Amit"), ("Vannet"), ("Saurabh"), ("yash")

/* CREATE TABLE Videos(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    creatorID INTEGER,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    createdAt DATE,
    FOREIGN KEY (creatorID) REFERENCES users(id)
) */

/* INSERT INTO Videos (creatorID, title, description, createdAt) VALUES
(1, "React JS", "Video on ReactJS", "2022-04-29"),
(2, "Angular JS", "Video on AngularJS", "2022-04-28"),
(3, "Best Devices", "Video on Best Devices", "2022-04-27 "),
(4, "Unique Products", "Video on Unique Products", "2022-04-26"),
(5, "React Native", "Video on React Native", "2022-04-24 "),
(6, "Android", "Video on Android", "2022-04-23 ")
 */

/* CREATE TABLE Views(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    userID INTEGER,
    videoID INTEGER,
    creatorID INTEGER,
    createdAt DATE,
    FOREIGN KEY (videoID) REFERENCES Videos(id),
    FOREIGN KEY (creatorID) REFERENCES users(id)
) */

/* 
INSERT INTO Views (userID, videoID, creatorID, createdAt) VALUES
(2,1, 1, "2022-04-29"),
(3,1, 1, "2022-04-28"),
(4,1, 1, "2022-04-27"),
(2, 2, 2, "2022-04-26"),
(3, 2, 2, "2022-04-25"),
(4, 2, 2, "2022-04-24"),
(1, 3, 3, "2022-04-23"),
(3, 3, 3, "2022-04-29"),
(3, 4, 4, "2022-04-28"),
(1, 4, 4, "2022-04-27"),
(1, 5, 5, "2022-04-26"),
(2, 5, 5, "2022-04-25"),
(4, 5, 5, "2022-04-24"),
(4, 6, 6, "2022-04-23"),
(2, 6, 6, "2022-04-29"),
(1, 6, 6, "2022-04-28")
 */

/* CREATE TABLE LIKES(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    userID INTEGER,
    VideoID INTEGER,
    Status INTEGER,
    createdAt DATE,
    FOREIGN KEY(VideoID) REFERENCES Videos(id)
) */

/* INSERT INTO LIKES (userID, VideoID, Status, CreatedAt) VALUES
(2, 1, 1, "2022-04-29"),
(3, 1, 1, "2022-04-28"),
(4, 1, 1, "2022-04-27"),
(5, 1, 0, "2022-04-26"),
(6, 1, 2, "2022-04-25"),
(2, 2, 1, "2022-04-24"),
(3, 2, 1, "2022-04-23"),
(4, 2, 0, "2022-04-29"),
(5, 2, 1, "2022-04-29"),
(5, 3, 1, "2022-04-28"),
(4, 3, 2, "2022-04-27"),
(1, 3, 1, "2022-04-26"),
(3, 3, 0, "2022-04-25"),
(1, 4, 1, "2022-04-24"),
(3, 4, 1, "2022-04-23"),
(4, 4, 1, "2022-04-29"),
(5, 4, 0, "2022-04-28"),
(1, 5, 1, "2022-04-27"),
(2, 5, 1, "2022-04-26"),
(4, 5, 1, "2022-04-25"),
(6, 5, 2, "2022-04-24"),
(1, 6, 2, "2022-04-23"),
(2, 6, 1, "2022-04-29"),
(4, 6, 1, "2022-04-28") */

-- TODO: Q1

/* SELECT  Videos.id, Videos.title, Videos.description, COUNT(Likes.userID) AS "No of Likes", Likes.status, Likes.createdAt
FROM (Videos
INNER JOIN Likes ON Videos.id = Likes.VideoID)
WHERE status = 1 AND Likes.createdAt = "2022-04-29"
group by id */


-- TODO: Q2
/* SELECT  Videos.id, Videos.title, Videos.description, COUNT(Likes.userID) AS "No of Likes", Likes.status, Likes.createdAt
FROM (Videos
INNER JOIN Likes ON Videos.id = Likes.VideoID)
WHERE status = 1 AND Likes.createdAt BETWEEN "2022-04-23" AND  "2022-04-28"
group by Likes.createdAt */


-- TODO: Q3
/* SELECT  Videos.id, Videos.title, Videos.description, COUNT(Views.userID) AS "No of Views", Views.createdAt
FROM (Videos
INNER JOIN Views ON Videos.id = views.VideoID)
WHERE Views.createdAt BETWEEN "2022-04-23" AND  "2022-04-28"
group by id */


-- TODO: Q4
/* SELECT  Videos.id, Videos.title, Videos.description, COUNT(Views.userID) AS "No of Views"
FROM (Videos
INNER JOIN Views ON Videos.id = views.VideoID)
group by id
 */
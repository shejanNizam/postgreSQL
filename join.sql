
-- Module 9: 6 = Inner JOIN
--  join two tables to get the data from both tables using foreign key and primary key relationship
SELECT title, username FROM post
JOIN "user" on post.user_id = "user".id;

-- for getting all the data from both tables we can use * instead of column name
SELECT * FROM post
JOIN "user" on post.user_id = "user".id;

SELECT p.id FROM post as p
INNER JOIN "user" as u on p.user_id = u.id;

-- Module 9: 6 = Left + Right Join

-- LEFT JOIN 
SELECT p.id FROM post as p
LEFT JOIN "user" as u on p.user_id = u.id; -- it says LEFT OUTER JOIN  also 

-- RIGHT JOIN 
SELECT p.id FROM post as p
RIGHT JOIN "user" as u on p.user_id = u.id; -- it says RIGHT OUTER JOIN  also 

-- Module 9: 7 = Full Join

-- RIGHT JOIN 
SELECT p.id FROM post as p
FULL JOIN "user" as u on p.user_id = u.id; -- it says FULL OUTER JOIN also


--  ============================>
INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);


DROP Table post;
DROP Table "user";

SELECT * from "user";
SELECT * from post;

SELECT * FROM post as p
JOIN "user" u on p.user_id = u.id;



INSERT INTO post (id, title, user_id) VALUES
(5,'this is a test post title', NULL);


SELECT * FROM post as p
LEFt OUTER JOIN "user" u on p.user_id = u.id;


SELECT * FROM post as p
RIGHT OUTER JOIN "user" u on p.user_id = u.id;



SELECT * FROM post as p
FULL OUTER JOIN "user" u on p.user_id = u.id;

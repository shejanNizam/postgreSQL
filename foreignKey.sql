
-- Module 9: 3
CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)



-- Module 9: 4, 5 
-- here discuss some issue llike if delete any user then delete the post which post has foreign key from user primary id that means deletation condition/rules here

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
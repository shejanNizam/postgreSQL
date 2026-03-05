
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

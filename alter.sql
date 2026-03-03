-- Active: 1772508543311@@127.0.0.1@5432@ph
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100)
);

SELECT * FROM students;


INSERT INTO students (name, age, email)
VALUES
('Rahim', 22, 'rahim@mail.com'),
('Karim', 21, 'karim@mail.com'),
('Nizam', 23, 'nizam@mail.com');


ALTER TABLE students 
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

ALTER TABLE students 
    DROP COLUMN email;

ALTER TABLE students 
    RENAME COLUMN age to student_age

ALTER TABLE students
    ALTER COLUMN name TYPE VARCHAR(25);

ALTER TABLE students
    ALTER COLUMN student_age set NOT NULL;


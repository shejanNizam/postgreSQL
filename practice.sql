CREATE TABLE studennts (
    id SERIAL PRIMARY KEY,
    roll INT UNIQUE,
    name VARCHAR(25),
    age INT,
    department VARCHAR(50),
    score INT,
    status VARCHAR(20),
    last_login DATE
)

SELECT * FROM students;

ALTER TABLE studennts
RENAME TO students;

ALTER TABLE students
ADD COLUMN email VARCHAR(100);

ALTER TABLE students
RENAME COLUMN email to student_email;

ALTER TABLE students
ADD CONSTRAINT unique_student_email UNIQUE(student_email);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(50)
)

Select * FROM students;

ALTER TABLE students
DROP COLUMN status;

INSERT INTO students (roll, name, age, department, score, status, last_login, student_email)
VALUES
(101, 'Arif Rahman', 20, 'CSE', 85, 'passed', '2025-02-10', 'arif@mail.com'),
(102, 'Ayesha Khan', 21, 'EEE', 78, 'passed', '2025-01-15', 'ayesha@mail.com'),
(103, 'Nizam Shejan', 22, 'CSE', 92, 'passed', '2025-02-05', 'nizam@mail.com'),
(104, 'Karim Uddin', 23, 'BBA', 45, 'failed', '2024-01-10', 'karim@mail.com'),
(105, 'Rahim Mia', 19, 'CSE', 67, 'passed', '2025-02-01', 'rahim@mail.com'),
(106, 'Tanvir Ahmed', 24, 'EEE', 88, 'passed', '2025-01-20', 'tanvir@mail.com'),
(107, 'Akash Das', 20, 'CSE', 49, 'failed', '2023-12-11', 'akash@mail.com'),
(108, 'Sadia Islam', 21, 'BBA', 73, 'passed', '2025-02-15', 'sadia@mail.com'),
(109, 'Al Amin', 22, 'EEE', 81, 'passed', '2025-02-18', 'alamin@mail.com'),
(110, 'Mim Akter', 20, 'CSE', 55, 'passed', '2024-11-22', 'mim@mail.com'),
(111, 'Rafi Hasan', 23, 'EEE', 90, 'passed', '2025-01-30', 'rafi@mail.com'),
(112, 'Tania Sultana', 22, 'BBA', 62, 'passed', '2025-02-11', 'tania@mail.com'),
(113, 'Anik Roy', 19, 'CSE', 83, 'passed', '2025-02-09', 'anik@mail.com'),
(114, 'Jahid Hossain', 24, 'EEE', 47, 'failed', '2023-10-10', 'jahid@mail.com'),
(115, 'Farhan Islam', 21, 'CSE', 76, 'passed', '2025-01-25', 'farhan@mail.com'),
(116, 'Asif Khan', 22, 'BBA', 69, 'passed', '2025-02-13', 'asif@mail.com'),
(117, 'Rima Chowdhury', 20, 'CSE', 95, 'passed', '2025-02-17', 'rima@mail.com'),
(118, 'Habib Rahman', 23, 'EEE', 58, 'passed', '2024-12-01', 'habib@mail.com'),
(119, 'Arafat Islam', 21, 'CSE', 72, 'passed', '2025-01-05', 'arafat@mail.com'),
(120, 'Nusrat Jahan', 20, 'BBA', 84, 'passed', '2025-02-19', 'nusrat@mail.com');

SELECT * FROM students
WHERE score > 80 AND score IS NOT NULL;

SELECT * FROM students
WHERE NOT department = 'CSE';

SELECT * FROM students
WHERE name LIKE 'A%';

SELECT * FROM students
WHERE name ILIKE 'A%';

SELECT * FROM students
WHERE age BETWEEN 18 AND 25;

SELECT * FROM students
WHERE roll IN(101,102,103);



-- Aggregation function
SELECT COUNT(*) FROM students;

SELECT AVG(score) FROM students
WHERE department = 'CSE';

SELECT MAX(age), MIN(age) FROM students;

UPDATE students SET status = 'failed'
WHERE score <= 55;

SELECT * FROM students;

DELETE FROM students
WHERE last_login < CURRENT_DATE - INTERVAL '1 year';
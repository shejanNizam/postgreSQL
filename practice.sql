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


--  after complete Module 9 then practice 
-- Active: 1699467625194@@127.0.0.1@5432@ph@public
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments(department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
);

-- Creating the departments table
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

drop Table departments;

INSERT INTO departments (department_name) VALUES 
    ('HR'), 
    ('Marketing'), 
    ('Finance'), 
    ('IT'), 
    ('Sales'), 
    ('Engineering'), 
    ('Customer Support'), 
    ('Administration'), 
    ('Research'), 
    ('Quality Assurance');

    INSERT INTO employees (employee_name, department_id, salary, hire_date) VALUES 
    ('John Doe', 1, 60000.00, '2022-01-10'),
    ('Jane Smith', 2, 75000.50, '2021-05-22'),
    ('Bob Johnson', 3, 80000.75, '2020-11-15'),
    ('Alice Williams', 4, 90000.25, '2019-08-03'),
    ('David Lee', 5, 65000.50, '2020-03-18'),
    ('Sara Brown', 6, 70000.00, '2021-09-28'),
    ('Mike Miller', 7, 55000.75, '2022-02-05'),
    ('Emily Davis', 8, 95000.00, '2018-12-12'),
    ('Chris Wilson', 9, 72000.50, '2020-06-30'),
    ('Amy White', 10, 68000.25, '2021-11-09'),
    ('John Johnson', 1, 62000.00, '2022-01-15'),
    ('Jessica Thompson', 2, 78000.50, '2021-06-05'),
    ('Michael Harris', 3, 85000.75, '2020-11-25'),
    ('Emma Martinez', 4, 92000.25, '2019-09-15'),
    ('James Taylor', 5, 67000.50, '2020-04-08'),
    ('Sophia Anderson', 6, 72000.00, '2021-10-10'),
    ('William Jackson', 7, 56000.75, '2022-02-10'),
    ('Olivia Nelson', 8, 97000.00, '2018-12-20'),
    ('Daniel White', 9, 73000.50, '2020-07-05'),
    ('Ava Wilson', 10, 69000.25, '2021-11-15'),
    ('Matthew Brown', 1, 63000.00, '2022-01-20'),
    ('Emily Garcia', 2, 76000.50, '2021-06-15'),
    ('Christopher Allen', 3, 86000.75, '2020-12-05'),
    ('Madison Hall', 4, 93000.25, '2019-09-25'),
    ('Andrew Cook', 5, 68000.50, '2020-04-18'),
    ('Abigail Torres', 6, 73000.00, '2021-10-20'),
    ('Ethan Murphy', 7, 57000.75, '2022-02-15'),
    ('Ella King', 8, 98000.00, '2018-12-28'),
    ('Nathan Rivera', 9, 74000.50, '2020-07-15'),
    ('Mia Roberts', 10, 70000.25, '2021-11-20');



SELECT * from employees
JOIN departments ON employees.department_id = departments.department_id;

SELECT * from employees
JOIN departments USING(department_id);

SELECT department_name, round(avg(salary)) as avg_salary  FROM employees
JOIN departments USING(department_id)
GROUP BY department_name;


SELECT department_name, count(employee_id) FROM employees
JOIN departments USING(department_id)
GROUP BY department_name;


SELECT department_name, round(avg(salary)) as avg_salary FROM employees
JOIN departments USING(department_id)
GROUP BY department_name
ORDER BY avg_salary desc
LIMIT 1
;

SELECT extract(YEAR from hire_date) as hire_year, count(*) from employees
GROUP BY hire_year;


CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

INSERT INTO orders (customer_id, order_date, total_amount) VALUES 
    (1, '2022-01-05', 100.50),
    (2, '2020-01-07', 200.75),
    (1, '2022-01-08', 150.25),
    (3, '2020-05-10', 300.00),
    (2, '2022-01-15', 180.50),
    (3, '2022-01-20', 220.25),
    (1, '2022-01-25', 90.00),
    (2, '2022-01-28', 120.75),
    (3, '2021-02-01', 250.50),
    (1, '2022-02-05', 180.25),
    (4, '2023-02-05', 190.25);

DROP Table orders;

    -- Find customers who have placed more than 2 orders and calculate the total amount spent by each of these customers.



    SELECT customer_id, count(order_id), sum(total_amount) as total_spent from orders GROUP BY customer_id HAVING count(order_id) > 2;

    -- Find the total amount of orders placed each month in the year 2022.
    SELECT extract(month from order_date) as month, sum(total_amount)  from orders WHERE extract(year from order_date) = 2022 GROUP BY month;
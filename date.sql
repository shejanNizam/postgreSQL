-- Active: 1772508543311@@127.0.0.1@5432@ph

-- Module 9: 1, 

SHOW timezone;

SELECT now();

CREATE TABLE timeZ (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone)

-- Drop Table timeZ;
INSERT into timeZ VALUES('2026-01-12 10:45:00', '2026-01-12 10:45:00');

SELECT * FROM timeZ;

SELECT CURRENT_DATE;

SELECT now()::date;

SELECT now()::time;

SELECT to_char(now(), 'dd/mm/yyyy');

SELECT CURRENT_DATE - INTERVAL '1 year';

SELECT age(CURRENT_DATE, '2000-07-17');

SELECT extract(year from '2024-01-25'::date);

SELECT 'n'::BOOLEAN;


-- Module 9: 2
SELECT department, count(*), avg(age) FROM students
    GROUP BY department;

SELECT department, avg(age) FROM students
    GROUP BY department
        HAVING avg(age) > 20


SELECT * FROM students;

-- count students born in same yaer
SELECT extract(year from last_login) as birth_year, count(*)
    FROM students
    GROUP BY birth_year;

-- Module 9: 3
     

--  lets say we have two tables one is ( employees ) other is ( departments ) 

-- cross join
SELECT * FROM employees
CROSS JOIN departments;


-- natural join ( each table has one common column otherwise use cross column )
SELECT * FROM employees
NATURAL JOIN departments;
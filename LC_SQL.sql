-- CREATE DATABASE lc_sql;
-- USE lc_sql;

-- 595 
SELECT name, population, area FROM
World
WHERE area > 3000000 or population > 25000000;


-- 596
SELECT class FROM 
(
SELECT DISTINCT class, COUNT(class) AS sum_class 
FROM (SELECT DISTINCT student, class FROM courses) tmp -- the students should not be counted duplicate in each course
GROUP BY class
) tmp  -- tmp is a temporary table
WHERE sum_class >= 5;


-- 183
SELECT t1.Name AS Customers FROM
Customers t1
LEFT JOIN Orders t2 ON
t1.Id = t2.CustomerId
WHERE t2.CustomerId is NULL -- use where to control the ID is null 
;

-- 196
DELETE p1
FROM Person p1, Person p2
WHERE p1.Email = p2.Email AND
p1.Id > p2.Id

















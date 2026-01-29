-- SQL Practice (Junior)

-- 1) Basic SELECT
SELECT * FROM users;

-- 2) Filtering with WHERE
SELECT id, name, age
FROM users
WHERE age >= 18;

-- 3) Sorting and limiting
SELECT id, name, age
FROM users
ORDER BY age DESC
LIMIT 5;

-- 4) Aggregation
SELECT COUNT(*) AS total_users
FROM users;

SELECT AVG(age) AS avg_age
FROM users;

-- 5) GROUP BY + HAVING
SELECT age, COUNT(*) AS users_count
FROM users
GROUP BY age
HAVING COUNT(*) >= 2;

-- 6) Basic JOIN
SELECT u.name, o.total_amount
FROM users u
JOIN orders o ON o.user_id = u.id;

-- 7) INSERT / UPDATE / DELETE examples
INSERT INTO users (name, age) VALUES ('John', 25);

UPDATE users
SET age = 26
WHERE name = 'John';

DELETE FROM users
WHERE name = 'John';

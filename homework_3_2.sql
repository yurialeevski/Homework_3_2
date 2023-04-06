\c skypro
/* Задание 1 */
INSERT INTO employee(first_name, last_name, gender, age) VALUES ('Александр', 'Александров', 'муж', 51);
INSERT INTO employee(first_name, last_name, gender, age) VALUES ('Борис', 'Борисов', 'муж', 21);
INSERT INTO employee(first_name, last_name, gender, age) VALUES ('Виктория', 'Волкова', 'жен', 22);
INSERT INTO employee(first_name, last_name, gender, age) VALUES ('Дмитрий', 'Дмитриев', 'муж', 23);
INSERT INTO employee(first_name, last_name, gender, age) VALUES ('Елена', 'Зайцева', 'жен', 31);
SELECT * FROM employee;
SELECT first_name AS Имя,
       last_name AS Фамилия FROM employee;
SELECT * FROM employee WHERE age < 30 OR age > 50;
SELECT * FROM employee WHERE age BETWEEN 30 AND 50;
SELECT last_name AS Фамилия FROM employee ORDER BY last_name DESC;
SELECT first_name AS Имя,
       last_name AS Фамилия FROM employee
WHERE CHAR_LENGTH(first_name)  > 4 ORDER BY CHAR_LENGTH(first_name);

/* Задание 2 */
UPDATE employee SET first_name = 'Александр', last_name = 'Александров', age = 51 WHERE id = 11;
UPDATE employee SET first_name = 'Елена', last_name = 'Зайцева', gender = 'жен', age = 31 WHERE id = 13;
SELECT * FROM employee;
SELECT first_name AS Имя,
       SUM(age) AS Суммарный_возраст
FROM employee GROUP BY first_name;
SELECT first_name AS Имя,
       age AS Самый_юный_возраст
FROM employee WHERE age = (SELECT MIN(age) FROM employee);
SELECT first_name AS Неуникальное_имя, MAX(age) AS Максимальный_возраст FROM employee
GROUP BY first_name HAVING COUNT(first_name) > 1 ORDER BY MAX(age);
SELECT first_name AS Неуникальное_имя, age AS Максимальный_возраст FROM employee
GROUP BY first_name, age HAVING COUNT(first_name) > 1 ORDER BY MAX(age);


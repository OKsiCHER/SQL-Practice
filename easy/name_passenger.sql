-- Задача: Вывести имена людей, которые заканчиваются на "man"
-- Уровень: Легкий
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/4

SELECT name
FROM Passenger
WHERE name LIKE '%man';

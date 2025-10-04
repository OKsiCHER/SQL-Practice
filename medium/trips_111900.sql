-- Задача: Вывести вылеты, совершенные с 10 ч. по 14 ч. 1 января 1900 г.
-- Уровень: Средний
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/10

SELECT *
FROM Trip
WHERE Trip.time_out BETWEEN '1900-01-01 10:00:00' AND '1900-01-01 14:00:00';

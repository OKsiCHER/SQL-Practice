-- Задача: Удалить все перелеты, совершенные из Москвы (Moscow)
-- Уровень: Легкий
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/56

DELETE FROM Trip
WHERE town_from = 'Moscow';

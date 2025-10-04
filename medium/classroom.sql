-- Задача: Сколько различных кабинетов школы использовались 2 сентября 2019 года для проведения занятий?
-- Уровень: Средний
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/35

SELECT COUNT(DISTINCT(classroom)) as count
FROM Schedule
WHERE date = '2019-09-02';

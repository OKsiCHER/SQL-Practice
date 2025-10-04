-- Задача: Сколько рейсов совершили авиакомпании из Ростова (Rostov) в Москву (Moscow)?
-- Уровень: Легкий
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/28

SELECT COUNT(*) as count
FROM Trip
WHERE town_from = 'Rostov'
	AND town_to = 'Moscow';

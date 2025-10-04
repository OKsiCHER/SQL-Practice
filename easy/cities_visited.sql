-- Задача: В какие города летал Bruce Willis
-- Уровень: Легкий
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/14

SELECT t.town_to
FROM Trip AS t
	LEFT JOIN Pass_in_trip AS pt ON t.id = pt.trip
	LEFT JOIN Passenger AS p ON pt.passenger = p.id
WHERE p.name = 'Bruce Willis'
GROUP BY t.town_to;

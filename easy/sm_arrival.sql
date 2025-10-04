-- Задача: Выведите идентификатор пассажира Стив Мартин (Steve Martin) и дату и время его прилёта в Лондон (London)
-- Уровень: Легкий
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/15

SELECT p.id,
	t.time_in
FROM Trip AS t
	LEFT JOIN Pass_in_trip AS pt ON t.id = pt.trip
	LEFT JOIN Passenger AS p ON pt.passenger = p.id
WHERE p.name = 'Steve Martin'
	AND t.town_to = 'London';

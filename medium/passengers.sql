-- Задача: Вывести отсортированный по количеству перелетов (по убыванию) и имени (по возрастанию) список пассажиров, совершивших хотя бы 1 полет
-- Уровень: Средний
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/16
SELECT p.name,
	COUNT(pt.id) as count
FROM Passenger as p
	INNER JOIN Pass_in_trip as pt ON p.id = pt.passenger
GROUP BY p.name
ORDER BY COUNT(pt.id) DESC,
	p.name;

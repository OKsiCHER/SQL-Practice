-- Задача: Выведите название страны, где находится город «Salzburg»
-- Уровень: Легкий
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/109

SELECT cr.name AS country_name
FROM Cities AS c
	LEFT JOIN Regions AS r ON c.regionid = r.id
	LEFT JOIN Countries AS cr ON r.countryid = cr.id
WHERE c.name = 'Salzburg';

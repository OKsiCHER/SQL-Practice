-- Задача: Выведите идентификатор и признак наличия интернета в помещении. Если интернет в сдаваемом жилье присутствует, то выведите «YES», иначе «NO»
-- Уровень: Легкий
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/74
SELECT id,
	CASE
		WHEN has_internet = 1 THEN 'YES'
		ELSE 'NO'
	END as has_internet
FROM Rooms;

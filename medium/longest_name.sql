-- Задача: Выведите пассажиров с самым длинным ФИО. Пробелы, дефисы и точки считаются частью имени.
-- Уровень: Средний
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/11
  
SELECT name
FROM Passenger
WHERE CHARACTER_LENGTH(name) = (
		SELECT MAX(CHARACTER_LENGTH(name))
		FROM Passenger
	);

-- Задача: Выведите фамилию, имя и дату рождения студентов, кто был рожден в мае
-- Уровень: Легкий
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/75

SELECT last_name,
	first_name,
	birthday
FROM Student
WHERE EXTRACT(
		MONTH
		FROM birthday
	) = 05;

-- Задача: Сколько обучающихся в 10 B классе?
-- Уровень: Легкий
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/39

SELECT COUNT(s.id) as count
FROM Student_in_class AS s
	LEFT JOIN Class AS c ON s.class = c.id
WHERE c.name = '10 B';

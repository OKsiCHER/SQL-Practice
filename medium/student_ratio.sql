-- Задача: Какой процент обучающихся учится в "10 A" классе? 
Выведите ответ в диапазоне от 0 до 100 с округлением до четырёх знаков после запятой, например, 96.0201
-- Уровень: Средний
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/49

SELECT ROUND(
		(
			SELECT COUNT(sc.student)
			FROM Student_in_class as sc
				JOIN Class as c ON sc.class = c.id
			WHERE c.name = '10 A'
		) / COUNT(*) * 100,
		4
	) as percent
FROM Student_in_class;

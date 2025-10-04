-- Задача: Выведите имя самого старшего человека. Если таких несколько, то выведите их всех
-- Уровень: Средний
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/18

SELECT member_name
FROM FamilyMembers
WHERE birthday =(
		SELECT MIN(birthday)
		FROM FamilyMembers
	)

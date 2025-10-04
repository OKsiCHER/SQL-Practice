-- Задача: Найдите самый дорогой деликатес (delicacies) и выведите его цену
-- Уровень: Средний
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/23

SELECT p.unit_price,
	g.good_name
FROM Payments as p
	JOIN Goods as g ON p.good = g.good_id
	JOIN GoodTypes as gt ON g.type = gt.good_type_id
WHERE gt.good_type_name = 'delicacies'
ORDER BY p.unit_price DESC
LIMIT 1;

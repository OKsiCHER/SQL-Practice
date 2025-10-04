-- Задача: Определить группы товаров, которые не приобретались в 2005 году
-- Уровень: Средний
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/26

SELECT good_type_name
FROM GoodTypes
WHERE good_type_name NOT IN (
		SELECT gt.good_type_name
		FROM GoodTypes as gt
			JOIN Goods as g ON gt.good_type_id = g.type
			JOIN Payments as p ON g.good_id = p.good
		WHERE YEAR(p.date) = 2005
		GROUP BY gt.good_type_name
	);

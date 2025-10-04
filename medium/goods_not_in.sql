-- Задача: Определить, какие товары не покупались в 2005 году
-- Уровень: Средний
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/25

SELECT good_name
FROM Goods
WHERE good_name NOT IN (
		SELECT good_name
		FROM Goods as g
			JOIN Payments as p ON g.good_id = p.good
		WHERE EXTRACT(
				YEAR
				FROM p.date
			) = 2005
	);

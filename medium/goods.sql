-- Задача: Определить товары, которые покупали более 1 раза
-- Уровень: Средний
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/21

SELECT g.good_name
FROM Goods as g
	JOIN Payments as p ON g.good_id = p.good
GROUP BY good
HAVING COUNT(p.amount) > 1;

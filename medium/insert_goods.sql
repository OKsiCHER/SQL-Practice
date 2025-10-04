-- Задача: Добавьте товар с именем "Cheese" и типом "food" в список товаров (Goods)
-- Уровень: Средний
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/51
  
INSERT INTO Goods(good_id, good_name, type)
VALUES (
		(
			SELECT COUNT(*) + 1 as count
			FROM Goods as g
		),
		'Cheese',
		(
			SELECT g.type
			FROM Goods as g
				JOIN GoodTypes as gt ON g.type = gt.good_type_id
			WHERE gt.good_type_name = 'food'
			GROUP BY g.type
		)
	);

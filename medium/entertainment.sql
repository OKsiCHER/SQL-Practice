-- Задача: Сколько и кто из семьи потратил на развлечения (entertainment). Вывести статус в семье, имя, сумму
-- Уровень: Средний
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/20

SELECT fm.status,
	fm.member_name,
	SUM(p.unit_price * p.amount) AS costs
FROM FamilyMembers as fm
	JOIN Payments as p ON fm.member_id = p.family_member
	JOIN Goods as g ON p.good = g.good_id
	JOIN GoodTypes as gt ON g.type = gt.good_type_id
WHERE gt.good_type_name = 'entertainment'
GROUP BY family_member;

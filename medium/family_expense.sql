-- Задача: Определить, сколько потратил в 2005 году каждый из членов семьи. В результирующей выборке не выводите тех членов семьи, которые ничего не потратили
-- Уровень: Средний
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/17

SELECT fm.member_name,
	fm.status,
	SUM(p.unit_price * p.amount) as costs
FROM FamilyMembers AS fm
	INNER JOIN Payments AS p ON fm.member_id = p.family_member
WHERE EXTRACT(
		YEAR
		FROM p.date
	) = 2005
GROUP BY p.family_member;

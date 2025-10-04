-- Задача: Вывести список комнат со всеми удобствами (наличие ТВ, интернета, кухни и кондиционера), 
а также общее количество дней и сумму за все дни аренды каждой из таких комнат
-- Уровень: Средний
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/66

SELECT r.home_type,
	r.address,
	IFNULL(SUM(total / rs.price), 0) as days,
	IFNULL(SUM(rs.total), 0) as total_fee
FROM Rooms as r
	LEFT JOIN Reservations as rs ON r.id = rs.room_id
WHERE has_tv = 1
	AND has_internet = 1
	AND has_kitchen = 1
	AND has_air_con = 1
GROUP BY r.home_type,
	r.address;

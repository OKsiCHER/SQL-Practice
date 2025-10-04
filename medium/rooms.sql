-- Задача: Выведите список комнат, которые были зарезервированы хотя бы на одни сутки в 12-ую неделю 2020 года. 
В данной задаче в качестве одной недели примите период из семи дней, первый из которых начинается 1 января 2020 года. 
Например, первая неделя года — 1–7 января, а третья — 15–21 января
-- Уровень: Средний
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/61

SELECT Rooms.*
FROM Rooms
	JOIN Reservations on rooms.id = reservations.room_id
WHERE start_date >= '2020-01-01' + INTERVAL 11 WEEK
	and start_date < '2020-01-01' + INTERVAL 12 WEEK

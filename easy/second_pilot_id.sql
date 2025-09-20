-- Задача: Напишите запрос, который выведет имена пилотов, которые в качестве второго пилота (second_pilot_id) в августе 2023 года летали в New York
-- Уровень: Легкий
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/114

SELECT p.name
FROM Pilots as p
LEFT JOIN Flights AS f ON p.pilot_id = f.second_pilot_id
WHERE f.flight_date BETWEEN '2023-08-01' AND '2023-08-31'
AND f.destination = 'New York';

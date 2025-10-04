-- Задача: Вывести имена людей, у которых есть полный тёзка среди пассажиров
-- Уровень: Средний
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/13
  
SELECT name
FROM Passenger
GROUP BY name
HAVING COUNT(name) >= 2;

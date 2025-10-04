-- Задача: Вывести в порядке убывания популярности доменные имена 2-го уровня, используемые пользователями для электронной почты. 
Полученный результат необходимо дополнительно отсортировать по возрастанию названий доменных имён
-- Уровень: Средний
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/62

SELECT SUBSTRING_INDEX(email, '@', -1) as domain,
	COUNT(*) as count
FROM Users
GROUP BY domain
ORDER BY count DESC,
	domain;

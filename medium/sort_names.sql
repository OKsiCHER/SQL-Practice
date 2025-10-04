-- Задача: Выведите отсортированный список (по возрастанию) фамилий и имен студентов в виде Фамилия.И.
-- Уровень: Средний
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/63

SELECT CONCAT(last_name, '.', LEFT(first_name, 1), '.') as name
FROM Student
ORDER BY name;

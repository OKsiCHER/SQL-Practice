-- Задача: Вывести список имён сотрудников, получающих большую заработную плату, чем у непосредственного руководителя
-- Уровень: Легкий
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/103

SELECT i.name
FROM Employee as i
	LEFT JOIN Employee AS ci ON ci.id = i.chief_id
WHERE i.salary > ci.salary;

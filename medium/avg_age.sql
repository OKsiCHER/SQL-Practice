-- Задача: Вывести средний возраст людей (в годах), хранящихся в базе данных. Результат округлите до целого в меньшую сторону
-- Уровень: Средний
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/32

SELECT FLOOR(AVG(TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE))) as age
FROM FamilyMembers;

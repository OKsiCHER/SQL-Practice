-- Задача: Измените имя "Andie Quincey" на новое "Andie Anthony"
-- Уровень: Легкий
-- Ссылка на задачу: https://sql-academy.org/ru/trainer/tasks/53

UPDATE FamilyMembers
SET member_name = "Andie Anthony"
WHERE member_name = "Andie Quincey";

SELECT * FROM sem3_dz3.staff;

-- Отсортируйте данные по полю заработная плата (salary) в порядке: возрастания

SELECT * FROM staff ORDER BY sallary ASC

-- Отсортируйте данные по полю заработная плата (salary) в порядке: убывания
SELECT * FROM staff ORDER BY sallary DESC 

-- Выведите 5 максимальных заработных плат (salary)
SELECT * FROM (SELECT * FROM staff ORDER BY sallary DESC LIMIT 5) AS sallary ORDER BY sallary;

-- Посчитайте суммарную зарплату (salary) по каждой специальности (роst)

SELECT COUNT(lastname), post,
GROUP_CONCAT(lastname),
SUM(salary) AS "сумма зарплат по должности"
FROM staff
GROUP BY post;

-- Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.

SELECT * FROM staff
WHERE age >= 24 && age <= 49  AND post = "Рабочий"
ORDER BY salary;

-- Найдите количество специальностей
SELECT COUNT(DISTINCT post) FROM staff;

-- Выведите специальности, у которых средний возраст сотрудников меньше 30 лет (включительно)
SELECT AVG(age)
FROM staff;

SELECT * FROM staff
WHERE age < (SELECT AVG(age) FROM staff);

SELECT * FROM staff;
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

SELECT * FROM activity_staff;
-- Выведите id сотрудников, которые напечатали более 500 страниц за всех дни
SELECT COUNT(staff_id), 
GROUP_CONCAT(staff_id),
SUM(count_pages) AS "сумма страниц" 
FROM activity_staff
GROUP BY staff_id;

-- Выведите дни, когда работало более 3 сотрудников. 
SELECT date_activity 
FROM activity_staff
GROUP BY date_activity
HAVING COUNT(*) >= 3;

-- Также укажите кол-во сотрудников, которые работали в выбранные дни


-- Выведите среднюю заработную плату по должностям
SELECT AVG(salary), post
FROM staff
GROUP BY post

-- Выведите среднюю заработную плату по должностям, которая составляет более 30000







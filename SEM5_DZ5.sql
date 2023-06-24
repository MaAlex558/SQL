CREATE TABLE cars
(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);

INSERT cars
VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
    
SELECT * FROM cars;

-- Создайте представление, в которое попадут автомобили стоимостью до 25 000 долларов
Create view CheapCars as
select name 
from cars
where cost < 25000;
    

-- Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW)
ALTER VIEW CheapCars AS
SELECT * FROM Cars
WHERE cost < 30000;

-- Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди” (аналогично)
CREATE VIEW Cars_limits AS
SELECT id, name, cost 
FROM cars
WHERE name = `Skoda` and name = `Audi`;

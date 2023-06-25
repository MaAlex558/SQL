-- Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов

delimiter $$
CREATE FUNCTION sec_to_time(val INT) -- Колво секунд
RETURNS VARCHAR(40)
DETERMINISTIC
BEGIN
DECLARE dd, hh, mi, ss VARCHAR(20);
DECLARE result INT(20);
set dd = cast(floor(val/60/60/24) as char(10));
set hh = cast(floor(mod(val/60/60/24,1)*24) as char(2));
set mi = cast(floor(mod(mod(val/60/60/24,1)*24,1)*60) as char(2));
set ss = cast(round(mod(mod(mod(val/60/60/24,1)*24,1)*60,1)*60) as char(2));
set result = concat(dd,'.',hh,':',mi,':',ss);
return result;
end;
select sectotime(18400000) dt from dual;
END $$
delimiter ;

SELECT sec_to_time(123456);


-- Создайте процедуру которая, выводит только четные числа от 1 до 10.

delimiter //
CREATE PROCEDURE num()
BEGIN
    DECLARE x INT default 0;
    CREATE TABLE numbers (x INT);
    WHILE x < 10 do
    SET x = x + 2;
    INSERT INTO numbers VALUES(x);
    END WHILE;

SELECT * FROM numbers;
END //
delimiter ;

CALL num();


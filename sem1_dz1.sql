SELECT * FROM sem1_dz1.mobile_db;

-- 2. Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT mobile_name, produce_company, price, quantity 
FROM mobile_db
WHERE quantity > 2;

-- 3. Выведите весь ассортимент товаров марки “Samsung”
SELECT * FROM mobile_db 
WHERE produce_company = 'Samsung'


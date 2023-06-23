
select * from shops;
select * from cats;
-- Вывести всех котиков по магазинам по id (условие соединения shops.id = cats.shops_id)
select name, shopname
from shops, cats
where shops.id = cats.shops_id;

SELECT cats.name, shops.shopname
FROM cats
JOIN shops ON shops.id = cats.shops_id;

-- Вывести магазин, в котором продается кот “Мурзик” (попробуйте выполнить 2 способами)
SELECT shops.shopname
FROM shops
INNER JOIN cats
ON shops.id = cats.shops_id
WHERE cats.name = "Murzik";

-- Вывести магазины, в которых НЕ продаются коты “Мурзик” и “Zuza”

SELECT shops.shopname
FROM shops
INNER JOIN cats
ON shops.id = cats.shops_id
WHERE cats.name != "Murzik" and cats.name != "Zuza";

-- в ответе выводит магазин Четрые латы, но это по коту Vicont я думаю?

-- Вывести название и цену для всех анализов, которые продавались 5 февраля 2020 и всю следующую неделю.

SELECT an_name, an_price
FROM analysis
JOIN orders 
ON analysis.an_id = orders.ord_an
WHERE ord_datetime  BETWEEN '2020-02-05' AND '2020-02-12';




use shop_example;

SELECT * FROM product;
SELECT count(*) FROM product where product.price < 10000;
SELECT sum(price) as total_price, min(price) as min_price, max(price) as max_price FROM product;

-- Домашнее задание.1 -  Добавит Петру в корзиу несколько товаров, а затем написать 2 sql запроса 2 - вывести суммарную стоимость заказа Василия
-- 3 - вывести суммарную стоимость заказа Петра

-- 1
insert into order_products (order_id, products_id, count) value (2,4,3); 
insert into order_products (order_id, products_id, count) value (2,2,1); 

-- 2

select sum(price * count) as Total_price from order_
	right join order_products on order_products.order_id = order_.id
    right join product on order_products.order_id = product.id
    where order_products.order_id = 1;

-- 3

select sum(price * count) as Total_price from shop.order
	right join order_products on order_products.order_id = shop.order.id
    right join product on order_products.order_id = product.id
    where order_products.order_id = 2;
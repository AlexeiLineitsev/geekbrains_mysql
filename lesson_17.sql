use shop_example;

-- Агрегирующие функции 1.count, 2.sum, 3.max, 4.min

SELECT * FROM product;
SELECT count(*) FROM product where product.price < 10000;

-- Сумма всеx столбцов price, min, max
select sum(price) as Можно_менять_название, min(price) as минимум, max(price) as максимум from product;

select order_.id, order_.user_name, sum(order_products.count) as count_products, sum( price * count) as total_price  from order_
	inner join order_products on order_products.order_id = order_.id
    inner join product on order_products.products_id = product.id
    group by order_.user_name;


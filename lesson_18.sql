use shop_example;

insert into order_products (order_id, products_id, `count`) values (2, 3, 2);
insert into order_products (order_id, products_id, `count`) values (2, 1, 3);

SELECT * FROM shop.order_;

SELECT sum(price * `count`) as total_price from order_
	inner join order_products on order_products.order_id = order_.id
    inner join product on product.id = order_products.products_id
    where order_.id = 2;
    
SELECT order_.user_name, sum(price * `count`) as total_price  from order_ 
	inner join order_products on order_products.order_id = order_.id
    inner join product on product.id = order_products.products_id
    group by order_.user_name;
    
SELECT order_.user_name, max(price)  from order_ 
	inner join order_products on order_products.order_id = order_.id
    inner join product on product.id = order_products.products_id
    group by order_.user_name;
    

use shop_example;

-- Добавим еще один заказ для следующего задания        
insert into order_ (user_name, phone, datetime) value ('Петр', '+7-951-789-62-44', '2016-05-28');

-- UNION склеивание запросов

select * from product_type where id = 1
UNION
select * from product_type where id = 2;


select * from order_
	left join order_products on order_products.order_id = order_.id
    left join product on order_products.products_id = product.id
    
UNION

select * from order_	
	inner join order_products on order_products.order_id = order_.id
    right join product on order_products.products_id = product.id
    where order_.id is null;
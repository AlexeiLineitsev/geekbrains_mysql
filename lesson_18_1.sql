use shop;

SELECT * FROM order_;
 
SELECT order_.user_name, max(price), sum(`count`) as order_count from order_ 
	inner join order_products on order_products.order_id = order_.id
    inner join product on product.id = order_products.products_id;
    -- where user_name like 'В%'    
    -- group by order_.user_name
--    having order_count >= 5; 
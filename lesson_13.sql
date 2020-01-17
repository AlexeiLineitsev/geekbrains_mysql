use shop;

SELECT * FROM product;
-- Выбрать всю информацию из из таблицы category у которых id 1 или 3 или 2
SELECT * FROM category WHERE id = 1 OR id = 3 OR id = 2;
-- Продолжаем выбирать информацию фильтруя ее....
SELECT * FROM category WHERE id >= 1 AND id <=3;
SELECT * FROM category WHERE id IN (1, 2, 3);


-- INNER JOIN - соединяет две таблицы

select * from product 
	inner join category on product.category_id = category.id;
    
select product.id, price, name from product  
	inner join category on product.category_id = category.id; 
    
select * from category  
	 inner join product on product.category_id = category.id;
     

select * from product  
	inner join category on product.category_id = category.id
    where discount <= 5;
    -- where price < 10000;
    
    
select * from product  
	inner join category on product.category_id = category.id 
    inner join brand on brand.id = product.brand_id
    inner join product_type on product_type.id = product.product_type_id;
    
select product.id, brand.name, product_type.name, category.name, product.price from product  
	inner join category on product.category_id = category.id 
    inner join brand on brand.id = product.brand_id
    inner join product_type on product_type.id = product.product_type_id; 

-- Вывести полную информацию о товаре для всех футболок
    select product.id, brand.name as Брэнды , product_type.name as Тип, category.name as Категория, product.price as Цена  from product 
	inner join brand on product.brand_id = brand.id
    inner join product_type on product.category_id = product_type.id
    inner join category on product.category_id = category.id
    where product.product_type_id = 2;
    
    
    

    
    


use shop_example;

-- LEFT JOIN, RIGHT JOIN осуществляет формирование таблицы из записей двух или нескольких таблиц, 
-- важен порядок следования таблиц, так как от этого будет зависеть полученный результат. Алгоритм работы оператора следующий:
-- Сначала происходит формирование таблицы внутренним соединением (оператор SQL INNER JOIN) левой и правой таблиц
-- Затем, в результат добавляются записи левой или правой таблицы не вошедшие в результат формирования таблицы внутренним соединением. Для них, 
-- соответствующие записи из правой таблицы заполняются значениями NULL и наоборот.

select * from category
	left join product on product.category_id = category.id;
    
select * from category
	left join product on product.category_id = category.id
    where product.id is null;
    
select * from category
	right join product on product.category_id = category.id
    where product.id is null;    
    
-- Вывести все типы товаров, для которых нет ни одного товара в нашем интернет магазине
select * from product_type 
	left join product on product.product_type_id = product_type.id
    where product.product_type_id is null;
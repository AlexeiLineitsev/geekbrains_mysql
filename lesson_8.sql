USE shop_example;

-- UPDATE, меняет значение в таблицу с заданными условиями
-- Меняем название в таблице category у id=3 на Головные уборы
UPDATE category SET name = 'Головные уборы' WHERE id = 3;

-- Выбираем все столбцы в category
SELECT * FROM category;

-- Меняем discount в category у id = 2, 5 на 3
UPDATE category SET discount = 3 WHERE id IN ( 2 , 5 );

-- DELETE
-- Удаляем из category id = 5
DELETE FROM category WHERE id = 5;

-- С помощью команды UPDATE заполнить alias_name для всех категорий
UPDATE category SET alias_name = 'Marc  O''Polo' WHERE id = 1;
UPDATE category SET alias_name = 'ALCOTT' WHERE id = 3;
UPDATE category SET alias_name = 'GUESS' WHERE id = 4;

-- Добавить новый бренд Тетя Клава company и удалить его
INSERT INTO brand (name) VALUES ('Тетя Клава company');
DELETE FROM brand WHERE id = 4;




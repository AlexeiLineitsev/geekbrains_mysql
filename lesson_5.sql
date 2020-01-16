use shop_example;
-- Автоинкремент, для следующей строки автоматического увелечения идентификатора
ALTER TABLE `shop_example`.`category` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ;

-- Заполняем таблицу category
INSERT INTO category (name, discount, alias_name) VALUES ('Женская обувь', 10, NULL);
INSERT INTO category (name, discount, alias_name) VALUES ('Мужская обувь', 15, 'man''s shoes');
INSERT INTO category (name, discount) VALUES ('Шляпы', 0);
INSERT INTO category (name, discount) VALUES ('Женская одежда', '5');
INSERT INTO category (name, discount) VALUES ('Мужская одежда', '0');

-- Заполняем таблицу brand

INSERT INTO brand (name) VALUES ('Marc  O''Polo');
INSERT INTO brand (name) VALUES ('ALCOTT');
INSERT INTO brand (name) VALUES ('GUESS');


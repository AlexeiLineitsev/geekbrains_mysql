-- создание базы данных shop_example

CREATE SCHEMA `shop_example_example` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;

-- отобразить все базы данных
 show databases;

-- работать с указанной базой данных (после выполнения этой команды вместо `shop_example`.`category` можно будет писать просто category )
use shop_example;

-- создание таблицы "категория товаров"

CREATE TABLE `shop_example`.`category` (
  
  `id` INT NOT NULL,
  
  `name` VARCHAR(128) NOT NULL,
  
  `discount` TINYINT NOT NULL,
  
PRIMARY KEY (`id`));

-- добавление нового столбца
ALTER TABLE `shop_example`.`category` 
	ADD COLUMN `alias_name` VARCHAR(128) NULL AFTER `discount`;

-- посмотреть структуру таблицы
SHOW COLUMNS FROM category;

-- удалить таблицу
DROP TABLE `shop_example`.`category`;

-- удалить базу данных
DROP DATABASE `shop_example`;


-- Создание таблички брэнд

CREATE TABLE `shop_example`.`brand` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`));

-- Создание таблички Тип товара
CREATE TABLE `shop_example`.`product_type` (
  `id` INT NOT NULL,
  `name` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`));
  
  

use shop_example;

CREATE TABLE `shop_example`.`product` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `brand_id` INT NOT NULL,
  `product_type_id` INT NOT NULL,
  `category_id` INT NOT NULL,
  `price` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`id`));

SELECT * FROM shop_example.product;

INSERT INTO product (brand_id, product_type_id, category_id, price) VALUE (1, 1, 1, 8999);

-- Делаем связи в таблице

ALTER TABLE `shop_example`.`product` 
ADD INDEX `fk_brand_product_idx` (`brand_id` ASC) VISIBLE,
ADD INDEX `fk_category_product_idx` (`category_id` ASC) VISIBLE,
ADD INDEX `fk_product_type_product_idx` (`product_type_id` ASC) VISIBLE;
;
ALTER TABLE `shop_example`.`product` 
ADD CONSTRAINT `fk_brand_product`
  FOREIGN KEY (`brand_id`)
  REFERENCES `shop_example`.`brand` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_product_type_product`
  FOREIGN KEY (`product_type_id`)
  REFERENCES `shop_example`.`product_type` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_category_product`
  FOREIGN KEY (`category_id`)
  REFERENCES `shop_example`.`category` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;

-- Создаем таблицу корзина
CREATE TABLE `shop_example`.`order` (
  `id` INT NOT NULL,
  `user_name` VARCHAR(128) NOT NULL,
  `phone` VARCHAR(32) NOT NULL,
  `datetime` DATETIME NOT NULL,
  PRIMARY KEY (`id`));
 
 -- Переименуем order т.к в sql его использует
ALTER TABLE `shop_example`.`order` 
RENAME TO  `shop_example`.`order_` ;
  
-- Делаем в корзину записи
INSERT INTO order_ (user_name, phone, datetime) VALUE ('Василий','+7-999-999-99-99','2016-05-09 14:20');

SELECT * FROM shop_example.order_;
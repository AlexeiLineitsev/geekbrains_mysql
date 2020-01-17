use shop_example;
-- Создаем таблицу заказов

CREATE TABLE `shop_example`.`order_products` (
  `order_id` INT(11) NOT NULL,
  `products_id` INT(11) NOT NULL,
  `count` INT(11) NOT NULL,
  PRIMARY KEY (`order_id`, `products_id`));
  
  -- Добавляем внешние ключи в таблицу order_products
  ALTER TABLE `shop_example`.`order_products` 
ADD INDEX `fk_order_products_product_idx` (`products_id` ASC) VISIBLE;
;
ALTER TABLE `shop_example`.`order_products` 
ADD CONSTRAINT `fk_order_products_order`
  FOREIGN KEY (`order_id`)
  REFERENCES `shop_example`.`order_` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_order_products_product`
  FOREIGN KEY (`products_id`)
  REFERENCES `shop_example`.`product` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

-- Добавим товары в product
INSERT INTO `shop_example`.`product` (`id`, `brand_id`, `product_type_id`, `category_id`, `price`) VALUES ('2', '1', '2', '1', '7999.00');
INSERT INTO `shop_example`.`product` (`id`, `brand_id`, `product_type_id`, `category_id`, `price`) VALUES ('3', '2', '1', '3', '6999.00');

-- Добавим товары в корзину order_.id = 1
INSERT INTO `shop_example`.`order_products` (`order_id`, `products_id`, `count`) VALUES ('1', '1', '1');
INSERT INTO `shop_example`.`order_products` (`order_id`, `products_id`, `count`) VALUES ('1', '2', '3');



  
  
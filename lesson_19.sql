-- TRANSACTION - Транзакция является единственной единицей работы. Если транзакция выполнена успешно, все модификации данных, 
-- сделанные в течение транзакции, принимаются и становятся постоянной частью базы данных. Если в результате выполнения транзакции 
-- происходят ошибки и должна быть произведена отмена или выполнен откат, все модификации данных будут отменены.

insert into `shop_example`.`user_bank_account` (id, money, user_name) values ('1', '100', 'Дмитрий');
insert into `shop_example`.`user_bank_account` (id, money, user_name) values ('2', '200', 'Евгений');

select * from `shop_example`.`user_bank_account`;

start transaction;
	update `shop_example`.`user_bank_account` set money = money - 100 where id = 1;
    update `shop_example`.`user_bank_account` set money = money + 100 where id = 2;
commit;
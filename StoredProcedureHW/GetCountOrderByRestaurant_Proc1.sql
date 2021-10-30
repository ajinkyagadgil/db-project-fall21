DROP PROCEDURE IF EXISTS get_count_order_by_restaurant;
DELIMITER $$
CREATE PROCEDURE get_count_order_by_restaurant(IN res_id  INT, OUT count_orders INT)
    BEGIN
		SELECT COUNT(*) 
        INTO count_orders
        FROM campus_eats_fall2020.order 
        WHERE restaurant_id = res_id;
	END$$

CALL get_count_order_by_restaurant(5,@count_orders);
SELECT @count_orders as orders_count;



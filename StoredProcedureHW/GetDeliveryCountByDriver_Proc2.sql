DROP PROCEDURE IF EXISTS get_driver_delivery_count;
DELIMITER $$
CREATE PROCEDURE get_driver_delivery_count(IN driverId  INT, OUT count_delivery INT)
    BEGIN
		SELECT COUNT(*) 
        INTO count_delivery
        FROM campus_eats_fall2020.delivery 
        WHERE driver_id = driverId;
	END$$

CALL get_driver_delivery_count(4,@count_delivery);
SELECT @count_delivery as 'Number of deliveries';
DROP PROCEDURE IF EXISTS get_restaurant_rating_by_restaurant;
DELIMITER $$
CREATE PROCEDURE get_restaurant_rating_by_restaurant(IN restaurant_id INT, OUT res_id INT, OUT avg_rating FLOAT)
    BEGIN
		SELECT restaurant_id, AVG(ratingscore) 
        INTO res_id, avg_rating
        FROM campus_eats_fall2020.restaurant_rating
        WHERE restaurant_id = restaurant_id;
	END$$
    
CALL get_restaurant_rating_by_restaurant(101,@res_id, @avg_rating);
SELECT @res_id, @avg_rating;





DROP PROCEDURE IF EXISTS get_driver_rating_by_driver;
DELIMITER $$
CREATE PROCEDURE get_driver_rating_by_driver(IN driverid  INT, OUT d_id INT, OUT avg_driver_rating INT)
    BEGIN
		SELECT driver_id,AVG(ratingscore) 
        INTO d_id, avg_driver_rating
        FROM campus_eats_fall2020.driver_rating 
        WHERE driver_id = driverid;
	END$$
    
    
CALL get_driver_rating_by_driver(1,@driverId, @avg_driver_rating);
SELECT @driverId, @avg_driver_rating;

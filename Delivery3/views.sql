DROP VIEW IF EXISTS menu_availability ;
CREATE VIEW menu_availability AS 
SELECT rma.restaurant_menu_id,r.restaurant_id,m.menu_id,r.restaurant_name,
 m.menu_name FROM restaurant_menu_assoc as rma
INNER JOIN restaurant r 
ON rma.restaurant_id = r.restaurant_id
INNER JOIN menu m
ON rma.menu_id = m.menu_id  WHERE is_available = 'Y';

select * from menu_availability;






DROP VIEW IF EXISTS total_revenue;
CREATE VIEW total_revenue AS
SELECT res.restaurant_id,restaurant_name, SUM(total_price) AS total
 FROM campus_eats_fall2020.order AS ord INNER JOIN restaurant AS res 
 ON ord.restaurant_id=res.restaurant_id
 WHERE DATE(order_date) = current_date() GROUP BY restaurant_id;

select * FROM total_revenue
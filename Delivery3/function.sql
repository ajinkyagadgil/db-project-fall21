DELIMITER $$
CREATE FUNCTION max_driver_rating(
    RatingScore Float
)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
DECLARE driver_popularity VARCHAR(20);
IF RatingScore >= 4 THEN
		SET driver_popularity   = 'Gold rated';
    ELSEIF( RatingScore = 3) THEN
        SET driver_popularity = 'Silver rated';
    ELSEIF RatingScore < 3 THEN
        SET driver_popularity = 'Bronze Rated';
    END IF;
	RETURN (driver_popularity);
END$$
DELIMITER ;

SELECT 
    driver_id,
    avg(ratingscore) as avg_rating_score, max_driver_rating(avg(ratingscore)) as popularity
FROM
    driver_rating
GROUP BY 
    driver_id;













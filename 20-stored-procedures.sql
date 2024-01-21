USE metro_cdmx;

DELIMITER //
CREATE PROCEDURE calculate_distance_between_lines(
    IN stataion_one POINT,
    IN stataion_two POINT,
    IN meters BOOLEAN
)
BEGIN

    IF meters THEN
        SELECT
        ROUND(ST_Distance_Sphere(stataion_one, stataion_two), 3) AS distance;
    
    ELSE
        SELECT
        ROUND(ST_Distance_Sphere(stataion_one, stataion_two) / 1000, 3) AS distance;
    
    END IF;

END //

DELIMITER ;


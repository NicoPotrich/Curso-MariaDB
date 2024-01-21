USE metro_cdmx;

DELIMITER //
CREATE PROCEDURE get_line_stations(
    IN line_name VARCHAR(15)
)
BEGIN

    -- Esta es una forma de guardar valores de una consulta dentro de una variable
    DECLARE line_id BIGINT(20); -- Aca declaramos la variable
    
    SELECT id
    INTO line_id -- Aca estamos metiendo la consulta dentro de la variable
    FROM `lines`
    WHERE `name` = `line_name`
    COLLATE utf8mb4_unicode_ci;
    
    -- Esta es otra forma de guardar valores de una consulta dentro de una variable
    
    SET @sql = CONCAT(
        "SELECT
            `lines_stations`.`id` AS relation_id,
            `lines`.`name` AS line_name,
            `stations`.`name` AS station_name
        FROM `lines_stations`
        INNER JOIN `stations`
        ON `stations`.`id` = `lines_stations`.`station_id`
        INNER JOIN `lines`
        ON `lines`.`id` = `lines_stations`.`line_id`
        WHERE `lines_stations`.`line_id` = ", line_id);
    
    PREPARE stmt FROM @sql; -- Convertimos el texto de arriba en codigo SQL
    EXECUTE stmt; -- Ejecutamos la consuta que devuelve las estaciones de la linea del metro
    DEALLOCATE PREPARE stmt; -- Eliminamos la consulta de la memoria

END //

DELIMITER ;


USE metro_cdmx;

-- Calculamos en metros con datos quemados
SELECT
ROUND(ST_Distance_Sphere(
    POINT (-99.14912224, 19.42729875),
    POINT (-99.13303971, 19.42543703)
), 3) AS 'distance(mts)';


-- Calculamos en kilometros con datos quemados
SELECT
ROUND(ST_Distance_Sphere(
    POINT (-99.14912224, 19.42729875),
    POINT (-99.13303971, 19.42543703)
) / 1000, 3) AS 'distance(kms)';


-- Calculamos en kilometros con consultas anidadas (53 - Constituyentes, 68 - Auditorio)
SELECT 
ROUND(ST_Distance_Sphere(
    (
        SELECT `locations`.`location` 
        FROM locations 
        INNER JOIN `stations`
        ON `stations`.`id` = `locations`.`station_id`
        WHERE `stations`.`name` = 'Constituyentes'
    ),
    (
        SELECT `locations`.`location` 
        FROM locations 
        INNER JOIN `stations`
        ON `stations`.`id` = `locations`.`station_id`
        WHERE `stations`.`name` = 'Auditorio'
    )
    ) / 1000, 3
) AS 'distance(kms)';


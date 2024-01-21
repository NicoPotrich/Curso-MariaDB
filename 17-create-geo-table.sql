-- Creacion de la tabla de locations

USE metro_cdmx;

CREATE TABLE `locations`(
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `station_id` BIGINT(20) UNSIGNED NOT NULL,
    `location` POINT NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id),

    CONSTRAINT `locations_station_id_fk`
    FOREIGN key (`station_id`) REFERENCES `stations`(`id`)
)

DEFAULT CHARSET=utf8mb4 
COLLATE=utf8mb4_unicode_ci; 
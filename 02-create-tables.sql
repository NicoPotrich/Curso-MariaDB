-- Crear las tablas

USE metro_cdmx;

CREATE TABLE `lines` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(10) NOT NULL,
    `color` VARCHAR(15) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id)
)
DEFAULT CHARSET=utf8mb4 
-- CHARSET nos dice que caracteres podemos guardar en la db
COLLATE=utf8mb4_unicode_ci; 
-- COLLATE compara los caracteres de la db con los carateres que le pasemos
;
CREATE TABLE `stations` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id)
)
DEFAULT CHARSET=utf8mb4 
COLLATE=utf8mb4_unicode_ci; 

;
CREATE TABLE `trains` (
    `serial_number` VARCHAR(10) NOT NULL,
    -- `line_id` BIGINT(20) UNSIGNED NOT NULL, (creamos con alter table)
    `type` TINYINT(4) NOT NULL,
    `year` INT(4) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (serial_number)
    -- CONSTRAINT `trains_line_id_foreign` (creamos con alter table)
    -- FOREIGN KEY(`line_id`) REFERENCES `lines`(`id`) (creamos con alter table)
)
DEFAULT CHARSET=utf8mb4 
COLLATE=utf8mb4_unicode_ci

;
CREATE TABLE `stations_delete` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id)
)
DEFAULT CHARSET=utf8mb4 
COLLATE=utf8mb4_unicode_ci; 
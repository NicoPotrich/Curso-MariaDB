USE metro_cdmx;

ALTER TABLE `trains`
ADD `line_id` BIGINT(20) UNSIGNED NOT NULL;
ADD CONSTRAINT `trains_line_id_foreign`
FOREIGN KEY (`line_id`) REFERENCES `lines`(`id`);

USE metro_cdmx;

CREATE TRIGGER update_updated_at_filed
BEFORE UPDATE
ON `lines`
FOR EACH ROW
SET NEW.updated_at = NOW();

CREATE TRIGGER update_updated_at_filed
BEFORE UPDATE
ON `lines_stations`
FOR EACH ROW
SET NEW.updated_at = NOW();

CREATE TRIGGER update_updated_at_filed
BEFORE UPDATE
ON `stations`
FOR EACH ROW
SET NEW.updated_at = NOW();

CREATE TRIGGER update_updated_at_filed
BEFORE UPDATE
ON `locations`
FOR EACH ROW
SET NEW.updated_at = NOW();

CREATE TRIGGER update_updated_at_filed
BEFORE UPDATE
ON `trains`
FOR EACH ROW
SET NEW.updated_at = NOW();


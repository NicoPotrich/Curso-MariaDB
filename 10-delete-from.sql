
USE metro_cdmx;

-- Modo DELETE FROM

DELETE FROM `stations_delete`;

-- prueba para ver que un 'DELETE FROM' NO reestablece los id;
INSERT INTO `stations_delete` (name) VALUES
("Lázaro Cárdens"), -- Lázaro Cárdenas
("Ferería"), -- Ferrería 
("Pnttlán"), -- Pantitlán
("Tauga"), -- Tacuba
("MartínCrrera"); -- Martín Carrera
-- Agrega las estaciones usando el ultimo indice que creó (no los reinicia debido al auto increment)

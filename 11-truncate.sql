USE metro_cdmx;

-- Modo TRUNCATE

TRUNCATE TABLE `stations_delete`;

-- prueba para ver que 'TRUNCATE' SI reinicia los id;
INSERT INTO `stations_delete` (name) VALUES
("Lázaro Cárdens"), -- Lázaro Cárdenas
("Ferería"), -- Ferrería 
("Pnttlán"), -- Pantitlán
("Tauga"), -- Tacuba
("MartínCrrera"); -- Martín Carrera


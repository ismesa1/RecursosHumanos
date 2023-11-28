SELECT * FROM recursoshumanos.usuarios;
select * from recursoshumanos.departamentos;
select * from recursoshumanos.areas;
select * from recursoshumanos.ciudades;
UPDATE `recursoshumanos`.`usuarios` SET `username` = 'admin', `pass` = '1234', `rol` = 'admin' WHERE (`id` = '1');
UPDATE `recursoshumanos`.`usuarios` SET `username` = 'isabel', `pass` = '1234', `rol` = 'entrevistador' WHERE (`id` = '2');

SELECT IF(
    EXISTS(
        SELECT 1 FROM `recursoshumanos`.`usuarios` WHERE username = 'admin' AND pass = '1234'
    ),
    (SELECT rol FROM `recursoshumanos`.`usuarios` WHERE username = 'admin' AND pass = 1234 LIMIT 1),
    'false'
) AS Resultado;

CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE ciudades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    iddep int
);

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    pass VARCHAR(255) NOT NULL
);

insert into usuarios (username, pass, rol) values ('admin', 1234, 'admin');

CREATE TABLE areas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL
);

insert into areas (descripcion) values
('Contabilidad'), 
('Presupuesto'), 
('Tesorería'), 
('Tecnología de Información y Comunicación'), 
('secretaria'), 
('Auxiliares');
DELETE FROM recursoshumanos.areas WHERE id = '7';
select * from recursoshumanos.areas;
INSERT INTO departamentos (id,nombre) VALUES (100,'juana');
INSERT INTO recursoshumanos.areas (id, descripcion) VALUES (68, 'Auxiliares');
INSERT INTO departamentos (nombre) VALUES
('Amazonas'),
('Antioquia'),
('Arauca'),
('Atlántico'),
('Bogotá'),
('Bolívar'),
('Boyacá'),
('Caldas'),
('Caquetá'),
('Casanare'),
('Cauca'),
('Cesar'),
('Chocó'),
('Córdoba'),
('Cundinamarca'),
('Guainía'),
('Guaviare'),
('Huila'),
('La Guajira'),
('Magdalena'),
('Meta'),
('Nariño'),
('Norte de Santander'),
('Putumayo'),
('Quindío'),
('Risaralda'),
('San Andrés y Providencia'),
('Santander'),
('Sucre'),
('Tolima'),
('Valle del Cauca'),
('Vaupés'),
('Vichada');



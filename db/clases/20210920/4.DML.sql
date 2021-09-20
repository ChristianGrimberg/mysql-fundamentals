-- INSERTAR REGISTROS A UNA TABLA
INSERT INTO curso_lunes.clientes
(
    cuit
    ,nombre
    ,apellido
)
VALUES
(
    '45-8392018-8'
    ,'pedro'
    ,'mendoza'
);

-- INSERTAR DATOS DE FORMA DINAMICA
SELECT * FROM curso_lunes.clientes;
INSERT INTO curso_lunes.clientes
VALUES (
    7
    ,'pedro'
    ,'mendoza'
    ,'32-8384018-0'
    ,NULL
    ,NULL
);

INSERT INTO curso_lunes.clientes
VALUES
    (0, 'maria', 'gimenez', '1-1234567-8', NULL, NULL)
    ,(0, 'jorge', 'moreno', '1-1934056-8', NULL, NULL)
    ,(0, 'moncho', 'capaldo', '1-2987398-8', NULL, NULL)
    ,(0, 'rosa', 'mueller', '1-3828738-8', NULL, NULL);

SELECT * FROM curso_lunes.clientes;

-- COPIAR DATOS A OTRA TABLA
DROP TABLE IF EXISTS curso_lunes.amigos;
CREATE TABLE curso_lunes.amigos (
    nombre VARCHAR(60)
    ,apellido VARCHAR(60)
);
DESCRIBE curso_lunes.amigos;

INSERT INTO curso_lunes.amigos (nombre, apellido)
SELECT nombre, apellido FROM curso_lunes.clientes;

SELECT * FROM curso_lunes.amigos;

-- TABLA DE BACKUP SIN PRIMARY AND UNIKE KEY & SIN AUTO_INCREMENT
DROP TABLE IF EXISTS curso_lunes.clientes_bk;
CREATE TABLE curso_lunes.clientes_bk
SELECT * FROM curso_lunes.clientes;

SELECT * FROM curso_lunes.clientes_bk;

ALTER TABLE curso_lunes.clientes_bk MODIFY idclientes INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE curso_lunes.clientes_bk MODIFY cuit VARCHAR(13) NOT NULL UNIQUE KEY;

-- COPIAR SOLO EL ESQUELETO DE UNA TABLA
DROP TABLE IF EXISTS curso_lunes.clientes_bk2;
CREATE TABLE curso_lunes.clientes_bk2 LIKE curso_lunes.clientes;
DESCRIBE curso_lunes.clientes_bk2;

-- ACTUALIZAR DATOS DE UNA TABLA
UPDATE curso_lunes.clientes
SET
    nombre = 'pepito'
    ,apellido = 'argent'
    ,cuit = '33-00990262-5'
    ,direccion = NULL
    ,comentario = 'Prueba de UPDATE'
WHERE idclientes = 4;

SELECT * FROM curso_lunes.clientes
WHERE idclientes = 4;

-- ELIMINAR REGISTROS DE UNA TABLA
DELETE FROM curso_lunes.clientes
WHERE idclientes IN (1,4,6);

TRUNCATE curso_lunes.clientes;

SELECT * FROM curso_lunes.clientes;

-- 
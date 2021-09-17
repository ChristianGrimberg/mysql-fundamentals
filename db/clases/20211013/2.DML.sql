-- DML Data Manipulation Language (Lenguaje de Manipulacion de Datos)
-- Query and filter data
SELECT *
FROM curso_lunes.clientes
WHERE apellido = 'perez';
-- Insert data into table
DESCRIBE curso_lunes.clientes;
INSERT INTO curso_lunes.clientes (cuit, nombre, apellido)
VALUES (
        '11-89897889-8',
        'fernanda',
        'quiroz'
    );
-- Other method of insert data into table
INSERT INTO curso_lunes.clientes
SET nombre = 'claudio',
    apellido = 'perez',
    cuit = '76-84586639-9',
    direccion = 'Parana 100',
    comentario = 'prueba de INSERT';
SELECT *
FROM curso_lunes.clientes;
-- Update a field
-- Modificar Juan por Carlos
SELECT *
FROM curso_lunes.clientes
WHERE idclientes = 1;
UPDATE curso_lunes.clientes
SET nombre = 'carlos'
WHERE idclientes = 1;
-- Remove a record
DELETE FROM curso_lunes.clientes
WHERE idclientes = 1;
SELECT *
FROM curso_lunes.clientes;
-- Allow remove more than one record and bypass 1175 error
SET sql_safe_updates = 1;

-- Rollback and commit(or autocommit) actions
SET autocommit = 0;
DELETE FROM curso_lunes.clientes
WHERE idclientes = 2;
DELETE FROM curso_lunes.clientes
WHERE idclientes = 3;
DELETE FROM curso_lunes.clientes
WHERE idclientes = 4;
SELECT *
FROM curso_lunes.clientes;
ROLLBACK;
SELECT *
FROM curso_lunes.clientes;
--COMMIT;
SET autocommit = 1;

-- DISTINCT clause
SELECT DISTINCT
    nombre
FROM curso_lunes.clientes;

-- Operators
/*
=
>
<
>=
<=
<>
!=
*/
SELECT * FROM curso_lunes.clientes
WHERE idclientes >= 3;

-- Logic Operators
SELECT * FROM curso_lunes.clientes
WHERE 
    idclientes = 3
    AND nombre = 'fernanda'
    AND (
        apellido = 'porfido'
        OR cuit = '1'
    );

-- NULL values
-- IS NULL
-- IS NOT NULL
INSERT INTO curso_lunes.clientes
SET nombre = 'horacio',
    apellido = 'larreta',
    cuit = '75-4566639-3',
    direccion = '',
    comentario = 'Prueba';
--DELETE FROM curso_lunes.clientes WHERE cuit = '75-4566639-3';
SELECT * FROM curso_lunes.clientes
WHERE
    (
        direccion IS NOT NULL
        AND direccion != ''
    )
    AND comentario IS NOT NULL;

-- Columnas calculadas y areas
DROP TABLE IF EXISTS curso_lunes.facturas;
CREATE TABLE curso_lunes.facturas (
    letra CHAR(1) NOT NULL
    ,numero INT NOT NULL
    ,fecha DATE NOT NULL
    ,precio DECIMAL(6,2) NOT NULL
    ,PRIMARY KEY(letra, numero)
);
DESCRIBE curso_lunes.facturas;

INSERT INTO curso_lunes.facturas VALUES ('a', 1, CURDATE(), '980.50');
INSERT INTO curso_lunes.facturas VALUES ('a', 2, CURDATE(), '2280.50');
INSERT INTO curso_lunes.facturas VALUES ('a', 3, CURDATE(), '6980.50');
INSERT INTO curso_lunes.facturas VALUES ('a', 4, CURDATE(), '4480.50');
INSERT INTO curso_lunes.facturas VALUES ('a', 5, CURDATE(), '8180.50');
SELECT * FROM curso_lunes.facturas;

SELECT 2+2 AS 'suma total';
-- Obtener el IVA del campo precio

SELECT
    UPPER(letra) AS tipo
    ,numero
    ,fecha
    ,precio
    ,ROUND((precio * 0.21),2) AS iva
    ,CONCAT('AR$ ',ROUND((precio * 1.21),2)) AS total
FROM curso_lunes.facturas;

-- BETWEEN and NOT BETWEEN
SELECT * FROM curso_lunes.facturas
WHERE
    precio BETWEEN 1000 AND 5000;

SELECT * FROM curso_lunes.facturas
WHERE
    precio >= 1000
    AND precio <= 5000;

SELECT * FROM curso_lunes.facturas
WHERE precio NOT BETWEEN 1000 AND 5000;

SELECT * FROM curso_lunes.facturas
WHERE
    precio < 1000
    OR precio > 5000;

--IN and NOT IN
SELECT * FROM curso_lunes.facturas
WHERE numero IN (2,4,5);

SELECT * FROM curso_lunes.facturas
WHERE
    numero = '2'
    OR numero = '4'
    OR numero = '5';

SELECT * FROM curso_lunes.facturas
WHERE numero NOT IN (1,3);

SELECT * FROM curso_lunes.facturas
WHERE
    numero != 1
    AND numero != 3;

-- LIKE and NOT LIKE with (%)
SELECT * FROM curso_lunes.clientes
WHERE
    nombre LIKE 'c%';

SELECT * FROM curso_lunes.clientes
WHERE
    nombre LIKE '%a';

SELECT * FROM curso_lunes.clientes
WHERE
    nombre LIKE 'c%a';

SELECT * FROM curso_lunes.clientes
WHERE
    nombre LIKE '%c%';

SELECT * FROM curso_lunes.clientes
WHERE
    apellido LIKE 'p____';

SELECT * FROM curso_lunes.clientes
WHERE
    apellido LIKE '%r__';

SELECT * FROM curso_lunes.clientes
WHERE
    nombre NOT LIKE 'c%';

-- ORDER BY (ASCENDING, DESCENDING)
SELECT * FROM curso_lunes.facturas
ORDER BY precio DESC;

-- LIMIT
SELECT * FROM curso_lunes.clientes LIMIT 2, 3;
SELECT * FROM curso_lunes.clientes LIMIT 0, 3;
SELECT * FROM curso_lunes.clientes LIMIT 2 OFFSET 3;
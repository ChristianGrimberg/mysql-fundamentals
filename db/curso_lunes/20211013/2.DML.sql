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
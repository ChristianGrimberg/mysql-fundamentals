-- Consultas relacionadas sin utilizar INNER JOIN
DROP TABLE IF EXISTS curso_lunes.personas;
CREATE TABLE curso_lunes.personas (
    idpersona INT NOT NULL
    ,nombre VARCHAR(60) NOT NULL
    ,sexo VARCHAR(10) NOT NULL
    ,PRIMARY KEY(idpersona)
);

DROP TABLE IF EXISTS curso_lunes.telefonos;
CREATE TABLE curso_lunes.telefonos (
    idtelefono INT NOT NULL
    ,numero int NOT NULL
    ,PRIMARY KEY(idtelefono,numero)
);

INSERT INTO curso_lunes.personas
VALUES
    (1,'facundo','masculino')
    ,(2,'andrea','femenino')
    ,(3,'laura','femenino')
    ,(4,'lorena','femenino')
    ,(5,'gabriel','masculino');

SELECT * from curso_lunes.personas;

INSERT INTO curso_lunes.telefonos
VALUES
    (1,43434343)
    ,(1,90909090)
    ,(2,12090989)
    ,(3,10101010)
    ,(5,76767676);

SELECT * FROM curso_lunes.telefonos;

-- JOIN simple
SELECT
    personas.nombre
    ,telefonos.numero
FROM curso_lunes.personas,curso_lunes.telefonos
WHERE personas.idpersona = telefonos.idtelefono;

-- Filtro con JOIN simple
SELECT
    personas.nombre
    ,telefonos.numero
FROM curso_lunes.personas,curso_lunes.telefonos
WHERE
    personas.idpersona = telefonos.idtelefono
    AND personas.nombre = 'facundo';

-- INNER JOIN
SELECT
    personas.nombre
    ,telefonos.numero
FROM curso_lunes.personas
    INNER JOIN curso_lunes.telefonos ON telefonos.idtelefono = personas.idpersona
WHERE personas.nombre = 'facundo';

-- Persona que no tiene telefono con LEFT JOIN o con RIGHT JOIN
SELECT
    *
FROM curso_lunes.personas
    LEFT JOIN curso_lunes.telefonos ON telefonos.idtelefono = personas.idpersona
WHERE telefonos.numero IS NULL OR telefonos.numero = '';
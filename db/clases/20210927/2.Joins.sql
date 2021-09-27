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

-- Foreign Keys
-- crear una tabla sin FK
DROP TABLE IF EXISTS curso_lunes.ventas;
CREATE TABLE curso_lunes.ventas (
    idventa INT NOT NULL
    ,nombre VARCHAR(60) NOT NULL
    ,fecha DATE NOT NULL
    ,precio decimal(6,2) NOT NULL
    ,comentario VARCHAR(200)
    ,PRIMARY KEY(idventa)
);

ALTER TABLE curso_lunes.ventas ADD codcliente INT;

ALTER TABLE curso_lunes.ventas
ADD CONSTRAINT fk_ventas_clientes
FOREIGN KEY(codcliente)
REFERENCES curso_lunes.clientes(idclientes)
ON UPDATE CASCADE
ON DELETE CASCADE;

DESCRIBE curso_lunes.ventas;

DROP TABLE IF EXISTS curso_lunes.departamentos;
CREATE TABLE curso_lunes.departamentos (
    cod_dep INT NOT NULL
    ,descripcion VARCHAR(60) NOT NULL
    ,PRIMARY KEY(cod_dep)
);

DROP TABLE IF EXISTS curso_lunes.empleados;
CREATE TABLE curso_lunes.empleados (
    cod_emp INT NOT NULL
    ,nombre VARCHAR(60) NOT NULL
    ,dep_asignado INT NOT NULL
    ,PRIMARY KEY(cod_emp)
    ,FOREIGN KEY(dep_asignado) references departamentos(cod_dep)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO curso_lunes.departamentos
VALUES
    (1, 'congreso')
    ,(2, 'recoleta')
    ,(3, 'parque patricios')
    ,(4, 'puerto madero');

INSERT INTO curso_lunes.empleados
VALUES
    (1, 'gabriel' ,1)
    ,(2, 'maria' ,1)
    ,(3, 'juan' ,2)
    ,(4, 'pepe' ,3)
    ,(5, 'carla' ,4);

SELECT *
FROM curso_lunes.departamentos
    INNER JOIN curso_lunes.empleados ON departamentos.cod_dep = empleados.dep_asignado;

-- Eliminar todos los departamentos
SET sql_safe_updates = 0;
DELETE FROM curso_lunes.departamentos;

SELECT * FROM curso_lunes.departamentos;
SELECT * FROM curso_lunes.empleados;
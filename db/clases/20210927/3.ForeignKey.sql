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
) ENGINE InnoDB;

DROP TABLE IF EXISTS curso_lunes.empleados;
CREATE TABLE curso_lunes.empleados (
    cod_emp INT NOT NULL
    ,nombre VARCHAR(60) NOT NULL
    ,dep_asignado INT NOT NULL
    ,PRIMARY KEY(cod_emp)
    ,FOREIGN KEY(dep_asignado) references departamentos(cod_dep)
    ON UPDATE CASCADE
    ON DELETE CASCADE
) ENGINE MyISAM;

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

-- Eliminar todos los departamentos en cascada
SET sql_safe_updates = 0;
DELETE FROM curso_lunes.departamentos;

SELECT * FROM curso_lunes.departamentos;
SELECT * FROM curso_lunes.empleados;

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

UPDATE curso_lunes.departamentos
SET cod_dep = 8
WHERE cod_dep = 4;

SELECT * FROM curso_lunes.departamentos;
SELECT * FROM curso_lunes.empleados;

-- Eliminacion de tablas en cascada
DROP TABLE IF EXISTS curso_lunes.empleados;
DROP TABLE IF EXISTS curso_lunes.departamentos;
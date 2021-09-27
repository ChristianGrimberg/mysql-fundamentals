-- Punto 1
DROP SCHEMA IF EXISTS libreria;
CREATE SCHEMA libreria;

-- Punto 2
DROP TABLE IF EXISTS libreria.puestos;
CREATE TABLE libreria.puestos (
    puesto_id SMALLINT
    ,description VARCHAR(50)
);

DROP TABLE IF EXISTS libreria.autores;
CREATE TABLE libreria.autores (
    autor_id VARCHAR(11)
    ,apellido VARCHAR(40)
    ,nombre VARCHAR(20)
    ,telefono VARCHAR(12)
    ,direccion VARCHAR(40)
    ,ciudad VARCHAR(20)
    ,provincia CHAR(2)
    ,c_postal CHAR(5)
    ,estado TINYINT(1)
);

DROP TABLE IF EXISTS libreria.locales;
CREATE TABLE libreria.locales (
    local_id CHAR(4)
    ,nombre VARCHAR(40)
    ,direccion VARCHAR(40)
    ,ciudad VARCHAR(20)
    ,provincia CHAR(2)
    ,c_postal CHAR(5)
);

DROP TABLE IF EXISTS libreria.libros;
CREATE TABLE libreria.libros (
    libro_id VARCHAR(6)
    ,titulo VARCHAR(80)
    ,categoria CHAR(12)
    ,editorial_id CHAR(4)
    ,precio DOUBLE
    ,comentarios VARCHAR(200)
    ,fecha_publicacion DATETIME
);

DROP TABLE IF EXISTS libreria.empleados;
CREATE TABLE libreria.empleados (
    empleado_id CHAR(9)
    ,nombre VARCHAR(20)
    ,apellido VARCHAR(30)
    ,puesto_id SMALLINT
    ,editorial_id CHAR(4)
    ,fecha_ingreso DATETIME
);

DROP TABLE IF EXISTS libreria.ventas;
CREATE TABLE libreria.ventas (
    local_id CHAR(4)
    ,factura_nro VARCHAR(20)
    ,fecha DATETIME
    ,cantidad SMALLINT
    ,forma_pago VARCHAR(12)
    ,libro_id VARCHAR(6)
);

DROP TABLE IF EXISTS libreria.libroautor;
CREATE TABLE libreria.libroautor (
    autor_id VARCHAR(11)
    ,libro_id VARCHAR(6)
);

DROP TABLE IF EXISTS libreria.editoriales;
CREATE TABLE libreria.editoriales (
    editorial_id CHAR(4)
    ,nombre VARCHAR(40)
    ,ciudad VARCHAR(20)
    ,provincia CHAR(2)
    ,pais VARCHAR(30)
);
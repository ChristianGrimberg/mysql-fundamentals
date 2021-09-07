-- Create [curso_lunes] Database
CREATE DATABASE  IF NOT EXISTS curso_lunes DEFAULT CHARACTER SET UTF8;
USE curso_lunes;

DROP TABLE IF EXISTS clientes;
CREATE TABLE clientes (
    idclientes INT(11) NOT NULL AUTO_INCREMENT
    ,nombre VARCHAR(60) NOT NULL
    ,apellido VARCHAR(60) NOT NULL
    ,cuit VARCHAR(13) NOT NULL
    ,direccion VARCHAR(45) DEFAULT NULL
    ,comentario VARCHAR(200) DEFAULT NULL
    ,PRIMARY KEY (idclientes)
    ,UNIQUE KEY cuit_UNIQUE (cuit)
);

ALTER TABLE clientes DISABLE KEYS;
INSERT INTO clientes
VALUES
    (1,'juan','perez','22-78786778-4','parana 100','prueba de insert')
    ,(2,'carla','ponce','22-89899089-5',NULL,NULL)
    ,(3,'fernanda','porfido','33-90909090-7',NULL,NULL)
    ,(4,'claudio','morales','33-00990099-5','uruguay 100',NULL)
    ,(5,'gonzalo','ramirez','11-23232334-3',NULL,'testeo');
ALTER TABLE clientes ENABLE KEYS;

DROP TABLE IF EXISTS libros;
CREATE TABLE libros (
  idlibros INT(11) NOT NULL AUTO_INCREMENT
  ,nombre VARCHAR(45) NOT NULL
  ,autor VARCHAR(45) DEFAULT 'desconocido'
  ,editorial VARCHAR(45) NOT NULL
  ,fecha DATE NOT NULL
  ,precio DECIMAL(6,2) NOT NULL
  ,stock INT(5) UNSIGNED ZEROFILL DEFAULT NULL
  ,PRIMARY KEY (idlibros)
);

ALTER TABLE libros DISABLE KEYS;
INSERT INTO libros
VALUES
    (1,'mysql','desconocido','estrada','1900-01-01',9999.99,00034)
    ,(2,'agilmente','yo','estrada','20181022',4500.90,00122);
ALTER TABLE libros ENABLE KEYS;
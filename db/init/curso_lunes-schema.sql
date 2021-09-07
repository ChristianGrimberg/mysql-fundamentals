-- Create [curso_lunes] Database
CREATE SCHEMA IF NOT EXISTS curso_lunes DEFAULT CHARACTER SET UTF8;

USE curso_lunes;
CREATE TABLE clientes (
    id INT NOT NULL AUTO_INCREMENT
    ,nombre VARCHAR(60) NOT NULL
    ,apellido VARCHAR(60) NOT NULL
    ,cuit VARCHAR(13) NOT NULL
    ,direccion VARCHAR(45) NULL
    ,comentario TEXT NULL
    ,UNIQUE KEY(`cuit`)
    ,PRIMARY KEY(`id`)
);

USE curso_lunes;
CREATE TABLE libros (
    id INT NOT NULL AUTO_INCREMENT
    ,nombre NVARCHAR(150) NOT NULL
    ,autor NVARCHAR(150) NOT NULL
    ,editorial NVARCHAR(150) NOT NULL
    ,fecha DATETIME NOT NULL
    ,precio DECIMAL(18,3) NOT NULL
    ,stock INT NOT NULL
    ,PRIMARY KEY(`id`)
);
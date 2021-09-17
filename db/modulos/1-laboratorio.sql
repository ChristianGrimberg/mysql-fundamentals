-- Punto 1 y 2
DROP DATABASE IF EXISTS laboratorio;
CREATE DATABASE IF NOT EXISTS laboratorio;

-- Punto 3
DROP TABLE IF EXISTS laboratorio.facturas;
CREATE TABLE laboratorio.facturas (
    Letra CHAR NOT NULL
    ,Numero INT NOT NULL
    ,ClienteID INT NULL
    ,ArticuloID INT NULL
    ,FECHA DATE NULL
    ,MONTO DOUBLE NULL
    ,PRIMARY KEY(Letra,Numero)
);
-- DESCRIBE laboratorio.facturas;

-- Punto 4
DROP TABLE IF EXISTS laboratorio.articulos;
CREATE TABLE laboratorio.articulos (
    ArticuloID INT NOT NULL AUTO_INCREMENT
    ,Nombre VARCHAR(50) NOT NULL
    ,Precio DOUBLE NULL
    ,Stock INT NULL
    ,PRIMARY KEY(ArticuloID)
);
-- DESCRIBE laboratorio.articulos;

-- Punto 5
DROP TABLE IF EXISTS laboratorio.clientes;
CREATE TABLE laboratorio.clientes (
    ClienteID INT NOT NULL AUTO_INCREMENT
    ,Nombre VARCHAR(50) NOT NULL
    ,Apellido VARCHAR(50) NOT NULL
    ,Cuit CHAR(16)
    ,Direccion VARCHAR(50) NULL
    ,Comentarios VARCHAR(50) NULL
    ,PRIMARY KEY(ClienteID)
    ,UNIQUE KEY(Cuit)
);
-- DESCRIBE laboratorio.clientes;

-- Punto 6
INSERT INTO laboratorio.facturas VALUES ('A',1,1,4,CURDATE(),2105.50);
INSERT INTO laboratorio.facturas VALUES ('A',2,2,5,CURDATE(),12300.25);
INSERT INTO laboratorio.facturas VALUES ('B',3,1,3,CURDATE(),6250.00);
INSERT INTO laboratorio.facturas VALUES ('C',4,3,2,CURDATE(),942.75);
INSERT INTO laboratorio.facturas VALUES ('B',5,3,4,CURDATE(),3540.20);
SELECT * FROM laboratorio.facturas;

ALTER TABLE laboratorio.articulos DISABLE KEYS;
INSERT INTO laboratorio.articulos VALUES (1,'Esponja',75.99,92);
INSERT INTO laboratorio.articulos VALUES (2,'Detergente',340.50,25);
INSERT INTO laboratorio.articulos VALUES (3,'Jabon',128.30,123);
INSERT INTO laboratorio.articulos VALUES (4,'Virulana',105.50,182);
INSERT INTO laboratorio.articulos VALUES (5,'Valerina',242.00,56);
ALTER TABLE laboratorio.articulos ENABLE KEYS;
SELECT * FROM laboratorio.articulos;

ALTER TABLE laboratorio.clientes DISABLE KEYS;
INSERT INTO laboratorio.clientes VALUES (1,'Marge','Simpson','32-13193935467-5','Av Siempre Viva 1234','Madre');
INSERT INTO laboratorio.clientes VALUES (2,'Magie','Simpson','53-83921954027-3','Av Siempre Viva 1234','Bebe');
INSERT INTO laboratorio.clientes VALUES (3,'Seymour','Skinner','22-17244839834-7','Primaria de Springfield','Director');
INSERT INTO laboratorio.clientes VALUES (4,'Moe','Szyslak','21-37743442932-2','Taberna de Moe','Bartender');
INSERT INTO laboratorio.clientes VALUES (5,'Lionel','Hutz','31-12783496213-9','Estudio de Abogados','Abogado');
ALTER TABLE laboratorio.clientes ENABLE KEYS;
SELECT * FROM laboratorio.clientes;
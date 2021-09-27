-- Punto 1
DROP TABLE IF EXISTS laboratorio.agenda;

-- Punto 2
CREATE TABLE laboratorio.agenda (
    Contacto INT NOT NULL
    ,Nombre VARCHAR(20)
    ,Domicilio INT
    ,Telefono VARCHAR(9)
    ,PRIMARY KEY(Contacto)
);

-- Punto 3
USE laboratorio;
SHOW TABLES;

-- Punto 4
DESCRIBE laboratorio.agenda;

-- Punto 5
INSERT INTO laboratorio.agenda
VALUES
    (1,'Carlos',756,'104703876')
    ,(2,'Maria',467,'309576098')
    ,(3,'Cecilia',298,'948725701');

-- Punto 6
SELECT * FROM laboratorio.agenda;

-- Punto 7
DROP TABLE IF EXISTS laboratorio.agenda;
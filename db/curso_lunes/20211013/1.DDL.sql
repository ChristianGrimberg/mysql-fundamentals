USE curso_lunes;

SHOW TABLES;

-- DDL - Lenguage de Definicion de Datos (Data Definition Language)

-- Create table
CREATE TABLE IF NOT EXISTS curso_lunes.gente (
    nombre VARCHAR(60)
    ,fecha DATE
);
DESCRIBE curso_lunes.gente;

-- Other method to show a table
SHOW CREATE TABLE curso_lunes.gente;

-- Rename [gente] by [personas]
ALTER TABLE curso_lunes.gente RENAME personas;
DESCRIBE curso_lunes.personas;

-- Add a field to table
ALTER TABLE curso_lunes.personas ADD comentario VARCHAR(100);
DESCRIBE curso_lunes.personas;

-- Change data type of a field
ALTER TABLE curso_lunes.personas MODIFY COLUMN comentario VARCHAR(150);
DESCRIBE curso_lunes.personas;

-- Other method to change data type of a field
ALTER TABLE curso_lunes.personas CHANGE comentario observacion VARCHAR(200);
ALTER TABLE curso_lunes.personas MODIFY COLUMN observacion VARCHAR(250);
DESCRIBE curso_lunes.personas;

-- Remove a field
ALTER TABLE curso_lunes.personas DROP observacion;
DESCRIBE curso_lunes.personas;

/*
-- Agregar los campos DNI y Telefono
-- cambiar el campo nombre por apellido VARCHAR(60)
-- borrar el campo fecha
*/
ALTER TABLE curso_lunes.personas
    ADD dni INT
    ,ADD telefono INT
    ,CHANGE nombre apellido VARCHAR(60)
    ,DROP fecha;
DESCRIBE curso_lunes.personas;

-- Remove table
DROP TABLE curso_lunes.personas;
USE curso_lunes;
SHOW TABLES;
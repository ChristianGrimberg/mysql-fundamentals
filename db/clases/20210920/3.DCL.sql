USE curso_lunes;
SHOW TABLES;

-- DCL (Lenguaje de Control de Datos)
SELECT CURRENT_USER();

-- CREAR UN USUARIO
DROP USER IF EXISTS mylo@localhost;
CREATE USER mylo@localhost IDENTIFIED BY '1234';

-- OTORGAR PERMISOS DE LECTURA
GRANT SELECT ON curso_lunes.clientes TO mylo@localhost;

-- 
FLUSH PRIVILEGES;
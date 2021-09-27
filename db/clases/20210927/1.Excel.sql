SELECT * FROM curso_lunes.clientes;

DROP TABLE IF EXISTS curso_lunes.clientes_bk;
CREATE TABLE curso_lunes.clientes_bk
SELECT * FROM curso_lunes.clientes;

SELECT * FROM curso_lunes.clientes_bk;
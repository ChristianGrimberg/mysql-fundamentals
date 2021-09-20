-- LABORATORIO 2

-- Llenar las tablas artículos clientes y facturas (OK)

-- artículos con precio mayor a 100 con 5 registros cada una.
SELECT * FROM laboratorio.articulos
WHERE precio > 100;

-- artículos con precio entre 20 y 40 (usar < y >)
SELECT * FROM laboratorio.articulos
WHERE precio > 20 AND precio < 40;

-- artículos con precio entre 40 y 60 (usar BETWEEN)
SELECT * FROM laboratorio.articulos
WHERE precio BETWEEN 20 AND 60;

-- artículos con precio = 20 y stock mayor a 30
SELECT * FROM laboratorio.articulos
WHERE
    precio = 20
    OR stock > 30;

-- artículos con precio (12,20,30) no usar IN
SELECT * FROM laboratorio.articulos
WHERE
    precio = 12
    OR precio = 20
    OR precio = 30;

-- artículos con precio (12,20,30) usar el IN
SELECT * FROM laboratorio.articulos
WHERE precio IN (12, 20, 30);

--  artículos cuyo precio no sea (12,20,30)
SELECT * FROM laboratorio.articulos
WHERE precio NOT IN (12, 20, 30);

-- Listar los artículos ordenados por precio de mayor a menor, y si hubiera precios iguales deben quedar ordenados por nombre
SELECT * FROM laboratorio.articulos
ORDER BY
    precio DESC
    ,nombre ASC;

-- Listar todos los artículos incluyendo una columna denominada precio con IVA, la cual deberá tener el monto con el iva del producto
SELECT
    *
    ,precio * 1.21
FROM laboratorio.articulos;

-- Listar todos los artículos incluyendo una columna denominada “cantidad de cuotas” y otra “valor de cuota”, la
-- cantidad es fija y es 3, el valor de cuota corresponde a 1/3 del monto con un 5% de interés
SELECT
    *
    ,3 AS "cantidad de cuotas"
    ,(precio /3) * 1.05 AS "valor de cuota"
FROM laboratorio.articulos;
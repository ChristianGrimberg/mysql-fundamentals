-- LABORATORIO 2 ADICIONAL

-- 1- Seleccionar todos los registros de la tabla Articulos.
SELECT * FROM laboratorio.articulos;

-- 2- Mostrar los artículos con precio menor o igual a 50.
SELECT * FROM laboratorio.articulos
WHERE precio >= 50;

-- 3- Seleccionar los artículos cuyo precio sea mayor o igual a 500.
SELECT * FROM laboratorio.articulos
WHERE precio >= 500;

-- 4- Seleccionar los artículos cuyo stock sea menor a 30.
SELECT * FROM laboratorio.articulos
WHERE precio < 30;

-- 5- Seleccionar el nombre y descripción de los artículos que no cuesten $100:
SELECT
    nombre
    ,precio
FROM laboratorio.articulos
WHERE precio != 100;

-- 6- Obtener un listado de los productos que contengan una letra “a”.
SELECT *
FROM laboratorio.articulos
WHERE nombre LIKE '%a%';

-- 7- Obtener un listado de artículos cuyo precio se encuentre entre 100 y 200 pesos.
SELECT *
FROM laboratorio.articulos
WHERE precio BETWEEN 100 AND 200;

-- 8 Obtener un listado de artículos con precio con IVA menor a 100.
SELECT
    *
    ,precio * 1.21 AS PrecioConIVA
FROM laboratorio.articulos
WHERE (precio * 1.21) < 100;

-- 9 Obtener un listado de artículos cuyo stock sea menor a 10 y precio con iva mayor a 200.
SELECT *
FROM laboratorio.articulos
WHERE
    stock < 10
    AND (precio * 1.21) > 200;

-- 10 Obtener un listado de artículos que pagaderos en 3 cuotas sin interes, tenga un valor de cuota menor a 50$
SELECT
    *
    ,precio/3 AS ValorDeCuota
FROM laboratorio.articulos
WHERE (precio/3) < 50;
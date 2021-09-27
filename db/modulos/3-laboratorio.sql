-- Punto 1
SELECT MAX(monto) AS monto_maximo
FROM laboratorio.facturas;

-- Punto 2
SELECT MIN(monto) AS monto_minimo
FROM laboratorio.facturas;

-- Punto 3
SELECT MIN(monto) AS monto_min
FROM laboratorio.facturas
WHERE YEAR(fecha) BETWEEN 2011 AND 2021;

-- Punto 4
SELECT ROUND(AVG(monto),2) AS promedio
FROM laboratorio.facturas;

-- Punto 5
SELECT ROUND(AVG(monto),2) AS promedio
FROM laboratorio.facturas
WHERE YEAR(fecha) = 2011;

-- Punto 6
SELECT COUNT(*) AS cantidad
FROM laboratorio.facturas;

-- Punto 7
SELECT COUNT(*) AS cantidad
FROM laboratorio.facturas
WHERE monto BETWEEN 500 AND 3300;

-- Punto 8
SELECT
    COUNT(*) AS cantidad
    ,YEAR(fecha) AS año
FROM laboratorio.facturas
GROUP BY año;

-- Punto 9
SELECT
    COUNT(*) AS cantidad
    ,AVG(monto) AS promerdio
    ,YEAR(fecha) AS año
FROM laboratorio.facturas
GROUP BY año;

-- Punto 10
SELECT
    SUM(monto) AS suma_total
    ,AVG(monto) AS promedio
    ,letra
FROM laboratorio.facturas
GROUP BY letra;
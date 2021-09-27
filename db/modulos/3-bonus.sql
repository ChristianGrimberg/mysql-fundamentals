-- Punto 1
SELECT COUNT(*) AS Cantidad_Empleados
FROM bonus.empleados;

-- Punto 2
SELECT
    COUNT(*) AS Empleados_Masculinos
FROM bonus.empleados
WHERE RIGHT(empleado_id,1) = 'M';

-- Punto 3
SELECT
    COUNT(*) AS Cantidad_Autores_BSAS
FROM bonus.autores
WHERE ciudad = 'Buenos Aires';

-- Punto 4
SELECT
    autores.nombre
    ,autores.apellido
    ,COUNT(libros.libro_id) AS Cantidad_Libros
FROM bonus.libroautor
    INNER JOIN bonus.libros ON libros.libro_id = libroautor.libro_id
    INNER JOIN bonus.autores ON autores.autor_id = libroautor.autor_id
GROUP BY autores.nombre;

-- Punto 5
SELECT
    COUNT(*) AS Libros_no_son_Novela
FROM bonus.libros
WHERE categoria != 'Novelas';

-- Punto 6
SELECT COUNT(*) AS Libros_Precio_mayor_a_15
FROM bonus.libros
WHERE precio > 15;

-- Punto 7
SELECT COUNT(*) AS Locales_con_7
FROM bonus.locales
WHERE LEFT(local_id,1) = '7';

-- Punto 8
SELECT
    SUM(cantidad) AS Libros_por_Factura
    ,factura_nro
FROM bonus.ventas
GROUP BY factura_nro;

-- Punto 9
SELECT
    libros.titulo
    ,SUM(cantidad) AS Unidades_vendidas
FROM bonus.ventas
    INNER JOIN bonus.libros ON libros.libro_id = ventas.libro_id
GROUP BY libros.titulo;

-- Punto 10
SELECT
    locales.nombre AS Local
    ,COUNT(ventas.factura_nro) AS Cantidad_Facturas
FROM bonus.ventas
    INNER JOIN bonus.locales ON locales.local_id = ventas.local_id
GROUP BY Local;

-- Punto 11
SELECT
    forma_pago
    ,SUM(cantidad) AS Cantidad_unidades_vendidas
FROM bonus.ventas
GROUP BY forma_pago;

-- Punto 12
SELECT
    categoria
    ,COUNT(*) AS Cantidad
    ,MAX(precio) AS Precio_maximo
    ,MIN(precio) AS Precio_minimo
    ,ROUND(AVG(precio),2) AS Promedio
FROM bonus.libros
GROUP BY categoria;

-- Punto 13
SELECT
    YEAR(fecha_publicacion) AS Año
    ,COUNT(*) AS Cantidad
    ,MAX(precio) AS Precio_maximo
    ,MIN(precio) AS Precio_minimo
    ,ROUND(AVG(precio),2) AS Promedio
FROM bonus.libros
GROUP BY Año;

-- Punto 14
SELECT
    editoriales.nombre AS Editorial
    ,MAX(precio) AS Precio_maximo
FROM bonus.libros
    INNER JOIN bonus.editoriales ON editoriales.editorial_id = libros.editorial_id
GROUP BY Editorial;

-- Punto 15
SELECT
    editoriales.nombre AS Editorial
    ,COUNT(libros.libro_id) AS Libros_sin_Precio
FROM bonus.libros
    INNER JOIN bonus.editoriales ON editoriales.editorial_id = libros.editorial_id
WHERE
    libros.precio IS NULL
    OR libros.precio = 0
GROUP BY Editorial;

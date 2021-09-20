-- BONUS TRACK 2

-- 1. Listar empleados ordenados por apellido.
SELECT * FROM bonus.empleados;
-- 2. Listar nombre y apellido (en una sola columna), y fecha de ingreso de empleados ordenados por fecha de ingreso, de la más actual a la más antigua.
-- 3. Listar nombre y apellido (en una sola columna llamada “Empleado”), y año de ingreso de empleados ordenados por año de ingreso, del más antiguo al más actual.
-- 4. Listar inicial del nombre y apellido (en una sola columna llamada “Empleado”), y año de ingreso de los empleados ingresados en el segundo semestre del año 1989.
-- 5. Listar empleados ordenados por sexo, teniendo en cuenta que el dato correspondiente al sexo está dado por la última letra del campo empleado_id
-- 6. Listar empleadas mujeres pertenecientes a la editorial 0736
-- 7. Listar autores nacidos fuera de la provincia de Buenos Aires (BA) y de la Ciudad de Buenos Aires.
-- 8. Listar novelas publicadas antes del año 2000.
-- 9. Listar libros sin precio asignado.
-- 10. Listar libros ordenados por categoría, sólo para categorías conocidas.
-- 11. Listar locales que contengan la palabra “librería” como parte de su nombre.
-- 12. Listar libros agregando una columna que tenga el precio de cada libro incrementado en un 51%, una columna con el precio con un descuento del 10% y una columna, con el valor de cuota en caso de venderse en 6 cuotas con un recargo del 25%. Dar a cada columna calculada una misma precisión decimal.
-- 13. Listar libros que contengan las palabras “de” ó “del” en el nombre.
-- 14. Listar ventas registradas en el primer semestre de cualquier año cuyo método de pago no sea transferencia ni efectivo
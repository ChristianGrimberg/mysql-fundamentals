[Inicio](../../README.md)
# Modulo 1
## [Laboratorio 1](1-laboratorio.sql)
1. Eliminar si existe la base de datos Laboratorio.
1. Crear la base de datos Laboratorio.
1. Crear la tabla Facturas dentro de la base de datos con la siguiente estructura:

    ![Facturas](../../img/facturas.png)
    1. PK signiﬁca Primary Key.
    1. Observar que se está declarando una clave primaria compuesta, es decir (Letra, Número), cada campo por sí solo no es clave, ni tampoco identiﬁca al registro, pero la combinación de los dos forman la clave.
1. Crear la tabla Artículos dentro de la base de datos con la estructura del ejemplo.

    ![Articulos](../../img/articulos.png)
1. Crear la tabla Clientes dentro de la base de datos con la estructura del ejemplo.

    ![Clientes](../../img/clientes.png)
1. Cargar 5 registros en las tablas Facturas, Artículos y Clientes.

## [Bonus Track 1: Construyendo bases de datos y tablas](1-bonus-track.sql)
1. Crear una base de datos llamada _librería_. La misma estará conformada por 8 tablas, las cuales tendrán la siguiente estructura:

    ![Bonus DB](../../img/1-bonus-db.png)

1. Crear cada una de las tablas utilizando la sentencia _CREATE_ del subconjunto de sentencias DDL (Data Definition Language) del lenguaje SQL.
1. Una vez creadas todas las tablas, insertar un conjunto de registros en cada una de ellas, utilizando el script provisto en la sección de descargas.
1. Luego de insertar los registros, definir claves primarias (Primary Key) en cada tabla teniendo en cuenta que cada tabla tiene un campo con sufijo _“\_id”_ que identifica al campo clave. Asimismo, la lógica de negocio indica que un mismo número de factura se puede repetir en varios locales y en un mismo local, pero con distintos códigos de libros, y la combinación de autor/libro es única.
1. Examinemos los datos ingresados e insertemos 3 registros en cada una de las tablas, utilizando la sentencia INSERT del subconjunto de sentencias DML (Data Manipulation Language) del lenguaje SQL.

# Modulo 2
## [Laboratorio 2](2-laboratorio.sql)
1. Llenar las tablas artículos clientes y facturas con 5 registros cada una.
1. Basándose en la tabla artículos obtener los siguientes listados.
    1. artículos con precio mayor a 100
    1. artículos con precio entre 20 y 40 (usar < y >)
    1. artículos con precio entre 40 y 60 (usar BETWEEN)
    1. artículos con precio = 20 y stock mayor a 30
    1. artículos con precio (12,20,30) no usar IN
    1. artículos con precio (12,20,30) usar el IN
    1. artículos cuyo precio no sea (12,20,30)
1. Listar los artículos ordenados por precio de mayor a menor, y si hubiera precios iguales deben quedar ordenados por nombre.
1. Listar todos los artículos incluyendo una columna denominada precio con IVA, la cual deberá tener el monto con el iva del producto.
1. Listar todos los artículos incluyendo una columna denominada “cantidad de cuotas” y otra “valor de cuota”, la cantidad es fija y es 3, el valor de cuota corresponde a 1/3 del monto con un 5% de interés.
## [Laboratorio 2 Adicional](2-laboratorio-adicional.sql)
1. Seleccionar todos los registros de la tabla Articulos.
1. Mostrar los artículos con precio menor o igual a 50.
1. Seleccionar los artículos cuyo precio sea mayor o igual a 500.
1. Seleccionar los artículos cuyo stock sea menor a 30.
1. Seleccionar el nombre y descripción de los artículos que no cuesten $100:
1. Obtener un listado de los productos que contengan una letra “a”.
1. Obtener un listado de artículos cuyo precio se encuentre entre 100 y 200 pesos.
1. Obtener un listado de artículos con precio con IVA menor a 100.
1. Obtener un listado de artículos cuyo stock sea menor a 10 y precio con iva mayor a 200.
1. Obtener un listado de artículos que pagaderos en 3 cuotas sin interes, tenga un valor de cuota menor a 50$

## [Bonus 2](2-bonus.sql)
1. Listar empleados ordenados por apellido.
1. Listar nombre y apellido (en una sola columna), y fecha de ingreso de empleados ordenados por fecha de ingreso, de la más actual a la más antigua.
1. Listar nombre y apellido (en una sola columna llamada “Empleado”), y año de ingreso de empleados ordenados por año de ingreso, del más antiguo al más actual.
1. Listar inicial del nombre y apellido (en una sola columna llamada “Empleado”), y año de ingreso de los empleados ingresados en el segundo semestre del año 1989.
1. Listar empleados ordenados por sexo, teniendo en cuenta que el dato correspondiente al sexo está dado por la última letra del campo empleado_id
1. Listar empleadas mujeres pertenecientes a la editorial 0736
1. Listar autores nacidos fuera de la provincia de Buenos Aires (BA) y de la Ciudad de Buenos Aires.
1. Listar novelas publicadas antes del año 2000.
1. Listar libros sin precio asignado.
1. Listar libros ordenados por categoría, sólo para categorías conocidas.
1. Listar locales que contengan la palabra “librería” como parte de su nombre.
1. Listar libros agregando una columna que tenga el precio de cada libro incrementado en un 51%, una columna con el precio con un descuento del 10% y una columna, con el valor de cuota en caso de venderse en 6 cuotas con un recargo del 25%. Dar a cada columna calculada una misma precisión decimal.
1. Listar libros que contengan las palabras “de” ó “del” en el nombre.
1. Listar ventas registradas en el primer semestre de cualquier año cuyo método de pago no sea transferencia ni efectivo

# Modulo 3
## [Laboratorio 3: Funciones]()
1. Obtener el monto máximo de factura.
2. Obtener el monto mínimo de factura.
3. Obtener el monto mínimo de factura entre los años 2011 y 2020.
4. Obtener el monto promedio de factura.
5. Obtener la factura con el monto promedio del año 2011.
6. Obtener la cantidad de facturas.
7. Obtener la cantidad de facturas que tienen un monto entre $500 y $3.300.
8. Obtener la cantidad de facturas que hay en cada año.
9. Obtener la cantidad de facturas y el monto promedio en cada año.
10. Obtener la suma del monto y el promedio de las facturas según la letra.

## [Bonus 3: Resumiendo y agrupando información]()
1. Listar cantidad de empleados.
2. Listar cantidad de empleados de sexo masculino.
3. Listar cantidad de autores de la provincia de Buenos Aires (BA).
4. Listar cantidad de libros por autor.
5. Listar cantidad de libros que no sean novelas.
6. Listar cantidad de libros con precio mayor a 15.
7. Listar cantidad de locales con código que comience con 7.
8. Listar cantidad de libros por factura.
9. Listar cantidad de unidades vendidas por libro.
10. Listar cantidad de facturas por local.
11. Listar cantidad de unidades vendidas por forma de pago.
12. Listar cantidad de libros, precio máximo, precio mínimo, promedio de precio por categoría.
13. Listar cantidad de libros, precio máximo, precio mínimo, promedio de precio por año de publicación.
14. Listar precio máximo por editorial.
15. Listar cantidad de libros sin precio por editorial.
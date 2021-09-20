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

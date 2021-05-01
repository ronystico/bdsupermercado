# Base de datos supermercado
Una base de datos que tuve como práctica en la universidad. Era tan nuevo en SQL que inserté las tablas y registros con SQL Server Management Studio y lo exporté como script. Las consultas están por separado, escritas manualmente con sus respectivos números.

# La práctica
Crear base de datos llamada supermercado.


Crear las siguientes tablas para un Supermercado. Indicar los correctos tipos de datos para cada columna y las respectivas Claves que deben de tener:

| **Producto** | --- |
| --- | --- |
| **Atributo** | Detalle | 
| **Id** | Valor único que identifique el registro |
| **CodigoBarra** | Código de Barra Único por producto |
| **Nombre** | Descripción de producto |
| **Fecha** | Almacenar automáticamente la fecha del día(GETDATE) |
| **Descripción** | Comentario Extenso del producto |

| **Almacén** | --- |
| --- | --- |
| **Atributo** | Detalle |
| **Código** | Código representativo del almacén |
| **Principal** | Indica si es el almacén principal. Solo puede almacenar 2 valores. |
| **Ubicación** | Dirección del almacén |
| **Encargado** | Nombre del supervisor el almacén |

| **Entrada** | --- |
| --- | --- |
| **Atributo** | Detalle |
| **IdProducto** | Id del producto |
| **Almacén** | Código del Almacén |
| **Secuencia** | Secuencia de entrada del producto |
| **Cant** | Cantidad entrante del producto |
| **Costo** | Precio de adquisición del producto. No puede ser negativo |
| **Precio** | Precio de venta. No puede ser menor o igual al costo |
| **Exento** | Indica si paga ITBIS o no |
| **ITBIS** | Valor del ITBIS. |
| **PrecioTotal** | Precio total del producto sumando el impuesto |
| **Unidad** | Tipo de Unidad en que se almacena el producto. Puede ser UND, CAJ, ONZ, LIB, DOZ, |
| **FechaHora** | Fecha y hora de la entrada del producto. Almacenar automáticamente la fecha del día (GETDATE) |

Insertar los siguientes registros en las distintas tablas indicadas:

| **Almacen** | --- | --- | --- |
| --- | --- | --- | --- |
| **Codigo** | Principal | Ubicación | Encargado |
| **ALM01** | SI | Sucursal Santo Domingo | Katelyne Cabrera |
| **ALM02** | NO | Sucursal Santiago | Jesus Rodriguez |
| **ALM03** | NO | Sucursal San Juan | Juan Hidaldo |
| **ALM04** | NO | Sucursal La Romana | Patricia Taveras |

| **Producto** | --- | --- | --- |
| --- | --- | --- | --- |
| **ID** | Nombre | CodigoBarra |
| **680** | HL Road Frame - Black, 58 | FR-R92B-58 |
| **706** | HL Road Frame - Red, 58 | FR-R92R-58 |
| **771** | Mountain-100 Silver, 38 | BK-M82S-38 |
| **772** | Mountain-100 Silver, 42 | BK-M82S-42 |
| **773** | Mountain-100 Silver, 44 | BK-M82S-44 |
| **774** | Mountain-100 Silver, 48 | BK-M82S-48 |
| **775** | Mountain-100 Black, 38 | BK-M82B-38 |
| **776** | Mountain-100 Black, 42 | BK-M82B-42 |
| **777** | Mountain-100 Black, 44 | BK-M82B-44 |
| **778** | Mountain-100 Black, 48 | BK-M82B-48 |
| **779** | Mountain-200 Silver, 38 | BK-M68S-38 |
| **780** | Mountain-200 Silver, 42 | BK-M68S-42 |

| **Entrada**  | --- | --- | --- | --- | --- | --- | --- |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **IdProducto** | Almacen | Cant | Costo | Precio | Exento (Paga) | ITBIS | Unidad |
| **706** | ALM01 | 8 | 1 | 10 | NO | 0 | UND |
| **771** | ALM01 | 10 | 5 | 60 | NO | 0 | UND |
| **771** | ALM03 | 12 | 0 | 5 | NO | 0 | UND |
| **771** | ALM04 | 15 | | 20 | SI | 4.50 | LIB |
| **777** | ALM01 | 4 | 100 | 125 | SI | 21 | LIB |
| **777** | ALM03 | 8 | 110 | 130 | NO | 0 | UND |
| **777** | ALM04 | 6 | 120 | 150 | SI | 25 | LIB |
| **780** | ALM01 | 25 | 225.50 | 395.75 | NO | 0 | CAJ |


Realizar las siguientes consultas:

1. Obtener todos los datos de los productos del supermercado.
1. Obtener los nombres de los productos del supermercado.
1. Obtener los productos de la tabla entrada sin repeticiones.
1. Obtener todos los datos del producto cuya id sea 777.
1. Obtener todos los datos del Producto cuyo nombre sea Mountain-100 Black, 42.
1. Obtener todos los datos de la ALM01 y ALM04.
1. Obtener todos los datos de los productos que contengan M82S, en su código de barra.
1. ¿Cuáles productos tienen un costo mayor que 100?
1. Obtener el id de los productos donde el precio sea mayor a 100.
1. Obtener el precio medio de todos los productos.
1. Identificar cuales productos están exentos de paga.
1. Obtener el id y nombre de los productos ordenados por id.
1. Obtener todos los datos de los productos ordenados descendentemente por Precio.
1. Obtener el nombre y precio de los productos cuyo precio sea mayor a 60 y ordenarlos ascendentemente por precio.
1. Añade un nuevo producto: 790, Mountain-200 blue, 42, BK-M68S-45
1. Cambia el nombre el nombre del encargado del almacén 01, por Javier Céspedes.
1. Aplicar un descuento del 5% al Costo del producto.
1. Presentar en una consulta el Id del Producto que se encuentre entre 771 y 777.

**He subido los pasos hasta aquí, lo demás lo mantengo con propósitos de archivo**

Crear dos nuevos usuarios en la Base de Datos Negocio:

* Usuarios: TeD y CRT.
* Password: 1234 y H789.
* ROL de lectura y escritura al BD.

Crear 2 backups a cargo del operador 3 con las siguientes características:

* 1 semanal que será full, con las opciones de que sobrescriba el archivo existente, verifique cuando se haya terminado y revise las páginas de datos.
* 1 diario diferencial sólo con la opción de comprimir.

Imagine el caso que se necesite restaurar la base de datos luego de una caída del sistema el jueves a la 2 de la tarde, ¿cuáles serían los pasos a seguir? Recrear el orden para restaurar los diferentes backup. Y recomendar a la empresa una mejor estrategia de recuperación.

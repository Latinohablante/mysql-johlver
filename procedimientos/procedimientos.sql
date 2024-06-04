create table productos(
   id int not null auto_increment,
   producto varchar(40) not null,
   cantidad int not null,
   precio decimal(19,2) not null,
   marca varchar(20) not null,
   estado tinyint,
   primary key(id)
);


delimiter $$
drop procedure if exists insertar_producto;
create procedure insertar_producto(
in producto varchar(40),
in cantidad int,
in precio decimal(19,2),
in marca varchar(20),
in estado tinyint)
begin
   insert into productos (id, producto, cantidad, precio, marca, estado) values (null, producto, cantidad, precio, marca, estado);
end $$
delimiter ;

call insertar_producto("Monitor LCD", 10, 250.00, "LG", 1);


DELIMITER $$
   DROP PROCEDURE IF EXISTS buscar_producto;
CREATE PROCEDURE buscar_producto(
   IN id int)
BEGIN
   SELECT id, producto, (cantidad*precio) AS subtotal FROM productos WHERE ID = id;
END $$
DELIMITER ;

CALL buscar_producto (1);

-- Creando procedimiento insertar_producto_verify
DELIMITER $$
DROP PROCEDURE IF EXISTS insertar_producto_verify;
CREATE PROCEDURE insertar_producto_verify(
   IN producto VARCHAR(40),
   IN cantidad INT,
   IN precio DECIMAL(19,2),
   IN marca VARCHAR(20),
   IN estado TINYINT
)
BEGIN
   DECLARE mensaje VARCHAR(100);

   INSERT INTO productos (id, producto, cantidad, precio, marca, estado)
   VALUES (NULL, producto, cantidad, precio, marca, estado);

   IF ROW_COUNT() > 0 THEN
      SET mensaje = 'El registro se ha creado correctamente.';
   ELSE
      SET mensaje = 'Error al crear el registro.';
   END IF;

   SELECT mensaje AS 'Mensaje';
END $$
DELIMITER ;

CALL insertar_producto_verify('Alpha plus', 30, 480.00, 'Biomax', 1);

-- Creando procedimiento eliminar_producto
DELIMITER $$
CREATE PROCEDURE eliminar_producto(
   IN producto_id INT
)
BEGIN
   DECLARE mensaje VARCHAR(100);

   DELETE FROM productos WHERE id = producto_id;

   IF ROW_COUNT() > 0 THEN
      SET mensaje = CONCAT('El producto con ID', producto_id, ' ha sido eliminado exitosamente.')
   ELSE
      SET mensaje = 'No se encontró ningún producto con el ID proporcionado.';
   END IF;

   SELECT mensaje AS 'Mensaje';
END $$
DELIMITER ;

-- Ejercicio 1: Cree un procedimiento que retorne los datos de todos los productos

DELIMITER $$
CREATE PROCEDURE datos_all_productos()
BEGIN
   SELECT producto, cantidad, precio, marca, estado FROM productos;
END $$
DELIMITER ;


CALL datos_all_productos();

-- Procedimiento actualizar_producto

DELIMITER $$
CREATE PROCEDUTE actualizar_producto(
   IN producto_id INT,
   IN nuevo_producto VARCHAR(40),
   IN nueva_cantidad INT,
   IN nuevo_precio DECIMAL(19,2),
   IN nueva_marca VARCHAR(20),
   IN nuevo_estado TINYINT
)
BEGIN
   DECLARE mensaje VARCHAR(100);

   UPDATE productos
   SET
      producto = nuevo_producto,
      cantidad = nueva_cantidad,
      precio = nuevo_precio,
      marca = nueva_marca,
      estado = nuevo_estado
   WHERE id = producto_id;

   IF ROW_COUNT() > 0 THEN
      SET mensaje = CONCAT('El producto con ID ', producto_id, ' hasido actualizado exitosamente.');
   ELSE
      SET mensaje = 'No se encontró ningún producto con el ID proporcionado para actualizar.';
   END IF;

   SELECT mensaje AS 'Mensaje';
END $$
DELIMITER ;




-- Procedimiento que lista productos por marca
DELIMITER $$
DROP PROCEDURE IF EXISTS obtener_cantidad_productos_por_marca;
CREATE PROCEDURE obtener_cantidad_productos_por_marca(
   IN marca_busqueda VARCHAR(20)
)
BEGIN
   DECLARE cantidad_productos INT;

   SELECT COUNT(*) INTO cantidad_productos
   FROM productos
   where marca = marca_busqueda;

   SELECT cantidad_productos AS 'Cantidad de productos';
END $$
DELIMITER ;

CALL obtener_cantidad_productos_por_marca("LG");

-- Ejercicio: Crear un procedimiento que permita mostrar la cantidad disponible de un producto

DELIMITER $$
DROP PROCEDURE IF EXISTS cantidad_producto_por_id;
CREATE PROCEDURE cantidad_producto_por_id(
   IN producto_id INT
)
BEGIN
   DECLARE cantidad_productos INT;

   SELECT cantidad INTO cantidad_productos
   FROM productos
   WHERE id = producto_id;

   SELECT cantidad_productos AS 'Cantidad de productos';
END $$
DELIMITER ;

-- Aquí obtengo la cantidad de productos con id = 1
CALL cantidad_producto_por_id(1);



-- Obtener total de registros por marca temporalmente

DELIMITER $$
CREATE PROCEDURE obtener_total_registros_por_marca_temp()
BEGIN
-- Crear una tabla temporal para almacenar los resultados
   CREATE TEMPORARY TABLE IF NOT EXISTS temp_resultados (
      marca VARCHAR(20),
      total_registros INT
   );
-- Insertar los resultados en la tabla temporal
   INSERT INTO temp_resultados (marca, total_registros)
   SELECT marca, COUNT(*) AS total_registros
   FROM productos
   GROUP BY marca;
-- Seleccionar los resultados de la tabla temporal
   SELECT * FROM temp_resultados;
-- Eliminar la tabla temporal después de usarla
   DROP TEMPORARY TABLE IF EXISTS temp_resultaods;
END $$
DELIMITER ;

CALL obtener_total_registros_por_marca_temp();


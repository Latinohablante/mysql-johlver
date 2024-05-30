-- CONSULTAS

-- 1. Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.

select O.cod_oficina as codOficina, C.nombre as nombreCiudad
from oficina as O
inner join direccion_oficina as DO on O.cod_oficina = DO.cod_oficina
inner join ciudad as C on C.cod_ciudad = DO.cod_ciudad;


-- 2. 





-- 3. Devuelve un listado con el nombre, apellidos y email de los empleados cuyo
-- jefe tiene un código de jefe igual a 7.

select E.nombre as Nombre, E.apellido1 as primerApellido, E.apellido2 as segundoApellido, E.email as correo
from empleado as E
where cod_jefe = 7;


-- 4. Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la
-- empresa.

select C.nombre as Cargo, E.nombre as nombre, E.apellido1 as primerApellido, E.apellido2 as segundoApellido, E.email as correo
from empleado as E
inner join cargo as C on C.cod_cargo = E.cod_cargo
where cod_jefe is null;


-- 5. Devuelve un listado con el nombre, apellidos y puesto de aquellos
-- empleados que no sean representantes de ventas.

select C.nombre as Cargo, E.nombre as nombre, E.apellido1 as primerApellido, E.apellido2 as segundoApellido
from empleado as E
inner join cargo as C on C.cod_cargo = E.cod_cargo
where C.nombre != "Vendedor" and C.nombre != "Marketing";


-- 6. Devuelve un listado con el nombre de los todos los clientes españoles.

select Cl.nombre_cliente as nombre
from direccion_cliente as DC
inner join cliente as Cl on Cl.cod_cliente = DC.cod_cliente
inner join ciudad as Ci on Ci.cod_ciudad = DC.cod_ciudad
inner join region as R on R.cod_region = Ci.cod_region
inner join pais as P on P.cod_pais = R.cod_pais
where P.nombre = "España";
-- Actualmente no hay clientes de españa por eso el resultado es vacío, si cambiamos el país a Canada podemos encontrar el cliente: Globex Inc


-- 7. Devuelve un listado con los distintos estados por los que puede pasar un pedido.

select distinct estado
from pedido;


-- 8. Devuelve un listado con el código de cliente de aquellos clientes que
-- realizaron algún pago en 2008. Tenga en cuenta que deberá eliminar
-- aquellos códigos de cliente que aparezcan repetidos. Resuelva la consulta:

-- • Utilizando la función ADDDATE de MySQL.
select distinct Cl.cod_cliente as "código"
from cliente as Cl
inner join pago as P on P.cod_cliente = Cl.cod_cliente
where year(fecha_pago) = "2008";

-- Utilizando la función DATE_FORMAT de MySQL.
select distinct Cl.cod_cliente as "código"
from cliente as Cl
inner join pago as P on P.cod_cliente = Cl.cod_cliente
where date_format(fecha_pago, "%Y") = "2008";

-- • Sin utilizar ninguna de las funciones anteriores.
select distinct Cl.cod_cliente as "código"
from cliente as Cl
inner join pago as P on P.cod_cliente = Cl.cod_cliente
where fecha_pago between "2007-12-31" and "2008-12-31";


-- 9. Devuelve un listado con el código de pedido, código de cliente, fecha
-- esperada y fecha de entrega de los pedidos que no han sido entregados a
-- tiempo.

select P.cod_pedido as CódigoPedido, Cl.cod_cliente as CódigoCliente, P.fecha_esperada as FechaEsperada, P.fecha_entrega as FechaEntrega
from pedido as P
inner join cliente as Cl on Cl.cod_cliente = P.cod_cliente
where P.fecha_entrega > P.fecha_esperada;


-- 10. Devuelve un listado con el código de pedido, código de cliente, fecha
-- esperada y fecha de entrega de los pedidos cuya fecha de entrega ha sido al
-- menos dos días antes de la fecha esperada.

-- • Utilizando la función ADDDATE de MySQL.

select P.cod_pedido as codPedido, Cl.cod_cliente


















































































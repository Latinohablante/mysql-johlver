CREATE TABLE `pais` (
  `paisID` int(3) PRIMARY KEY,
  `nombre` varchar(30)
);

CREATE TABLE `departamento` (
  `depID` int(3) PRIMARY KEY,
  `nombre` varchar(30),
  `paisID` int(3)
);

CREATE TABLE `ciudad` (
  `ciudadID` int(3) PRIMARY KEY,
  `nombre` varchar(30),
  `depID` int(3)
);

CREATE TABLE `cliente` (
  `clienteID` int(10) PRIMARY KEY,
  `nombre` varchar(20),
  `apellido` varchar(20),
  `email` varchar(40)
);

CREATE TABLE `direccion` (
  `dirID` int(3) PRIMARY KEY,
  `denominacion` varchar(20),
  `numero` int(3),
  `clienteID` int(10),
  `ciudadID` int(3)
);

CREATE TABLE `tel_cliente` (
  `telID` int(2) PRIMARY KEY,
  `numero` varchar(12),
  `clienteID` int(10)
);

CREATE TABLE `marca` (
  `marcaID` int(3) PRIMARY KEY,
  `nombre` varchar(20)
);

CREATE TABLE `vehiculo` (
  `vehiculoID` int(10) PRIMARY KEY,
  `placa` varchar(7),
  `modelo` varchar(40),
  `clienteID` int(10),
  `marcaID` int(3)
);

CREATE TABLE `servicio` (
  `servicioID` int(3) PRIMARY KEY,
  `nombre` varchar(30),
  `descripcion` text,
  `costo` double(15,2)
);

CREATE TABLE `cargo` (
  `cargoID` int(3) PRIMARY KEY,
  `nombre` varchar(30)
);

CREATE TABLE `empleado` (
  `empleadoID` int(10) PRIMARY KEY,
  `nombre` varchar(20),
  `apellido1` varchar(20),
  `apellido2` varchar(20),
  `cargoID` int(3)
);

CREATE TABLE `tel_empleado` (
  `telID` int(2) PRIMARY KEY,
  `numero` varchar(12),
  `empleadoID` int(10)
);

CREATE TABLE `cita` (
  `citaID` int(10) PRIMARY KEY,
  `fechaHora` datetime,
  `clienteID` int(10),
  `vehiculoID` int(10),
  `servicioID` int(3)
);

CREATE TABLE `reparacion` (
  `reparacionID` int(10) PRIMARY KEY,
  `fecha` date,
  `costoTotal` double(15,2),
  `descripcion` text,
  `vehiculoID` int(10),
  `servicioID` int(3),
  `empleadoID` int(10)
);

CREATE TABLE `factura` (
  `facturaID` int(11) PRIMARY KEY,
  `fecha` datetime,
  `total` double(15,2),
  `clienteID` int(10)
);

CREATE TABLE `factura_reparacion` (
  `facturaID` int(11),
  `reparacionID` int(10),
  `cantidad` int(3),
  `precio` double(15,2),
  PRIMARY KEY (`facturaID`, `reparacionID`)
);

CREATE TABLE `proveedor` (
  `proveedorID` int(10) PRIMARY KEY,
  `nombre` varchar(40),
  `contacto` varchar(30),
  `email` varchar(30)
);

CREATE TABLE `tel_proveedor` (
  `telID` int(2) PRIMARY KEY,
  `numero` varchar(12),
  `proveedorID` int(10)
);

CREATE TABLE `pieza` (
  `piezaID` int(11) PRIMARY KEY,
  `nombre` varchar(30),
  `descripcion` text,
  `precio` double(15,2),
  `proveedorID` int(10)
);

CREATE TABLE `inventario` (
  `inventarioID` int(10) PRIMARY KEY,
  `cantidad` int(10),
  `ubicacion` varchar(30),
  `piezaID` int(11)
);

CREATE TABLE `reparacion_pieza` (
  `reparacionID` int(10),
  `piezaID` int(11),
  `cantidad` int(3)
);

CREATE TABLE `ordencompra` (
  `ordenID` int(11) PRIMARY KEY,
  `fecha` datetime,
  `total` double(15,2),
  `empleadoID` int(10),
  `proveedorID` int(10)
);

CREATE TABLE `orden_detalle` (
  `ordenID` int(11),
  `piezaID` int(11),
  `cantidad` int(10),
  `precio` double(15,2),
  PRIMARY KEY (`ordenID`, `piezaID`)
);

ALTER TABLE `departamento` ADD FOREIGN KEY (`paisID`) REFERENCES `pais` (`paisID`);

ALTER TABLE `ciudad` ADD FOREIGN KEY (`depID`) REFERENCES `departamento` (`depID`);

ALTER TABLE `direccion` ADD FOREIGN KEY (`clienteID`) REFERENCES `cliente` (`clienteID`);

ALTER TABLE `direccion` ADD FOREIGN KEY (`ciudadID`) REFERENCES `ciudad` (`ciudadID`);

ALTER TABLE `tel_cliente` ADD FOREIGN KEY (`clienteID`) REFERENCES `cliente` (`clienteID`);

ALTER TABLE `vehiculo` ADD FOREIGN KEY (`clienteID`) REFERENCES `cliente` (`clienteID`);

ALTER TABLE `vehiculo` ADD FOREIGN KEY (`marcaID`) REFERENCES `marca` (`marcaID`);

ALTER TABLE `cita` ADD FOREIGN KEY (`servicioID`) REFERENCES `servicio` (`servicioID`);

ALTER TABLE `cita` ADD FOREIGN KEY (`vehiculoID`) REFERENCES `vehiculo` (`vehiculoID`);

ALTER TABLE `cita` ADD FOREIGN KEY (`clienteID`) REFERENCES `cliente` (`clienteID`);

ALTER TABLE `reparacion` ADD FOREIGN KEY (`vehiculoID`) REFERENCES `vehiculo` (`vehiculoID`);

ALTER TABLE `reparacion` ADD FOREIGN KEY (`servicioID`) REFERENCES `servicio` (`servicioID`);

ALTER TABLE `reparacion` ADD FOREIGN KEY (`empleadoID`) REFERENCES `empleado` (`empleadoID`);

ALTER TABLE `factura` ADD FOREIGN KEY (`clienteID`) REFERENCES `cliente` (`clienteID`);

ALTER TABLE `factura_reparacion` ADD FOREIGN KEY (`facturaID`) REFERENCES `factura` (`facturaID`);

ALTER TABLE `factura_reparacion` ADD FOREIGN KEY (`reparacionID`) REFERENCES `reparacion` (`reparacionID`);

ALTER TABLE `tel_proveedor` ADD FOREIGN KEY (`proveedorID`) REFERENCES `proveedor` (`proveedorID`);

ALTER TABLE `pieza` ADD FOREIGN KEY (`proveedorID`) REFERENCES `proveedor` (`proveedorID`);

ALTER TABLE `reparacion_pieza` ADD FOREIGN KEY (`piezaID`) REFERENCES `pieza` (`piezaID`);

ALTER TABLE `reparacion_pieza` ADD FOREIGN KEY (`reparacionID`) REFERENCES `reparacion` (`reparacionID`);

ALTER TABLE `inventario` ADD FOREIGN KEY (`piezaID`) REFERENCES `pieza` (`piezaID`);

ALTER TABLE `ordencompra` ADD FOREIGN KEY (`proveedorID`) REFERENCES `proveedor` (`proveedorID`);

ALTER TABLE `ordencompra` ADD FOREIGN KEY (`empleadoID`) REFERENCES `empleado` (`empleadoID`);

ALTER TABLE `tel_empleado` ADD FOREIGN KEY (`empleadoID`) REFERENCES `empleado` (`empleadoID`);

ALTER TABLE `orden_detalle` ADD FOREIGN KEY (`ordenID`) REFERENCES `ordencompra` (`ordenID`);

ALTER TABLE `orden_detalle` ADD FOREIGN KEY (`piezaID`) REFERENCES `pieza` (`piezaID`);

ALTER TABLE `empleado` ADD FOREIGN KEY (`cargoID`) REFERENCES `cargo` (`cargoID`);

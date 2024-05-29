CREATE TABLE `gama_producto` (
  `cod_gama` int(11) PRIMARY KEY,
  `nombre` varchar(50),
  `descripcion_texto` text,
  `descripcion_html` text,
  `imagen` varchar(256)
);

CREATE TABLE `producto` (
  `cod_producto` varchar(15) PRIMARY KEY,
  `nombre` varchar(70) NOT NULL,
  `cod_gama` int(11),
  `dimensiones` varchar(25),
  `proveedor` varchar(50),
  `descripcion` text,
  `cantidad_en_stock` smallint(6) NOT NULL,
  `precio_venta` decimal(15,2) NOT NULL,
  `precio_proveedor` decimal(15,2)
);

CREATE TABLE `pais` (
  `cod_pais` int(11) PRIMARY KEY,
  `nombre` varchar(50)
);

CREATE TABLE `region` (
  `cod_region` int(11) PRIMARY KEY,
  `nombre` varchar(50),
  `cod_pais` int(11)
);

CREATE TABLE `ciudad` (
  `cod_ciudad` int(11) PRIMARY KEY,
  `nombre` varchar(50),
  `cod_region` int(11)
);

CREATE TABLE `sede` (
  `cod_sede` int(3) PRIMARY KEY,
  `nombre` varchar(15)
);

CREATE TABLE `oficina` (
  `cod_oficina` varchar(10) PRIMARY KEY,
  `nombre` varchar(20),
  `cod_sede` int(3)
);

CREATE TABLE `direccion_oficina` (
  `cod_direccion` int(11) PRIMARY KEY,
  `cod_postal` int(10),
  `cod_oficina` varchar(10),
  `cod_ciudad` int(10)
);

CREATE TABLE `tel_oficina` (
  `cod_tel` int(3) PRIMARY KEY,
  `telefono` varchar(15),
  `cod_oficina` varchar(10)
);

CREATE TABLE `cargo` (
  `cod_cargo` int(3) PRIMARY KEY,
  `nombre` varchar(50)
);

CREATE TABLE `empleado` (
  `cod_empleado` int(11) PRIMARY KEY,
  `nombre` varchar(50) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50),
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cod_oficina` varchar(10) NOT NULL,
  `cod_jefe` int(11),
  `cod_cargo` int(3)
);

CREATE TABLE `tel_empleado` (
  `cod_tel` int(3) PRIMARY KEY,
  `telefono` varchar(15),
  `cod_empleado` int(11)
);

CREATE TABLE `cliente` (
  `cod_cliente` int(11) PRIMARY KEY,
  `nombre_cliente` varchar(50) NOT NULL,
  `nombre_contacto` varchar(30),
  `apellido_contacto` varchar(30),
  `cod_rep_ventas` int(11)
);

CREATE TABLE `direccion_cliente` (
  `cod_direccion` int(11) PRIMARY KEY,
  `cod_postal` int(10),
  `cod_cliente` int(11),
  `cod_ciudad` int(10)
);

CREATE TABLE `tel_cliente` (
  `cod_tel` int(3) PRIMARY KEY,
  `telefono` varchar(15),
  `cod_cliente` int(11)
);

CREATE TABLE `pago` (
  `cod_pago` varchar(50),
  `forma_pago` varchar(40) NOT NULL,
  `fecha_pago` date NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `cod_cliente` int(11) NOT NULL
);

CREATE TABLE `pedido` (
  `cod_pedido` int(11) PRIMARY KEY,
  `fecha_pedido` date NOT NULL,
  `fecha_esperada` date NOT NULL,
  `fecha_entrega` date,
  `estado` varchar(15) NOT NULL,
  `comentarios` text,
  `cod_cliente` int(11)
);

CREATE TABLE `detalle_pedido` (
  `cod_pedido` int(11),
  `cod_producto` varchar(15),
  `cantidad` int(11),
  `precio_unidad` decimal(15,2),
  `num_linea` smallint(6) NOT NULL
);

ALTER TABLE `producto` ADD FOREIGN KEY (`cod_gama`) REFERENCES `gama_producto` (`cod_gama`);

ALTER TABLE `region` ADD FOREIGN KEY (`cod_pais`) REFERENCES `pais` (`cod_pais`);

ALTER TABLE `ciudad` ADD FOREIGN KEY (`cod_region`) REFERENCES `region` (`cod_region`);

ALTER TABLE `tel_empleado` ADD FOREIGN KEY (`cod_empleado`) REFERENCES `empleado` (`cod_empleado`);

ALTER TABLE `empleado` ADD FOREIGN KEY (`cod_cargo`) REFERENCES `cargo` (`cod_cargo`);

ALTER TABLE `oficina` ADD FOREIGN KEY (`cod_sede`) REFERENCES `sede` (`cod_sede`);

ALTER TABLE `tel_oficina` ADD FOREIGN KEY (`cod_oficina`) REFERENCES `oficina` (`cod_oficina`);

ALTER TABLE `empleado` ADD FOREIGN KEY (`cod_oficina`) REFERENCES `oficina` (`cod_oficina`);

ALTER TABLE `empleado` ADD FOREIGN KEY (`cod_empleado`) REFERENCES `empleado` (`cod_jefe`);

ALTER TABLE `direccion_oficina` ADD FOREIGN KEY (`cod_ciudad`) REFERENCES `ciudad` (`cod_ciudad`);

ALTER TABLE `direccion_oficina` ADD FOREIGN KEY (`cod_oficina`) REFERENCES `oficina` (`cod_oficina`);

ALTER TABLE `pago` ADD FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`);

ALTER TABLE `cliente` ADD FOREIGN KEY (`cod_rep_ventas`) REFERENCES `empleado` (`cod_empleado`);

ALTER TABLE `tel_cliente` ADD FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`);

ALTER TABLE `pedido` ADD FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`);

ALTER TABLE `detalle_pedido` ADD FOREIGN KEY (`cod_producto`) REFERENCES `producto` (`cod_producto`);

ALTER TABLE `detalle_pedido` ADD FOREIGN KEY (`cod_pedido`) REFERENCES `pedido` (`cod_pedido`);

ALTER TABLE `direccion_cliente` ADD FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`);

ALTER TABLE `direccion_cliente` ADD FOREIGN KEY (`cod_ciudad`) REFERENCES `ciudad` (`cod_ciudad`);

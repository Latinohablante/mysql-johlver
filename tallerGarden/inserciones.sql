-- INSERCIONES


-- Inserciones gama_producto
INSERT INTO `gama_producto` (cod_gama, nombre, descripcion_texto, descripcion_html, imagen) VALUES
(1, 'Electrónica', 'Dispositivos electrónicos avanzados.', '<p>Dispositivos electrónicos avanzados.</p>', 'electronica.jpg'),
(2, 'Hogar', 'Artículos para el hogar y decoración.', '<p>Artículos para el hogar y decoración.</p>', 'hogar.jpg'),
(3, 'Juguetes', 'Juguetes para todas las edades.', '<p>Juguetes para todas las edades.</p>', 'juguetes.jpg'),
(4, 'Ropa', 'Moda y vestimenta de calidad.', '<p>Moda y vestimenta de calidad.</p>', 'ropa.jpg'),
(5, 'Deportes', 'Artículos deportivos de alto rendimiento.', '<p>Artículos deportivos de alto rendimiento.</p>', 'deportes.jpg'),
(6, 'Libros', 'Libros y material de lectura.', '<p>Libros y material de lectura.</p>', 'libros.jpg'),
(7, 'Automotriz', 'Accesorios y piezas para autos.', '<p>Accesorios y piezas para autos.</p>', 'automotriz.jpg'),
(8, 'Jardín', 'Herramientas y decoraciones para jardín.', '<p>Herramientas y decoraciones para jardín.</p>', 'jardin.jpg'),
(9, 'Oficina', 'Material de oficina y suministros.', '<p>Material de oficina y suministros.</p>', 'oficina.jpg'),
(10, 'Salud', 'Productos de salud y bienestar.', '<p>Productos de salud y bienestar.</p>', 'salud.jpg');


-- Inserciones producto
INSERT INTO `producto` (cod_producto, nombre, cod_gama, dimensiones, proveedor, descripcion, cantidad_en_stock, precio_venta, precio_proveedor) VALUES
('P001', 'Laptop', 1, '35x25x2 cm', 'Proveedor A', 'Laptop de última generación.', 50, 1200.00, 900.00),
('P002', 'Refrigerador', 2, '70x80x180 cm', 'Proveedor B', 'Refrigerador con congelador.', 20, 600.00, 450.00),
('P003', 'Osito de Peluche', 3, '40x20x20 cm', 'Proveedor C', 'Osito de peluche suave.', 150, 25.00, 15.00),
('P004', 'Camisa', 4, 'L', 'Proveedor D', 'Camisa de algodón.', 200, 35.00, 20.00),
('P005', 'Bicicleta', 5, '150x60x100 cm', 'Proveedor E', 'Bicicleta de montaña.', 30, 350.00, 250.00),
('P006', 'Libro de Historia', 6, '20x15x5 cm', 'Proveedor F', 'Libro de historia mundial.', 120, 20.00, 10.00),
('P007', 'Llantas', 7, 'R16', 'Proveedor G', 'Llantas de alta durabilidad.', 80, 100.00, 60.00),
('P008', 'Tijeras de Jardín', 8, '25x10x5 cm', 'Proveedor H', 'Tijeras para poda.', 60, 15.00, 8.00),
('P009', 'Silla de Oficina', 9, '50x50x120 cm', 'Proveedor I', 'Silla ergonómica.', 40, 120.00, 85.00),
('P010', 'Vitaminas', 10, '10x5x5 cm', 'Proveedor J', 'Vitaminas y suplementos.', 100, 25.00, 15.00);


-- Inserciones pais
INSERT INTO `pais` (cod_pais, nombre) VALUES
(1, 'Estados Unidos'),
(2, 'Canadá'),
(3, 'México'),
(4, 'Brasil'),
(5, 'Argentina'),
(6, 'Reino Unido'),
(7, 'Francia'),
(8, 'Alemania'),
(9, 'Japón'),
(10, 'Australia');


-- Inserciones region
INSERT INTO `region` (cod_region, nombre, cod_pais) VALUES
(1, 'California', 1),
(2, 'Ontario', 2),
(3, 'Ciudad de México', 3),
(4, 'São Paulo', 4),
(5, 'Buenos Aires', 5),
(6, 'Londres', 6),
(7, 'París', 7),
(8, 'Berlín', 8),
(9, 'Tokio', 9),
(10, 'Sydney', 10);


-- Inserciones ciudad
INSERT INTO `ciudad` (cod_ciudad, nombre, cod_region) VALUES
(1, 'Los Ángeles', 1),
(2, 'Toronto', 2),
(3, 'Ciudad de México', 3),
(4, 'São Paulo', 4),
(5, 'Buenos Aires', 5),
(6, 'Londres', 6),
(7, 'París', 7),
(8, 'Berlín', 8),
(9, 'Tokio', 9),
(10, 'Sydney', 10);


-- Inserciones sede
INSERT INTO `sede` (cod_sede, nombre) VALUES
(1, 'Central'),
(2, 'Norte'),
(3, 'Sur'),
(4, 'Este'),
(5, 'Oeste'),
(6, 'Europa'),
(7, 'Asia'),
(8, 'Latam'),
(9, 'Australia'),
(10, 'África');


-- Inserciones oficina
INSERT INTO `oficina` (cod_oficina, nombre, cod_sede) VALUES
('OFC1', 'Oficina Central', 1),
('OFC2', 'Oficina Norte', 2),
('OFC3', 'Oficina Sur', 3),
('OFC4', 'Oficina Este', 4),
('OFC5', 'Oficina Oeste', 5),
('OFC6', 'Oficina Europa', 6),
('OFC7', 'Oficina Asia', 7),
('OFC8', 'Oficina Latam', 8),
('OFC9', 'Oficina Australia', 9),
('OFC10', 'Oficina África', 10);


-- Inserciones direccion_oficina
INSERT INTO `direccion_oficina` (cod_direccion, cod_postal, cod_oficina, cod_ciudad) VALUES
(1, 90001, 'OFC1', 1),
(2, 10001, 'OFC2', 2),
(3, 20001, 'OFC3', 3),
(4, 30001, 'OFC4', 4),
(5, 40001, 'OFC5', 5),
(6, 50001, 'OFC6', 6),
(7, 60001, 'OFC7', 7),
(8, 70001, 'OFC8', 8),
(9, 80001, 'OFC9', 9),
(10, 90001, 'OFC10', 10);


-- Inserciones tel_oficina
INSERT INTO `tel_oficina` (cod_tel, telefono, cod_oficina) VALUES
(1, '1234567890', 'OFC1'),
(2, '2345678901', 'OFC2'),
(3, '3456789012', 'OFC3'),
(4, '4567890123', 'OFC4'),
(5, '5678901234', 'OFC5'),
(6, '6789012345', 'OFC6'),
(7, '7890123456', 'OFC7'),
(8, '8901234567', 'OFC8'),
(9, '9012345678', 'OFC9'),
(10, '0123456789', 'OFC10');


-- Inserciones cargo
INSERT INTO `cargo` (cod_cargo, nombre) VALUES
(1, 'Gerente'),
(2, 'Subgerente'),
(3, 'Jefe de Departamento'),
(4, 'Analista'),
(5, 'Desarrollador'),
(6, 'Vendedor'),
(7, 'Soporte Técnico'),
(8, 'Marketing'),
(9, 'Recursos Humanos'),
(10, 'Contabilidad');


-- Inserciones empleado
INSERT INTO `empleado` (cod_empleado, nombre, apellido1, apellido2, extension, email, cod_oficina, cod_jefe, cod_cargo) VALUES
(1, 'John', 'Doe', 'Smith', '1001', 'john.doe@empresa.com', 'OFC1', NULL, 1),
(2, 'Jane', 'Roe', 'Doe', '1002', 'jane.roe@empresa.com', 'OFC1', 1, 2),
(3, 'Alice', 'Johnson', 'Brown', '1003', 'alice.johnson@empresa.com', 'OFC2', 1, 3),
(4, 'Bob', 'Smith', 'Johnson', '1004', 'bob.smith@empresa.com', 'OFC2', 2, 4),
(5, 'Charlie', 'Williams', 'Jones', '1005', 'charlie.williams@empresa.com', 'OFC3', 3, 5),
(6, 'David', 'Brown', 'Williams', '1006', 'david.brown@empresa.com', 'OFC3', 3, 6),
(7, 'Eve', 'Jones', 'Brown', '1007', 'eve.jones@empresa.com', 'OFC4', 4, 7),
(8, 'Frank', 'Davis', 'Smith', '1008', 'frank.davis@empresa.com', 'OFC4', 5, 8),
(9, 'Grace', 'Martinez', 'Johnson', '1009', 'grace.martinez@empresa.com', 'OFC5', 6, 9),
(10, 'Hank', 'Garcia', 'Williams', '1010', 'hank.garcia@empresa.com', 'OFC5', 7, 10);


-- Inserciones tel_empleado
INSERT INTO `tel_empleado` (cod_tel, telefono, cod_empleado) VALUES
(1, '123-456-7890', 1),
(2, '234-567-8901', 2),
(3, '345-678-9012', 3),
(4, '456-789-0123', 4),
(5, '567-890-1234', 5),
(6, '678-901-2345', 6),
(7, '789-012-3456', 7),
(8, '890-123-4567', 8),
(9, '901-234-5678', 9),
(10, '012-345-6789', 10);

-- Inserciones cliente
INSERT INTO `cliente` (cod_cliente, nombre_cliente, nombre_contacto, apellido_contacto, cod_rep_ventas) VALUES
(1, 'Acme Corp', 'Carl', 'Smith', 1),
(2, 'Globex Inc', 'Linda', 'Johnson', 2),
(3, 'Soylent Corp', 'Michael', 'Williams', 3),
(4, 'Initech', 'Sarah', 'Jones', 4),
(5, 'Hooli', 'John', 'Brown', 5),
(6, 'Umbrella Corp', 'David', 'Davis', 6),
(7, 'Stark Industries', 'Emma', 'Martinez', 7),
(8, 'Wayne Enterprises', 'James', 'Garcia', 8),
(9, 'Wonka Industries', 'Olivia', 'Lee', 9),
(10, 'Duff Beer', 'Chris', 'Kim', 10),
(11, 'Sin pago', null, 'cero', null);

-- Inserciones direccion_cliente
INSERT INTO `direccion_cliente` (cod_direccion, cod_postal, cod_cliente, cod_ciudad) VALUES
(1, 90210, 1, 1),
(2, 10001, 2, 2),
(3, 20001, 3, 3),
(4, 30001, 4, 4),
(5, 40001, 5, 5),
(6, 50001, 6, 6),
(7, 60001, 7, 7),
(8, 70001, 8, 8),
(9, 80001, 9, 9),
(10, 90001, 10, 10);


-- Inserciones tel_cliente
INSERT INTO `tel_cliente` (cod_tel, telefono, cod_cliente) VALUES
(1, '111-111-1111', 1),
(2, '222-222-2222', 2),
(3, '333-333-3333', 3),
(4, '444-444-4444', 4),
(5, '555-555-5555', 5),
(6, '666-666-6666', 6),
(7, '777-777-7777', 7),
(8, '888-888-8888', 8),
(9, '999-999-9999', 9),
(10, '000-000-0000', 10);


-- Inserciones pago
INSERT INTO `pago` (cod_pago, forma_pago, fecha_pago, total, cod_cliente) VALUES
('PAG001', 'Tarjeta de Crédito', '2024-01-15', 1500.00, 1),
('PAG002', 'Transferencia Bancaria', '2024-02-10', 2000.00, 2),
('PAG003', 'PayPal', '2024-03-05', 500.00, 3),
('PAG004', 'Tarjeta de Crédito', '2024-04-01', 750.00, 4),
('PAG005', 'Efectivo', '2024-05-20', 1200.00, 5),
('PAG006', 'Transferencia Bancaria', '2024-06-15', 3000.00, 6),
('PAG007', 'PayPal', '2024-07-10', 450.00, 7),
('PAG008', 'Efectivo', '2024-08-05', 900.00, 8),
('PAG009', 'Tarjeta de Crédito', '2024-09-01', 1100.00, 9),
('PAG010', 'Transferencia Bancaria', '2024-10-20', 2500.00, 10);
('PAG011', 'Tarjeta de Crédito', '2008-01-10', 1600.00, 1),
('PAG012', 'Transferencia Bancaria', '2008-02-15', 2100.00, 2),
('PAG013', 'PayPal', '2008-03-20', 550.00, 3),
('PAG014', 'Efectivo', '2008-04-25', 800.00, 4),
('PAG021', 'Tarjeta de Crédito', '2007-01-05', 1550.00, 1),
('PAG022', 'Transferencia Bancaria', '2007-02-10', 2050.00, 2),
('PAG023', 'PayPal', '2008-07-10', 450.00, 7);


-- Inserciones pedido
INSERT INTO `pedido` (cod_pedido, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentarios, cod_cliente) VALUES
(1, '2024-01-01', '2024-01-15', '2024-01-14', 'Entregado', 'Ningún comentario.', 1),
(2, '2024-02-01', '2024-02-15', '2024-02-13', 'Entregado', 'Cliente satisfecho.', 2),
(3, '2024-03-01', '2024-03-15', '2024-03-14', 'Entregado', 'Entrega rápida.', 3),
(4, '2024-04-01', '2024-04-15', '2024-04-14', 'Entregado', 'Buen servicio.', 4),
(5, '2024-05-01', '2024-05-15', '2024-05-14', 'Entregado', 'Producto en buen estado.', 5),
(6, '2024-06-01', '2024-06-15', '2024-06-14', 'Entregado', 'Sin problemas.', 6),
(7, '2024-07-01', '2024-07-15', '2024-07-14', 'Entregado', 'Cliente contento.', 7),
(8, '2024-08-01', '2024-08-15', '2024-08-14', 'Entregado', 'Entrega perfecta.', 8),
(9, '2024-09-01', '2024-09-15', '2024-09-14', 'Entregado', 'Todo bien.', 9),
(10, '2024-10-01', '2024-10-15', '2024-10-14', 'Entregado', 'Sin comentarios.', 10),
(11, '2024-11-01', '2024-11-15', '2024-11-14', 'Pendiente', 'Esperando confirmación.', 1),
(12, '2024-12-01', '2024-12-15', NULL, 'Cancelado', 'Pedido cancelado por el cliente.', 2),
(13, '2024-11-10', '2024-11-25', '2024-11-24', 'En proceso', 'Procesando el pedido.', 3),
(14, '2024-12-05', '2024-12-20', NULL, 'En espera', 'En espera de stock.', 4),
(15, '2024-12-10', '2024-12-25', '2024-12-24', 'Entregado', 'Entrega rápida.', 5),
(16, '2024-11-20', '2024-12-05', NULL, 'En proceso', 'Pedido en preparación.', 6),
(17, '2024-11-25', '2024-12-10', NULL, 'Pendiente', 'Pendiente de pago.', 7),
(18, '2024-12-15', '2024-12-30', '2024-12-29', 'Entregado', 'Cliente satisfecho.', 8),
(19, '2024-12-20', '2025-01-05', NULL, 'En proceso', 'Enviado al almacén.', 9),
(20, '2024-12-25', '2025-01-10', NULL, 'Pendiente', 'Esperando confirmación.', 10);
(21, '2024-01-05', '2024-01-20', '2024-01-22', 'Entregado', 'Entrega retrasada debido a problemas logísticos.', 1),
(22, '2024-02-10', '2024-02-25', '2024-02-28', 'Entregado', 'Retraso por mal tiempo.', 2),
(23, '2024-03-15', '2024-03-30', '2024-04-02', 'Entregado', 'Demora en la aduana.', 3),
(24, '2009-03-15', '2009-03-30', '2009-04-02', 'Rechazado', 'Demora en la aduana.', 3);


-- Inserciones detalle_pedido
INSERT INTO `detalle_pedido` (cod_pedido, cod_producto, cantidad, precio_unidad, num_linea) VALUES
(1, 'P001', 1, 1200.00, 1),
(1, 'P003', 2, 25.00, 2),
(2, 'P002', 1, 600.00, 1),
(2, 'P004', 3, 35.00, 2),
(3, 'P005', 1, 350.00, 1),
(3, 'P006', 5, 20.00, 2),
(4, 'P007', 4, 100.00, 1),
(5, 'P008', 10, 15.00, 1),
(6, 'P009', 2, 120.00, 1),
(7, 'P010', 20, 25.00, 1),
(8, 'P001', 1, 1200.00, 1),
(8, 'P002', 1, 600.00, 2),
(9, 'P003', 5, 25.00, 1),
(9, 'P004', 2, 35.00, 2),
(10, 'P005', 1, 350.00, 1),
(10, 'P006', 3, 20.00, 2);




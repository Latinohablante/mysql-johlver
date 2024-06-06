-- Datos para la tabla pais
INSERT INTO pais (paisID, nombre) VALUES 
(1, 'España'),
(2, 'México'),
(3, 'Argentina'),
(4, 'Colombia'),
(5, 'Perú'),
(6, 'Chile'),
(7, 'Brasil'),
(8, 'Uruguay'),
(9, 'Paraguay'),
(10, 'Venezuela');

-- Datos para la tabla departamento
INSERT INTO departamento (depID, nombre, paisID) VALUES 
(1, 'Madrid', 1),
(2, 'Cataluña', 1),
(3, 'Ciudad de México', 2),
(4, 'Buenos Aires', 3),
(5, 'Bogotá', 4),
(6, 'Lima', 5),
(7, 'Santiago', 6),
(8, 'Río de Janeiro', 7),
(9, 'Montevideo', 8),
(10, 'Caracas', 10);

-- Datos para la tabla ciudad
INSERT INTO ciudad (ciudadID, nombre, depID) VALUES 
(1, 'Madrid', 1),
(2, 'Barcelona', 2),
(3, 'CDMX', 3),
(4, 'Buenos Aires', 4),
(5, 'Bogotá', 5),
(6, 'Lima', 6),
(7, 'Santiago', 7),
(8, 'Río de Janeiro', 8),
(9, 'Montevideo', 9),
(10, 'Caracas', 10);

-- Datos para la tabla cliente
INSERT INTO cliente (clienteID, nombre, apellido, email) VALUES 
(1, 'Juan', 'Pérez', 'juan.perez@example.com'),
(2, 'María', 'García', 'maria.garcia@example.com'),
(3, 'Pedro', 'González', 'pedro.gonzalez@example.com'),
(4, 'Lucía', 'Martínez', 'lucia.martinez@example.com'),
(5, 'José', 'Rodríguez', 'jose.rodriguez@example.com'),
(6, 'Ana', 'López', 'ana.lopez@example.com'),
(7, 'Carlos', 'Sánchez', 'carlos.sanchez@example.com'),
(8, 'Elena', 'Fernández', 'elena.fernandez@example.com'),
(9, 'David', 'Gómez', 'david.gomez@example.com'),
(10, 'Marta', 'Díaz', 'marta.diaz@example.com');

-- Datos para la tabla direccion
INSERT INTO direccion (dirID, denominacion, numero, clienteID, ciudadID) VALUES 
(1, 'Calle Falsa', 123, 1, 1),
(2, 'Avenida Siempre Viva', 742, 2, 2),
(3, 'Calle Mayor', 456, 3, 3),
(4, 'Plaza Central', 789, 4, 4),
(5, 'Avenida Libertador', 101, 5, 5),
(6, 'Calle Las Flores', 202, 6, 6),
(7, 'Calle Los Pinos', 303, 7, 7),
(8, 'Avenida Atlántica', 404, 8, 8),
(9, 'Calle 18 de Julio', 505, 9, 9),
(10, 'Calle El Rosal', 606, 10, 10);

-- Datos para la tabla tel_cliente
INSERT INTO tel_cliente (telID, numero, clienteID) VALUES 
(1, '600111222', 1),
(2, '600333444', 2),
(3, '600555666', 3),
(4, '600777888', 4),
(5, '600999000', 5),
(6, '600222333', 6),
(7, '600444555', 7),
(8, '600666777', 8),
(9, '600888999', 9),
(10, '600000111', 10);

-- Datos para la tabla vehiculo
INSERT INTO vehiculo (vehiculoID, placa, modelo, clienteID, marcaID) VALUES 
(1, 'ABC123', 'Model S', 1, 1),
(2, 'DEF456', 'Model 3', 2, 1),
(3, 'GHI789', 'Model X', 3, 1),
(4, 'JKL012', 'Model Y', 4, 1),
(5, 'MNO345', 'Cybertruck', 5, 1),
(6, 'PQR678', 'Mustang', 6, 2),
(7, 'STU901', 'F-150', 7, 2),
(8, 'VWX234', 'Escape', 8, 2),
(9, 'YZA567', 'Focus', 9, 2),
(10, 'BCD890', 'Fusion', 10, 2);

-- Datos para la tabla marca
INSERT INTO marca (marcaID, nombre) VALUES 
(1, 'Tesla'),
(2, 'Ford');

-- Datos para la tabla servicio
INSERT INTO servicio (servicioID, nombre, descripcion, costo) VALUES 
(1, 'Cambio de aceite', 'Cambio de aceite y filtro', 50.00),
(2, 'Alineación', 'Alineación y balanceo', 80.00),
(3, 'Revisión general', 'Revisión completa del vehículo', 100.00),
(4, 'Cambio de frenos', 'Sustitución de pastillas de freno', 150.00),
(5, 'Cambio de llantas', 'Sustitución de las cuatro llantas', 400.00),
(6, 'Reparación de motor', 'Reparación completa del motor', 1500.00),
(7, 'Cambio de batería', 'Sustitución de la batería', 200.00),
(8, 'Revisión eléctrica', 'Diagnóstico y reparación del sistema eléctrico', 120.00),
(9, 'Cambio de amortiguadores', 'Sustitución de los amortiguadores', 300.00),
(10, 'Cambio de bujías', 'Sustitución de bujías', 70.00);

-- Datos para la tabla empleado
INSERT INTO empleado (empleadoID, nombre, apellido1, apellido2, cargoID) VALUES 
(1, 'Andrés', 'Gutiérrez', 'López', 1),
(2, 'Carlos', 'Fernández', 'Martínez', 2),
(3, 'Luisa', 'Ramírez', 'González', 3),
(4, 'Miguel', 'Pérez', 'Sánchez', 4),
(5, 'Sofía', 'Rodríguez', 'Díaz', 5),
(6, 'Pablo', 'Gómez', 'Moreno', 1),
(7, 'Ana', 'López', 'Hernández', 2),
(8, 'Juan', 'Martínez', 'Ruiz', 3),
(9, 'María', 'García', 'Jiménez', 4),
(10, 'Pedro', 'Hernández', 'Pérez', 5);

-- Datos para la tabla tel_empleado
INSERT INTO tel_empleado (telID, numero, empleadoID) VALUES 
(1, '700111222', 1),
(2, '700333444', 2),
(3, '700555666', 3),
(4, '700777888', 4),
(5, '700999000', 5),
(6, '700222333', 6),
(7, '700444555', 7),
(8, '700666777', 8),
(9, '700888999', 9),
(10, '700000111', 10);

-- Datos para la tabla cargo
INSERT INTO cargo (cargoID, nombre) VALUES 
(1, 'Mecánico'),
(2, 'Recepcionista'),
(3, 'Administrador'),
(4, 'Contador'),
(5, 'Gerente');

-- Datos para la tabla cita
INSERT INTO cita (citaID, fechaHora, clienteID, vehiculoID, servicioID) VALUES 
(1, '2023-06-01 08:00:00', 1, 1, 1),
(2, '2023-06-01 09:00:00', 2, 2, 2),
(3, '2023-06-01 10:00:00', 3, 3, 3),
(4, '2023-06-01 11:00:00', 4, 4, 4),
(5, '2023-06-01 12:00:00', 5, 5, 5),
(6, '2023-06-01 13:00:00', 6, 6, 6),
(7, '2023-06-01 14:00:00', 7, 7, 7),
(8, '2023-06-01 15:00:00', 8, 8, 8),
(9, '2023-06-01 16:00:00', 9, 9, 9),
(10, '2023-06-01 17:00:00', 10, 10, 10);

-- Datos para la tabla reparacion
INSERT INTO reparacion (reparacionID, fecha, costoTotal, descripcion, vehiculoID, servicioID, empleadoID) VALUES 
(1, '2023-06-01', 150.00, 'Cambio de aceite y filtro', 1, 1, 1),
(2, '2023-06-01', 200.00, 'Alineación y balanceo', 2, 2, 2),
(3, '2023-06-01', 250.00, 'Revisión completa del vehículo', 3, 3, 3),
(4, '2023-06-01', 300.00, 'Sustitución de pastillas de freno', 4, 4, 4),
(5, '2023-06-01', 350.00, 'Sustitución de las cuatro llantas', 5, 5, 5),
(6, '2023-06-01', 400.00, 'Reparación completa del motor', 6, 6, 6),
(7, '2023-06-01', 450.00, 'Sustitución de la batería', 7, 7, 7),
(8, '2023-06-01', 500.00, 'Diagnóstico y reparación del sistema eléctrico', 8, 8, 8),
(9, '2023-06-01', 550.00, 'Sustitución de los amortiguadores', 9, 9, 9),
(10, '2023-06-01', 600.00, 'Sustitución de bujías', 10, 10, 10);

-- Datos para la tabla factura
INSERT INTO factura (facturaID, fecha, total, clienteID) VALUES 
(1, '2023-06-01 18:00:00', 150.00, 1),
(2, '2023-06-01 18:00:00', 200.00, 2),
(3, '2023-06-01 18:00:00', 250.00, 3),
(4, '2023-06-01 18:00:00', 300.00, 4),
(5, '2023-06-01 18:00:00', 350.00, 5),
(6, '2023-06-01 18:00:00', 400.00, 6),
(7, '2023-06-01 18:00:00', 450.00, 7),
(8, '2023-06-01 18:00:00', 500.00, 8),
(9, '2023-06-01 18:00:00', 550.00, 9),
(10, '2023-06-01 18:00:00', 600.00, 10);

-- Datos para la tabla factura_reparacion
INSERT INTO factura_reparacion (facturaID, reparacionID, cantidad) VALUES 
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1);

-- Datos para la tabla proveedor
INSERT INTO proveedor (proveedorID, nombre, contacto, telefono, email) VALUES 
(1, 'Proveedor 1', 'Contacto 1', '800111222', 'contacto1@example.com'),
(2, 'Proveedor 2', 'Contacto 2', '800333444', 'contacto2@example.com'),
(3, 'Proveedor 3', 'Contacto 3', '800555666', 'contacto3@example.com'),
(4, 'Proveedor 4', 'Contacto 4', '800777888', 'contacto4@example.com'),
(5, 'Proveedor 5', 'Contacto 5', '800999000', 'contacto5@example.com'),
(6, 'Proveedor 6', 'Contacto 6', '800222333', 'contacto6@example.com'),
(7, 'Proveedor 7', 'Contacto 7', '800444555', 'contacto7@example.com'),
(8, 'Proveedor 8', 'Contacto 8', '800666777', 'contacto8@example.com'),
(9, 'Proveedor 9', 'Contacto 9', '800888999', 'contacto9@example.com'),
(10, 'Proveedor 10', 'Contacto 10', '800000111', 'contacto10@example.com');

-- Datos para la tabla tel_proveedor
INSERT INTO tel_proveedor (telID, numero, proveedorID) VALUES 
(1, '800111223', 1),
(2, '800333445', 2),
(3, '800555667', 3),
(4, '800777889', 4),
(5, '800999001', 5),
(6, '800222334', 6),
(7, '800444556', 7),
(8, '800666778', 8),
(9, '800888990', 9),
(10, '800000112', 10);

-- Datos para la tabla pieza
INSERT INTO pieza (piezaID, nombre, descripcion, precio, proveedorID) VALUES 
(1, 'Aceite', 'Aceite para motor', 50.00, 1),
(2, 'Filtro de aceite', 'Filtro para aceite de motor', 20.00, 1),
(3, 'Filtro de aire', 'Filtro para aire de motor', 30.00, 2),
(4, 'Pastillas de freno', 'Juego de pastillas de freno', 100.00, 2),
(5, 'Llantas', 'Llantas de alta performance', 150.00, 3),
(6, 'Batería', 'Batería para coche', 200.00, 4),
(7, 'Amortiguadores', 'Amortiguadores de suspensión', 250.00, 5),
(8, 'Bujías', 'Juego de bujías', 70.00, 6),
(9, 'Radiador', 'Radiador para motor', 300.00, 7),
(10, 'Alternador', 'Alternador de coche', 400.00, 8);

-- Datos para la tabla reparacion_piezas
INSERT INTO reparacion_piezas (reparacionID, piezaID, cantidad) VALUES 
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1);

-- Datos para la tabla inventario
INSERT INTO inventario (inventarioID, piezaID, cantidad, ubicacion) VALUES 
(1, 1, 100, 'A1'),
(2, 2, 200, 'B1'),
(3, 3, 300, 'C1'),
(4, 4, 400, 'D1'),
(5, 5, 500, 'E1'),
(6, 6, 600, 'F1'),
(7, 7, 700, 'G1'),
(8, 8, 800, 'H1'),
(9, 9, 900, 'I1'),
(10, 10, 1000, 'J1');

-- Datos para la tabla orden_compra
INSERT INTO orden_compra (ordenID, fecha, proveedorID, empleadoID, total) VALUES 
(1, '2023-06-01', 1, 1, 500.00),
(2, '2023-06-01', 2, 2, 1000.00),
(3, '2023-06-01', 3, 3, 1500.00),
(4, '2023-06-01', 4, 4, 2000.00),
(5, '2023-06-01', 5, 5, 2500.00),
(6, '2023-06-01', 6, 6, 3000.00),
(7, '2023-06-01', 7, 7, 3500.00),
(8, '2023-06-01', 8, 8, 4000.00),
(9, '2023-06-01', 9, 9, 4500.00),
(10, '2023-06-01', 10, 10, 5000.00);

-- Datos para la tabla orden_detalles
INSERT INTO orden_detalles (ordenID, piezaID, cantidad, precio) VALUES 
(1, 1, 10, 50.00),
(2, 2, 20, 20.00),
(3, 3, 30, 30.00),
(4, 4, 40, 100.00),
(5, 5, 50, 150.00),
(6, 6, 60, 200.00),
(7, 7, 70, 250.00),
(8, 8, 80, 70.00),
(9, 9, 90, 300.00),
(10, 10, 100, 400.00);



Creo la base de datos:
```sql
CREATE DATABASE subconsultas;
USE subconsultas;
```

INSERTO LOS DATOS:
```sql
CREATE TABLE departamentos (
id INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único para cada departamento
nombre VARCHAR(100) NOT NULL, -- Nombre del departamento
ubicacion VARCHAR(255) -- Ubicación física del departamento
);

CREATE TABLE empleados (
id INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único para cada empleado
nombre VARCHAR(50) NOT NULL, -- Nombre del empleado
apellido VARCHAR(50) NOT NULL, -- Apellido del empleado
fecha_nacimiento DATE, -- Fecha de nacimiento del empleado
fecha_contratacion DATE, -- Fecha de contratación del empleado
salario DECIMAL(10, 2) NOT NULL, -- Salario del empleado
departamento_id INT, -- Identificador del departamento al que pertenece el empleado
email VARCHAR(100) UNIQUE, -- Correo electrónico del empleado
telefono VARCHAR(15), -- Número de teléfono del empleado
direccion VARCHAR(255), -- Dirección del empleado
ciudad VARCHAR(100), -- Ciudad del empleado
estado VARCHAR(100), -- Estado del empleado
pais VARCHAR(100), -- País del empleado
codigo_postal VARCHAR(10), -- Código postal del empleado
FOREIGN KEY (departamento_id) REFERENCES departamentos(id) -- Clave foránea que referencia la tabla de departamentos
);

-- Insertar algunos departamentos
INSERT INTO departamentos (nombre, ubicacion) VALUES
('Ventas', 'Edificio A, Planta 1'),
('Recursos Humanos', 'Edificio B, Planta 2'),
('Tecnología', 'Edificio C, Planta 3'),
('Contabilidad', 'Edificio A, Planta 2');

-- Insertar algunos empleados
INSERT INTO empleados (nombre, apellido, fecha_nacimiento, fecha_contratacion,
salario, departamento_id, email, telefono, direccion, ciudad, estado, pais,
codigo_postal) VALUES
('Juan', 'García', '1990-05-15', '2015-03-20', 50000, 1,
'juan.garcia@example.com', '123-456-7890', 'Calle Principal 123', 'Ciudad A',
'Estado A', 'País A', '12345'),
('María', 'Martínez', '1985-08-25', '2010-06-10', 60000, 2,
'maria.martinez@example.com', '987-654-3210', 'Avenida Central 456', 'Ciudad B',
'Estado B', 'País B', '54321'),
('Carlos', 'López', '1992-11-30', '2018-09-05', 55000, 3,
'carlos.lopez@example.com', '555-555-5555', 'Paseo Peatonal 789', 'Ciudad C',
'Estado C', 'País C', '67890'),
('Ana', 'González', '1988-03-10', '2012-11-15', 70000, 4,
'ana.gonzalez@example.com', '111-222-3333', 'Carrera Residencial 321', 'Ciudad
D', 'Estado D', 'País D', '98765');
```


# Solucion taller



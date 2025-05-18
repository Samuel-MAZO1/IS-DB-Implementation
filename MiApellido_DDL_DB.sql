CREATE SCHEMA `tienda`;
USE `tienda`;
CREATE TABLE cliente (
`id` INT PRIMARY KEY,
`nombre` VARCHAR (45) NOT NULL,
`apellido` VARCHAR (45) NOT NULL,
`email` VARCHAR(45) NOT NULL UNIQUE,
`telefono` VARCHAR(45),
`createdAt` DATETIME NOT NULL,
`updateAt` DATETIME 
);
CREATE TABLE venta (
`id` INT PRIMARY KEY,
`num_venta` VARCHAR(45) NOT NULL UNIQUE,
`metodo_pago` VARCHAR(45) NOT NULL,
`createdAt` DATETIME NOT NULL,
`updateAt` DATETIME
);
CREATE TABLE empleado(
`id` INT PRIMARY KEY,
`nombre` VARCHAR(45) NOT NULL,
`apellido` VARCHAR(45) NOT NULL,
`cargo` VARCHAR(45) NOT NULL,
`salario` DOUBLE NOT NULL,
`createdAt` DATETIME NOT NULL,
`updatedAt` DATETIME
);
CREATE TABLE detalle_venta (
`id` INT PRIMARY KEY,
`cantidad` INT NOT NULL,
`precio_unitario` DOUBLE NOT NULL UNIQUE,
`createdAt` DATETIME NOT NULL,
`updatedAt` DATETIME
);
CREATE TABLE producto (
`id` INT PRIMARY KEY,
`nombre` VARCHAR(45) NOT NULL,
`precio` DOUBLE NOT NULL,
`cantidad`INT NOT NULL,
`createdAt` DATETIME NOT NULL,
`updatedAt` DATETIME
);
CREATE TABLE categoria(
`id` INT PRIMARY KEY,
`nombre` VARCHAR(45) NOT NULL,
`descripcion` VARCHAR(45),
`createdAt` DATETIME NOT NULL,
`updatedAt` DATETIME
);

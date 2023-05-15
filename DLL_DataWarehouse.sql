CREATE DATABASE seminario2_201404278;
USE seminario2_201404278;

CREATE TABLE Proveedor(
    codigoProveedor varchar(10) PRIMARY KEY,
    nombre varchar(200),
	direccion varchar(200),
	numero varchar(15)
);

CREATE TABLE Cliente(
    codigoCliente varchar(10) PRIMARY KEY,
    nombre varchar(200),
	direccion varchar(200),
	numero varchar(15),
	tipo varchar(15)
);

CREATE TABLE Vendedor(
    codigoVendedor varchar(10) PRIMARY KEY,
    nombre varchar(200)
);

CREATE TABLE Producto(
    codigoProducto varchar(10) PRIMARY KEY,
    nombre varchar(200),
	marca varchar(50),
	categoria varchar(50)
);

CREATE TABLE Sucursal(
    codigoSucursal varchar(10) PRIMARY KEY,
    nombre varchar(50),
	direccion varchar(200)
);

CREATE TABLE Region(
    idRegion INT IDENTITY(1,1) PRIMARY KEY,
    nombre varchar(50)
);

CREATE TABLE Departamento(
    idDepartamento INT IDENTITY(1,1) PRIMARY KEY,
    nombre varchar(50)
);

CREATE TABLE Compra(
    id INT IDENTITY(1,1) PRIMARY KEY,
    unidades int,
	costo decimal(10,2),
	fecha_compra date,
	codigoProveedor varchar(10),
	codigoProducto varchar(10),
	codigoSucursal varchar(10),
	idRegion INT,
	idDepartamento INT,
	FOREIGN KEY(codigoProveedor) REFERENCES Proveedor(codigoProveedor),
	FOREIGN KEY(codigoProducto) REFERENCES Producto(codigoProducto),
	FOREIGN KEY(codigoSucursal) REFERENCES Sucursal(codigoSucursal),
	FOREIGN KEY(idRegion) REFERENCES Region(idRegion),
	FOREIGN KEY(idDepartamento) REFERENCES Departamento(idDepartamento)
);

CREATE TABLE Venta(
    id INT IDENTITY(1,1) PRIMARY KEY,
    unidades int,
	precio decimal(10,2),
	fecha_venta date,
	codigoCliente varchar(10),
	codigoVendedor varchar(10),
	codigoProducto varchar(10),
	codigoSucursal varchar(10),
	idRegion INT,
	idDepartamento INT,
	FOREIGN KEY(codigoCliente) REFERENCES Cliente(codigoCliente),
	FOREIGN KEY(codigoVendedor) REFERENCES Vendedor(codigoVendedor),
	FOREIGN KEY(codigoProducto) REFERENCES Producto(codigoProducto),
	FOREIGN KEY(codigoSucursal) REFERENCES Sucursal(codigoSucursal),
	FOREIGN KEY(idRegion) REFERENCES Region(idRegion),
	FOREIGN KEY(idDepartamento) REFERENCES Departamento(idDepartamento)
);

SELECT COUNT([nombre]) from Proveedor;
SELECT COUNT([nombre]) from Cliente;
SELECT COUNT([nombre]) from Vendedor;
SELECT cOUNT([nombre]) from Producto;
SELECT COUNT([nombre]) from Sucursal;
SELECT COUNT([nombre]) from Region;
SELECT COUNT([nombre]) from Departamento;
SELECT COUNT([id]) from Compra;
SELECT COUNT([id]) from Venta;

SELECT * FROM Temporal_compra;
SELECT * FROM Temporal_venta;
SELECT * from Proveedor;
SELECT * from Cliente;
SELECT * from Vendedor;
SELECT * from Producto;
SELECT * from Sucursal;
SELECT * from Region;
SELECT * from Departamento;
SELECT * from Compra;
SELECT * from Venta;

DELETE FROM Temporal_compra;
DELETE FROM Temporal_venta;
DELETE FROM Compra;
DELETE FROM Venta;
DELETE FROM Proveedor;
DELETE FROM Cliente;
DELETE FROM Vendedor;
DELETE FROM Producto;
DELETE FROM Sucursal;
DELETE FROM Region;
DELETE FROM Departamento;
CREATE DATABASE seminario2_201404278;
USE seminario2_201404278;

CREATE TABLE Temporal_compra(
	fecha varchar(15),
    codProveedor varchar(20),
    nombreProveedor varchar(200),
    direccionProveedor varchar(200),
    numeroProveedor varchar(15),
    webProveedor varchar(5),
    codProducto varchar(20),
    nombreProducto varchar(200),
    marcaProducto varchar(50),
    categoria varchar(50),
    sodSucursal varchar(20),
    nombreSucursal varchar(20),
    direccionSucursal varchar(200),
    region varchar(50),
    departamento varchar(50),
    unidades varchar(15),
    costoU varchar(15)  
);

CREATE TABLE Temporal_venta(
	fecha varchar(15),
    codCliente varchar(20),
    nombreCliente varchar(200),
    tipoCliente varchar(20),
    direccionCliente varchar(200),
    numeroCliente varchar(15),
    codVendedor varchar(15),
    nombreVendedor varchar(200),
    vacacionista varchar(10),
    codProducto varchar(20),
    nombreProducto varchar(200),
    marcaProducto varchar(50),
    categoria varchar(50),
    sodSucursal varchar(20),
    nombreSucursal varchar(20),
    direccionSucursal varchar(200),
    region varchar(50),
    departamento varchar(50),
    unidades varchar(15),
    precioU varchar(15)  
);
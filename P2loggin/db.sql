----------Prueba, nunca habia hecho la coneccion en c#----------------------
CREATE DATABASE loggin
CREATE TABLE usuario
(
	idUsser INT IDENTITY PRIMARY KEY,
	usuario NVARCHAR(12) NOT NULL,
	contra NVARCHAR(15)
)
CREATE TABLE cliente
(
	DPI int not null,
	NIT int PRIMARY KEY,
	nombre NVARCHAR(15),
	apellido NVARCHAR(20),
	correo NVARCHAR(50),
	LLtel int references telefono(id)
	ON UPDATE CASCADE
	ON  DELETE CASCADE,
)
CREATE TABLE telefono
(
	id INT primary key,
	primero INT not null,
	segundo INT
)
CREATE TABLE producto
(
	IDNom int primary key,
	descripcion NVARCHAR(200),
	valor NVARCHAR(10)
)
CREATE TABLE factura
(
	idUsser INT IDENTITY PRIMARY KEY,
	usuario NVARCHAR(12) NOT NULL,
	contra NVARCHAR (10) NOT NULL,
	uso NVARCHAR(200),
	fecha DATE 
)

select*FROM usuario
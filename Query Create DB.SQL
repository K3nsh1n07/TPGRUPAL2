USE MASTER
sp_who2
DROP database TPG2
create database TPG2
use TPG2

CREATE TABLE Alumnos (
    id_alumno INT IDENTITY(1,1), 
    nombre VARCHAR(100),
	apellido VARCHAR(100),
	dni INT,
	email VARCHAR(50),
    turno varchar(10)

	CONSTRAINT pkidAlumnos PRIMARY KEY (id_alumno)
)



CREATE TABLE comentarios (
    id_comentario INT IDENTITY(1,1), 
	dni int,
	apellido varchar(100),
	texto varchar(4000)

	CONSTRAINT pkComentarios PRIMARY KEY (id_comentario)
)
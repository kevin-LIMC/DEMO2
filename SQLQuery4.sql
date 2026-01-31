create database GestionEscolar;
go

use GestionEscolar;
go

create table ESTUDIANTES(
IdEstudiante int primary key identity (1,1),
Nombre VARCHAR(100) NOT NULL,
Edad int not null,
curso varchar (50) not null
);

create table PROFESORES(
IdProfesor int primary key identity(1,1),
Nombre varchar(100) not null,
Especialidad varchar (100) not null,
Email varchar (100)
);

create table CLASES(
IdClase int primary key identity(1,1),
IdEstudiante int foreign key references ESTUDIANTES(IdEstudiante),
IdProfesor int foreign key references PROFESORES(IdProfesor),
NombreClase VARCHAR(100) NOT NULL
);

INSERT INTO ESTUDIANTES (Nombre, Edad, Curso) VALUES
('María González', 15, '10° Grado'),
('Carlos Pérez', 16, '11° Grado'),
('Ana Rodríguez', 14, '9° Grado'),
('Luis Martínez', 17, '12° Grado');

INSERT INTO PROFESORES (Nombre, Especialidad, Email) VALUES
('Dr. Roberto Sánchez', 'Matemáticas', 'roberto.sanchez@escuela.edu'),
('Dra. Laura Fernández', 'Ciencias Naturales', 'laura.fernandez@escuela.edu'),
('Lic. Jorge Gómez', 'Historia', 'jorge.gomez@escuela.edu'),
('Mtra. Patricia López', 'Literatura', 'patricia.lopez@escuela.edu');

INSERT INTO CLASES (IdEstudiante, IdProfesor, NombreClase) VALUES
(1, 1, 'Álgebra I'),         
(2, 2, 'Biología Avanzada'), 
(3, 3, 'Historia Universal'), 
(4, 4, 'Literatura Española');

PRINT '=== DATOS DE ESTUDIANTES ===';
SELECT * FROM ESTUDIANTES;

PRINT '=== DATOS DE PROFESORES ===';
SELECT * FROM PROFESORES;

PRINT '=== DATOS DE CLASES ===';
SELECT * FROM CLASES;
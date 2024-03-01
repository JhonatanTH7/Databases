CREATE DATABASE ejercicio_1;

USE ejercicio_1;

CREATE TABLE Centros_educativos (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(40),
    direccion VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE Estudiantes (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(40) NOT NULL,
    apellido VARCHAR(40) NOT NULL,
    fecha_nacimiento DATE,
    id_centro_educativo INT,
    CONSTRAINT fk_centro_educativo FOREIGN KEY (id_centro_educativo)
        REFERENCES Centros_educativos (id)
);
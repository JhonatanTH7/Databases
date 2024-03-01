CREATE DATABASE unidades_residenciales;

USE unidades_residenciales;

CREATE TABLE conjuntos (
    nit_conjunto VARCHAR(11) PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL CHECK(nombre NOT IN ("Santana","Altos","Montes")),
    estrato INT NOT NULL
);

CREATE TABLE vigilantes (
    cc_vigilante VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    fecha_nacimiento DATE,
    genero VARCHAR(4) CHECK (genero IN ('F' , 'M', 'Otro'))
);

CREATE TABLE edificios (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nro_pisos INT CHECK (nro_pisos BETWEEN 5 AND 8),
    ubicacion VARCHAR(40)
);

ALTER TABLE edificios ADD COLUMN id_conjunto VARCHAR(11);

ALTER TABLE edificios ADD CONSTRAINT fk_id_conjunto FOREIGN KEY (id_conjunto) REFERENCES conjuntos(nit_conjunto);

CREATE TABLE novedades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_edificio INT,
    id_vigilante VARCHAR(10),
    CONSTRAINT fk_id_edificio FOREIGN KEY (id_edificio)
        REFERENCES edificios (id),
    CONSTRAINT fk_id_vigilante FOREIGN KEY (id_vigilante)
        REFERENCES vigilantes (cc_vigilante)
);

CREATE TABLE apartamentos (
    nro_apartamentos INT PRIMARY KEY AUTO_INCREMENT,
    piso INT NOT NULL,
    valor DOUBLE CHECK (valor BETWEEN 10000 AND 100000),
    id_edificio INT,
    CONSTRAINT fk_id_edificio2 FOREIGN KEY (id_edificio)
        REFERENCES edificios (id)
);

ALTER TABLE edificios ADD COLUMN sector VARCHAR(30) CHECK(sector IN ("Piscina","Alameda","Cancha"));

#Insertando en conjunto
INSERT INTO conjuntos VALUES("1","Conjunto1","1"),("2","Conjunto2","2"),("3","Conjunto3","3");
SELECT * FROM conjuntos;

INSERT INTO edificios(nro_pisos,sector) VALUES(5,"Piscina");
SELECT * FROM edificios;

INSERT INTO vigilantes VALUES("12345","Federico","1984-05-05","m");
SELECT * FROM vigilantes;

-- ENTRAR AL MYSQL LOCAL POR CONSOLA
-- -- LINUX
-- -- -- mysql -u root -p

-- -- WINDOWS
-- -- -- ruta: dicolocal>xampp>mysql>bin
-- -- -- click derecho y abrimos terminal en la carpeta
-- -- -- mysql -u root -p

-- -- -- abrimos un cmd y hacemos cd .. hasta terminar en el C
-- -- -- cd xampp
-- -- -- cd mysql
-- -- -- cd bin
-- -- -- mysql -u root -p
-- -- -- Si tenemos contraeña la ponemos si no damos enter



-- LISTAR LAS BASES DE DATOS CREADAS EN MYSQL
-- -- SHOW DATABASES

-- CREAR UNA BASE DE DATOS
-- -- CREATE DATABASE <Nombre base de datos>   

-- COMANDO PARA USAR UNA BASE DE DATOS
-- -- USE <Nombre base de datos>  

-- CREAR UNA TABLA
-- -- CREATE TABLE <Nombre tabla>
-- -- EJEMPLO:
-- -- -- CREATE TABLE coders(
-- -- --     -> id INT PRIMARY KEY AUTO_INCREMENT,
-- -- --     -> nombre varchar(40),
-- -- --     -> email varchar(40) UNIQUE NOT NULL
-- -- --     -> );

-- MOSTRAR TABLAS
-- -- SHOW TABLES
-- -- EJEMPLO:
-- -- -- mysql> SHOW TABLES;
-- -- -- +-------------------+
-- -- -- | Tables_in_ElJhony |
-- -- -- +-------------------+
-- -- -- | coders            |
-- -- -- +-------------------+

-- VER DETALLES DE TABLA ESPECIFICA (DESCRIBIR)
-- -- DESC <Nombre tabla>

-- AGREGAR REGISTROS A TABLA
-- -- INSERT INTO <Nombre tabla>(nombres campos a agregar separados por  comas)VALUES(valores para los campos)
-- -- EJEMPLOS:
-- -- -- INSERT INTO coders(nombre,email)VALUES("Jhonatan TEST","JhonatanTEST@TEST.com");
-- -- -- INSERT INTO conjuntos VALUES("1","Conjunto1","1"),("2","Conjunto2","2"),("3","Conjunto3","3");

-- MOSTRAR LOS REGISTROS DE UNA TABLA
-- -- SELECT * FROM <Nombre tabla>

-- AGREGAR ATRIBUTO A TABLA EXISTENTE
-- -- ALTER TABLE <Nombre tabla> ADD COLUMN <Nombre nuevo atributo> <Tipo dato> restricciones
-- -- EJEMPLO:
-- -- -- ALTER TABLE coders
-- -- --     -> ADD COLUMN fecha_nacimiento DATE;

-- MODIFICAR ATRIBUTO DE TABLA EXISTENTE
-- -- ALTER TABLE <Nombre tabla> MODIFY COLUMN <Nombre atributo> <Tipo dato> restricciones

-- MODIFICAR NOMBRE DE ATRIBUTO
-- -- ALTER TABLE <Nombre tabla> CHANGE COLUMN <Nombre atributo actual> <Nombre nuevo atributo> <Tipo dato> restricciones

-- ELIMINAR TABLA
-- -- DROP TABLE <Nombre tabla>

-- ESTRUCTURA CONSTRAINT
-- -- CONSTRAINT fk_id_<Tabla de donde se trae en singular> FOREIGN KEY (<Nombre como cree el atributo FK>) REFERENCES <Tabla>(<Atributo id de la Tabla>);
-- -- EJEMPLO:
-- -- -- CONSTRAINT fk_id_conjunto FOREIGN KEY (id_conjunto) REFERENCES conjuntos(nit_conjunto);

-- AGREGAR RESTRICCION CONSTRAINT (FK) A TABLA EXISTENTE
-- -- EJEMPLO:
-- -- -- ALTER TABLE edificios ADD CONSTRAINT fk_id_conjunto FOREIGN KEY (id_conjunto) REFERENCES conjuntos(nit_conjunto);

-- CREAR TABLA CON CONSTRAINT (FK)
-- -- EJEMPLO:
-- -- -- CREATE TABLE novedades (
-- -- --     id INT AUTO_INCREMENT PRIMARY KEY,
-- -- --     id_edificio INT,
-- -- --     id_vigilante VARCHAR(10),
-- -- --     CONSTRAINT fk_id_edificio FOREIGN KEY (id_edificio)
-- -- --         REFERENCES edificios (id),
-- -- --     CONSTRAINT fk_id_vigilante FOREIGN KEY (id_vigilante)
-- -- --         REFERENCES vigilantes (cc_vigilante)
-- -- -- );
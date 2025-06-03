--Crear base de datos
CREATE DATABASE libreria;

USE libreria;

--Crear tabla autor
CREATE TABLE libreria.autor(
    id_autor INT AUTO_INCREMENT PRIMARY KEY, Nombre VARCHAR(100),nacionalidad VARCHAR(50)
);

--Crear tabla libro
CREATE TABLE libro(
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150), id_autor INT, 
    precio INT,
    stock INT,
    FOREING KEY(id_autor)REFERENCES autor(id_autor)
);

--agregar 3 autores
INSERT INTO libreria.autor(nombre,nacionalidad) VALUES('otakin','Chile')
INSERT INTO libreria.autor(nombre,nacionalidad) VALUES('Osito','Peru')
INSERT INTO libreria.autor(nombre,nacionalidad) VALUES('maduro','Venezuela')

--agregar 3 libros

INSERT INTO libreria.libro(titulo, id_autor,precio,stock) VALUES('Restaurantes Menu',1,15000,10)
INSERT INTO libreria.libro(titulo, id_autor,precio,stock) VALUES('Patito patito',2,25000,20)
INSERT INTO libreria.libro(titulo, id_autor,precio,stock) VALUES('Maduro y la Resistencia',3,35000,40)

--consultar por todos los autores
SELECT * FROM libreria.autor; 
SELECT id_autor, nombre, nacionalidad

--consultar por todos los libros
SELECT * FROM libreria.libro;

--consultar solo el nombre de los autores
SELECT nombre FROM libreria.autor;

--consultar solo el nombre de los libros 
SELECT titulo FROM libreria.libro; 

--buscar los libros con stock superior a 5
SELECT * FROM libreria.libro WHERE stock >5 ; 

--buscar los libros cuando su precio sea menor a 15000
SELECT * FROM libreria.libro WHERE precio < 15000; 

--buscar los libros con stock superior o igual a 5
SELECT * FROM libreria.libro WHERE stock >=5 ; 

--buscar los libros cuando su precio sea menor o igual 15000
SELECT * FROM libreria.libro WHERE precio >=15000; 

--buscar los autores con nacionalidad chilena
SELECT * FROM libreria.libro WHERE nacionalidad = 'chile'; 
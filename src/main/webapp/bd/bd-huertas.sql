drop database BD_HUERTAS

CREATE DATABASE BD_HUERTAS;

-- Usar la base de datos creada
USE  BD_HUERTAS;

-- Crear la tabla autores
CREATE TABLE autor (
  id_autor char(6) PRIMARY KEY not null,
  nom_autor VARCHAR(50) not null,
  ape_autor VARCHAR(50)  not null
);

-- Crear la tabla editorial
CREATE TABLE editorial (
  id_editorial char(6) PRIMARY KEY  not null,
  nom_editorial VARCHAR(50) not null,
  pais_editorial VARCHAR(20)  not null
);

-- Crear la tabla libros
CREATE TABLE libros (
  id_libro  int not null Primary key,
  codigo varchar (6) not null,
  titulo VARCHAR(100)  not null,
  fecha_publicacion DATE  not null,
  id_autor char(6)  not null,
  id_editorial char(6)  not null,
  genero varchar(50)  not null,
  FOREIGN KEY (id_autor) REFERENCES autor(id_autor),
  FOREIGN KEY (id_editorial) REFERENCES editorial(id_editorial)
);


-- Insertar datos fijos en la tabla autores
INSERT INTO autor(id_autor, nom_autor, ape_autor)
VALUES
  ('CLL001', 'Julio', 'Verne'),
  ('CLL002', 'Mario', 'Vargas Llosa'),
  ('CLL003', 'Victor', 'Hugo');
  
  select * from autor;


INSERT INTO editorial (id_editorial, nom_editorial, pais_editorial)
VALUES
  ('ED0001', 'Norma', 'Colombia'),
  ('ED0005', 'Anyala', 'Espa�a'),
  ('ED0009', 'Navarrete', 'Peru');
  select * from editorial;


-- Insertar datos fijos en la tabla libros
INSERT INTO libros (id_libro , codigo, titulo, fecha_publicacion, id_autor, id_editorial, genero)
VALUES
  (1, 'L00001', 'Viaje al centro de la Tierra','2000-02-09', 'CLL001', 'ED0001', 'Fantasia'),
  (2, 'L00002', 'Pantaleon y las visitadoras','1973-07-12', 'CLL002', 'ED0005', 'Nwovela'),
  (3, 'L00003', 'Los Miserables','1862-02-18', 'CLL003','ED0009', 'Narrativa');
  
  select * from libros;
  drop table libros;
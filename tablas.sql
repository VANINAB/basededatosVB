CREATE TABLE Usuarios (
    usuario_id INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (100),
    email VARCHAR (100) NOT NULL,
    PRIMARY KEY (usuario_id)
);

CREATE TABLE Nota (
    nota_id INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
    usuario_id INT (10) UNSIGNED NOT NULL,
    titulo VARCHAR (100),
    descripcion VARCHAR (100),
    fecha_Creacion DATE NOT NULL,
    fecha_Modificacion DATE,
    fecha_Eliminacion DATE,
    puede_Eliminar boolean NOT NULL,
    PRIMARY KEY (nota_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id)
);
CREATE TABLE NotaCategoria (
    id INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
    nota_id INT (10) UNSIGNED NOT NULL,
    categoria_id INT (10) UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (nota_id) REFERENCES Nota(nota_id),
    FOREIGN KEY (categoria_id) REFERENCES Categoria(categoria_id)
);
CREATE TABLE Categoria (
    categoria_id INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (100) NOT NULL,
    PRIMARY KEY (categoria_id)
);

INSERT INTO Usuarios(usuario_id,nombre,email) 
VALUES(DEFAULT,'pepito','pepito@flores.com'),
(DEFAULT,'manolo','manolo@perez.com'),
(DEFAULT,'eustaclia','eustaclia@hotmail.com'),
(DEFAULT,'reboldio','reboldio@hotmail.com'),
(DEFAULT,'gonzalo','gonza@hotmail.com'),
(DEFAULT,'vanina','vaninab@hotmail.com'),
(DEFAULT,'claudio','clauidus@hotmail.com'),
(DEFAULT,'silvia','silvis@hotmail.com'),
(DEFAULT,'catalina','cata@hotmail.com'),
(DEFAULT,'walter','walterolmos@hotmail.com');

INSERT INTO Categoria(categoria_id,nombre) 
VALUES(DEFAULT,'deporte'),
(DEFAULT,'clima'),
(DEFAULT,'musica'),
(DEFAULT,'comida'),
(DEFAULT,'conocimiento gral'),
(DEFAULT,'peliculas'),
(DEFAULT,'politica'),
(DEFAULT,'salud'),
(DEFAULT,'postres'),
(DEFAULT,'educacion');

INSERT INTO Nota(nota_id, descripcion, fecha_Creacion, fecha_Eliminacion, fecha_Modificacion, puede_Eliminar, titulo, usuario_id)
VALUES(DEFAULT, "descripcion1", "2001-10-12", null, null, 1, "Titulo1", 1),
(DEFAULT, "descripcion2", "2001-10-12", null, null, 0, "Titulo2", 2),
(DEFAULT, "descripcion3", "2001-10-12", null, null, 1, "Titulo3", 3),
(DEFAULT, "descripcion4", "2001-10-12", null, null, 0, "Titulo4", 4),
(DEFAULT, "descripcion5", "2001-10-12", null, null, 1, "Titulo5", 5),
(DEFAULT, "descripcion6", "2001-10-12", null, null, 0, "Titulo6", 6),
(DEFAULT, "descripcion7", "2001-10-12", null, null, 1, "Titulo7", 7),
(DEFAULT, "descripcion8", "2001-10-12", null, null, 0, "Titulo8", 8),
(DEFAULT, "descripcion9", "2001-10-12", null, null, 1, "Titulo9", 9),
(DEFAULT, "descripcion19", "2001-10-12", null, null, 0, "Titulo10", 10);

INSERT INTO NotaCategoria(id, categoria_id, nota_id)
VALUES(DEFAULT, 1, 1),
(DEFAULT, 2, 2),
(DEFAULT, 3, 3),
(DEFAULT, 4, 4),
(DEFAULT, 5, 5),
(DEFAULT, 6, 6),
(DEFAULT, 7, 7),
(DEFAULT, 8, 8),
(DEFAULT, 9, 9),
(DEFAULT, 10, 10);
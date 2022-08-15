CREATE DATABASE peluCanina;
use peluCanina;

create table Dueno(
	DNI INT NOT NULL UNIQUE,
    Nombre VARCHAR (30) NOT NULL,
    Apellido VARCHAR (30) NOT NULL,
    Telefono VARCHAR (20),
    Direccion VARCHAR (30),
    PRIMARY KEY (DNI)
    );

INSERT INTO Dueno VALUES (22333444, 'Estela', 'Flores', '351555555',  'Balcarce 123' );
INSERT INTO Dueno VALUES (16000987, 'Marcelo', 'Martinez', '351666666',  'San Martin 154');
INSERT INTO Dueno VALUES (40302302, 'Adan', 'Bustos', '351777777',  'Belgrano 1124');
    
    
create table Perro(
	ID_Perro INT NOT NULL,
    Nombre VARCHAR (30),
    Fecha_nac DATE,
    Sexo VARCHAR (10),
    DNI_Dueno INT,
    PRIMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_Dueno) REFERENCES Dueno(DNI)
    );
    
INSERT INTO Perro VALUES (1001, 'FELIPE', '2022-01-25', 'MACHO',  22333444);
INSERT INTO Perro VALUES (1002, 'DOKI', '2020-11-29', 'MACHO',  16000987);
INSERT INTO Perro VALUES (1003, 'MANCHAS', '2021-11-10', 'MACHO',  40302302);

    
create table Historial (
	ID_Historial INT NOT NULL,
    Fecha DATE,
    Perro INT,
    Descripcion VARCHAR (50),
    Monto FLOAT,
    PRIMARY KEY (ID_Historial),
    FOREIGN KEY (Perro) REFERENCES Perro(ID_Perro)
    );

INSERT INTO Historial VALUES (0001, '2015-05-15', 1001, 'Bañado', 800);
INSERT INTO Historial VALUES (0002, '2022-02-22', 1003, 'Corte', 1000);
INSERT INTO Historial VALUES (0003, '2022-04-01', 1002, 'Baño y Corte', 1500);

# Ejercicio 3
SET SQL_SAFE_UPDATES = 0;

DELETE FROM Historial WHERE Fecha < '2018-01-01';

SELECT * FROM Historial #Para ver que es lo que se elimino

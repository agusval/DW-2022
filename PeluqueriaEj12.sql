Create Database Peluqueria;
use Peluqueria;

CREATE TABLE Dueno
       (DNI integer PRIMARY KEY NOT NULL,
        Nombre VARCHAR(20),
        Apellido VARCHAR(20),
        Telefono VARCHAR(20),
        Direccion VARCHAR(30)
       );
        
        
INSERT INTO Dueno VALUES (22333444, 'PEDRO', 'PERELE', 1154555658, "Avellaneda 9032");
INSERT INTO Dueno VALUES (11222333, 'MARIA', 'LALA', 1145993311, "Avenida Argentina 321");
INSERT INTO Dueno VALUES (33222111, 'CARLOS', 'TOTOLO', 299453288, "Cañadon Oeste 1032");
INSERT INTO Dueno VALUES (40302302, 'ROSA', 'CARALA', 351789654, "Liniers 2045");
INSERT INTO Dueno VALUES (16000987, 'MARCO', 'POLEN', 2947214988, "Pringles 3029");

CREATE TABLE Perro
       (ID_Perro integer PRIMARY KEY NOT NULL,
        Nombre VARCHAR(25),
        Fecha_nac DATE,
        Sexo VARCHAR(10),
        DNI_Dueno integer NOT NULL,
        FOREIGN KEY (DNI_Dueno) REFERENCES Dueno(DNI)
       );
        
INSERT INTO Perro VALUES (1, 'PERRITO', '2021-01-25', 'MACHO',  22333444);
INSERT INTO Perro VALUES (2, 'CACHORRO', '2020-11-29', 'MACHO',  16000987);
INSERT INTO Perro VALUES (3, 'TUCKY', '2015-11-10', 'MACHO',  40302302);
INSERT INTO Perro VALUES (4, 'LALITA', '2021-04-05', 'HEMBRA',  11222333);
INSERT INTO Perro VALUES (5, 'TOTITO', '2018-12-09', 'MACHO',  33222111);
INSERT INTO Perro VALUES (10, 'PEPITO', '2021-12-19', 'MACHO',  33222111);

CREATE TABLE Historial
       (ID_Historial integer PRIMARY KEY NOT NULL,
        Fecha DATE,
        Perro integer NOT NULL,
        Descripcion VARCHAR(50),
        Monto DECIMAL,
        FOREIGN KEY (Perro) REFERENCES Perro(ID_Perro)
       );
       
INSERT INTO Historial VALUES (999, '2020-12-09', 5, 'CORTE DE PELO COMUN', 1500);
INSERT INTO Historial VALUES (1000, '2021-12-22', 3, 'CORTE ESPECIAL', 2500);
INSERT INTO Historial VALUES (1001, '2022-01-15', 4, 'CORTE CON MAQUINA', 1900);
INSERT INTO Historial VALUES (1002, '2022-02-22', 1, 'CORTE DE PELO COMUN', 1500);
INSERT INTO Historial VALUES (1003, '2022-03-24', 3, 'CORTE CON MAQUINA', 1900);
INSERT INTO Historial VALUES (1004, '2022-07-02', 2, 'CORTE DE PELO COMUN', 1500);
INSERT INTO Historial VALUES (1005, '2022-07-03', 1, 'CORTE ESPECIAL Y BAÑO', 3800);

#Ejercicio 12 - Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.
Select Nombre as 'Nombre del perro', Sexo as 'Sexo', Fecha_nac 'Fecha de Nacimiento'  from Perro where sexo = "MACHO" AND Fecha_nac between '2020-01-01' AND '2022-12-31'
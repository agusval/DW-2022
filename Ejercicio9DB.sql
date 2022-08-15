#Creacion de tablas

CREATE TABLE Dueno
   	(DNI integer PRIMARY KEY NOT NULL,
    	Nombre VARCHAR(20),
    	Apellido VARCHAR(20),
    	Telefono VARCHAR(20),
        Direccion VARCHAR(30)
   	);


CREATE TABLE Perro
   	(ID_Perro integer PRIMARY KEY NOT NULL,
    	Nombre VARCHAR(25),
        Fecha_nac DATE,
    	Sexo VARCHAR(10),
        DNI_Dueno integer NOT NULL,
    	FOREIGN KEY (DNI_Dueno) REFERENCES Dueno(DNI)
   	);


CREATE TABLE Historial
       (ID_Historial integer PRIMARY KEY NOT NULL,
    	Fecha DATE,
    	Perro integer NOT NULL,
        Descripcion VARCHAR(50),
    	Monto DECIMAL,
    	FOREIGN KEY (Perro) REFERENCES Perro(ID_Perro)
   	);

#Ingreso de dato de Dueno
INSERT INTO Dueno VALUES (34188544, 'Viviana', 'Saccone', 3518159753, "Av Pueyrredon 1540");

#Ingreso de datos de perro relacionado a Dueno
INSERT INTO Perro VALUES (1, 'Mijo', '2021-10-05', 'MACHO',  34188544);

#Consigna9. Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123
UPDATE Dueno SET Direccion = 'Libertad 123' where DNI =34188544;

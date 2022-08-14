-- Actividad 1

CREATE TABLE Perro
   	(ID_Perro integer PRIMARY KEY NOT NULL,
   	Nombre VARCHAR(25),
        Fecha_nac DATE,
    	Sexo VARCHAR(10),
        DNI_Dueno integer NOT NULL,
    	FOREIGN KEY (DNI_Dueno) REFERENCES Dueno(DNI)
   	);

-- Actividad 2

INSERT INTO Perro VALUES (6, 'MATITA', '2021-11-19', 'HEMBRA',  33222111);

-- Actividad 4

UPDATE Perro SET Fecha_nac = '2021-04-06' where ID_Perro = 4;
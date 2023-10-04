drop database CineArchive;
create database CineArchive;
use CineArchive;

CREATE TABLE Franchise (
    FranchiseID INT AUTO_INCREMENT PRIMARY KEY,
    FranchiseName VARCHAR(50)
) ENGINE=InnoDB;

-- Create the MovieTheater table
CREATE TABLE MovieTheater (
    MovieTheaterID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(300),
    Zone VARCHAR(20),
    FranchiseID INT,
    FOREIGN KEY (FranchiseID) REFERENCES Franchise(FranchiseID)
) ENGINE=InnoDB;

CREATE TABLE ScreenType (
    ScreenTypeID INT AUTO_INCREMENT PRIMARY KEY,
    TypeName VARCHAR(50)
) ENGINE=InnoDB;

-- Create the MovieTheaterScreen table
CREATE TABLE MovieTheaterScreen (
    MovieTheaterID INT,
    ScreenTypeID INT,
    Price DECIMAL(4, 2),
    PRIMARY KEY (MovieTheaterID, ScreenTypeID),
    FOREIGN KEY (MovieTheaterID) REFERENCES MovieTheater(MovieTheaterID),
    FOREIGN KEY (ScreenTypeID) REFERENCES ScreenType(ScreenTypeID)
) ENGINE=InnoDB;

INSERT INTO Franchise (FranchiseName) VALUES ('Cinépolis');
INSERT INTO Franchise (FranchiseName) VALUES ('Cinemex');

INSERT INTO ScreenType (TypeName) VALUES ('MACROXE');
INSERT INTO ScreenType (TypeName) VALUES ('4DX');
INSERT INTO ScreenType (TypeName) VALUES ('IMAX');
INSERT INTO ScreenType (TypeName) VALUES ('JUNIOR');
INSERT INTO ScreenType (TypeName) VALUES ('3D');
INSERT INTO ScreenType (TypeName) VALUES ('VIP');
INSERT INTO ScreenType (TypeName) VALUES ('VIP 3D');
INSERT INTO ScreenType (TypeName) VALUES ('SCREEN X');
INSERT INTO ScreenType (TypeName) VALUES ('Dolby Atmos');
INSERT INTO ScreenType (TypeName) VALUES ('Premium');
INSERT INTO ScreenType (TypeName) VALUES ('Platino');
INSERT INTO ScreenType (TypeName) VALUES ('Casa de Arte');
INSERT INTO ScreenType (TypeName) VALUES ('PLUUS');
INSERT INTO ScreenType (TypeName) VALUES ('Tradicional');

INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Ajusco', 'CDMX Sur', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Altavista', 'CDMX Sur', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Anfora', 'CDMX Oriente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Antara', 'CDMX Poniente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Aragón', 'CDMX Nor-oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Arenal', 'CDMX Sur', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Artz Pedregal Market', 'CDMX Sur', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Atana Lindavista', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Centro Telmex', 'CDMX Centro', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Chalco', 'CDMX Oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Chimalhuacán', 'CDMX Oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('City Center Zona Esmeralda', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Ciudad Azteca', 'CDMX Nor-oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Clavería', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Coacalco', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Coapa', 'CDMX Sur', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Copilco', 'CDMX Sur', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Cortijo', 'CDMX Oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Cuatro Caminos', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Cuauhtémoc', 'CDMX Centro', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Cuicuilco', 'CDMX Sur', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Diana', 'CDMX Centro', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Duraznos', 'CDMX Poniente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Ecatepec', 'CDMX Nor-oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Encuentro Fortuna', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Encuentro Oceanía', 'CDMX Nor-oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Encuentro Tlalnepantla', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Ermita', 'CDMX Oriente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Félix Cuevas', 'CDMX Sur', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Ferrería', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Fórum Buenavista', 'CDMX Centro', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Galerías', 'CDMX Centro', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Galerías Atizapán', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Galerías Insurgentes Market', 'CDMX Sur', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Gran Sur', 'CDMX Sur', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Gran Terraza Coapa', 'CDMX Sur', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Gustavo Baz', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Hollywood', 'CDMX Poniente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Huehuetoca', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Insurgentes', 'CDMX Centro', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Interlomas Market', 'CDMX Poniente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Interlomas', 'CDMX Poniente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Ixtapaluca', 'CDMX Oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Izcalli', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Iztapalapa', 'CDMX Oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('La Cúspide', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('La Joya', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('La Vía', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('La Viga', 'CDMX Oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Las Antenas', 'CDMX Oriente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Las Flores Coacalco', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Lomas Estrella', 'CDMX Oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Lomas Verdes', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Loreto', 'CDMX Sur', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Los Reyes', 'CDMX Oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Macroplaza Tecámac', 'CDMX Nor-oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Magno Centro Interlomas', 'CDMX Poniente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Manacar', 'CDMX Sur', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Mexiquense', 'CDMX Nor-oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Miguel Ángel de Quevedo', 'CDMX Sur', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Miramontes', 'CDMX Sur', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Mítikah', 'CDMX Sur', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Miyana Polanco', 'CDMX Poniente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Multiplaza Arboledas', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Mundo E', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Oasis Coyoacán', 'CDMX Sur', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Ojo de Agua', 'CDMX Nor-oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Pabellón Cuemanco', 'CDMX Sur', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Pabellón Río de los Remedios', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Park Plaza', 'CDMX Poniente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Parque Delta', 'CDMX Centro', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Parque Jardín Azcapotzalco', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Parque Lindavista', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Parque Tepeyac', 'CDMX Oriente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Parque Toreo', 'CDMX Poniente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Paseo Acoxpa', 'CDMX Sur', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Paseo Arcos Bosques', 'CDMX Poniente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Paseo Chalco', 'CDMX Oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Paseo Hipódromo', 'CDMX Poniente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Paseo Interlomas', 'CDMX Poniente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Paseo Ventura', 'CDMX Nor-oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Patio Revolución', 'CDMX Sur', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Patio Santa Fe', 'CDMX Poniente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Patio Tlalpan', 'CDMX Sur', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Patio Universidad', 'CDMX Sur', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Patriotismo', 'CDMX Centro', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Pedregal Atizapán', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Perisur', 'CDMX Sur', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Plaza Aeropuerto', 'CDMX Oriente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Plaza Cañada', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Plaza Carso', 'CDMX Poniente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Plaza Central', 'CDMX Oriente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Plaza Crystal Atizapán', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Plaza Cuautitlán', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Plaza Cuitláhuac', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Plaza Jardines Tultitlán', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Plaza Oriente', 'CDMX Oriente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Plaza Oriente', 'CDMX Oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Plaza Tepeyac', 'CDMX Oriente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Plaza Tlalne', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Plaza Tlatelolco', 'CDMX Centro', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Portal Centenario', 'CDMX Poniente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Portal Centro', 'CDMX Centro', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Portal Churubusco', 'CDMX Oriente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Portal San Ángel', 'CDMX Sur', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Portal Vallejo', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Prado Coapa', 'CDMX Sur', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Puerta Texcoco', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Puerta Tlatelolco', 'CDMX Centro', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Punto Atizapán', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Real', 'CDMX Centro', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Reforma 222', 'CDMX Centro', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Rosario', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Samara', 'CDMX Poniente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('San Antonio', 'CDMX Centro', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('San Esteban', 'CDMX Poniente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('San Mateo', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Santa Fe', 'CDMX Poniente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Satélite', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Sentura Tlalnepantla', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Tenayuca', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Texcoco', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Tezontle', 'CDMX Oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Tláhuac', 'CDMX Oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Tlalpan', 'CDMX Sur', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Torres Lindavista', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Town Center El Rosario', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Town Center Nicolás Romero', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Universidad', 'CDMX Sur', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Universidad', 'CDMX Sur', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Valle Dorado', 'CDMX Norte', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Vía San Juan', 'CDMX Oriente', 2);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Vía Vallejo', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Viaducto', 'CDMX Oriente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Vista Norte', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Xtreme Churubusco', 'CDMX Oriente', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Xtreme Las Armas', 'CDMX Norte', 1);
INSERT INTO MovieTheater (Name, Zone, FranchiseID) VALUES ('Zumpango', 'CDMX Norte', 2);

ALTER TABLE MovieTheater ADD COLUMN ZIP integer;
UPDATE MovieTheater SET ZIP = '07700' WHERE Name = 'Torres Lindavista';
UPDATE MovieTheater SET ZIP = '53100' WHERE Name = 'Satélite';

SELECT * FROM MOVIETHEATER;
UPDATE MovieTheater SET Location = 'Plaza Chalco, Calle Vicente Guerrero 25, Chalco Centro, 56600 Chalco de Díaz Covarrubias, Méx.' WHERE Name = 'Chalco';
UPDATE MovieTheater SET ZIP = '56600' WHERE Name = 'Chalco';
UPDATE MovieTheater SET Location = 'Av. Constituyente Jose Lopez Bonaga Mz S Guadalupe Victoria 6 N Lt 5 Y, 55017 Ecatepec de Morelos, Méx.' WHERE Name = 'Coacalco'; /*2*/
UPDATE MovieTheater SET ZIP = '55017' WHERE Name = 'Coacalco';
UPDATE MovieTheater SET Location = 'Calz. del Hueso 519, Coapa, Residencial Miramontes, Tlalpan, 14300 Ciudad de México, CDMX' WHERE Name = 'Coapa'; /*2*/
UPDATE MovieTheater SET ZIP = '14300' WHERE Name = 'Coapa';
UPDATE MovieTheater SET Location = 'Vía Morelos 300, Sta Maria Tulpetlac, 55400 Ecatepec de Morelos, Méx.' WHERE Name = 'Ecatepec'; /*2*/
UPDATE MovieTheater SET ZIP = '55400' WHERE Name = 'Ecatepec';
UPDATE MovieTheater SET Location = 'Cto. Interior Melchor Ocampo 193, Verónica Anzúres, Miguel Hidalgo, 11300 Ciudad de México, CDMX' WHERE Name = 'Galerías'; /*2*/
UPDATE MovieTheater SET ZIP = '11300' WHERE Name = 'Galerías';
UPDATE MovieTheater SET Location = 'Blvd. Palmas Hills, Valle de las Palmas, 52787 Naucalpan de Juárez, Méx.' WHERE Name = 'Interlomas Market'; /*2*/
UPDATE MovieTheater SET ZIP = '52787' WHERE Name = 'Interlomas Market';
UPDATE MovieTheater SET Location = 'Paseo Interlomas, Vialidad de la Barranca 6, Bosque de las Palmas, 52764 Méx.' WHERE Name = 'Interlomas'; /*1*/
UPDATE MovieTheater SET ZIP = '52764' WHERE Name = 'Interlomas';
UPDATE MovieTheater SET Location = 'Local A-03 San Marcos Power Center, Av Chalma, Jardines de la Hacienda, 54720 Cuautitlán Izcalli, Méx.' WHERE Name = 'Izcalli'; /*2*/
UPDATE MovieTheater SET ZIP = '54720' WHERE Name = 'Izcalli';
UPDATE MovieTheater SET Location = 'C. Palma Criolla 26, Palo Solo, 52778 Naucalpan de Juárez, Méx.' WHERE Name = 'Magno Centro Interlomas'; /*1*/
UPDATE MovieTheater SET ZIP = '52778' WHERE Name = 'Magno Centro Interlomas';
UPDATE MovieTheater SET Location = 'Real Mayorazgo 130, Xoco, Benito Juárez, 03330 Ciudad de México, CDMX' WHERE Name = 'Mítikah'; /*1*/
UPDATE MovieTheater SET ZIP = '03330' WHERE Name = 'Mítikah';
UPDATE MovieTheater SET Location = 'Multiplaza Ojo de Agua, Blvrd Ojo de Agua 88, San Francisco Cuautliquixca, 55760 Tecámac de Felipe Villanueva, Méx.' WHERE Name = 'Ojo de Agua'; /*2*/
UPDATE MovieTheater SET ZIP = '55760' WHERE Name = 'Ojo de Agua';
UPDATE MovieTheater SET Location = 'Av. Ing. Eduardo Molina 6730-LOCAL L-130, Granjas Modernas, Gustavo A. Madero, 07460 Ciudad de México, CDMX' WHERE Name = 'Parque Tepeyac'; /*1*/
UPDATE MovieTheater SET ZIP = '07460' WHERE Name = 'Parque Tepeyac';
UPDATE MovieTheater SET Location = 'Calle 10 132, Tolteca, Álvaro Obregón, 01180 Ciudad de México, CDMX' WHERE Name = 'San Antonio'; /*2*/
UPDATE MovieTheater SET ZIP = '01180' WHERE Name = 'San Antonio';
UPDATE MovieTheater SET Location = 'Blvd. Adolfo López Mateos 3130, Valle Dorado, 54020 Tlalnepantla de Baz, Méx.' WHERE Name = 'Valle Dorado'; /*2*/
UPDATE MovieTheater SET ZIP = '54020' WHERE Name = 'Valle Dorado';
UPDATE MovieTheater SET Location = 'Jorge Jiménez Cantú 45, San Juan, 55600 Zumpango de Ocampo, Méx.' WHERE Name = 'Zumpango'; /*2*/
UPDATE MovieTheater SET ZIP = '55600' WHERE Name = 'Zumpango';

SELECT * FROM MOVIETHEATERSCREEN
/*SALAS IMAX PRINCIPALMENTE*/
INSERT INTO MovieTheaterScreen (MovieTheaterID, ScreenTypeID)
VALUES
    (31, 2),
    (31, 3),
    (31, 4),
    (88, 2),
    (88, 6),
    (119, 2),
    (119, 3),
    (119, 4),
    (119, 6),
    (129, 2),
    (129, 3),
    (129, 6);
    
/*CINEPOLIS*/
SELECT MOVIETHEATERID,NAME FROM MOVIETHEATER WHERE ZONE = 'CDMX SUR' AND FRANCHISEID = 1;
INSERT INTO MovieTheaterScreen (MovieTheaterID, ScreenTypeID)
VALUES
	/*CDMX NORTE*/
    (120, 6),
    (133, 6),
    (133, 4),
    (46, 6),
    (46, 1),
    (46, 4),
    (33, 6),
    (33, 1),
    (127, 1),
    (127, 4),
    (64, 1),
    (64, 2),
    (64, 4),
    (12, 13),
    /*CDMX CENTRO*/
    (101, 4),
    (101, 13),
    /*CDXM ORIENTE*/
    (50, 4),
    (50, 8),
    (92, 4),
    /*CDMX PONIENTE*/
    (57, 13),
    (63, 6),
    (114, 6),
    (91, 6),
    (80, 6),
    (77, 6),
    (75, 6),
    (42, 6),
    (83, 1),
    (83, 2),
    (83, 4),
    (80, 1),
    (80, 2),
    (80, 4),
    (75, 1),
    (75, 2),
    (75, 4),
    /*CDMX SUR*/
    (62, 6),
    (62, 2),
    (62, 4),
    (76, 6),
    (36, 6),
    (105, 4),
    (105, 6),
    (66, 1),
    (66, 6),
    (85, 1),
    (76, 2);
    
/*CINEMEX*/
SELECT MOVIETHEATERID,NAME FROM MOVIETHEATER WHERE ZONE = 'CDMX SUR' AND FRANCHISEID = 2;
INSERT INTO MovieTheaterScreen (MovieTheaterID, ScreenTypeID)
VALUES
	/*CDMX CENTRO*/
    (20, 10),
    (32, 10),
    (40, 10),
    (71, 11),
    (86, 10),
    (112, 10),
    (112, 9),
    (112, 12),
    /*CDMX NOR-ORIENTE*/
    (5, 9),
    /*CDMX NORTE*/
    (8, 10),
    (44, 10),
    (53, 10),
    (53, 9),
    (65, 9),
    (65, 11),
    (73, 9),
    (100, 9),
    (100, 10),
    (117, 10),
    (131, 10),
    /*CDMX ORIENTE*/
    (98, 9),
    (123, 9),
    (124, 9),
    /*CDMX PONIENTE*/
    (4, 10),
    (4, 11),
    (23, 11),
    (41, 10),
    (70, 11),
    (79, 11),
    (118, 9),
    (118, 10),
    (118, 11),
    /*CDMX SUR*/
    (2, 10),
    (7, 9),
    (7, 10),
    (7, 11),
    (16, 9),
    (21, 11),
    (29, 11),
    (34, 10),
    (35, 9),
    (54, 10),
    (58, 10),
    (60, 10),
    (82, 11),
    (130, 9);
    
INSERT INTO MovieTheaterScreen (MovieTheaterID, ScreenTypeID)
VALUES
	(1, 14),
    (2, 14),
    (3, 14),
    (4, 14),
    (5, 14),
    (6, 14),
    (7, 14),
    (8, 14),
    (9, 14),
    (10, 14),
    (11, 14),
    (12, 14),
    (13, 14),
    (14, 14),
    (15, 14),
    (16, 14),
    (17, 14),
    (18, 14),
    (19, 14),
    (20, 14),
    (21, 14),
    (22, 14),
    (23, 14),
    (24, 14),
    (25, 14),
    (26, 14),
    (27, 14),
    (28, 14),
    (29, 14),
    (30, 14),
    (31, 14),
    (32, 14),
    (33, 14),
    (34, 14),
    (35, 14),
    (36, 14),
    (37, 14),
    (38, 14),
    (39, 14),
    (40, 14),
    (41, 14),
    (42, 14),
    (43, 14),
    (44, 14),
    (45, 14),
    (46, 14),
    (47, 14),
    (48, 14),
    (49, 14),
    (50, 14),
    (51, 14),
    (52, 14),
    (53, 14),
    (54, 14),
    (55, 14),
    (56, 14),
    (57, 14),
    (58, 14),
    (59, 14),
    (60, 14),
    (61, 14),
    (62, 14),
    (63, 14),
    (64, 14),
    (65, 14),
    (66, 14),
    (67, 14),
    (68, 14),
    (69, 14),
    (70, 14),
    (71, 14),
    (72, 14),
    (73, 14),
    (74, 14),
    (75, 14),
    (76, 14),
    (77, 14),
    (78, 14),
    (79, 14),
    (80, 14),
    (81, 14),
    (82, 14),
    (83, 14),
    (84, 14),
    (85, 14),
    (86, 14),
    (87, 14),
    (88, 14),
    (89, 14),
    (90, 14),
    (91, 14),
    (92, 14),
    (93, 14),
    (94, 14),
    (95, 14),
    (96, 14),
    (97, 14),
    (98, 14),
    (99, 14),
    (100, 14),
    (101, 14),
    (102, 14),
    (103, 14),
    (104, 14),
    (105, 14),
    (106, 14),
    (107, 14),
    (108, 14),
    (109, 14),
    (110, 14),
    (111, 14),
    (112, 14),
    (113, 14),
    (114, 14),
    (115, 14),
    (116, 14),
    (117, 14),
    (118, 14),
    (119, 14),
    (120, 14),
    (121, 14),
    (122, 14),
    (123, 14),
    (124, 14),
    (125, 14),
    (126, 14),
    (127, 14),
    (128, 14),
    (129, 14),
    (130, 14),
    (131, 14),
    (132, 14),
    (133, 14),
    (134, 14),
    (135, 14),
    (136, 14),
    (137, 14),
    (138, 14);
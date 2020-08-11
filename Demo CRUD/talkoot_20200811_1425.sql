-- tietokanta talkoopisteet ohjelmalle 2020/10

DROP DATABASE IF EXISTS talkoot;
CREATE DATABASE talkoot DEFAULT CHARACTER SET utf8 COLLATE utf8_swedish_ci;
USE talkoot;

DROP TABLE IF EXISTS henkilot;
CREATE TABLE henkilot (
    henkiloid int NOT NULL auto_increment,
    sukunimi varchar(255) NOT NULL,
    etunimi varchar(255),
    email varchar(255),
    tunnus varchar(255),
    pelaajanumero int,
    PRIMARY KEY (henkiloid)
);

DROP TABLE IF EXISTS talkootyot;
CREATE TABLE talkootyot (
    tyoid int NOT NULL auto_increment,
    henkiloid int NOT NULL,
    talkoo_tekopva date,
    talkoo_tyo varchar(255),
    talkoo_pisteet int,
    PRIMARY KEY (tyoid),
    FOREIGN KEY (henkiloid) REFERENCES henkilot(henkiloid)
);

-- Laitetaan henkilö dataa tauluun
INSERT INTO henkilot (sukunimi,etunimi,email,tunnus,pelaajanumero) 
VALUES  ('Salonen','Raimo','sara@huu.fi','salonen.raimo',10),
('Linna','Pekka','linna.pekka@huu.fi','linpek',15),
('Klem','Sanna','klem@huu.fi','sannak',17),
('Latva','Nina','klem@huu.fi','ninal',33);

-- Laitetaan talkootyö dataa tauluun
INSERT INTO talkootyot (henkiloid,talkoo_tekopva,talkoo_tyo,talkoo_pisteet) 
VALUES  (1,20200229,'siivous',2),
(1,20200120,'koulutus',4),
(1,20200201,'siivous',2),
(3,20200601,'kahvila',6),
(4,20200601,'koulutus',4);



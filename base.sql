drop DATABASE DB_PROJECTE;

CREATE DATABASE `DB_PROJECTE`;

USE `DB_PROJECTE`;

CREATE TABLE `PROFESSOR` (
    id_profe INT(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    dni_profe CHAR(9) NOT NULL,
    nom_profe VARCHAR(10) NOT NULL,
    cognom1_profe VARCHAR(10) NOT NULL,
    cognom2_profe VARCHAR(10) NULL,
    email_prof VARCHAR(50) NOT NULL,
    telf_prof CHAR(9) NOT NULL,
    sal_prof decimal(5) NOT NULL,
    dept_prof int(3) NOT NULL
);

CREATE TABLE `CLASSE`(
    id_classe INT(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    codi_classe CHAR(3) NOT NULL,
    nom_classe VARCHAR(20) NOT NULL,
    tutor INT(3) NOT NULL
);

CREATE TABLE `ALUMNE`(
    num_matric INT(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom_alu VARCHAR(20) NOT NULL,
    cognom1_alu VARCHAR(30) NOT NULL,
    cognom2_alu VARCHAR(30) NOt NULL,
    email_alu VARCHAR(50) NOT NULL,
    dni_alu CHAR(9) NOT NULL,
    telf_alu CHAR(9) NOT NULL,
    fecha_matric_alu date NOT NULL,
    classe int(3) NOT NULL
);

CREATE TABLE `DEPARTAMENT`(
    id_dep INT(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    codi_dept CHAR(3) NOT NULL,
    nom_dept VARCHAR(30)
);

CREATE TABLE `ADMINISTRADORES`(
    dni_ad CHAR(9) NOT NULL PRIMARY KEY,
    nom_ad VARCHAR(10) NOT NULL,
    email_ad VARCHAR(50) NOT NULL,
    pass_ad VARCHAR(10) NOT NULL
);

ALTER TABLE PROFESSOR
ADD CONSTRAINT profe_id_dep FOREIGN KEY (dept_prof)
REFERENCES DEPARTAMENT (id_dep);

ALTER TABLE CLASSE
ADD CONSTRAINT alu_dni_prof FOREIGN KEY (tutor)
REFERENCES PROFESSOR (id_profe);

ALTER TABLE ALUMNE
ADD CONSTRAINT alu_id_class FOREIGN KEY (classe)
REFERENCES CLASSE (id_classe);

INSERT INTO DEPARTAMENT VALUE(NULL,"102","Informatica");
INSERT INTO DEPARTAMENT VALUE(NULL,"201","deportes");
INSERT INTO DEPARTAMENT VALUE(NULL,"010","Humanidades");
INSERT INTO DEPARTAMENT VALUE(NULL,"015","Ciencias");
INSERT INTO DEPARTAMENT VALUE(NULL,"025","Artes");

INSERT INTO PROFESSOR VALUE(NULL,"03619853K","Gerard","Orobitg","B","gorobitg@fje.edu","600550167",1000,1);
INSERT INTO PROFESSOR VALUE(NULL,"59810845N","Nuria","Garres","","gnuria@fje.edu","649218387",1000,1);
INSERT INTO PROFESSOR VALUE(NULL,"79225888L","Agnes","Plans","","aplans@fje.edu","675274171",1000,1);
INSERT INTO PROFESSOR VALUE(NULL,"24585946G","Sergio","Jimenez","","sjimenez@fje.edu","611552414",1000,1);
INSERT INTO PROFESSOR VALUE(NULL,"00494146Z","Gerard","Orobitg","","gorobitg@fje.edu","758978200",1000,1);
INSERT INTO PROFESSOR VALUE(NULL,"81748298L","Ignasi","Romero","","iromero@fje.edu","684204692",1000,1);
INSERT INTO PROFESSOR VALUE(NULL,"98067578V","Miguel","Delgado","","mdelgado@fje.edu","637423352",1000,2);
INSERT INTO PROFESSOR VALUE(NULL,"19796391S","Laura","Redondo","","lredondo@fje.edu","639223832",1000,2);
INSERT INTO PROFESSOR VALUE(NULL,"31077895L","Pedro","Blanco","","pblanco@fje.edu","634770284",1000,1);
INSERT INTO PROFESSOR VALUE(NULL,"52485173R","Lluc","Rodriguez","","lrodriguez@fje.edu","665873994",1000,1);
INSERT INTO PROFESSOR VALUE(NULL,"94128241M","Magda","Retamal","","mretamal@fje.edu","654793598",1000,1);
INSERT INTO PROFESSOR VALUE(NULL,"71504175G","Sergi","Font","","sfont@fje.edu","687972131",1000,2);
INSERT INTO PROFESSOR VALUE(NULL,"45925350P","Fonxo","Tomas","","ftomas@fje.edu","695682875",1000,2);
INSERT INTO PROFESSOR VALUE(NULL,"75605214M","Anselmo","Torres","","atorres@fje.edu","710082508",1000,2);
INSERT INTO PROFESSOR VALUE(NULL,"60695187G","Eustaquio","Mateu","","emateu@fje.edu","676043465",1000,1);
INSERT INTO PROFESSOR VALUE(NULL,"88936915D","Ramon","Colom","","rcolom@fje.edu","608 873872",1000,3);
INSERT INTO PROFESSOR VALUE(NULL,"63642258Q","Robledo","Roble","","rroble@fje.edu","628443504",1000,3);
INSERT INTO PROFESSOR VALUE(NULL,"54437648Y","Xavi","Soler","","xsoler@fje.edu","661331831",1000,4);
INSERT INTO PROFESSOR VALUE(NULL,"41499392D","Alba","Brunet","","abrunet@fje.edu","678595996",1000,4);
INSERT INTO PROFESSOR VALUE(NULL,"86920828X","Claudia","Sadurni","","csadurni@fje.edu","627710614",1000,5);
INSERT INTO PROFESSOR VALUE(NULL,"02497001Y","Roger","Vidal","","rvidal@fje.edu","691508318",1000,5);

INSERT INTO CLASSE VALUE(NULL,"307","SMX1","1");
INSERT INTO CLASSE VALUE(NULL,"301","SMX2","2");
INSERT INTO CLASSE VALUE(NULL,"301","ASIX1","3");
INSERT INTO CLASSE VALUE(NULL,"304","ASIX2","4");
INSERT INTO CLASSE VALUE(NULL,"307","DAW2","5");

INSERT INTO ALUMNE VALUE(1,"Julio","Carrillo","Rocha","julio@fje.edu","80601839H","942891818", CURDATE(),1);
INSERT INTO ALUMNE VALUE(2,"Ainoa","Prados","Valcarcel","ainoa@fje.edu","18176076G","680527969", CURDATE(),1);
INSERT INTO ALUMNE VALUE(3,"Paulino ","Espin","García","paulino@fje.edu","99709398M","653086012",CURDATE(),1);
INSERT INTO ALUMNE VALUE(4,"Nancy","Luengo","Pacheco","nancy@fje.edu","56400532R","726446795",CURDATE(),2);
INSERT INTO ALUMNE VALUE(5,"Piedad","Ariza","Becerra","piedad@fje.edu","18619881R","646163728",CURDATE(),2);
INSERT INTO ALUMNE VALUE(6,"Anastasia","Alcazar","Galvez","anastasia@fje.edu","97946886Y","659280801",CURDATE(),2);
INSERT INTO ALUMNE VALUE(7,"Maite","Arroyo","Ortiz","maite@fje.edu","50629024K","626255504",CURDATE(),3);
INSERT INTO ALUMNE VALUE(8,"Diego","Pérez","Paz","diego@fje.edu","26849614N","660547746",CURDATE(),3);
INSERT INTO ALUMNE VALUE(9,"Adan","Calle","Ortuño","adan@fje.edu","78679374P","705771394",CURDATE(),3);
INSERT INTO ALUMNE VALUE(10,"Nuria","Fuentes","Ubeda","nuria@fje.edu","08796926R","604713149",CURDATE(),4);
INSERT INTO ALUMNE VALUE(11,"Tomas","Morera","Martinez","tomas@fje.edu","76403881C","690180428",CURDATE(),4);
INSERT INTO ALUMNE VALUE(12,"Elias","Recio","Fernández","elias@fje.edu","11367144S","696947094",CURDATE(),4);
INSERT INTO ALUMNE VALUE(13,"Alberto","Bermejo","Nuñez","441292.joan23@fje.edu","78972211S","690621200",CURDATE(),5);
INSERT INTO ALUMNE VALUE(14,"Marc","Martinez","Mendez","100007471.joan23@fje.edu","49809228Z","601419940",CURDATE(),5);
INSERT INTO ALUMNE VALUE(15,"Juan Carlos","Prado","Garcia","467560.joan23@fje.edu","AV124106","640813704",CURDATE(),5);



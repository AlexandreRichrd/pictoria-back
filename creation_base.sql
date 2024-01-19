/*   	Commandes de création de la base  */
DROP TABLE IF EXISTS Dirige;
DROP TABLE IF EXISTS Jury;
DROP TABLE IF EXISTS ParticipeCompetiteur;
DROP TABLE IF EXISTS ParticipeClub;
DROP TABLE IF EXISTS Evaluation;
DROP TABLE IF EXISTS Dessin;
DROP TABLE IF EXISTS Competiteur;
DROP TABLE IF EXISTS Président;
DROP TABLE IF EXISTS Administrateur;
DROP TABLE IF EXISTS Directeur;
DROP TABLE IF EXISTS Evaluateur;
DROP TABLE IF EXISTS Utilisateur;
DROP TABLE IF EXISTS Concours;
DROP TABLE IF EXISTS Club;


CREATE TABLE Club (
    numClub INT NOT NULL auto_increment,
    nomClub VARCHAR(40) NOT NULL,
    adresse VARCHAR(40) NOT NULL,
    numTéléphone VARCHAR(20) NOT NULL,
    nombreAdhérents INT,
    ville VARCHAR(40),
    département VARCHAR(40),
    région VARCHAR(40),
    PRIMARY KEY (numClub)
);

CREATE TABLE Utilisateur (
    numUtilisateur INT NOT NULL auto_increment,
    nom VARCHAR(40) NOT NULL,
    prénom VARCHAR(40) NOT NULL,
    adresse VARCHAR(40) NOT NULL,
    age INT NOT NULL,
    dateDeNaissance DATE NOT NULL,
    nationalité VARCHAR(40) NOT NULL,
    login VARCHAR(40) NOT NULL,
    motDePasse VARCHAR(40) NOT NULL,
    numClub INT NOT NULL,
    PRIMARY KEY (numUtilisateur),
    FOREIGN KEY (numClub) REFERENCES Club(numClub)
);

CREATE TABLE Concours (
    numConcours INT NOT NULL auto_increment,
    thème VARCHAR(40),
    dateDébut DATE NOT NULL,
    dateFin DATE NOT NULL,
    dateCréation DATE NOT NULL,
    etat VARCHAR(20) NOT NULL,
    récompenses VARCHAR(50),
    PRIMARY KEY (numConcours)
);

CREATE TABLE Président (
    numPrésident INT NOT NULL,
    prime INT,
    PRIMARY KEY (numPrésident),
    FOREIGN KEY (numPrésident) REFERENCES Utilisateur(numUtilisateur)
);

CREATE TABLE Administrateur (
    numAdministrateur INT NOT NULL,
    dateDébut DATE,
    PRIMARY KEY (numAdministrateur),
    FOREIGN KEY (numAdministrateur) REFERENCES Utilisateur(numUtilisateur)
);

CREATE TABLE Directeur (
    numDirecteur INT NOT NULL,
    dateDébut DATE,
    PRIMARY KEY (numDirecteur),
    FOREIGN KEY (numDirecteur) REFERENCES Utilisateur(numUtilisateur)
);

CREATE TABLE Competiteur (
    numCompétiteur INT NOT NULL,
    datePremièreParticipation DATE,
    spécialité VARCHAR(40),
    PRIMARY KEY (numCompétiteur),
    FOREIGN KEY (numCompétiteur) REFERENCES Utilisateur(numUtilisateur)
);

CREATE TABLE Dessin (
    numDessin INT NOT NULL auto_increment,
    numCompétiteur INT NOT NULL,
    commentaire TEXT,
    classement INT,
    dateRemise DATE,
    leDessin BLOB NOT NULL,
    PRIMARY KEY (numDessin),
    FOREIGN KEY (numCompétiteur) REFERENCES Competiteur(numCompétiteur)
);

CREATE TABLE Evaluateur (
    numEvaluateur INT NOT NULL,
    spécialité VARCHAR(40),
    PRIMARY KEY (numEvaluateur),
    FOREIGN KEY (numEvaluateur) REFERENCES Utilisateur(numUtilisateur)
);

CREATE TABLE Evaluation (
    numDessin INT NOT NULL,
    numEvaluateur INT NOT NULL,
    dateEvaluation DATE,
    note FLOAT NOT NULL,
    commentaire TEXT,
    PRIMARY KEY (numDessin, numEvaluateur),
    FOREIGN KEY (numDessin) REFERENCES Dessin(numDessin),
    FOREIGN KEY (numEvaluateur) REFERENCES Evaluateur(numEvaluateur)
);

CREATE TABLE ParticipeCompetiteur (
    numCompétiteur INT NOT NULL,
    numConcours INT NOT NULL,
    PRIMARY KEY (numCompétiteur, numConcours),
    FOREIGN KEY (numCompétiteur) REFERENCES Competiteur(numCompétiteur),
    FOREIGN KEY (numConcours) REFERENCES Concours(numConcours)
);

CREATE TABLE ParticipeClub (
    numClub INT NOT NULL,
    numConcours INT NOT NULL,
    PRIMARY KEY (numClub, numConcours),
    FOREIGN KEY (numClub) REFERENCES Club(numClub),
    FOREIGN KEY (numConcours) REFERENCES Concours(numConcours)
);

CREATE TABLE Jury (
    numEvaluateur INT NOT NULL,
    numConcours INT NOT NULL,
    PRIMARY KEY (numEvaluateur, numConcours),
    FOREIGN KEY (numEvaluateur) REFERENCES Evaluateur(numEvaluateur),
    FOREIGN KEY (numConcours) REFERENCES Concours(numConcours)
);

CREATE TABLE Dirige (
    numClub INT NOT NULL,
    numDirecteur INT NOT NULL,
    PRIMARY KEY (numClub, numDirecteur),
    FOREIGN KEY (numClub) REFERENCES Club(numClub),
    FOREIGN KEY (numDirecteur) REFERENCES Directeur(numDirecteur)
);

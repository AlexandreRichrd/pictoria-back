/*   	Commandes de création de la base  */
DROP TABLE IF EXISTS Dirige;
DROP TABLE IF EXISTS Jury;
DROP TABLE IF EXISTS ParticipeCompetiteur;
DROP TABLE IF EXISTS ParticipeClub;
DROP TABLE IF EXISTS Evaluation;
DROP TABLE IF EXISTS Dessin;
DROP TABLE IF EXISTS President;
DROP TABLE IF EXISTS Administrateur;
DROP TABLE IF EXISTS Directeur;
DROP TABLE IF EXISTS Evaluateur;
DROP TABLE IF EXISTS Competiteur;
DROP TABLE IF EXISTS Utilisateur;
DROP TABLE IF EXISTS Concours;
DROP TABLE IF EXISTS Club;


CREATE TABLE Club (
    numClub INT NOT NULL auto_increment,
    nomClub VARCHAR(40) NOT NULL,
    adresse VARCHAR(60) NOT NULL,
    numTelephone VARCHAR(10),
    nombreAdherents INT NOT NULL,
    ville VARCHAR(60) NOT NULL,
    departement VARCHAR(60) NOT NULL,
    region VARCHAR(60) NOT NULL,
    PRIMARY KEY (numClub)
);

CREATE TABLE Utilisateur (
    numUtilisateur INT NOT NULL auto_increment,
    nom VARCHAR(40) NOT NULL,
    prenom VARCHAR(40) NOT NULL,
    adresse VARCHAR(60) NOT NULL,
    dateDeNaissance DATE NOT NULL,
    nationalite VARCHAR(40) NOT NULL,
    login VARCHAR(40) NOT NULL,
    motDePasse VARCHAR(40) NOT NULL,
    numClub INT,
    dateLicence DATE,
    PRIMARY KEY (numUtilisateur),
    FOREIGN KEY (numClub) REFERENCES Club(numClub)
);

CREATE TABLE Concours (
    numConcours INT NOT NULL auto_increment,
    theme VARCHAR(40),
    dateDebut DATE NOT NULL,
    dateFin DATE NOT NULL,
    dateCreation DATE NOT NULL,
    etat ENUM('pas commence', 'en cours', 'attente', 'resultat', 'evalue') NOT NULL,
    recompenses VARCHAR(50),
    PRIMARY KEY (numConcours)
);

CREATE TABLE President (
    numPresident INT NOT NULL,
    numConcours INT NOT NULL,
    prime INT,
    PRIMARY KEY (numPresident),
    FOREIGN KEY (numPresident) REFERENCES Utilisateur(numUtilisateur),
    FOREIGN KEY (numConcours) REFERENCES Concours(numConcours)
);

CREATE TABLE Administrateur (
    numAdministrateur INT NOT NULL,
    dateDebut DATE,
    PRIMARY KEY (numAdministrateur),
    FOREIGN KEY (numAdministrateur) REFERENCES Utilisateur(numUtilisateur)
);

CREATE TABLE Directeur (
    numDirecteur INT NOT NULL,
    dateDebut DATE,
    PRIMARY KEY (numDirecteur),
    FOREIGN KEY (numDirecteur) REFERENCES Utilisateur(numUtilisateur)
);

CREATE TABLE Competiteur (
    numCompetiteur INT NOT NULL,
    datePremiereParticipation DATE,
    specialite VARCHAR(40),
    PRIMARY KEY (numCompetiteur),
    FOREIGN KEY (numCompetiteur) REFERENCES Utilisateur(numUtilisateur)
);

CREATE TABLE Dessin (
    numDessin INT NOT NULL auto_increment,
    numCompetiteur INT NOT NULL,
    numConcours INT NOT NULL,
    commentaire TEXT,
    dateRemise DATE,
    leDessin BLOB NOT NULL,
    PRIMARY KEY (numDessin),
    FOREIGN KEY (numCompetiteur) REFERENCES Competiteur(numCompetiteur),
    FOREIGN KEY (numConcours) REFERENCES Concours(numConcours)
);

CREATE TABLE Evaluateur (
    numEvaluateur INT NOT NULL,
    specialite VARCHAR(40),
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
    numCompetiteur INT NOT NULL,
    numConcours INT NOT NULL,
    PRIMARY KEY (numCompetiteur, numConcours),
    FOREIGN KEY (numCompetiteur) REFERENCES Competiteur(numCompetiteur),
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

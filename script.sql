-- Création de la base de données
CREATE DATABASE IF NOT EXISTS pictoria;

-- Utilisation de la base de données
USE pictoria;

-- Création de la table "users"
CREATE TABLE users (
    id INT PRIMARY KEY,
    username VARCHAR(255),
    password VARCHAR(255),
    nom VARCHAR(255),
    prenom VARCHAR(255),
    adresse VARCHAR(255)
);

-- Insertion de l'utilisateur "johndoe"
INSERT INTO users (id, username, password, nom, prenom, adresse)
VALUES (1, 'johndoe', 'password', 'Doe', 'John', '123 Main Street');

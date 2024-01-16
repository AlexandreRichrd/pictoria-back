-- Création de la base de données
CREATE DATABASE IF NOT EXISTS pictoria;

-- Utilisation de la base de données
USE pictoria;

-- Création de la table "users"
CREATE TABLE users (
    id INT PRIMARY KEY,
    username VARCHAR(255),
    password VARCHAR(255),
    message TEXT
);

-- Insertion de l'utilisateur "johndoe"
INSERT INTO users (id, username, password, message)
VALUES (1, 'johndoe', 'password', 'triple monstre');

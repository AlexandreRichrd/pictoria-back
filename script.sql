-- Création de la base de données
CREATE DATABASE IF NOT EXISTS pictoria;

-- Utilisation de la base de données
USE pictoria;

-- Création de la table "users"
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255),
    password VARCHAR(255),
    name VARCHAR(255),
    firstname VARCHAR(255),
    address VARCHAR(255)
);

-- Insertion de l'utilisateur "johndoe"
INSERT INTO users (id, username, password, name, firstname, address)
VALUES (1, 'johndoe', 'password', 'Doe', 'John', '123 Main Street');

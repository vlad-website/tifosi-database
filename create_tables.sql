-- ================================================
--  Création de la base de données Tifosi
-- ================================================

DROP DATABASE IF EXISTS tifosi;
CREATE DATABASE tifosi CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE tifosi;

-- ================================================
--  Table : marque
-- ================================================

CREATE TABLE marque (
    id_marque INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_marque)
);

-- ================================================
--  Table : boisson
-- ================================================

CREATE TABLE boisson (
    id_boisson INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prix DECIMAL(5,2) NOT NULL,
    id_marque INT,
    PRIMARY KEY (id_boisson),
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
);

-- ================================================
--  Table : ingredient
-- ================================================

CREATE TABLE ingredient (
    id_ingredient INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prix DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (id_ingredient)
);

-- ================================================
--  Table : focaccia
-- ================================================

CREATE TABLE focaccia (
    id_focaccia INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prix DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (id_focaccia)
);

-- ================================================
--  Table : comprend (relation focaccia ↔ ingredient)
-- ================================================

CREATE TABLE comprend (
    id_focaccia INT NOT NULL,
    id_ingredient INT NOT NULL,
    quantite INT NOT NULL,
    PRIMARY KEY (id_focaccia, id_ingredient),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia),
    FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient)
);

-- ================================================
--  Table : menu
-- ================================================

CREATE TABLE menu (
    id_menu INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prix DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (id_menu)
);

-- ================================================
--  Table : est_constitue (relation menu ↔ focaccia)
-- ================================================

CREATE TABLE est_constitue (
    id_menu INT NOT NULL,
    id_focaccia INT NOT NULL,
    PRIMARY KEY (id_menu, id_focaccia),
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia)
);

-- ================================================
--  Table : contient (relation menu ↔ boisson)
-- ================================================

CREATE TABLE contient (
    id_menu INT NOT NULL,
    id_boisson INT NOT NULL,
    PRIMARY KEY (id_menu, id_boisson),
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu),
    FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson)
);

-- ================================================
--  Table : client
-- ================================================

CREATE TABLE client (
    id_client INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    email VARCHAR(150) NOT NULL,
    code_postal INT NOT NULL,
    PRIMARY KEY (id_client)
);

-- ================================================
--  Table : achete (relation client ↔ menu)
-- ================================================

CREATE TABLE achete (
    id_client INT NOT NULL,
    id_menu INT NOT NULL,
    date_achat DATETIME NOT NULL,
    PRIMARY KEY (id_client, id_menu),
    FOREIGN KEY (id_client) REFERENCES client(id_client),
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu)
);
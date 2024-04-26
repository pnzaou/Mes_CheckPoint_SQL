CREATE DATABASE Boutique;

CREATE TABLE Clients (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(255),
    Prénom VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    Téléphone VARCHAR(20)
);

ALTER TABLE Clients ADD CONSTRAINT UC_Email UNIQUE (Email);

CREATE TABLE Produits (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(255),
    Prix DECIMAL(10, 2),
    Stock INT
);

ALTER TABLE Produits ADD CONSTRAINT CHK_Prix CHECK (Prix > 0);

CREATE TABLE Commandes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ID_Client INT,
    Date_Commande DATE,
    FOREIGN KEY (ID_Client) REFERENCES Clients(ID)
);

CREATE TABLE Détails_Commande (
    ID_Commande INT,
    ID_Produit INT,
    Quantité INT,
    FOREIGN KEY (ID_Commande) REFERENCES Commandes(ID),
    FOREIGN KEY (ID_Produit) REFERENCES Produits(ID)
);

ALTER TABLE Détails_Commande ADD CONSTRAINT CHK_Quantité CHECK (Quantité > 0);

CREATE TABLE Catégories (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(255)
);

CREATE TABLE Produits_Catégories (
    ID_Produit INT,
    ID_Catégorie INT,
    FOREIGN KEY (ID_Produit) REFERENCES Produits(ID),
    FOREIGN KEY (ID_Catégorie) REFERENCES Catégories(ID)
);

CREATE TABLE Commentaires (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ID_Produit INT,
    Commentaire TEXT,
    Note INT,
    FOREIGN KEY (ID_Produit) REFERENCES Produits(ID)
);

ALTER TABLE Commentaires ADD CONSTRAINT CHK_Note CHECK (Note BETWEEN 1 AND 5);

CREATE TABLE Promotions (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ID_Produit INT,
    Réduction DECIMAL(5, 2),
    Date_Début DATE,
    Date_Fin DATE,
    FOREIGN KEY (ID_Produit) REFERENCES Produits(ID)
);

ALTER TABLE Promotions ADD CONSTRAINT CHK_Dates CHECK (Date_Début < Date_Fin);

CREATE TABLE Employés (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(255),
    Prénom VARCHAR(255),
    Email VARCHAR(255),
    Salaire DECIMAL(10, 2)
);

ALTER TABLE Employés ADD CONSTRAINT CHK_Salaire CHECK (Salaire > 0);

CREATE TABLE Ventes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ID_Produit INT,
    Quantité INT,
    Date_Vente DATE,
    FOREIGN KEY (ID_Produit) REFERENCES Produits(ID)
);

ALTER TABLE Ventes ADD CONSTRAINT CHK_Quantité_Vente CHECK (Quantité > 0);

CREATE TABLE Fournisseurs (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(255),
    Adresse VARCHAR(255),
    Téléphone VARCHAR(20)
);

ALTER TABLE Fournisseurs ADD CONSTRAINT UC_Téléphone UNIQUE (Téléphone);

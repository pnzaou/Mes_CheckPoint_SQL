-- Insérez un nouveau client dans la table "Clients".

INSERT INTO Clients (Nom, Prénom, Email, Téléphone)
VALUES ('Doe', 'John', 'john.doe@example.com', '123-456-7890');

-- Ajoutez un nouveau produit dans la table "Produits".

INSERT INTO Produits (Nom, Prix, Stock)
VALUES ('Téléphone portable', 599.99, 100);

-- Créez une nouvelle commande pour le client nouvellement ajouté.

INSERT INTO Commandes (ID_Client, Date_Commande)
VALUES (1, CURDATE());

-- Ajoutez des détails à la commande en insérant des produits dans la table "Détails_Commande".

INSERT INTO Détails_Commande (ID_Commande, ID_Produit, Quantité)
VALUES (1, 1, 2);

-- Mettez à jour le stock du produit suite à la commande.

UPDATE Produits
SET Stock = Stock - 2
WHERE ID = 1;

-- Ajoutez une nouvelle catégorie de produit.

INSERT INTO Catégories (Nom)
VALUES ('Électronique');

-- Associez le produit précédemment ajouté à la nouvelle catégorie.

INSERT INTO Produits_Catégories (ID_Produit, ID_Catégorie)
VALUES (1, 1);

-- Ajoutez un commentaire et une note pour le produit.

INSERT INTO Commentaires (ID_Produit, Commentaire, Note)
VALUES (1, 'Très bon téléphone, fonctionne bien.', 4);

-- Créez une promotion pour le produit.

INSERT INTO Promotions (ID_Produit, Réduction, Date_Début, Date_Fin)
VALUES (1, 50.00, '2024-04-27', '2024-05-10');

-- Inscrivez un nouvel employé dans la table "Employés".

INSERT INTO Employés (Nom, Prénom, Email, Salaire)
VALUES ('Smith', 'Emily', 'emily.smith@example.com', 40000.00);

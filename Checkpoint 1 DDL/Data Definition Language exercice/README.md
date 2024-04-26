# instructions

1- Créez une base de données appelée "Boutique".

2 - Créez une table "Clients" avec les colonnes suivantes : ID (entier, auto-incrémenté), Nom (varchar), Prénom (varchar), Email (varchar), Téléphone (varchar).

3 - Ajoutez une contrainte pour que l'adresse e-mail soit unique dans la table "Clients".

4 - Créez une table "Produits" avec les colonnes suivantes : ID (entier, auto-incrémenté), Nom (varchar), Prix (decimal), Stock (entier).

5 - Ajoutez une contrainte pour que le prix soit supérieur à zéro dans la table "Produits".

6 - Créez une table "Commandes" avec les colonnes suivantes : ID (entier, auto-incrémenté), ID_Client (entier, clé étrangère vers la table "Clients"), Date_Commande (date).

7 - Créez une table "Détails_Commande" avec les colonnes suivantes : ID_Commande (entier, clé étrangère vers la table "Commandes"), ID_Produit (entier, clé étrangère vers la table "Produits"), Quantité (entier).

8 - Ajoutez une contrainte pour que la quantité dans la table "Détails_Commande" soit supérieure à zéro.

9 - Créez une table "Catégories" avec les colonnes suivantes : ID (entier, auto-incrémenté), Nom (varchar).

10 - Créez une table de jointure "Produits_Catégories" avec les colonnes suivantes : ID_Produit (entier, clé étrangère vers la table "Produits"), ID_Catégorie (entier, clé étrangère vers la table "Catégories").

11 - Créez une table "Commentaires" avec les colonnes suivantes : ID (entier, auto-incrémenté), ID_Produit (entier, clé étrangère vers la table "Produits"), Commentaire (texte), Note (entier).

12 - Ajoutez une contrainte pour que la note dans la table "Commentaires" soit entre 1 et 5.

13 - Créez une table "Promotions" avec les colonnes suivantes : ID (entier, auto-incrémenté), ID_Produit (entier, clé étrangère vers la table "Produits"), Réduction (decimal), Date_Début (date), Date_Fin (date).

14 - Ajoutez une contrainte pour que la date de début de la promotion soit antérieure à la date de fin.

15 - Créez une table "Employés" avec les colonnes suivantes : ID (entier, auto-incrémenté), Nom (varchar), Prénom (varchar), Email (varchar), Salaire (decimal).

16 - Ajoutez une contrainte pour que le salaire dans la table "Employés" soit supérieur à zéro.

17 - Créez une table "Ventes" avec les colonnes suivantes : ID (entier, auto-incrémenté), ID_Produit (entier, clé étrangère vers la table "Produits"), Quantité (entier), Date_Vente (date).

18 - Ajoutez une contrainte pour que la quantité dans la table "Ventes" soit supérieure à zéro.

19 - Créez une table "Fournisseurs" avec les colonnes suivantes : ID (entier, auto-incrémenté), Nom (varchar), Adresse (varchar), Téléphone (varchar).

20 - Ajoutez une contrainte pour que le numéro de téléphone dans la table "Fournisseurs" soit unique. 
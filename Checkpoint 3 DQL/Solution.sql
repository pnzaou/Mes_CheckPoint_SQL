-- Afficher toutes les données des clients --

SELECT * FROM customers;

-- Afficher le nom_du_produit et la catégorie pour les produits dont le prix est compris entre 5000 et 10000

SELECT product_name, category FROM products WHERE price >= 5000 AND price <= 10000;

-- Affichez toutes les données des produits triés par ordre décroissant de prix.

SELECT * FROM products ORDER BY price DESC;

-- Afficher le nombre total de commandes, le montant moyen, le montant total le plus élevé et le montant total inférieur. Pour chaque product_id, afficher le nombre de commandes

SELECT COUNT(*) AS nombre_total_commandes,
        AVG(total_amount) AS montant_moyen,
        MAX(total_amount) AS montant_total_plus_élevé,
        MIN(total_amount) AS montant_total_inférieur,
        product_idf, 
        COUNT(product_idf) AS nombre_commandes_par_produit
FROM orders GROUP BY product_idf;

-- Afficher le customer_id qui a plus de 2 commandes 

SELECT customer_idf FROM orders GROUP BY customer_idf HAVING COUNT(*) > 2;

-- Pour chaque mois de l'année 2020, afficher le nombre de commandes

SELECT EXTRACT(MONTH FROM order_date) AS mois,
       COUNT(*) AS nombre_commandes
FROM orders
WHERE EXTRACT(YEAR FROM order_date) = 2020
GROUP BY EXTRACT(MONTH FROM order_date);

-- Pour chaque commande, afficher le nom_produit, le nom_client et la date de la commande

SELECT p.product_name, c.customer_name, o.order_date
FROM orders o
JOIN products p ON o.product_idf = p.product_id
JOIN customers c ON o.customer_idf = c.customer_id;

-- Afficher toutes les commandes passées il y a trois mois

SELECT *
FROM orders
WHERE order_date = CURRENT_DATE() - INTERVAL '3 months';

-- Afficher les clients (customer_id) qui n'ont jamais commandé de produit

SELECT c.customer_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_idf
WHERE o.customer_idf IS NULL;
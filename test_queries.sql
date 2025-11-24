USE tifosi;

-- =====================================================
--  REQUÊTE 1 — Afficher la liste des noms des focaccias par ordre alphabétique croissant
-- =====================================================

SELECT nom 
FROM focaccia 
ORDER BY nom ASC;

-- Résultat attendu :
-- Liste des focaccias triées de A à Z.
-- Résultat obtenu : (voir screenshot Req_1.png)
-- Commentaire : Aucun écart.



-- =====================================================
--  REQUÊTE 2 — Afficher le nombre total d'ingrédients
-- =====================================================

SELECT COUNT(*) AS total_ingredients 
FROM ingredient;

-- Résultat attendu :
-- Nombre total d’ingrédients dans la table ingredient.
-- Résultat obtenu : (voir screenshot Req_2.png)
-- Commentaire : Aucun écart.



-- =====================================================
--  REQUÊTE 3 — Afficher le prix moyen des focaccias
-- =====================================================

SELECT AVG(prix) AS prix_moyen 
FROM focaccia;

-- Résultat attendu :
-- Prix moyen des focaccias.
-- Résultat obtenu : (voir screenshot Req_3.png)
-- Commentaire : Aucun écart.



-- =====================================================
--  REQUÊTE 4 — Afficher la liste des boissons avec leur marque
--                triée par nom de boisson
-- =====================================================

SELECT boisson.nom AS boisson, marque.nom AS marque
FROM boisson
JOIN marque ON boisson.id_marque = marque.id_marque
ORDER BY boisson.nom ASC;

-- Résultat attendu :
-- Liste des boissons avec leur marque.
-- Résultat obtenu : (voir screenshot Req_4.png)
-- Commentaire : Aucun écart.



-- =====================================================
--  REQUÊTE 5 — Afficher la liste des ingrédients pour une Raclaccia
-- =====================================================

SELECT ingredient.nom
FROM focaccia
JOIN comprend ON focaccia.id_focaccia = comprend.id_focaccia
JOIN ingredient ON ingredient.id_ingredient = comprend.id_ingredient
WHERE focaccia.nom = 'Raclaccia';

-- Résultat attendu :
-- Liste des ingrédients utilisés dans la Raclaccia.
-- Résultat obtenu : (voir screenshot Req_5.png)
-- Commentaire : Aucun écart.



-- =====================================================
--  REQUÊTE 6 — Afficher le nom et le nombre d'ingrédients pour chaque focaccia
-- =====================================================

SELECT focaccia.nom, COUNT(comprend.id_ingredient) AS nb_ingredients
FROM focaccia
JOIN comprend ON focaccia.id_focaccia = comprend.id_focaccia
GROUP BY focaccia.id_focaccia;

-- Résultat attendu :
-- Chaque focaccia avec le nombre total d’ingrédients.
-- Résultat obtenu : (voir screenshot Req_6.png)
-- Commentaire : Aucun écart.



-- =====================================================
--  REQUÊTE 7 — Afficher le nom de la focaccia qui a le plus d’ingrédients
-- =====================================================

SELECT focaccia.nom, COUNT(comprend.id_ingredient) AS nb
FROM focaccia
JOIN comprend ON focaccia.id_focaccia = comprend.id_focaccia
GROUP BY focaccia.id_focaccia
ORDER BY nb DESC
LIMIT 1;

-- Résultat attendu :
-- La focaccia avec le nombre maximal d’ingrédients.
-- Résultat obtenu : (voir screenshot Req_7.png)
-- Commentaire : Aucun écart.



-- =====================================================
--  REQUÊTE 8 — Afficher la liste des focaccias qui contiennent de l’ail
-- =====================================================

SELECT DISTINCT focaccia.nom
FROM focaccia
JOIN comprend ON focaccia.id_focaccia = comprend.id_focaccia
JOIN ingredient ON ingredient.id_ingredient = comprend.id_ingredient
WHERE ingredient.nom = 'Ail';

-- Résultat attendu :
-- Focaccias contenant l’ingrédient Ail.
-- Résultat obtenu : (voir screenshot Req_8.png)
-- Commentaire : Aucun écart.



-- =====================================================
--  REQUÊTE 9 — Afficher la liste des ingrédients inutilisés
-- =====================================================

SELECT ingredient.nom
FROM ingredient
LEFT JOIN comprend 
    ON ingredient.id_ingredient = comprend.id_ingredient
WHERE comprend.id_ingredient IS NULL;

-- Résultat attendu :
-- Ingrédients n'apparaissant dans aucune focaccia.
-- Résultat obtenu : (voir screenshot Req_9.png)
-- Commentaire : Aucun écart.



-- =====================================================
--  REQUÊTE 10 — Afficher la liste des focaccias qui n'ont pas de champignons
-- =====================================================

SELECT DISTINCT focaccia.nom
FROM focaccia
LEFT JOIN comprend 
    ON focaccia.id_focaccia = comprend.id_focaccia
LEFT JOIN ingredient
    ON ingredient.id_ingredient = comprend.id_ingredient
    AND ingredient.nom = 'Champignon'
WHERE ingredient.id_ingredient IS NULL;

-- Résultat attendu :
-- Focaccias ne contenant pas de champignons.
-- Résultat obtenu : (voir screenshot Req_10.png)
-- Commentaire : Aucun écart.
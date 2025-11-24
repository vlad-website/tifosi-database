# Base de données Tifosi
Projet SQL pour le restaurant Tifosi.


Ce projet consiste à concevoir et implémenter une base de données MySQL pour le restaurant **Tifosi**, permettant de gérer :  
- les focaccias  
- les ingrédients  
- les boissons  
- les marques  
- les menus  
- les clients et leurs achats  

Le travail inclut la création du schéma, le peuplement des tables et l'exécution de requêtes de test visant à vérifier la bonne conception de la base.

---

## 📁 Structure du projet

Le dépôt contient les fichiers suivants :

tifosi-database/
│
├── create_tables.sql → Script de création de la base et des tables
├── insert_data.sql → Script d’insertion des données de test
├── test_queries.sql → Script contenant les 10 requêtes demandées
│
├── screenshots/ → Captures d’écran des résultats des requêtes
│ ├── Req_1.png
│ ├── Req_2.png
│ ├── ...
│ └── Req_10.png
│
└── README.md → Documentation du projet (ce fichier)

yaml
Copier le code

---

## 🗄️ 1. Création de la base

Le fichier **create_tables.sql** contient :

- la création de la base `tifosi`
- la création de toutes les tables
- les clés primaires
- les clés étrangères
- les contraintes d’intégrité

Tables créées :

- `marque`
- `boisson`
- `ingredient`
- `focaccia`
- `comprend` (relation focaccia ↔ ingredient)
- `menu`
- `est_constitue` (relation menu ↔ focaccia)
- `contient` (relation menu ↔ boisson)
- `client`
- `achete` (relation client ↔ menu)

---

## 🍽️ 2. Insertion des données

Le fichier **insert_data.sql** insère les données provenant des fichiers :

- focaccia.xlsx  
- ingredient.xlsx  
- boisson.xlsx  
- marque.xlsx  

Y figurent également des données pour :

- les menus  
- les relations menu ↔ focaccia  
- les relations menu ↔ boisson  
- les clients  
- leurs achats  

---

## 🔍 3. Requêtes de test

Le fichier **test_queries.sql** contient les **10 requêtes demandées par le cahier des charges**, accompagnées de :

- leur objectif  
- le code SQL  
- le résultat attendu  
- le résultat obtenu  
- un commentaire ("Aucun écart." si tout est correct)

Les résultats obtenus sont visibles dans le dossier :

/screenshots

yaml
Copier le code

Chaque capture correspond à une requête :  
`rq1.png`, `rq2.png`, ..., `rq10.png`.

---

## ▶️ 4. Instructions de lancement

### 1. Créer la base et les tables
```sql
SOURCE create_tables.sql;
2. Insérer les données
sql
Copier le code
SOURCE insert_data.sql;
3. Lancer les requêtes de test
sql
Copier le code
SOURCE test_queries.sql;
🛠️ 5. Séparation en branches & Pull Requests
Le projet respecte les bonnes pratiques Git :
Chaque partie (tables, données, requêtes, README…) a été réalisée dans une branche dédiée :

feature/create-tables

feature/insert-data

feature/test-queries

feature/screenshots

feature/readme-final

Chaque branche a fait l'objet d’un Pull Request, puis merge dans main.

👤 Auteur
Projet réalisé par KHARKOVSKYI dans le cadre du module Bases de données MySQL.
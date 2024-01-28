-- -----------------------------------------------------
-- Projet BDD2 Partie 2
-- ANDREOLLI Justine 
-- HASHEMI Seyedali
-- TD2 TP3
-- -----------------------------------------------------

@dropTables.sql     -- supprime les tables + contraintes d'intégrité
@tableCreate.sql    -- créer les tables
@index.sql          -- créer les index
@triggers.sql       -- créer les triggers de la partie 1 + ceux que nous avons décidé d'implémenter
@data.sql           -- implémente le jeu de données
@declencheurs.sql   -- la partie déclencheurs du projet de la partie 2

@procedures_fonctions.sql   -- la partie procédures/fonctions du projet de la partie 2
@requetes.sql               -- la partie requête du projet de la partie 2
@tests.sql                  -- quelques tests 

SELECT * FROM COMPORTE;
SELECT * FROM CONTIENT;
SELECT * FROM DEPEND_DE;
SELECT * FROM EST_ASSIGNE;
SELECT * FROM LISTE_TACHE;
SELECT * FROM PERIODICITE;
SELECT * FROM SCORE_CATEGORIE_TACHE;
SELECT * FROM TACHE;
SELECT * FROM TACHE_EN_COURS;
SELECT * FROM TACHE_FINI;
SELECT * FROM TACHE_APPARTENANT_A_LISTE;
SELECT * FROM TRAVAILLE;
SELECT * FROM UTILISATEUR;
SELECT * FROM PROGRAMME_DE_SCORE;
SELECT * FROM CATEGORIE;
SELECT * FROM PROJET;




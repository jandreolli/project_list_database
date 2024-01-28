-- -----------------------------------------------------
-- Projet BDD2 Partie 2
-- ANDREOLLI Justine 
-- HASHEMI Seyedali
-- TD2 TP3
-- -----------------------------------------------------

-- -----------------------------------------------------
-- DATA TABLE PROJET
-- -----------------------------------------------------
INSERT INTO Projet (nom_projet)
VALUES ('Projet1');
INSERT INTO Projet (nom_projet)
VALUES ('Projet2');
INSERT INTO Projet (nom_projet)
VALUES ('Projet3');

-- -----------------------------------------------------
-- DATA TABLE CATEGORIE
-- -----------------------------------------------------
INSERT INTO Categorie (nom_categorie)
VALUES ('Recherche');
INSERT INTO Categorie (nom_categorie)
VALUES ('Rapports');
INSERT INTO Categorie (nom_categorie)
VALUES ('Formation');
INSERT INTO Categorie (nom_categorie)
VALUES ('Présentations');
INSERT INTO Categorie (nom_categorie)
VALUES ('Réalisation des tests');
INSERT INTO Categorie (nom_categorie)
VALUES ('Analyses');
INSERT INTO Categorie (nom_categorie)
VALUES ('Documentation');
INSERT INTO Categorie (nom_categorie)
VALUES ('Tests');
INSERT INTO Categorie (nom_categorie)
VALUES ('Développement');
INSERT INTO Categorie (nom_categorie)
VALUES ('Validation');
INSERT INTO Categorie (nom_categorie)
VALUES ('Réunions');
INSERT INTO Categorie (nom_categorie)
VALUES ('Produit');
INSERT INTO Categorie (nom_categorie)
VALUES ('Projet');
INSERT INTO Categorie (nom_categorie)
VALUES ('Vérifications');
INSERT INTO Categorie (nom_categorie)
VALUES ('Déploiement');
INSERT INTO Categorie (nom_categorie)
VALUES ('Audit');
INSERT INTO Categorie (nom_categorie)
VALUES ('Optimisation');
INSERT INTO Categorie (nom_categorie)
VALUES ('Organisation');
INSERT INTO Categorie (nom_categorie)
VALUES ('Planification');
INSERT INTO Categorie (nom_categorie)
VALUES ('Achats');


-- -----------------------------------------------------
-- DATA TABLE SCORE_CATEGORIE_TACHE
-- -----------------------------------------------------

-- --------------
-- Programme1
-- ---------------
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie)
VALUES ('prog1_Recherche_Y', 'Y', 2, 'Recherche');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie)
VALUES ('prog1_Recherche_N', 'N', -1, 'Recherche');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie)
VALUES ('prog1_Rapports_Y', 'Y', 2, 'Rapports');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie)
VALUES ('prog1_Rapports_N', 'N', -1, 'Rapports');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES ('prog1_Formation_Y', 'Y', 2, 'Formation');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Formation_N', 'N', -2, 'Formation');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES ('prog1_Présentations_Y', 'Y', 1, 'Présentations');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Présentations_N', 'N', -2, 'Présentations');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Réalisation des tests_Y', 'Y', 2, 'Réalisation des tests');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Réalisation des tests_N', 'N', -1, 'Réalisation des tests');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Analyses_Y', 'Y', 2, 'Analyses');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Analyses_N', 'N', -1, 'Analyses');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Documentation_Y', 'Y', 2, 'Documentation');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Documentation_N', 'N', -2, 'Documentation');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Tests_Y', 'Y', 1, 'Tests');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Tests_N', 'N', -2, 'Tests');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Développement_Y', 'Y', 1, 'Développement');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Développement_N', 'N', -1, 'Développement');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Validation_Y', 'Y', 1, 'Validation');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Validation_N', 'N', -1, 'Validation');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Réunions_Y', 'Y', 1, 'Réunions'); 
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Réunions_N', 'N', -1, 'Réunions');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Produit_Y', 'Y', 1, 'Produit');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Produit_N', 'N', -1, 'Produit');


INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Projet_Y', 'Y', 1, 'Projet');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Projet_N', 'N', -1, 'Projet');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Vérifications_Y', 'Y', 1, 'Vérifications');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Vérifications_N', 'N', -1, 'Vérifications');


INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Déploiement_Y', 'Y', 1, 'Déploiement');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Déploiement_N', 'N', -1, 'Déploiement');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Audit_Y', 'Y', 1, 'Audit');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Audit_N', 'N', -1, 'Audit');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Optimisation_Y', 'Y', 1, 'Optimisation');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Optimisation_N', 'N', -1, 'Optimisation');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Organisation_Y', 'Y', 1, 'Organisation');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Organisation_N', 'N', -1, 'Organisation');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Planification_Y', 'Y', 2, 'Planification');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Planification_N', 'N', -1, 'Planification');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog1_Achats_Y', 'Y', 2, 'Achats');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES ('prog1_Achats_N', 'N', -2, 'Achats');


-- --------------
-- Programme2
-- ---------------
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Recherche_Y', 'Y', 6, 'Recherche');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Recherche_N', 'N', -6, 'Recherche');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Rapports_Y', 'Y', 7, 'Rapports');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Rapports_N', 'N', -7, 'Rapports');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Formation_Y', 'Y', 8, 'Formation');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Formation_N', 'N', -6, 'Formation');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Présentations_Y', 'Y', 7, 'Présentations');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Présentations_N', 'N', -7, 'Présentations');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Réalisation des tests_Y', 'Y', 6, 'Réalisation des tests');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Réalisation des tests_N', 'N', -6, 'Réalisation des tests');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Analyses_Y', 'Y', 7, 'Analyses');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Analyses_N', 'N', -7, 'Analyses');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Documentation_Y', 'Y', 8, 'Documentation');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Documentation_N', 'N', -8, 'Documentation');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Tests_Y', 'Y', 7, 'Tests');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Tests_N', 'N', -6, 'Tests');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Développement_Y', 'Y', 7, 'Développement');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Développement_N', 'N', -7, 'Développement');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Validation_Y', 'Y', 7, 'Validation');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Validation_N', 'N', -7, 'Validation');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Réunions_Y', 'Y', 7, 'Réunions');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Réunions_N', 'N', -7, 'Réunions');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Produit_Y', 'Y', 7, 'Produit');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Produit_N', 'N', -7, 'Produit');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Projet_Y', 'Y', 7, 'Projet');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Projet_N', 'N', -7, 'Projet');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Vérifications_Y', 'Y', 7, 'Vérifications');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Vérifications_N', 'N', -7, 'Vérifications');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Déploiement_Y', 'Y', 7, 'Déploiement');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Déploiement_N', 'N', -7, 'Déploiement');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Audit_Y', 'Y', 7, 'Audit');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Audit_N', 'N', -7, 'Audit');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Optimisation_Y', 'Y', 7, 'Optimisation');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Optimisation_N', 'N', -7, 'Optimisation');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Organisation_Y', 'Y', 7, 'Organisation');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Organisation_N', 'N', -7, 'Organisation');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Planification_Y', 'Y', 8, 'Planification');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Planification_N', 'N', -7, 'Planification');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Achats_Y', 'Y', 8, 'Achats');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog2_Achats_N', 'N', -8, 'Achats');


-- --------------
-- Programme3
-- ---------------
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Recherche_Y', 'Y', 4, 'Recherche');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Recherche_N', 'N', -4, 'Recherche');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Rapports_Y', 'Y', 5, 'Rapports');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Rapports_N', 'N', -5, 'Rapports');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Formation_Y', 'Y', 6, 'Formation');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Formation_N', 'N', -4, 'Formation');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Présentations_Y', 'Y', 5, 'Présentations');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Présentations_N', 'N', -5, 'Présentations');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Réalisation des tests_Y', 'Y', 4, 'Réalisation des tests');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Réalisation des tests_N', 'N', -4, 'Réalisation des tests');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Analyses_Y', 'Y', 5, 'Analyses');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Analyses_N', 'N', -5, 'Analyses');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Documentation_Y', 'Y', 6, 'Documentation');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Documentation_N', 'N', -6, 'Documentation');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Tests_Y', 'Y', 5, 'Tests');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Tests_N', 'N', -4, 'Tests');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Développement_Y', 'Y', 5, 'Développement');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Développement_N', 'N', -5, 'Développement');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Validation_Y', 'Y', 5, 'Validation');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Validation_N', 'N', -5, 'Validation');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Réunions_Y', 'Y', 5, 'Réunions');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Réunions_N', 'N', -5, 'Réunions');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Produit_Y', 'Y', 5, 'Produit');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Produit_N', 'N', -5, 'Produit');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Projet_Y', 'Y', 5, 'Projet');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Projet_N', 'N', -5, 'Projet');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Vérifications_Y', 'Y', 5, 'Vérifications');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Vérifications_N', 'N', -5, 'Vérifications');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Déploiement_Y', 'Y', 5, 'Déploiement');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Déploiement_N', 'N', -5, 'Déploiement');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Audit_Y', 'Y', 5, 'Audit');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Audit_N', 'N', -5, 'Audit');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Optimisation_Y', 'Y', 5, 'Optimisation');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Optimisation_N', 'N', -5, 'Optimisation');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Organisation_Y', 'Y', 5, 'Organisation');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Organisation_N', 'N', -5, 'Organisation');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Planification_Y', 'Y', 6, 'Planification');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Planification_N', 'N', -5, 'Planification');

INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Achats_Y', 'Y', 6, 'Achats');
INSERT INTO Score_categorie_tache (ref_score_categorie_tache, termine, score, nom_categorie) 
VALUES('prog3_Achats_N', 'N', -6, 'Achats');

-- -----------------------------------------------------
-- DATA TABLE PROGRAMME_DE_SCORE
-- -----------------------------------------------------
INSERT INTO Programme_de_score (nom_programme)
VALUES ('Programme1');
INSERT INTO Programme_de_score (nom_programme)
VALUES ('Programme2');
INSERT INTO Programme_de_score (nom_programme)
VALUES ('Programme3');

-- -----------------------------------------------------
-- DATA TABLE COMPORTE
-- -----------------------------------------------------
-- --------------
-- Prog1
-- ---------------
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Recherche_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Recherche_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Rapports_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Rapports_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Formation_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Formation_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Présentations_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Présentations_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Réalisation des tests_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Réalisation des tests_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Analyses_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Analyses_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Documentation_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Documentation_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Tests_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Tests_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Développement_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Développement_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Validation_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Validation_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Réunions_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Réunions_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Produit_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Produit_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Projet_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Projet_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Vérifications_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Vérifications_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Déploiement_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Déploiement_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Audit_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Audit_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Optimisation_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Optimisation_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Organisation_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Organisation_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Planification_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Planification_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Achats_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme1', 'prog1_Achats_N');

-- --------------
-- Prog2
-- ---------------
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Recherche_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Recherche_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Rapports_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Rapports_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Formation_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Formation_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Présentations_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Présentations_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Réalisation des tests_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Réalisation des tests_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Analyses_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Analyses_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Documentation_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Documentation_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Tests_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Tests_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Développement_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Développement_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Validation_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Validation_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Réunions_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Réunions_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Produit_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Produit_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Projet_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Projet_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Vérifications_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Vérifications_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Déploiement_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Déploiement_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Audit_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Audit_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Optimisation_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Optimisation_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Organisation_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Organisation_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Planification_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Planification_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Achats_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme2', 'prog2_Achats_N');


-- --------------
-- Prog3
-- ---------------
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Recherche_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Recherche_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Rapports_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Rapports_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Formation_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Formation_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Présentations_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Présentations_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Réalisation des tests_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Réalisation des tests_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Analyses_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Analyses_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Documentation_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Documentation_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Tests_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Tests_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Développement_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Développement_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Validation_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Validation_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Réunions_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Réunions_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Produit_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Produit_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Projet_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Projet_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Vérifications_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Vérifications_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Déploiement_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Déploiement_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Audit_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Audit_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Optimisation_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Optimisation_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Organisation_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Organisation_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Planification_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Planification_N');

INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Achats_Y');
INSERT INTO Comporte (nom_programme, ref_score_categorie_tache)
VALUES('Programme3', 'prog3_Achats_N');

-- -----------------------------------------------------
-- DATA TABLE UTILISATEUR 
-- -----------------------------------------------------
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('jdoe01', 'MotDePasse01', 0, 'Doe', 'John', '123 Rue A', 'France', TO_DATE('1980-05-15', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme1');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('asmith02', 'MotDePasse02', 0, 'Smith', 'Alice', '456 Avenue B', 'USA', TO_DATE('1992-10-21', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme2');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('mjones03', 'MotDePasse03', 0, 'Jones', 'Michael', '789 Street C', 'Spain', TO_DATE('1985-03-08', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme3');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('rwilliam25', 'MotDePasse25', 0, 'Williams', 'Rachel', '321 Boulevard X', 'France', TO_DATE('1998-12-30', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme2');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('janderso45', 'Password123', 0, 'Anderson', 'Jack', '567 Lane D', 'UK', TO_DATE('1990-07-20', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme3');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('ckim89', 'SecretPass', 0, 'Kim', 'Chris', '890 Avenue E', 'South Korea', TO_DATE('1988-11-05', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme1');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('plarson45', 'PassWord321', 0, 'Larson', 'Peter', '234 Road F', 'USA', TO_DATE('1995-02-12', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme2');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('mchen89', 'MyPass123', 0, 'Chen', 'Michelle', '789 Street G', 'China', TO_DATE('1987-09-27', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme1');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('rthompso78', 'Secure123', 0, 'Thompson', 'Ryan', '567 Lane H', 'Canada', TO_DATE('1993-04-18', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme3');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('jwang01', 'Pass123Word', 0, 'Wang', 'Jennifer', '890 Avenue I', 'China', TO_DATE('1989-12-08', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme2');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('blopez78', 'MyPassWord', 0, 'Lopez', 'Brian', '234 Road J', 'Spain', TO_DATE('1997-06-25', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme1');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('hsmith56', 'Password1234', 0, 'Smith', 'Hannah', '789 Street K', 'USA', TO_DATE('1986-01-14', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme3');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('mgonzale89', 'Pass321Word', 0, 'Gonzalez', 'Maria', '567 Lane L', 'Spain', TO_DATE('1994-08-03', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme2');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('jkim78', 'MySecretPass', 0, 'Kim', 'John', '890 Avenue M', 'South Korea', TO_DATE('1991-03-22', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme1');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('jhudson12', 'MyPass987', 0, 'Hudson', 'James', '123 Street N', 'UK', TO_DATE('1993-09-25', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme3');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('amiller15', 'Secret987', 0, 'Miller', 'Anna', '456 Avenue O', 'USA', TO_DATE('1985-06-12', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme2');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('rjones89', 'Pass987Word', 0, 'Jones', 'Robert', '789 Street P', 'Spain', TO_DATE('1990-03-07', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme1');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('msanchez26', 'MySecret987', 0, 'Sanchez', 'Maria', '321 Boulevard Q', 'Spain', TO_DATE('1998-12-30', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme2');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('tphillip36', 'Password987', 0, 'Phillips', 'Thomas', '567 Lane R', 'Canada', TO_DATE('1992-11-18', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme1');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('njackson45', 'SecretPass987', 0, 'Jackson', 'Nicole', '890 Avenue S', 'USA', TO_DATE('1987-05-23', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme3');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('jmartine78', 'My987Pass', 0, 'Martinez', 'James', '234 Road T', 'Spain', TO_DATE('1995-02-19', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme2');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('klee12', 'Pass987Word', 0, 'Lee', 'Kate', '789 Street U', 'South Korea', TO_DATE('1989-07-15', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme1');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('brivera59', 'MyPassword987', 0, 'Rivera', 'Brian', '567 Lane V', 'Spain', TO_DATE('1997-04-08', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme3');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('hmartin85', 'Secret987Pass', 0, 'Martin', 'Helen', '890 Avenue W', 'USA', TO_DATE('1986-10-30', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme2');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('fmartel45', 'Pass987', 0, 'Martel', 'Francois', '123 Rue A', 'France', TO_DATE('1993-09-25', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme3');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('cbelmont63', 'Secret987', 0, 'Belmont', 'Catherine', '456 Avenue B', 'France', TO_DATE('1985-06-12', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme2');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('proux89', 'Pass987Word', 0, 'Roux', 'Paul', '789 Street C', 'France', TO_DATE('1990-03-07', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme1');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('smoreau61', 'MySecret987', 0, 'Moreau', 'Sophie', '321 Boulevard D', 'France', TO_DATE('1998-12-30', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme2');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('tblanc81', 'Password987', 0, 'Blanc', 'Thomas', '567 Lane E', 'France', TO_DATE('1992-11-18', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme1');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('jmartin34', 'SecretPass987', 0, 'Martin', 'Julie', '890 Avenue F', 'France', TO_DATE('1987-05-23', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme3');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('jpierre75', 'My987Pass', 0, 'Pierre', 'Jean', '234 Road G', 'France', TO_DATE('1995-02-19', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme2');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('cgerard12', 'Pass987Word', 0, 'Gerard', 'Camille', '789 Street H', 'France', TO_DATE('1989-07-15', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme1');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('bdupont53', 'MyPassword987', 0, 'Dupont', 'Benoit', '567 Lane I', 'France', TO_DATE('1997-04-08', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme3');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('gmartin75', 'Secret987Pass', 0, 'Martin', 'Gerard', '890 Avenue J', 'France', TO_DATE('1986-10-30', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme2');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('sfournie85', 'Password456', 0, 'Fournier', 'Sophie', '123 Rue A', 'France', TO_DATE('1990-09-15', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme1');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('lrobert95', 'Pass123Word', 0, 'Robert', 'Luc', '456 Avenue B', 'France', TO_DATE('1988-04-21', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme2');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('cmorel73', 'Secret123', 0, 'Morel', 'Claire', '789 Street C', 'France', TO_DATE('1995-12-08', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme3');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('mgarcia49', 'MyPass123', 0, 'Garcia', 'Manon', '321 Boulevard D', 'France', TO_DATE('1993-08-25', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme2');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('jleclerc78', 'Pass123Word', 0, 'Leclerc', 'Julien', '567 Lane E', 'France', TO_DATE('1997-06-18', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme1');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('mmartin13', 'Secret123Pass', 0, 'Martin', 'Marie', '890 Avenue F', 'France', TO_DATE('1992-03-20', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme3');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('tduval86', 'PassWord123', 0, 'Duval', 'Thomas', '234 Road G', 'France', TO_DATE('1994-10-15', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme2');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('cdupuis12', 'MySecretPass', 0, 'Dupuis', 'Camille', '789 Street H', 'France', TO_DATE('1989-07-10', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme1');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('bblanc86', 'Password1234', 0, 'Blanc', 'Benoit', '567 Lane I', 'France', TO_DATE('1996-04-28', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme3');
INSERT INTO Utilisateur (login, mot_de_passe, score, nom, prenom, adresse, pays, date_de_naissance, date_d_inscription, nom_programme)
VALUES ('flemoine53', 'Pass123Word', 0, 'Lemoine', 'Fabien', '890 Avenue J', 'France', TO_DATE('1991-01-05', 'YYYY-MM-DD'), TO_DATE('2005-05-15', 'YYYY-MM-DD'), 'Programme2');

-- -----------------------------------------------------
-- DATA TABLE TRAVAILLE
-- -----------------------------------------------------
INSERT INTO Travaille (nom_projet, ref_utilisateur)
VALUES ('Projet1', 1);
INSERT INTO Travaille (nom_projet, ref_utilisateur)
VALUES ('Projet2', 2);
INSERT INTO Travaille (nom_projet, ref_utilisateur)
VALUES ('Projet3', 43);

-- -----------------------------------------------------
-- DATA TABLE LISTE_TACHE
-- -----------------------------------------------------
INSERT INTO Liste_tache (nom_categorie, ref_utilisateur)
VALUES ('Développement', 1);
INSERT INTO Liste_tache (nom_categorie, ref_utilisateur)
VALUES ('Recherche', 2);
INSERT INTO Liste_tache (nom_categorie, ref_utilisateur)
VALUES ('Audit', 44);

-- -----------------------------------------------------
-- DATA TABLE CONTIENT
-- -----------------------------------------------------
INSERT INTO Contient (nom_projet, ref_liste)
VALUES ('Projet1', 1);
INSERT INTO Contient (nom_projet, ref_liste)
VALUES ('Projet2', 2);

-- -----------------------------------------------------
-- DATA TABLE PERIODICITE
-- -----------------------------------------------------
INSERT INTO Periodicite (date_debut, date_fin, periode) 
VALUES (TIMESTAMP '2024-01-01 01:59:59', TIMESTAMP '2024-12-31 23:59:59', INTERVAL '30' DAY);
INSERT INTO Periodicite (date_debut, date_fin, periode) 
VALUES (TIMESTAMP '2024-01-01 01:59:59', TIMESTAMP '2024-05-24 23:59:59', INTERVAL '7' DAY);
INSERT INTO Periodicite (date_debut, date_fin, periode) 
VALUES (TIMESTAMP '2024-01-01 01:59:59', TIMESTAMP '2024-03-01 23:59:59', INTERVAL '5' HOUR);
INSERT INTO Periodicite (date_debut, date_fin, periode) 
VALUES (TIMESTAMP '2024-01-01 01:59:59', TIMESTAMP '2024-05-31 23:59:59', INTERVAL '30' DAY);
INSERT INTO Periodicite (date_debut, date_fin, periode) 
VALUES (TIMESTAMP '2024-01-01 01:59:59', TIMESTAMP '2024-05-24 23:59:59', INTERVAL '7' DAY);
INSERT INTO Periodicite (date_debut, date_fin, periode) 
VALUES (TIMESTAMP '2024-01-01 01:59:59', TIMESTAMP '2024-01-25 23:59:59', INTERVAL '5' HOUR);


-- -----------------------------------------------------
-- DATA TABLE TACHE
-- -----------------------------------------------------
--- statut "en cours" "fini" ou null(null si pas encore commencé ni fini)
-- si en cours ou NULL alors date_de_realisation = NULL
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('courses', NULL, 'H', NULL, TIMESTAMP '2024-01-10 09:00:00', 'fini', 'Achats', 4, 1, TIMESTAMP '2021-01-08 09:00:00');


INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Réunion hebdomadaire', NULL, 'H', NULL, TIMESTAMP '2024-01-10 09:00:00', 'fini', 'Réunions', NULL, 1, TIMESTAMP '2024-01-01 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Analyser les données', NULL, 'M', NULL, TIMESTAMP '2025-01-20 10:00:00', NULL, 'Analyses', NULL, 3, NULL);
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Révision du plan', NULL, 'L', NULL, TIMESTAMP '2024-02-20 14:00:00', 'en cours', 'Planification', NULL, 4, NULL);
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Préparer la présentation', NULL, 'H', NULL, TIMESTAMP '2024-03-01 16:00:00', 'fini', 'Présentations', NULL, 5, TIMESTAMP '2024-01-04 16:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Tests unitaires', NULL, 'M', NULL, TIMESTAMP '2024-03-05 18:00:00', NULL, 'Tests', NULL, 6, NULL);
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Préparation des documents', NULL, 'H', NULL, TIMESTAMP '2025-02-10 09:00:00', NULL, 'Documentation', NULL, 7, NULL);
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Développement application', NULL, 'M', NULL, TIMESTAMP '2025-02-20 12:00:00', 'en cours', 'Développement', NULL, 1, NULL);
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Réorganisation des fichiers', NULL, 'L', NULL, TIMESTAMP '2025-02-25 14:00:00', NULL, 'Organisation', NULL, 9, NULL);
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Réalisation de tests', NULL, 'H', NULL, TIMESTAMP '2024-03-01 17:00:00', 'fini', 'Tests', 2, 10, TIMESTAMP '2023-02-28 17:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Mise à jour du code', NULL, 'M', NULL, TIMESTAMP '2025-03-05 10:00:00', NULL, 'Développement', NULL, 1, NULL);

INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Projet de recherche', NULL, 'H', NULL, TIMESTAMP '2024-01-08 10:00:00', 'fini', 'Recherche', 1, 12, TIMESTAMP '2024-01-02 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Rédaction du rapport', NULL, 'M', NULL, TIMESTAMP '2024-01-10 09:00:00', 'fini', 'Rapports', NULL, 13, TIMESTAMP '2024-01-03 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Séminaire de formation', NULL, 'H', NULL, TIMESTAMP '2024-01-15 12:00:00', 'fini', 'Formation', NULL, 14, TIMESTAMP '2024-01-03 12:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Préparation des présentations', NULL, 'L', NULL, TIMESTAMP '2024-01-20 14:00:00', 'fini', 'Présentations', NULL, 15, TIMESTAMP '2024-01-01 14:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Réalisation des tests', NULL, 'M', NULL, TIMESTAMP '2024-01-08 16:00:00', 'fini', 'Tests', 4, 16, TIMESTAMP '2024-01-04 16:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Analyse des données', NULL, 'H', NULL, TIMESTAMP '2024-02-05 18:00:00', 'fini', 'Analyses', NULL, 17, TIMESTAMP '2024-01-04 18:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Révision des documents', NULL, 'M', NULL, TIMESTAMP '2025-02-10 09:00:00', 'fini', 'Documentation', NULL, 18, TIMESTAMP '2022-02-09 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Test final', NULL, 'L', NULL, TIMESTAMP '2025-02-20 12:00:00', 'fini', 'Tests', NULL, 19, TIMESTAMP '2024-01-02 12:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Finalisation du code', NULL, 'H', NULL, TIMESTAMP '2025-02-25 14:00:00', 'fini', 'Développement', NULL, 20, TIMESTAMP '2024-01-02 14:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Correction des bugs', NULL, 'M', NULL, TIMESTAMP '2024-01-01 17:00:00', 'fini', 'Développement', NULL, 1, TIMESTAMP '2024-01-02 17:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Présentation finale', NULL, 'H', NULL, TIMESTAMP '2024-01-01 09:00:00', 'fini', 'Présentations', NULL, 22, TIMESTAMP '2024-01-04 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Rapport de projet', NULL, 'M', NULL, TIMESTAMP '2024-01-14 09:00:00', 'fini', 'Rapports', NULL, 23, TIMESTAMP '2024-01-01 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Tests de validation', NULL, 'L', NULL, TIMESTAMP '2024-01-02 12:00:00', 'fini', 'Tests', NULL, 24, TIMESTAMP '2024-01-03 12:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Analyse de marché', NULL, 'H', NULL, TIMESTAMP '2024-01-02 14:00:00', 'fini', 'Analyses', NULL, 25, TIMESTAMP '2024-01-05 14:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Validation des données', NULL, 'M', NULL, TIMESTAMP '2025-01-20 18:00:00', 'fini', 'Validation', NULL, 26, TIMESTAMP '2024-01-01 18:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Préparation du meeting', NULL, 'H', NULL, TIMESTAMP '2025-02-01 09:00:00', 'fini', 'Réunions', NULL, 27, TIMESTAMP '2024-01-03 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Documentation technique', NULL, 'L', NULL, TIMESTAMP '2025-02-10 12:00:00', 'fini', 'Documentation', NULL, 28, TIMESTAMP '2024-01-05 12:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Tests de performance', NULL, 'H', NULL, TIMESTAMP '2025-02-20 14:00:00', 'fini', 'Tests', NULL, 29, TIMESTAMP '2024-01-01 14:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Développement des fonctionnalités', NULL, 'M', NULL, TIMESTAMP '2025-02-25 16:00:00', 'fini', 'Développement', NULL, 1, TIMESTAMP '2024-01-02 16:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Finalisation du produit', NULL, 'L', NULL, TIMESTAMP '2025-03-01 18:00:00', 'fini', 'Produit', NULL, 31, TIMESTAMP '2024-01-02 18:00:00');

INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Meeting Client', NULL, 'H', NULL, TIMESTAMP '2024-12-25 09:00:00', 'fini', 'Réunions', NULL, 1, TIMESTAMP '2024-01-04 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Tests de performance', NULL, 'L', NULL, TIMESTAMP '2025-01-05 12:00:00', 'fini', 'Tests', NULL, 3, TIMESTAMP '2024-01-02 12:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Validation finale', NULL, 'H', NULL, TIMESTAMP '2025-01-10 14:00:00', 'fini', 'Validation', NULL, 4, TIMESTAMP '2024-01-01 14:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Rapport étude', NULL, 'M', NULL, TIMESTAMP '2025-01-15 18:00:00', 'fini', 'Rapports', NULL, 5, TIMESTAMP '2024-01-03 18:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Finalisation du Projet', NULL, 'L', NULL, TIMESTAMP '2025-01-20 09:00:00', 'fini', 'Projet', NULL, 6, TIMESTAMP '2024-01-02 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Réunion de suivi', NULL, 'H', NULL, TIMESTAMP '2025-01-25 12:00:00', 'fini', 'Réunions', NULL, 7, TIMESTAMP '2024-01-03 12:00:00');

INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Présentation finale', NULL, 'M', NULL, TIMESTAMP '2025-01-30 14:00:00', 'fini', 'Présentations', NULL, 8, TIMESTAMP '2024-01-01 14:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Tests de compatibilité', NULL, 'L', NULL, TIMESTAMP '2025-02-05 09:00:00', 'fini', 'Tests', NULL, 9, TIMESTAMP '2024-01-05 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Documentation finale', NULL, 'H', NULL, TIMESTAMP '2025-02-10 12:00:00', 'fini', 'Documentation', NULL, 10, TIMESTAMP '2024-01-02 12:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Préparation du rapport', NULL, 'H', NULL, TIMESTAMP '2025-02-15 09:00:00', 'fini', 'Rapports', NULL, 1, TIMESTAMP '2024-01-02 09:00:00');


INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Vérification des données', NULL, 'L', NULL, TIMESTAMP '2025-02-25 12:00:00', 'fini', 'Vérifications', NULL, 3, TIMESTAMP '2024-01-02 12:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Déploiement', NULL, 'H', NULL, TIMESTAMP '2025-03-01 14:00:00', 'fini', 'Déploiement', NULL, 4, TIMESTAMP '2024-01-03 14:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Audit de sécurité', NULL, 'M', NULL, TIMESTAMP '2025-03-05 18:00:00', 'fini', 'Audit', NULL, 5, TIMESTAMP '2024-01-04 18:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Optimisation des performances', NULL, 'L', NULL, TIMESTAMP '2025-03-10 09:00:00', 'fini', 'Optimisation', NULL, 6, TIMESTAMP '2024-01-03 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Création de fonctions', NULL, 'M', NULL, TIMESTAMP '2025-02-25 16:00:00', 'fini', 'Développement', NULL, 1, TIMESTAMP '2024-01-02 16:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Analyse de mécanique', NULL, 'M', NULL, TIMESTAMP '2024-01-01 09:00:00', 'en cours', 'Analyses', NULL, 11, NULL);
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Finir recherche sur les coccinelles', NULL, 'M', NULL, TIMESTAMP '2024-01-03 09:00:00', 'fini', 'Recherche', NULL, 44, TIMESTAMP '2024-01-01 09:00:00');



INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Préparer le rapport', NULL, 'M', NULL, TIMESTAMP '2024-01-15 12:00:00', NULL, 'Rapports', NULL, 2, NULL);
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Recherche sur les castors', NULL, 'M', NULL, TIMESTAMP '2025-01-01 09:00:00', 'fini', 'Recherche', NULL, 2, TIMESTAMP '2024-01-05 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Tests intégration', NULL, 'M', NULL, TIMESTAMP '2025-02-20 09:00:00', 'fini', 'Tests', NULL, 2, TIMESTAMP '2024-01-02 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Analyse des statistiques', NULL, 'M', NULL, TIMESTAMP '2024-01-14 09:00:00', 'fini', 'Analyses', NULL, 2, TIMESTAMP '2024-01-05 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Analyse de probabilité', NULL, 'M', NULL, TIMESTAMP '2024-01-02 09:00:00', 'fini', 'Analyses', NULL, 2, TIMESTAMP '2024-01-01 05:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Recherche sur les lamas', NULL, 'M', NULL, TIMESTAMP '2024-01-07 09:00:00', 'fini', 'Recherche', NULL, 2, TIMESTAMP '2024-01-03 05:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Finir sujet de recherche', NULL, 'M', NULL, TIMESTAMP '2024-01-03 09:00:00', NULL, 'Recherche', NULL, 2, NULL);
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Commencer introduction', NULL, 'M', NULL, TIMESTAMP '2024-01-03 09:00:00', NULL, 'Recherche', NULL, 2, NULL);
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Finir la conclusion', NULL, 'M', NULL, TIMESTAMP '2024-01-03 09:00:00', NULL, 'Recherche', NULL, 2, NULL);

INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Audit de sécurité informatique', NULL, 'M', NULL, TIMESTAMP '2024-01-03 09:00:00', NULL, 'Audit', NULL, 44, NULL);
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Audit de comptabilité', NULL, 'M', NULL, TIMESTAMP '2024-01-03 09:00:00', 'fini', 'Audit', NULL, 44, TIMESTAMP '2024-01-01 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Audit electronique', NULL, 'M', NULL, TIMESTAMP '2024-01-03 09:00:00', NULL, 'Audit', NULL, 44, NULL);
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Audit informatique', NULL, 'M', NULL, TIMESTAMP '2024-01-03 09:00:00', 'fini', 'Audit', NULL, 44, TIMESTAMP '2024-01-01 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Audit electricité', NULL, 'M', NULL, TIMESTAMP '2024-01-03 09:00:00', 'fini', 'Audit', NULL, 44, TIMESTAMP '2024-01-01 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Audit de decision', NULL, 'M', NULL, TIMESTAMP '2024-01-03 09:00:00', 'fini', 'Audit', NULL, 44, TIMESTAMP '2024-01-01 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Audit de marchandise', NULL, 'M', NULL, TIMESTAMP '2024-01-03 09:00:00', 'fini', 'Audit', NULL, 44, TIMESTAMP '2024-01-04 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Tests unitaires', NULL, 'M', NULL, TIMESTAMP '2024-01-03 09:00:00', 'fini', 'Tests', NULL, 6, TIMESTAMP '2024-01-04 09:00:00');
INSERT INTO Tache (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
VALUES ('Tests unitaires', NULL, 'M', NULL, TIMESTAMP '2024-01-03 09:00:00', 'fini', 'Tests', NULL, 6, TIMESTAMP '2024-01-04 09:00:00');

-- -----------------------------------------------------
-- DATA TABLE TACHE_APPARTENANT_A_LISTE
-- -----------------------------------------------------
-- liste_tache categorie doit etre pareille que tache categorie
INSERT INTO Tache_appartenant_a_liste (ref_liste, ref_tache)
VALUES (1, 8);
INSERT INTO Tache_appartenant_a_liste (ref_liste, ref_tache)
VALUES (1, 11);
INSERT INTO Tache_appartenant_a_liste (ref_liste, ref_tache)
VALUES (1, 21);
INSERT INTO Tache_appartenant_a_liste (ref_liste, ref_tache)
VALUES (1, 30);
INSERT INTO Tache_appartenant_a_liste (ref_liste, ref_tache)
VALUES (1, 46);

INSERT INTO Tache_appartenant_a_liste (ref_liste, ref_tache)
VALUES (2, 50);
INSERT INTO Tache_appartenant_a_liste (ref_liste, ref_tache)
VALUES (2, 54);
INSERT INTO Tache_appartenant_a_liste (ref_liste, ref_tache)
VALUES (2, 55);
INSERT INTO Tache_appartenant_a_liste (ref_liste, ref_tache)
VALUES (2, 56);
INSERT INTO Tache_appartenant_a_liste (ref_liste, ref_tache)
VALUES (2, 57);

INSERT INTO Tache_appartenant_a_liste (ref_liste, ref_tache)
VALUES (3, 58);
INSERT INTO Tache_appartenant_a_liste (ref_liste, ref_tache)
VALUES (3, 59);
INSERT INTO Tache_appartenant_a_liste (ref_liste, ref_tache)
VALUES (3, 60);
INSERT INTO Tache_appartenant_a_liste (ref_liste, ref_tache)
VALUES (3, 61);
INSERT INTO Tache_appartenant_a_liste (ref_liste, ref_tache)
VALUES (3, 62);
INSERT INTO Tache_appartenant_a_liste (ref_liste, ref_tache)
VALUES (3, 63);
INSERT INTO Tache_appartenant_a_liste (ref_liste, ref_tache)
VALUES (3, 64);

-- -----------------------------------------------------
-- DATA TABLE DEPEND_DE
-- -----------------------------------------------------
INSERT INTO Depend_de (ref_tache_1, ref_tache_2)
VALUES (8, 21);
INSERT INTO Depend_de (ref_tache_1, ref_tache_2)
VALUES (24, 21);
INSERT INTO Depend_de (ref_tache_1, ref_tache_2)
VALUES (28, 1);
INSERT INTO Depend_de (ref_tache_1, ref_tache_2)
VALUES (52, 1);
INSERT INTO Depend_de (ref_tache_1, ref_tache_2)
VALUES (4, 1);
INSERT INTO Depend_de (ref_tache_1, ref_tache_2)
VALUES (17, 1);
INSERT INTO Depend_de (ref_tache_1, ref_tache_2)
VALUES (23, 1);
INSERT INTO Depend_de (ref_tache_1, ref_tache_2)
VALUES (15, 1);
INSERT INTO Depend_de (ref_tache_1, ref_tache_2)
VALUES (40, 1);
INSERT INTO Depend_de (ref_tache_1, ref_tache_2)
VALUES (4, 55);
INSERT INTO Depend_de (ref_tache_1, ref_tache_2)
VALUES (55, 53);





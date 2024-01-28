-- -----------------------------------------------------
-- Projet BDD2 Partie 2
-- ANDREOLLI Justine 
-- HASHEMI Seyedali
-- TD2 TP3
-- -----------------------------------------------------


-- 1. Les listes de tâches ayant au moins 5 tâches et appartenant à des utilisateurs habitant en France.

SELECT lt.ref_liste, lt.nom_categorie, lt.ref_utilisateur, usr.nom, usr.prenom, usr.pays, COUNT(taal.ref_tache) AS nb_taches
FROM Liste_tache lt
JOIN Tache_appartenant_a_liste taal ON lt.ref_liste = taal.ref_liste
JOIN Utilisateur usr ON lt.ref_utilisateur = usr.ref_utilisateur
WHERE usr.pays = 'France'
GROUP BY lt.ref_liste, lt.nom_categorie, lt.ref_utilisateur, usr.nom, usr.prenom, usr.pays
HAVING COUNT(taal.ref_tache) >= 5;


-- 2. Les programmes de tâche ayant le plus de points positifs (somme des points) associés aux tâches terminées

WITH PointsParTask AS (
    SELECT u.nom_programme,
           CASE 
           -- la tâche est terminé qi elle a le statut "fini"
               WHEN t.statut = 'fini' AND t.date_realisation < t.date_d_echeance AND sct.termine = 'Y' THEN sct.score
               WHEN t.statut = 'fini' AND t.date_realisation > t.date_d_echeance AND sct.termine = 'N' THEN sct.score
               ELSE 0 
           END AS score_value
    FROM Tache t
    JOIN Utilisateur u ON t.ref_utilisateur = u.ref_utilisateur
    JOIN Comporte c ON u.nom_programme = c.nom_programme
    JOIN Score_categorie_tache sct ON c.ref_score_categorie_tache = sct.ref_score_categorie_tache AND t.nom_categorie = sct.nom_categorie
    WHERE t.statut = 'fini'
    ORDER BY u.nom_programme, t.date_realisation ASC
)
SELECT nom_programme, SUM(score_value) AS score_per_program
FROM PointsParTask
GROUP BY nom_programme
ORDER BY score_per_program DESC;

-- 3.  Pour chaque utilisateur, son login, son nom, son prénom, son adresse, son nombre de tâches
    -- total (périodique et non-périodique) et son nombre de tâches périodiques total
    
SELECT 
    usr.login, 
    usr.nom, 
    usr.prenom, 
    usr.adresse, 
    COUNT(T.ref_tache) AS nb_taches_total,
    COUNT(CASE WHEN T.ref_periodicite IS NOT NULL THEN T.ref_tache END) AS nb_taches_periodiques_total
FROM Utilisateur usr
LEFT JOIN Tache T ON usr.ref_utilisateur = T.ref_utilisateur
GROUP BY usr.ref_utilisateur, usr.login, usr.nom, usr.prenom, usr.adresse
ORDER BY usr.ref_utilisateur;



-- 4. Pour chaque tâche, le nombre de dépendance à effectuer avant que la tâche puisse être réalisée.

--si A est dépendant de B mais que B est également dépend de C, Alors A dépend de 2 tâches pas que de 1

SELECT 
    T.ref_tache,
    (SELECT COUNT(*)
     FROM Depend_de D
     START WITH D.ref_tache_1 = T.ref_tache
     CONNECT BY PRIOR D.ref_tache_2 = D.ref_tache_1) AS nb_dependances
FROM Tache T
ORDER BY T.ref_tache;


-- 5. Les 10 utilisateurs ayant gagné le plus de points sur leur score au cours de la semaine courante.

WITH PointsParUtilisateur AS (
    SELECT u.ref_utilisateur, u.nom, u.prenom,
           GREATEST (
               SUM(
                   CASE 
                       WHEN t.statut = 'fini' AND t.date_realisation < t.date_d_echeance
                            AND t.date_realisation >= TRUNC(SYSDATE, 'IW') 
                            AND t.date_realisation < TRUNC(SYSDATE, 'IW') + 7
                            AND sct.termine = 'Y' THEN sct.score
                       
                       WHEN t.date_d_echeance >= TRUNC(SYSDATE, 'IW') 
                            AND t.date_d_echeance < TRUNC(SYSDATE, 'IW') + 7 
                            AND t.date_realisation > t.date_d_echeance
                            AND sct.termine = 'N' THEN sct.score
                       
                       WHEN t.date_d_echeance >= TRUNC(SYSDATE, 'IW') 
                            AND t.date_d_echeance < TRUNC(SYSDATE, 'IW') + 7 
                            AND t.date_realisation IS NULL
                            AND sct.termine = 'N' THEN sct.score
                       ELSE 0 
                   END
               ), 0
           ) AS points_gained_in_one_week
    FROM Utilisateur u
    INNER JOIN (
            SELECT * FROM Tache
            ORDER BY COALESCE(date_realisation, date_d_echeance) ASC -- Tri par ordre croissant de date_realisation et utilise date_d_ecehance si valeur nulle
        ) t ON u.ref_utilisateur = t.ref_utilisateur
    INNER JOIN Comporte c ON u.nom_programme = c.nom_programme
    INNER JOIN Score_categorie_tache sct ON c.ref_score_categorie_tache = sct.ref_score_categorie_tache AND t.nom_categorie = sct.nom_categorie
    WHERE u.nom_programme IS NOT NULL
    GROUP BY u.ref_utilisateur, u.nom, u.prenom
)
SELECT ref_utilisateur, nom, prenom, points_gained_in_one_week
FROM PointsParUtilisateur
ORDER BY points_gained_in_one_week DESC
FETCH FIRST 10 ROWS ONLY;




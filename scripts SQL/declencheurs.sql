-- -----------------------------------------------------
-- Projet BDD2 Partie 2
-- ANDREOLLI Justine 
-- HASHEMI Seyedali
-- TD2 TP3
-- -----------------------------------------------------


--------------------------------------
--
-- DECLENCHEUR 1 (nous avons fait une procédure explication dans le rapport)
--
--------------------------------------
-- 1. La valeur de score sera stockée dans une table et mis à jour chaque fois qu’une tâche est
        -- terminée ou archivée.
CREATE OR REPLACE PROCEDURE AfficherTableScoreCategorieTache
IS
BEGIN
    FOR score_rec IN (
        SELECT sct.ref_score_categorie_tache, sct.termine, sct.score, sct.nom_categorie,
               u.nom_programme, u.ref_utilisateur,
               t.intitule, t.description, t.priorite, t.url,
               t.date_d_echeance, t.statut, t.ref_periodicite, t.date_realisation
        FROM Score_categorie_tache sct
        JOIN Comporte c ON sct.ref_score_categorie_tache = c.ref_score_categorie_tache
        JOIN Utilisateur u ON c.nom_programme = u.nom_programme
        JOIN Tache t ON u.ref_utilisateur = t.ref_utilisateur AND sct.nom_categorie = t.nom_categorie
        WHERE (t.statut = 'fini' AND t.date_realisation < t.date_d_echeance AND sct.termine = 'Y')
              OR (t.statut = 'fini' AND t.date_realisation >= t.date_d_echeance AND sct.termine = 'N')
              OR (t.date_d_echeance < CURRENT_TIMESTAMP AND t.date_realisation is NULL AND sct.termine = 'N')
        ORDER BY u.ref_utilisateur, COALESCE(date_realisation, date_d_echeance) ASC -- Tri par ordre croissant de date_realisation et utilise date_d_ecehance si valeur nulle
    )
    LOOP  
        UPDATE Utilisateur u
        SET u.score = CASE
                            WHEN (u.score + score_rec.score) < 0 THEN 0
                            ELSE u.score + score_rec.score
                      END
        WHERE u.ref_utilisateur = score_rec.ref_utilisateur;
    END LOOP;
END;
/

SET SERVEROUTPUT ON;
BEGIN
    AfficherTableScoreCategorieTache();
END;
/

--------------------------------------
--
-- DECLENCHEUR 2 (nous avons fait une procédure explication dans le rapport)
--
--------------------------------------
-- 2. Pour chaque tâche périodique avec une date de fin ajoutée ou modifiée, définir les tâches
-- associée (tâche avec une date précise, par exemple une tache périodique réalisée tous les
-- jours à 10h, dont la fin est prévue dans une semaine provoquera la définition de 7
-- tâches, prévue sur 7 jours, à 8h).
CREATE OR REPLACE PROCEDURE generate_individual_tasks IS
BEGIN
    FOR task_row IN (SELECT * FROM Tache WHERE ref_periodicite IS NOT NULL) LOOP
        DECLARE
            periodicite_details Periodicite%ROWTYPE;
            current_start_date TIMESTAMP;
            current_end_date TIMESTAMP;
            task_exists NUMBER;
        BEGIN
            SELECT * INTO periodicite_details FROM Periodicite WHERE ref_periodicite = task_row.ref_periodicite;

            current_start_date := periodicite_details.date_debut;
            
            WHILE current_start_date < periodicite_details.date_fin LOOP
                current_end_date := current_start_date + periodicite_details.periode;
            
                IF current_end_date > periodicite_details.date_fin THEN
                    current_end_date := periodicite_details.date_fin;
                END IF;
                -- Check si un tache avec les memes detaille existe deja
                SELECT COUNT(*) INTO task_exists FROM Tache 
                WHERE intitule = task_row.intitule AND 
                      nom_categorie = task_row.nom_categorie AND 
                      ref_utilisateur = task_row.ref_utilisateur AND 
                      date_d_echeance = current_end_date;
                -- inserer la tache s'il existe pas
                IF task_exists = 0 THEN
                    INSERT INTO Tache (
                        intitule, 
                        description, 
                        priorite, 
                        url, 
                        date_d_echeance, 
                        statut, 
                        nom_categorie, 
                        ref_periodicite, 
                        ref_utilisateur, 
                        date_realisation
                    ) VALUES (
                        task_row.intitule, 
                        task_row.description, 
                        task_row.priorite, 
                        task_row.url, 
                        current_end_date, 
                        'en cours', 
                        task_row.nom_categorie, 
                        NULL,  -- change le periodicite a NULL
                        task_row.ref_utilisateur, 
                        NULL
                    );
                END IF;                
                -- mise a jour la date debut pour le boucle suivant
                current_start_date := current_end_date;
                EXIT WHEN current_start_date >= periodicite_details.date_fin;
            END LOOP;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                -- Exception si aucun periodicite existe
                DBMS_OUTPUT.PUT_LINE('aucun periodicite trouvé pour le tache avec ref: ' || task_row.ref_tache);
        END;
    END LOOP;
END generate_individual_tasks;
/


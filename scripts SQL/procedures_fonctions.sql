-- -----------------------------------------------------
-- Projet BDD2 Partie 2
-- ANDREOLLI Justine 
-- HASHEMI Seyedali
-- TD2 TP3
-- -----------------------------------------------------

-- 1. Définir une fonction qui calcule le nombre de point gagné/perdu (pour les utilisateurs
        -- ayant un programme de score, en fonction du nombre de tâche terminée/non terminée) au cours de la semaine

CREATE OR REPLACE FUNCTION calculate_weekly_points
RETURN SYS_REFCURSOR 
AS 
    my_cursor SYS_REFCURSOR;
BEGIN
    OPEN my_cursor FOR
        SELECT u.ref_utilisateur,
            GREATEST (
               SUM(CASE 
                -- tache réalisé cette semaine et avant la date d'échéance
               WHEN t.statut = 'fini' AND t.date_realisation < t.date_d_echeance    
                    AND t.date_realisation >= TRUNC(SYSDATE, 'IW') 
                    AND t.date_realisation < TRUNC(SYSDATE, 'IW') + 7
                    AND sct.termine = 'Y'  THEN sct.score
                -- tache dont la date d'échéance est cette semaine et réalisée après la date d'échéance
                WHEN t.date_d_echeance >= TRUNC(SYSDATE, 'IW')                           
                    AND t.date_d_echeance < TRUNC(SYSDATE, 'IW') + 7 
                    AND t.date_realisation > t.date_d_echeance
                    AND sct.termine = 'N'  THEN sct.score                
                -- tache dont la date d'échéance est cette semaine et la tache n'a pas été réalisée
                WHEN t.date_d_echeance >= TRUNC(SYSDATE, 'IW')                            
                    AND t.date_d_echeance < TRUNC(SYSDATE, 'IW') + 7 
                    AND t.date_realisation IS NULL
                    AND sct.termine = 'N'  THEN sct.score         
                    ELSE 0 
                   END), 0) AS points_gained_or_lost

        FROM Utilisateur u
        INNER JOIN (
            SELECT * FROM Tache
            ORDER BY COALESCE(date_realisation, date_d_echeance) ASC -- Tri par ordre croissant de date_realisation et utilise date_d_ecehance si valeur nulle
        ) t ON u.ref_utilisateur = t.ref_utilisateur
        INNER JOIN Comporte c ON u.nom_programme = c.nom_programme
        INNER JOIN Score_categorie_tache sct ON c.ref_score_categorie_tache = sct.ref_score_categorie_tache AND t.nom_categorie = sct.nom_categorie
        WHERE u.nom_programme IS NOT NULL
        GROUP BY u.ref_utilisateur
        ORDER BY u.ref_utilisateur;
    RETURN my_cursor;
END calculate_weekly_points;
/




-- 2. On supposera que la procédure est exécutée chaque semaine (le lundi, à 8h). Définir
        -- une procédure qui archive toutes les tâches passées.

CREATE OR REPLACE PROCEDURE move_tasks AS
BEGIN
    INSERT INTO Tache_fini (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation) 
        SELECT intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation FROM Tache WHERE statut = 'fini';
    COMMIT;
END move_tasks;
/


--BEGIN
--    DBMS_SCHEDULER.CREATE_JOB (
--        job_name        => 'move_tasks',
--        job_type        => 'PLSQL_BLOCK',
--        job_action      => 'BEGIN move_tasks; END;',
 --       start_date      =>  SYSDATE,
--        repeat_interval => 'FREQ=WEEKLY;BYDAY=MON;BYHOUR=8;BYMINUTE=0;BYSECOND=0',
--        enabled         => TRUE
--    );
--END;
--/

-- 3. Ecrire le code PL/SQL permettant de générer des suggestions pour un utilisateur, c’est
--dire N tâches qu’il pourrait ajouter à sa liste de tâche. Les tâches suggérées seront les N
--tâches apparaissant le plus grand nombre de fois dans les tâches des utilisateurs
--similaires. Les utilisateurs similaires sont les utilisateurs ayant au moins X tâches
--similaires avec l’utilisateur pour lequel effectuer les suggestions. Des tâches similaires
--sont des tâches ayant au moins Y mots communs (dans les mots communs, on ne
--compte pas les mots vides/stop words comme les articles ou les verbes peu significatifs
--type faire ou avoir).


-- Renvoie si deux tâches sont similaires 
CREATE OR REPLACE FUNCTION are_tasks_similar(
    task1_id IN INT,
    task2_id IN INT,
    min_common_words IN INT
)
RETURN VARCHAR2
IS
    task1_title VARCHAR2(255);
    task2_title VARCHAR2(255);
    common_words INT := 0;
BEGIN
    -- Récupérer les intitulés des tâches
    SELECT intitule
    INTO task1_title
    FROM Tache
    WHERE ref_tache = task1_id;

    SELECT intitule
    INTO task2_title
    FROM Tache
    WHERE ref_tache = task2_id;

    -- Comparer les intitulés des tâches pour les mots en commun
    IF task1_title IS NOT NULL AND task2_title IS NOT NULL THEN
        -- Supprimer les stop words et les espaces et diviser en mots
        task1_title := REGEXP_REPLACE(task1_title, '\s(Faire|avoir|les|la|du|des|de|Finir|le|sur)\s', ' ', 1, 0, 'i');
        task2_title := REGEXP_REPLACE(task2_title, '\s(Faire|avoir|les|la|du|des|de|Finir|le|sur)\s', ' ', 1, 0, 'i');
        
        -- Diviser les titres en mots distincts
        FOR word1 IN (SELECT REGEXP_SUBSTR(task1_title, '[^ ]+', 1, LEVEL) AS word FROM dual CONNECT BY LEVEL <= REGEXP_COUNT(task1_title, ' ') + 1)
        LOOP
            FOR word2 IN (SELECT REGEXP_SUBSTR(task2_title, '[^ ]+', 1, LEVEL) AS word FROM dual CONNECT BY LEVEL <= REGEXP_COUNT(task2_title, ' ') + 1)
            LOOP
                IF word1.word = word2.word THEN
                    common_words := common_words + 1;
                    EXIT; -- Sortir de la boucle interne si un mot en commun est trouvé
                END IF;
            END LOOP;
        END LOOP;
        --DBMS_OUTPUT.PUT_LINE('Titre de la première tâche: ' || task1_title);
        -- Déterminer si le nombre de mots en commun est suffisant
        IF common_words >= min_common_words THEN
            RETURN 'Oui'; -- Tâches similaires
        ELSE
            RETURN 'Non'; -- Tâches différentes
        END IF;
    ELSE
        RETURN 'Erreur : Tâche introuvable'; -- Tâche non trouvée dans la base de données
    END IF;
END;
/

-- Renvoie si 2 utilisateurs sont similaires en utilisant la fonction are_tasks_similar
CREATE OR REPLACE FUNCTION are_users_similar(
    user1_id IN INT,
    user2_id IN INT,
    min_similar_tasks IN INT,
    Y IN INT -- nombre de mots communs voulu
)
RETURN VARCHAR2
IS
    user1_tasks INT;
    user2_tasks INT;
    similar_tasks INT := 0;
BEGIN
    -- Compter le nombre de tâches pour chaque utilisateur
    SELECT COUNT(*)
    INTO user1_tasks
    FROM Tache
    WHERE ref_utilisateur = user1_id;

    SELECT COUNT(*)
    INTO user2_tasks
    FROM Tache
    WHERE ref_utilisateur = user2_id;

    -- Comparer les tâches des utilisateurs pour déterminer la similarité
    IF user1_tasks IS NOT NULL AND user2_tasks IS NOT NULL THEN
        FOR task1 IN (SELECT ref_tache FROM Tache WHERE ref_utilisateur = user1_id)
        LOOP
            FOR task2 IN (SELECT ref_tache FROM Tache WHERE ref_utilisateur = user2_id)
            LOOP
                -- Vérifier si les tâches sont similaires en utilisant are_tasks_similar
                IF are_tasks_similar(task1.ref_tache, task2.ref_tache, Y) = 'Oui' THEN
                    similar_tasks := similar_tasks + 1;
                    EXIT;
                END IF;
            END LOOP;
        END LOOP;

        -- Vérifier si le nombre de tâches similaires dépasse le seuil
        IF similar_tasks >= min_similar_tasks THEN
            RETURN 'Oui'; -- Utilisateurs similaires
        ELSE
            RETURN 'Non'; -- Utilisateurs différents
        END IF;
    ELSE
        RETURN 'Erreur : Utilisateur introuvable'; -- Utilisateur non trouvé dans la base de données
    END IF;
END;
/

-- la fonction finale qui affiche les taches suggérées
CREATE OR REPLACE FUNCTION Procedure3AfficheTachesSuggerees(
    user_id IN INT,
    N IN INT, -- nombre de tâches à retourner
    X IN INT, -- Nb de tâches similaires entre utilisateurs voulu
    Y IN INT -- nombre de mots communs voulu
)
RETURN SYS.ODCIVARCHAR2LIST
AS
    similar_users SYS.ODCINUMBERLIST;
    tasks SYS.ODCIVARCHAR2LIST;
    unique_tasks SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST(); -- Liste pour stocker les tâches uniques
    task_exists BOOLEAN;
BEGIN
    -- Initialisation de la liste des utilisateurs similaires
    similar_users := SYS.ODCINUMBERLIST();
    
    -- Récupérer les utilisateurs similaires à l'utilisateur choisi
    FOR similar_user_rec IN (
        SELECT ref_utilisateur
        FROM Tache
        WHERE ref_utilisateur <> user_id
        GROUP BY ref_utilisateur
        HAVING are_users_similar(user_id, ref_utilisateur, X, Y) = 'Oui'
    ) LOOP
        similar_users.EXTEND;
        similar_users(similar_users.LAST) := similar_user_rec.ref_utilisateur;

        -- Récupérer les tâches de l'utilisateur similaire
        FOR task_rec IN (
            SELECT intitule
            FROM Tache
            WHERE ref_utilisateur = similar_user_rec.ref_utilisateur
            GROUP BY intitule
        ) LOOP
            -- Vérifier si la tâche est déjà dans la liste unique_tasks
            task_exists := FALSE;
            FOR i IN 1..unique_tasks.COUNT LOOP
                IF task_rec.intitule = unique_tasks(i) THEN
                    task_exists := TRUE;
                    EXIT;
                END IF;
            END LOOP;

            -- Ajouter la tâche si elle n'existe pas déjà
            IF NOT task_exists THEN
                unique_tasks.EXTEND;
                unique_tasks(unique_tasks.LAST) := task_rec.intitule;
            END IF;

            -- Vérifier si le nombre de tâches uniques est atteint
            IF unique_tasks.COUNT = N THEN
                RETURN unique_tasks;
            END IF;
        END LOOP;
    END LOOP;

    RETURN unique_tasks; -- Retourne la liste des tâches uniques des utilisateurs similaires
END;
/


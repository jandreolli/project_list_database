-- -----------------------------------------------------
-- Projet BDD2 Partie 2
-- ANDREOLLI Justine 
-- HASHEMI Seyedali
-- TD2 TP3
-- -----------------------------------------------------

SET SERVEROUTPUT ON;

--------------------------------------
--
-- Test sur la procédure 1 (il faut avoir lancer declencheurs.sql avant)
--
--------------------------------------
-- Test la procédure 1 qui affiche le nombre de points gagnés/perdus de cette semaine
DECLARE
    result_cursor SYS_REFCURSOR;
    user_id INT;
    points INT;
BEGIN
    -- Execute the function
    result_cursor := calculate_weekly_points();

    -- Loop through the results
    LOOP
        FETCH result_cursor INTO user_id, points;
        EXIT WHEN result_cursor%NOTFOUND;

        -- Output the results
        DBMS_OUTPUT.PUT_LINE('User ID: ' || user_id || ' Points: ' || points);
    END LOOP;

    -- Close the cursor
    CLOSE result_cursor;
END;
/

--------------------------------------
--
-- Tests sur la prcoédure 2
--
--------------------------------------
-- Test la procédure 2 qui duplique les tâches finies dans la table tache_fini
BEGIN
    move_tasks;
END;
/

SELECT * FROM TACHE_FINI;


--------------------------------------
--
-- Tests sur la procédure 3
--
--------------------------------------
-- Teste la procédure 3 qui affiche les N tâches suggérées à un utilisateur en fonction du nombre X de tâche similairese et Y de mots communs

-- affiche les N tâches qui apparaissent le plus grand nombre de fois (c'est à dire les tâches suggérées)
DECLARE
    liste_taches SYS.ODCIVARCHAR2LIST;
BEGIN
    liste_taches := Procedure3AfficheTachesSuggerees(3, 5, 1, 1);
    
    FOR i IN 1..liste_taches.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE('Tâche ' || i || ': ' || liste_taches(i));
    END LOOP;
END;
/

-- Exemple d'appel à la fonction are_users_similar
DECLARE
    similar_status VARCHAR2(10);
BEGIN
    similar_status := are_users_similar(1, 2, 1, 1);
    DBMS_OUTPUT.PUT_LINE('Similarité des utilisateurs : ' || similar_status);
END;
/

-- Exemple d'appel à la fonction are_tasks_similar
DECLARE
    similarity VARCHAR2(10);
BEGIN
    similarity := are_tasks_similar(50, 51, 1);
    
    DBMS_OUTPUT.PUT_LINE('Les tâches sont similaires ? ' || similarity);
END;
/

--------------------------------------
--
-- Tests sur le délcencheur 1
--
--------------------------------------
-- Affiche le résultat du score (déclencheur 1) mais declencheurs.sql doit d'abord être lancé !
SELECT ref_utilisateur, nom, prenom, score
FROM utilisateur;


--------------------------------------
--
-- Tests sur le délcencheur 2
--
--------------------------------------
-- Test le déclencheur 2 qui crée autant de tâches périodiques que nécessaire

-- voir les taches qui sont periodique 
SELECT * FROM Tache
WHERE intitule IN (SELECT intitule FROM Tache WHERE ref_periodicite IS NOT NULL);

-- creer les taches 
EXECUTE generate_individual_tasks;

-- affiche la table Tache avec les nouvelles taches ajoutées
SELECT * FROM Tache;



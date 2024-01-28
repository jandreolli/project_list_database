-- -----------------------------------------------------
-- Projet BDD2 Partie 2
-- ANDREOLLI Justine 
-- HASHEMI Seyedali
-- TD2 TP3
-- -----------------------------------------------------
-----------------------------
-- TRIGGERS CHOISIS PAR NOUS OU DE LA PARTIE 1
-----------------------------

----contrainte de mot de passe 
CREATE OR REPLACE TRIGGER check_password_format
BEFORE INSERT OR UPDATE ON Utilisateur
FOR EACH ROW
DECLARE
    v_password Utilisateur.Mot_de_passe%TYPE;
BEGIN
    v_password := :NEW.Mot_de_passe;
    IF NOT REGEXP_LIKE(v_password, '^[a-zA-Z0-9_]*$') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Le mot de passe ne peut contenir que des lettres (minuscules/majuscules), des chiffres et le caractère _');
    END IF;
END;
/

--- contrainte de login

CREATE OR REPLACE TRIGGER check_login_format
BEFORE INSERT OR UPDATE ON Utilisateur
FOR EACH ROW
DECLARE
    v_login Utilisateur.Login%TYPE;
    expected_start VARCHAR(8);
    login_length INTEGER;
    name_part VARCHAR(30); -- Assuming a max name length of 30 characters
    last_two_characters VARCHAR(2);
BEGIN
    v_login := :NEW.Login;

    -- Construct the expected start of the login: first letter of prenom + full last name or first 7 letters
    expected_start := LOWER(SUBSTR(:NEW.prenom, 1, 1)) || 
                      LOWER(SUBSTR(:NEW.nom, 1, LEAST(LENGTH(:NEW.nom), 7)));
    
    login_length := LENGTH(v_login);

    -- Extract the part of the login without the last two characters
    name_part := SUBSTR(v_login, 1, login_length - 2);
    
    -- Extract the last two characters of the login
    last_two_characters := SUBSTR(v_login, login_length - 1);

    -- Check if the actual login starts with the expected characters and ends with two digits
    IF NOT (
        name_part = expected_start 
        AND REGEXP_LIKE(last_two_characters, '^[0-9]{2}$')
    ) THEN
        RAISE_APPLICATION_ERROR(
            -20001, 
            'Le format du login est incorrect. Le login doit être constitué de la première lettre du prénom, suivie des premières lettres du nom (7 au maximum) et de deux chiffres.'
        );
    END IF;
END;
/

-- Créer les données nécessaires dans la table EST_ASSIGNE lorsqu'une tâche est crée
CREATE OR REPLACE TRIGGER assign_task_trigger
AFTER INSERT ON Tache
FOR EACH ROW
BEGIN
  INSERT INTO Est_assigne (ref_utilisateur, ref_tache)
  VALUES (:NEW.ref_utilisateur, :NEW.ref_tache);
END;
/


-- Créer les données nécessaires dans la table TACHE_EN_COURS lorsqu'une tâche est crée avec le statut en_cours
CREATE OR REPLACE TRIGGER en_cours_task_trigger
AFTER INSERT ON Tache
FOR EACH ROW
BEGIN
  IF :NEW.statut = 'en cours' THEN
    INSERT INTO Tache_en_cours (intitule, description, priorite, url, date_d_echeance, statut, nom_categorie, ref_periodicite, ref_utilisateur, date_realisation)
    VALUES (:NEW.intitule, :NEW.description, :NEW.priorite, :NEW.url, :NEW.date_d_echeance, :NEW.statut, :NEW.nom_categorie, :NEW.ref_periodicite, :NEW.ref_utilisateur, :NEW.date_realisation);
  END IF;
END;
/


-- si veut insérer données dans Tache_appartenant_a_liste alors la catégorie doit être la même 
CREATE OR REPLACE TRIGGER check_category_trigger
BEFORE INSERT ON Tache_appartenant_a_liste
FOR EACH ROW
DECLARE
    v_cat_tache VARCHAR(255);
    v_cat_liste VARCHAR(255);
BEGIN
    -- Obtenir la catégorie de la tâche
    SELECT nom_categorie INTO v_cat_tache
    FROM Tache
    WHERE ref_tache = :NEW.ref_tache;

    -- Obtenir la catégorie de la liste
    SELECT nom_categorie INTO v_cat_liste
    FROM Liste_tache
    WHERE ref_liste = :NEW.ref_liste;

    -- Vérifier si les catégories sont différentes
    IF v_cat_tache <> v_cat_liste THEN
        RAISE_APPLICATION_ERROR(-20001, 'La catégorie de la tâche doit être la même que celle de la liste.');
    END IF;
END;
/


-- Pour la table UTILISATEUR, la date de naissance doit être après la date d'inscription
CREATE OR REPLACE TRIGGER CheckDatesInscription
BEFORE INSERT OR UPDATE ON Utilisateur
FOR EACH ROW
BEGIN
    IF :NEW.date_de_naissance > :NEW.date_d_inscription 
        OR :NEW.date_de_naissance > sysdate
        OR :NEW.date_d_inscription > sysdate THEN
        RAISE_APPLICATION_ERROR(-20001, 'La date de naissance ne peut pas être postérieure à la date d''inscription ni sysdate.');
    END IF;
END;
/

-- La date d'inscription d'un utilisateur doit être avant la date d'échéance et de réalisation d'une tâche
CREATE OR REPLACE TRIGGER CheckTaskDates
BEFORE INSERT OR UPDATE ON Tache
FOR EACH ROW
DECLARE
    date_inscription Utilisateur.date_d_inscription%TYPE;
BEGIN
    SELECT date_d_inscription INTO date_inscription
    FROM Utilisateur
    WHERE ref_utilisateur = :NEW.ref_utilisateur;

    IF :NEW.date_realisation < date_inscription THEN
        RAISE_APPLICATION_ERROR(-20001, 'La date de réalisation doit être postérieure à la date d''inscription de l''utilisateur.');
    END IF;

    IF :NEW.date_d_echeance < date_inscription THEN
        RAISE_APPLICATION_ERROR(-20002, 'La date d''échéance doit être postérieure à la date d''inscription de l''utilisateur.');
    END IF;
    
    IF :NEW.date_realisation > sysdate THEN
        RAISE_APPLICATION_ERROR(-20002, 'La date de réalisation ne peut pas être postérieur à sysdate');
    END IF;
END;
/

-- la date d'échéance de la tache 1 doit être après celle de la tâche 2 à cause des dépendances
CREATE OR REPLACE TRIGGER CheckDependencyDates
BEFORE INSERT OR UPDATE ON Depend_de
FOR EACH ROW
DECLARE
    date_echeance_1 Tache.date_d_echeance%TYPE;
    date_echeance_2 Tache.date_d_echeance%TYPE;
BEGIN
    SELECT date_d_echeance INTO date_echeance_1
    FROM Tache
    WHERE ref_tache = :NEW.ref_tache_1;

    SELECT date_d_echeance INTO date_echeance_2
    FROM Tache
    WHERE ref_tache = :NEW.ref_tache_2;

    IF date_echeance_1 < date_echeance_2 THEN
        RAISE_APPLICATION_ERROR(-20001, 'La date d''échéance de la première tâche doit être après celle de la deuxième tâche.');
    END IF;
END;
/

-- trigger sur le statut
CREATE OR REPLACE TRIGGER CheckTaskCompletionDate
BEFORE INSERT OR UPDATE ON Tache
FOR EACH ROW
BEGIN
    IF :NEW.statut = 'fini' AND :NEW.date_realisation IS NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'Une tâche terminée doit avoir une date de réalisation.');
    END IF;

    IF :NEW.statut = 'en cours' AND :NEW.date_realisation IS NOT NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'Une tâche en cours ne doit pas avoir une date de réalisation.');
    END IF;

    IF :NEW.statut IS NULL AND :NEW.date_realisation IS NOT NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'Une tâche en cours ne doit pas avoir une date de réalisation.');
    END IF;
END;
/


--- trigger sur le periodicite 
CREATE OR REPLACE TRIGGER CheckDatePeriodicite
BEFORE INSERT OR UPDATE ON Tache
FOR EACH ROW
DECLARE
    v_date_debut TIMESTAMP;
    v_date_fin TIMESTAMP;
BEGIN
    -- verifie que ref_periodicite soit pas NULL
    IF :NEW.ref_periodicite IS NOT NULL THEN        
        SELECT date_debut, date_fin INTO v_date_debut, v_date_fin
        FROM Periodicite
        WHERE ref_periodicite = :NEW.ref_periodicite;

        IF NOT (:NEW.date_d_echeance > v_date_debut ) THEN
            RAISE_APPLICATION_ERROR(-20001, 'date_d_echeance < debut');
            
        ELSIF NOT(:NEW.date_d_echeance <= v_date_fin OR v_date_fin IS NULL) THEN 
            RAISE_APPLICATION_ERROR(-20001, 'date_d_echeance < fin');
            
        ELSIF (v_date_debut > v_date_fin) THEN
            RAISE_APPLICATION_ERROR(-20001, 'date_debut < fin');
            
        END IF;

    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20002, 'Aucun donnee correspondant dans Periodicite pour le ref_periodicite fourni.');
END CheckDatePeriodicite;
/




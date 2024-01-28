-- -----------------------------------------------------
-- Projet BDD2 Partie 2
-- ANDREOLLI Justine 
-- HASHEMI Seyedali
-- TD2 TP3
-- -----------------------------------------------------

CREATE TABLE Projet (
    PRIMARY KEY (ref_projet),
    ref_projet INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    nom_projet VARCHAR(255) NOT NULL,
    UNIQUE(nom_projet)
);

CREATE TABLE Categorie (
    PRIMARY KEY (ref_categorie),
    ref_categorie INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    nom_categorie VARCHAR(255),
    UNIQUE(nom_categorie)
);

-- un programme de score a pls différents ref_score_categorie_tache
CREATE TABLE Comporte (
  PRIMARY KEY (nom_programme, ref_score_categorie_tache),
  nom_programme             VARCHAR(255) NOT NULL,
  ref_score_categorie_tache VARCHAR(255) NOT NULL
);

CREATE TABLE Contient (
  PRIMARY KEY (nom_projet, ref_liste),
  nom_projet VARCHAR(255) NOT NULL,
  ref_liste  INT NOT NULL
);

CREATE TABLE Depend_de (
  PRIMARY KEY (ref_tache_1, ref_tache_2),
  ref_tache_1 INT NOT NULL,
  ref_tache_2 INT NOT NULL
);

CREATE TABLE Est_assigne (
  PRIMARY KEY (ref_utilisateur, ref_tache),
  ref_utilisateur INT NOT NULL,
  ref_tache       INT NOT NULL
);

CREATE TABLE Liste_tache (
  PRIMARY KEY (ref_liste),
  ref_liste       INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
  nom_categorie   VARCHAR(255) NOT NULL,
  ref_utilisateur INT NOT NULL
);

CREATE TABLE Periodicite (
  PRIMARY KEY (ref_periodicite),
  ref_periodicite INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
  date_debut TIMESTAMP NOT NULL,
  date_fin   TIMESTAMP,
  periode    INTERVAL DAY TO SECOND
);
-- chaque catégorie a 2 ref un yes et un no
CREATE TABLE Score_categorie_tache (
  PRIMARY KEY (ref_score_categorie_tache),
  ref_score_categorie_tache VARCHAR(255) NOT NULL,
  termine                   VARCHAR(1), -- non réalise ou pas terminé à temps
  score                     INT,
  nom_categorie             VARCHAR(255) NOT NULL
);

CREATE TABLE Tache (
  PRIMARY KEY (ref_tache),
  ref_tache        INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
  intitule         VARCHAR(255),
  description      VARCHAR(4000),
  priorite         VARCHAR(1),
  url              VARCHAR(2000),
  date_d_echeance  TIMESTAMP,
  statut           VARCHAR(8),
  nom_categorie    VARCHAR(255) NOT NULL,
  ref_periodicite  INTEGER,
  ref_utilisateur  INT NOT NULL,
  date_realisation TIMESTAMP NULL
);

CREATE TABLE Tache_en_cours (
  PRIMARY KEY (ref_tache),
  ref_tache        INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
  intitule         VARCHAR(255),
  description      VARCHAR(4000),
  priorite         VARCHAR(1),
  url              VARCHAR(2000),
  date_d_echeance  TIMESTAMP,
  statut           VARCHAR(8),
  nom_categorie    VARCHAR(255) NOT NULL,
  ref_periodicite  INTEGER,
  ref_utilisateur  INT NOT NULL,
  date_realisation TIMESTAMP NULL
);

CREATE TABLE Tache_fini (
  PRIMARY KEY (ref_tache),
  ref_tache        INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
  intitule         VARCHAR(255),
  description      VARCHAR(4000),
  priorite         VARCHAR(1),
  url              VARCHAR(2000),
  date_d_echeance  TIMESTAMP,
  statut           VARCHAR(8),
  nom_categorie    VARCHAR(255) NOT NULL,
  ref_periodicite  INTEGER,
  ref_utilisateur  INT NOT NULL,
  date_realisation TIMESTAMP NULL
);

CREATE TABLE Tache_appartenant_a_liste (
  PRIMARY KEY (ref_liste, ref_tache),
  ref_liste INT NOT NULL,
  ref_tache INT NOT NULL
);

CREATE TABLE Travaille (
  PRIMARY KEY (nom_projet, ref_utilisateur),
  nom_projet      VARCHAR(255) NOT NULL,
  ref_utilisateur INT NOT NULL
);

CREATE TABLE Programme_de_score (
        PRIMARY KEY (ref_programme_de_score),
        ref_programme_de_score INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
        nom_programme VARCHAR(255),
        UNIQUE(nom_programme)
);

CREATE TABLE Utilisateur (
  PRIMARY KEY (ref_utilisateur),
  ref_utilisateur    INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
  login              VARCHAR(10),
  mot_de_passe       VARCHAR(255),
  score              INT,
  nom                VARCHAR(255),
  prenom             VARCHAR(255),
  adresse            VARCHAR(511),
  pays               VARCHAR(100),
  date_de_naissance  DATE,
  date_d_inscription DATE,
  nom_programme      VARCHAR(255) NULL,
  UNIQUE (login)
);

CREATE VIEW Taches AS
  SELECT * FROM Tache_fini
    UNION
  SELECT * FROM Tache_en_cours;
  
ALTER TABLE Comporte ADD CONSTRAINT FK_COMPORTE_REFSCORE_CATEGORIE FOREIGN KEY (ref_score_categorie_tache) REFERENCES Score_categorie_tache (ref_score_categorie_tache);
ALTER TABLE Comporte ADD CONSTRAINT FK_COMPORTE_PROG FOREIGN KEY (nom_programme) REFERENCES Programme_de_score (nom_programme);

ALTER TABLE Contient ADD CONSTRAINT FK_CONTIENT_REFLISTE FOREIGN KEY (ref_liste) REFERENCES Liste_tache (ref_liste);
ALTER TABLE Contient ADD CONSTRAINT FK_CONTIENT_PROJET FOREIGN KEY (nom_projet) REFERENCES Projet (nom_projet);

ALTER TABLE Depend_de ADD CONSTRAINT FK_DEPEND_RETACHE1 FOREIGN KEY (ref_tache_2) REFERENCES Tache (ref_tache);
ALTER TABLE Depend_de ADD CONSTRAINT FK_DEPEND_RETACHE2 FOREIGN KEY (ref_tache_1) REFERENCES Tache (ref_tache);

ALTER TABLE Est_assigne ADD CONSTRAINT FK_EST_ASSIGNE_REFTACHE FOREIGN KEY (ref_tache) REFERENCES Tache (ref_tache);
ALTER TABLE Est_assigne ADD CONSTRAINT FK_EST_ASSIGNE_REFUTILISATEUR FOREIGN KEY (ref_utilisateur) REFERENCES Utilisateur (ref_utilisateur);

ALTER TABLE Liste_tache ADD CONSTRAINT FK_LISTETACHE_REFUTILISATEUR FOREIGN KEY (ref_utilisateur) REFERENCES Utilisateur (ref_utilisateur);
ALTER TABLE Liste_tache ADD CONSTRAINT FK_TACHE_CATEGORIE_lt FOREIGN KEY (nom_categorie) REFERENCES Categorie (nom_categorie);

ALTER TABLE Tache ADD CONSTRAINT FK_TACHE_REF FOREIGN KEY (ref_tache) REFERENCES Tache (ref_tache);
ALTER TABLE Tache ADD CONSTRAINT FK_TACHE_REFUTILISATEUR FOREIGN KEY (ref_utilisateur) REFERENCES Utilisateur (ref_utilisateur);
ALTER TABLE Tache ADD CONSTRAINT FK_TACHE_REFPERIODICITE FOREIGN KEY (ref_periodicite) REFERENCES Periodicite (ref_periodicite);
ALTER TABLE Tache ADD CONSTRAINT ck_priorite_t CHECK (priorite = 'L' OR priorite = 'M'  OR priorite = 'H');
ALTER TABLE Tache ADD CONSTRAINT FK_TACHE_CATEGORIE_t FOREIGN KEY (nom_categorie) REFERENCES Categorie (nom_categorie);
ALTER TABLE Tache ADD CONSTRAINT CK_TACHE_STATUT CHECK (statut IN ('en cours', 'fini') OR statut IS NULL);


ALTER TABLE Tache_fini ADD CONSTRAINT FK_TACHE_FINI_REF FOREIGN KEY (ref_tache) REFERENCES Tache (ref_tache);
ALTER TABLE Tache_fini ADD CONSTRAINT FK_TACHE_FINI_REF_REFUTILISATEUR FOREIGN KEY (ref_utilisateur) REFERENCES Utilisateur (ref_utilisateur);
ALTER TABLE Tache_fini ADD CONSTRAINT FK_TACHE_FINI_REFPERIODICITE FOREIGN KEY (ref_periodicite) REFERENCES Periodicite (ref_periodicite);
ALTER TABLE Tache_fini ADD CONSTRAINT ck_priorite_f CHECK (priorite = 'L' OR priorite = 'M'  OR priorite = 'H');
ALTER TABLE Tache_fini ADD CONSTRAINT FK_TACHE_CATEGORIE_f FOREIGN KEY (nom_categorie) REFERENCES Categorie (nom_categorie);
ALTER TABLE Tache_fini ADD CONSTRAINT CK_FINI_STATUT CHECK (statut IN ('en cours', 'fini') OR statut IS NULL);

ALTER TABLE Tache_en_cours ADD CONSTRAINT FK_TACHE_EN_COURS_REF FOREIGN KEY (ref_tache) REFERENCES Tache (ref_tache);
ALTER TABLE Tache_en_cours ADD CONSTRAINT FK_TACHE_EN_COURS_REFUTILISATEUR FOREIGN KEY (ref_utilisateur) REFERENCES Utilisateur (ref_utilisateur);
ALTER TABLE Tache_en_cours ADD CONSTRAINT FK_TACHE_EN_COURS_REFPERIODICITE FOREIGN KEY (ref_periodicite) REFERENCES Periodicite (ref_periodicite);
ALTER TABLE Tache_en_cours ADD CONSTRAINT ck_priorite_c CHECK (priorite = 'L' OR priorite = 'M'  OR priorite = 'H');
ALTER TABLE Tache_en_cours ADD CONSTRAINT FK_TACHE_CATEGORIE_c FOREIGN KEY (nom_categorie) REFERENCES Categorie (nom_categorie);
ALTER TABLE Tache_en_cours ADD CONSTRAINT CK_EN_COURS_STATUT CHECK (statut IN ('en cours', 'fini') OR statut IS NULL);

ALTER TABLE Tache_appartenant_a_liste ADD CONSTRAINT FK_TACHELISTE_REFTACHE FOREIGN KEY (ref_tache) REFERENCES Tache (ref_tache);
ALTER TABLE Tache_appartenant_a_liste ADD CONSTRAINT FK_TACHELISTE_REFLISTE FOREIGN KEY (ref_liste) REFERENCES Liste_tache (ref_liste);

ALTER TABLE Travaille ADD CONSTRAINT FK_TRAVAILLE_REFUTILISATEUR FOREIGN KEY (ref_utilisateur) REFERENCES Utilisateur (ref_utilisateur);
ALTER TABLE Travaille ADD CONSTRAINT FK_TRAVAILLE_PROJET FOREIGN KEY (nom_projet) REFERENCES Projet (nom_projet);

ALTER TABLE Score_categorie_tache ADD CONSTRAINT CK_TERMINE CHECK (termine = 'Y' or termine = 'N');
ALTER TABLE Score_categorie_tache ADD CONSTRAINT FK_TACHE_CATEGORIE_sc FOREIGN KEY (nom_categorie) REFERENCES Categorie (nom_categorie);


ALTER TABLE Utilisateur ADD CONSTRAINT FK_USR_PROG FOREIGN KEY (nom_programme) REFERENCES Programme_de_score (nom_programme);


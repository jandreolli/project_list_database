-- -----------------------------------------------------
-- Projet BDD2 Partie 2
-- ANDREOLLI Justine 
-- HASHEMI Seyedali
-- TD2 TP3
-- -----------------------------------------------------

CREATE INDEX idx_usr ON Utilisateur(login, nom, prenom, adresse);
CREATE INDEX idx_utilisateur_ref_nom_prenom_pays ON Utilisateur(ref_utilisateur, nom, prenom, pays);
CREATE INDEX idx_tache_fini_utilisateur_categorie_realisation ON Tache_fini(ref_utilisateur, nom_categorie, date_realisation);
CREATE INDEX idx_score_categorie_nom_score ON Score_categorie_tache(nom_categorie, score);




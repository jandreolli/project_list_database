# Projet Bases de Données 2 - Liste de tâches

Projet de bases de données réalisé dans le cadre de l'UE "Bases de Données 2" pour la L3S5 Informatique à l'UFR Mathématique et Informatique Strasbourg.  

Le but de ce projet est de réaliser la base de données pour une application de gestion de listes de tâches ("to-do" list).

## Pour commencer  

### Démarrage  

- Pour lancer le projet, ouvrez sqldeveloper et connectez-vous à la base de données Oracle puis allez dans Ficher &rarr; Ouvrir et sélectionnez tous les fichiers contenus dans le dossier scripts SQL

```
cd sqldeveloper
```

```
. ./sqldeveloper.sh
```

## Lancer le projet

- Lancez le script **create.sql** 

![Capture_d_écran_du_2024-01-28_15-10-00](/uploads/0e87bfe3758d6b24c00286500d8c9eac/Capture_d_écran_du_2024-01-28_15-10-00.png)

## Structure des scripts SQL

+ **create.sql** : script qui permet de lancer la création des tables, l'insertion de donnée, de tester les procédures/fonction/déclencheurs
+ **data.sql** : insertion de données dans les tables
+ **declencheurs.sql** : les deux déclencheurs demandés
+ **dropTables.sql** : suppression des tables et des contraintes
+ **index.sql** : index nécessaires pour la partie sur les requêtes
+ **procedures_fonctions.sql** : les trois procédures/fonctions demandées
+ **requetes.sql** : les cinq requêtes demandées
+ **tableCreate.sql** : script de création de table
+ **triggers.sql** : les triggers que nous avons décidé d'implémenter et ceux demandés pour la partie 1
+ **tests.sql** : les appels pour tester les procédures/fonctions/déclencheurs

### Modèle entité-association (EA)

![Model_EA](/uploads/e1853e460d2d209b2c664fe81ed67780/Model_EA.png)

### Modèle Entity Relationship Diagram (ERD)

![Modele_ERD](/uploads/8db52f570ae8460a03751db6956f14fa/Modele_ERD.png)

## Auteurs  

**Justine Andreolli**  _alias_ [@jandreolli](https://git.unistra.fr/jandreolli)  
**Ali Hashemi** _alias_ [@s.hashemi](https://git.unistra.fr/s.hashemi) 
 

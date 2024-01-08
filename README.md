## Installation

```bash
$ npm install
```

## Base de données

### Création de la base et utilisateur
=> Voir le fichier [sql/1_create_user_and_database.sql](sql/1_create_user_and_database.sql)

### Création des tables

**en étant connecté avec l'utilisateur devnovice**

=> Voir le fichier [sql/2_create_tables.sql](sql/2_create_tables.sql)

### Ajout de données

=> Voir le fichier [sql/3_insert_data.sql](sql/3_insert_data.sql)

## Démarrer le serveur

```bash
$ npm run start
```

Ou si tu veux en live reload: 

```bash
$ npm run start:dev
```

## Tester

Il y a une requête GET pour chaque exemple : 

- http://localhost:3000/1
- http://localhost:3000/2
- http://localhost:3000/3
- http://localhost:3000/4

Donc tu peux ouvrir ces liens dans le navigateur ou alors avec curl :

```bash
$ curl localhost:3000/1
$ curl localhost:3000/2
$ curl localhost:3000/3
$ curl localhost:3000/4 
```
/* Très Facile */
/* 1. */
SHOW TABLES FROM webacademie;

/* 2. */
SHOW COLUMNS FROM webacademie.film;

/* 3. */
SELECT titre AS 'titre film' FROM webacademie.film;

/* 4. */
SELECT titre FROM webacademie.film WHERE id_genre IS NULL;

/* 5. */
SELECT titre FROM webacademie.film WHERE (YEAR(date_debut_affiche) LIKE '2000') ORDER BY date_debut_affiche DESC LIMIT 10;


/* Moins facile */
/* 1. */
SELECT titre FROM webacademie.film WHERE (id_genre= 1 OR id_genre = 2) AND (titre LIKE 'A%');

/* 2. */
SELECT SUM(nbr_siege) AS 'nombre siege' FROM webacademie.salle;

/* 3. */
SELECT SUM(nbr_siege) AS 'nombre siege' FROM webacademie.salle GROUP BY etage_salle;

/* 4. */
SELECT nom_salle FROM webacademie.salle WHERE nbr_siege < 200;

/* 5. */
SELECT titre AS 'titre_cool' FROM webacademie.film WHERE (titre LIKE '%day%') AND id_genre = 2;


/* Pas Facile */
/* 1. */
SELECT COUNT(nom) AS nbr_abo, FLOOR(AVG(prix)) AS 'avg abo' FROM webacademie.abonnement;

/* 2. */
SELECT MAX(film.id_film) AS 'max id film' FROM webacademie.film INNER JOIN webacademie.genre ON film.id_genre = genre.id_genre WHERE genre.nom = 'action' AND (YEAR(film.date_debut_affiche) BETWEEN '1980' AND '1999');

/* 3. */
SELECT DISTINCT membre.id_membre, membre.date_dernier_film AS 'last movie' FROM webacademie.membre INNER JOIN webacademie.historique_membre ON historique_membre.id_membre = membre.id_membre WHERE id_film IN (2557, 2741) ORDER BY membre.date_dernier_film DESC;


/* Boss Final */
SELECT genre.id_genre, IFNULL(genre.nom, '') AS 'nom genre', COUNT(*) AS 'nombre films' FROM webacademie.film INNER JOIN webacademie.genre ON film.id_genre = genre.id_genre WHERE film.id_genre BETWEEN 1 AND 3 GROUP BY film.id_genre;
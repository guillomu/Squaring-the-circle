/* Très Facile */
SHOW TABLES FROM webacademie;

SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'film';

SELECT titre FROM webacademie.film;

SELECT titre FROM webacademie.film WHERE id_genre IS NULL;

SELECT titre FROM webacademie.film WHERE (date_debut_affiche LIKE '2000%') ORDER BY date_debut_affiche DESC LIMIT 10;

/* Moins facile */
SELECT titre FROM webacademie.film WHERE (id_genre= 1 OR id_genre = 2) AND (titre LIKE 'A%');

SELECT SUM(nbr_siege) AS nombre_siege FROM webacademie.salle;

SELECT SUM(nbr_siege) AS nombre_siege FROM webacademie.salle GROUP BY etage_salle;

SELECT nom_salle FROM webacademie.salle WHERE nbr_siege < 200;

SELECT titre AS titre_cool FROM webacademie.film WHERE (titre LIKE '%day%') AND id_genre = 2;

/* Pas Facile */
SELECT COUNT(nom) AS nbr_abo, ROUND(AVG(prix)) AS avg_abo FROM webacademie.abonnement;

SELECT MAX(id_film) AS max_id_film FROM webacademie.film WHERE id_genre = 8 AND date_debut_affiche BETWEEN '1980%' AND '1999%';

SELECT id_membre, date_dernier_film AS last_movie FROM webacademie.membre WHERE id_dernier_film = 2557 OR id_dernier_film = 2741 ORDER BY date_dernier_film DESC;


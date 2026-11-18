
CREATE TABLE albums ( id INTEGER PRIMARY KEY, "name" TEXT NOT NULL, year INTEGER, artists_id_fk INTEGER, cover TEXT);
CREATE TABLE artists ( id INTEGER PRIMARY KEY, "name" TEXT NOT NULL);

INSERT INTO  albums (id, "name", year, artists_id_fk, cover) VALUES (1, "Besos de perro", 2002, NULL, "cover/03-besos-de-perro.jpg"),(2, "Do it",2025, 3, "cover/do-it.jpeg"),
  (3,"Made",2016, 2,"cover/made.jpeg"),(4,"Una semana increible", 2024, 5,"cover/una semana increible.jpg"),(6,"Un verano sin ti", 2022, NULL,"cover/un verano sin ti.jpeg"),(9,"Tonight", 2011, 2,"cover/tonight.jpg");

INSERT INTO  artists (id,"name") VALUES (1, "Jason Mraz"),(2, "Big_Bang"),(3,"Stray Kids"),(4, "Back street boys"),(5, "La pantera");

-- interseccion entre albums y artistas  
--SELECT artists.name AS name_artists, albums.name AS name_albums, year AS year_albums FROM albums INNER JOIN artists ON albums.artists_id_fk = artists.id;

-- albums sin interseccion con artistas
--SELECT albums.id AS "id", albums."name" AS "name", albums.year AS year FROM albums LEFT JOIN artists ON albums.artists_id_fk = artists.id WHERE albums.artists_id_fk is NULL;

CREATE TABLE songs (id INTEGER PRIMARY KEY,"song" TEXT NOT NULL,duration INTEGER, albums_id_fk INTEGER );
INSERT INTO songs (id, "song", duration,albums_id_fk) VALUES (1, "La luna me sabe a poco", 267, 1), (2, "DIVINE",187,2),(3, "ASHE",156,4),(4,"Tití me preguntó",243,6),(5,"TONIGHT", 220,9);

SELECT 
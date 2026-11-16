
CREATE TABLE albums ( id INTEGER PRIMARY KEY, "name" TEXT NOT NULL, year INTEGER, artists_id_fk INTEGER);
CREATE TABLE artists ( id INTEGER PRIMARY KEY, "name" TEXT NOT NULL);

INSERT INTO  albums (id,"name",year,artists_id_fk) VALUES (1,"Besos de perro", 2002),(2,"Do it",2025, 3),
  (3,"Made",2016, 2),(4,"Una semana increible", 2024, 5),(6,"Un verano sin ti", 2022),(9,"Tonight", 2011, 2);

INSERT INTO  artists (id,"name") VALUES (1, "Jason Mraz"),(2, "Big_Bang"),(3,"Stray Kids"),(4, "Back street boys"),(5, "La pantera");
  
SELECT artists.name AS name_artists, albums.name AS name_albums, year AS year_albums FROM albums INNER JOIN artists ON albums.artists_id_fk = artists.id;

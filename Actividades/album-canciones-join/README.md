# Albums

| id | name | year | artists_id_fk |
|---|---|---|---|
| 1 | Besos de perro| 2002| NULL |
| 2 | Do it | 2025 | 3 |
| 3 | Made | 2016 | 2 |
| 4 | Una semana increible | 2024 | 5 |
| 6 | Un verano sin ti | 2022 | NULL |

# Artists

| id | name | 
|---|---|
| 1 | Jason Mraz |
| 2 | Big bang |
| 3 | Stray Kids | 
| 4 | Back street boys | 
| 5 | La pantera |

CREATE TABLE albums ( id INTEGER PRIMARY KEY, name TEXT NOT NULL, year INTEGER, artists_id_fk INTEGER);
CREATE TABLE Artists ( id INTEGER PRIMARY KEY, name TEXT NOT NULL);

SELECT artists.name AS name_artists, albums.name AS name_albums, year AS year_albums FROM artists

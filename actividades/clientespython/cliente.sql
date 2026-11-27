CREATE TABLE cliente (
    id INTEGER PRIMARY KEY,
    name TEXT,
    edad INTEGER,
    correo TEXT
);

SELECT
    cliente.id,
    cliente.name,
    cliente.edad,
    jefe.name,
    jefe.id AS id_jefe
FROM
    cliente
    INNER JOIN cliente AS jefe ON cliente.edad = jefe.id;
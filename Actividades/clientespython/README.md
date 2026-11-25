sqlite3 clients.db < cliente.sql <!--Importar los datos del sql-->
sqlite3 clients.db
.mode csv
.separator "," <!-- Hay que fijarse en el tipo de separador que tiene el archivo en el que tenemos los datos-->
.import clientes_1000.csv clients <!-- Importar los datos del csv al nombre del.db-->

<!--AND es y-->

<!--DOS FORMAS DE HACER LO MISMO, CON WHERE Y SIN EL-->

SELECT id, name FROM cliente WHERE id < 11 ORDER BY id DESC;
SELECT \* FROM (SELECT id, name FROM cliente ORDER BY id ASC LIMIT 10)ORDER BY id DESC; <!--SUBCONSULTAS, hace primero la de dentro del paréntesis-->

<!--DOS FORMAS DE HACERLO PERO SOLO USANDO UN WHERE-->

SELECT id, name FROM cliente WHERE name LIKE '%z'ORDER BY id LIMIT 10;
SELECT \* FROM (SELECT id, name FROM cliente ORDER BY id ASC LIMIT 10) WHERE name LIKE '%z' ORDER BY id DESC;

<!--SI QUEREMOS CONTAR LOS CLIENTES QUE TERMINAN EN Z DE LA CONSULTA ANTERIOR-->

SELECT COUNT(\*) FROM (SELECT id, name FROM cliente ORDER BY id ASC LIMIT 10) WHERE name LIKE '%z' ORDER BY id DESC;

<!--SI LA EDAD DEL CLIENTE COINCIDE CON EL ID DE OTRO, ESTE ES SU JEFE-->

SELECT cliente.id, cliente.name, cliente.edad, jefe.name, jefe.id AS id_jefe FROM cliente INNER JOIN cliente AS jefe ON cliente.edad = jefe.id;

<!--BUSCAR AQUELLOS CORREOS ELECTRONICOS QUE TENGA LA MISMA EDAD QUE ESA PERSONA-->

SELECT cliente.id, cliente.name, cliente.edad, cliente.correo FROM cliente WHERE cliente.correo LIKE '%' || cliente.edad;

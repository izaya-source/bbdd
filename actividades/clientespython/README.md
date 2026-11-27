sqlite3 clients.db < cliente.sql <!--Importar los datos del sql-->
sqlite3 clients.db
.mode csv
.separator "," <!-- Hay que fijarse en el tipo de separador que tiene el archivo en el que tenemos los datos-->
.import clientes_1000.csv clients <!-- Importar los datos del csv al nombre del.db-->

<!--AND es y-->
<!-- Para hacer consulta: sqlite3 clients.db sobre.db que es donde tenemos nuestra bbdd-->
<!--sqlite3 clients.db < cliente.sql para importar en .db los datos de.sql-->
<!--sqlite3 ".headers on">
<!-- Para usar el having utilizamos el GROUP BY-->

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

SELECT cliente.id, cliente.name, cliente.edad, cliente.correo FROM cliente WHERE cliente.correo LIKE '%' || cliente.edad || '%' ;

<!-- Así comprobamos lo mismo pero además comprobando que sea valido el correo-->

SELECT cliente.id, cliente.name, cliente.edad, cliente.correo FROM cliente WHERE cliente.correo LIKE '%' || cliente.edad || '%@%.%';

<!-- || unir dos strings ( concatenar)-->

<!-- Buscar todas las personas que empiecen por A con su nombre -->

cliente.edad, cliente.name FROM cliente WHERE cliente.name LIKE 'a%';

<!--Contar las edades agrupándolas y ordenarlas descendentemente-->

SELECT COUNT(cliente.edad), cliente.edad AS edades FROM cliente GROUP BY cliente.edad ORDER BY cliente.edad DESC;

<!-- Para ordenar por las veces que se repite-->

SELECT COUNT(cliente.edad), cliente.edad AS edades FROM cliente GROUP BY cliente.edad ORDER BY COUNT(\*) DESC;

<!--Para ordenar por las veces que se repite y luego ordenar por order ascendente-->

SELECT COUNT(cliente.edad), cliente.edad AS edades FROM cliente GROUP BY cliente.edad ORDER BY COUNT(\*) DESC, edad ASC;

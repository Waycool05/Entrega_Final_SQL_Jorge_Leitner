USE LogisticaWayCool;

SELECT * FROM Categoria WHERE id_categoria >= 50;

START TRANSACTION;

DELETE FROM Categoria WHERE id_categoria >= 50;

SELECT * FROM Categoria WHERE id_categoria >= 50;

ROLLBACK;

SELECT * FROM Categoria WHERE id_categoria >= 50;

START TRANSACTION;

-- Insertamos los primeros 4 registros
INSERT INTO Categoria (nombre, descripcion) VALUES ('Categoria Test 1', 'Descripcion TCL 1');
INSERT INTO Categoria (nombre, descripcion) VALUES ('Categoria Test 2', 'Descripcion TCL 2');
INSERT INTO Categoria (nombre, descripcion) VALUES ('Categoria Test 3', 'Descripcion TCL 3');
INSERT INTO Categoria (nombre, descripcion) VALUES ('Categoria Test 4', 'Descripcion TCL 4');

-- Savepoint después del registro #4
SAVEPOINT lote_1;

-- Insertamos 4 registros más
INSERT INTO Categoria (nombre, descripcion) VALUES ('Categoria Test 5', 'Descripcion TCL 5');
INSERT INTO Categoria (nombre, descripcion) VALUES ('Categoria Test 6', 'Descripcion TCL 6');
INSERT INTO Categoria (nombre, descripcion) VALUES ('Categoria Test 7', 'Descripcion TCL 7');
INSERT INTO Categoria (nombre, descripcion) VALUES ('Categoria Test 8', 'Descripcion TCL 8');

-- Savepoint después del registro #8
SAVEPOINT lote_2;

-- Sentencia para eliminar el savepoint de los primeros 4 registros (opcional, por consigna)
-- RELEASE SAVEPOINT lote_1;

-- Confirmamos todos los cambios
COMMIT;

-- Verificamos la inserción final de los 8 registros
SELECT * FROM Categoria WHERE nombre LIKE 'Categoria Test%';

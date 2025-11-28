USE mysql;
-- 1. USUARIO ADMINISTRADOR
-- Permisos: Todos los privilegios sobre la base de datos.
-- --------------------------------------------------------------------------
CREATE USER IF NOT EXISTS 'admin_logistica'@'localhost' IDENTIFIED BY 'adminPass123';
GRANT ALL PRIVILEGES ON LogisticaWayCool.* TO 'admin_logistica'@'localhost';

-- --------------------------------------------------------------------------
-- 2. USUARIO GERENTE
-- Permisos: Lectura, Inserción y Modificación (SELECT, INSERT, UPDATE).
-- No puede borrar registros (DELETE) ni alterar tablas (ALTER/DROP).
-- --------------------------------------------------------------------------
CREATE USER IF NOT EXISTS 'gerente_logistica'@'localhost' IDENTIFIED BY 'gerentePass123';
GRANT SELECT, INSERT, UPDATE ON LogisticaWayCool.* TO 'gerente_logistica'@'localhost';

-- --------------------------------------------------------------------------
-- 3. USUARIO AUDITOR
-- Permisos: Solo Lectura (SELECT).
-- Ideal para reportes y auditoría sin riesgo de modificar datos.
-- --------------------------------------------------------------------------
CREATE USER IF NOT EXISTS 'auditor_logistica'@'localhost' IDENTIFIED BY 'auditorPass123';
GRANT SELECT ON LogisticaWayCool.* TO 'auditor_logistica'@'localhost';

-- Aplicar cambios de privilegios
FLUSH PRIVILEGES;

SELECT 'Usuarios creados y permisos asignados correctamente' AS mensaje;

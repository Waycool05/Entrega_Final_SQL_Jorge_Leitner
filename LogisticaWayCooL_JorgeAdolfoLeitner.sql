 CREATE SCHEMA LogisticaWayCool;
 USE LogisticaWayCool;
 
 CREATE TABLE Cliente (
	id_cliente INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    fecha_registro DATE NOT NULL
);
CREATE TABLE Sede_Cliente (
	id_sede INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_cliente INT NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    telefono VARCHAR(20) NOT NULL
);
CREATE TABLE Transporte (
	id_transporte INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    contacto  VARCHAR(100) NOT NULL,
	telefono VARCHAR(20) NOT NULL
);
CREATE TABLE Vehiculo (
	id_vehiculo INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    placa VARCHAR(50) NOT NULL UNIQUE,
    id_transporte INT NOT NULL
);
CREATE TABLE Conductor (
	id_conductor INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    licencia VARCHAR(50) NOT NULL UNIQUE,
    telefono VARCHAR(20) NOT NULL,
    id_transporte INT NOT NULL
);
CREATE TABLE Envio (
	id_envio INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_vehiculo INT NOT NULL,
    id_conductor INT NOT NULL,
    ubicacion VARCHAR(200) NOT NULL,
    fecha DATE,
    estado ENUM('Pendiente', 'En Transito', 'Entregado', 'Cancelado') DEFAULT 'Pendiente',
    observaciones TEXT
);
CREATE TABLE Producto (
	id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    peso DECIMAL (10,2),
    id_categoria INT,
    stock INT DEFAULT 0
);
CREATE TABLE Categoria (
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT
);
CREATE TABLE Detalle_Envio (
    id_detalle INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_envio INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2)
);
CREATE TABLE Auditoria_Stock (
    id_auditoria INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_producto INT NOT NULL,
    nombre_producto VARCHAR(100),
    operacion ENUM('INSERT', 'UPDATE', 'DELETE') NOT NULL,
    stock_anterior INT,
    stock_nuevo INT,
    diferencia INT,
    usuario VARCHAR(100),
    fecha_hora DATETIME NOT NULL,
    motivo VARCHAR(200)
);

ALTER TABLE Sede_Cliente 
ADD CONSTRAINT fk_sede_cliente_cliente 
FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente);

ALTER TABLE Vehiculo 
ADD CONSTRAINT fk_vehiculo_transporte 
FOREIGN KEY (id_transporte) REFERENCES Transporte(id_transporte);

ALTER TABLE Conductor 
ADD CONSTRAINT fk_conductor_transporte 
FOREIGN KEY (id_transporte) REFERENCES Transporte(id_transporte);

ALTER TABLE Envio 
ADD CONSTRAINT fk_envio_cliente 
FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente);

ALTER TABLE Envio 
ADD CONSTRAINT fk_envio_vehiculo 
FOREIGN KEY (id_vehiculo) REFERENCES Vehiculo(id_vehiculo);

ALTER TABLE Envio 
ADD CONSTRAINT fk_envio_conductor 
FOREIGN KEY (id_conductor) REFERENCES Conductor(id_conductor);

ALTER TABLE Producto 
ADD CONSTRAINT fk_producto_categoria 
FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria);

ALTER TABLE Detalle_Envio 
ADD CONSTRAINT fk_detalle_envio_envio 
FOREIGN KEY (id_envio) REFERENCES Envio(id_envio);

ALTER TABLE Detalle_Envio 
ADD CONSTRAINT fk_detalle_envio_producto 
FOREIGN KEY (id_producto) REFERENCES Producto(id_producto);


-- ********************************************************* --
-- VISTAS -- 

CREATE VIEW vw_envios_clientes AS
SELECT 
    e.id_envio,
    e.fecha,
    e.ubicacion,
    e.observaciones,
    c.nombre AS nombre_cliente,
    c.telefono AS telefono_cliente,
    v.nombre AS vehiculo,
    v.placa AS placa_vehiculo
FROM Envio e
JOIN Cliente c ON e.id_cliente = c.id_cliente
JOIN Vehiculo v ON e.id_vehiculo = v.id_vehiculo;

-- Vehículos con su tipo de transporte -- 

CREATE VIEW vw_vehiculos_transporte AS
SELECT 
    v.id_vehiculo,
    v.nombre AS nombre_vehiculo,
    v.placa,
    t.nombre AS tipo_transporte,
    t.contacto AS contacto_transporte
FROM Vehiculo v
JOIN Transporte t ON v.id_transporte = t.id_transporte;

-- Productos con su categoría -- 

CREATE VIEW vw_productos_categoria AS
SELECT 
    p.id_producto,
    p.nombre AS nombre_producto,
    p.descripcion,
    p.peso,
    p.stock,
    c.nombre AS categoria
FROM Producto p
JOIN Categoria c ON p.id_categoria = c.id_categoria;

-- Vista para consultar el historial de cambios de stock --

CREATE VIEW vw_historial_stock AS
SELECT 
    a.id_auditoria,
    a.id_producto,
    a.nombre_producto,
    a.operacion,
    a.stock_anterior,
    a.stock_nuevo,
    a.diferencia,
    a.usuario,
    DATE_FORMAT(a.fecha_hora, '%Y-%m-%d %H:%i:%s') AS fecha_hora,
    a.motivo,
    CASE 
        WHEN a.diferencia > 0 THEN 'Aumento'
        WHEN a.diferencia < 0 THEN 'Disminución'
        ELSE 'Sin cambio'
    END AS tipo_movimiento
FROM Auditoria_Stock a
ORDER BY a.fecha_hora DESC;

-- ********************************************************* --
-- FUNCIONES --

-- Calcular total de envíos de un cliente --

DELIMITER //

CREATE FUNCTION fn_total_envios_cliente(p_id_cliente INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_envios INT;
    
    SELECT COUNT(*) INTO total_envios
    FROM Envio
    WHERE id_cliente = p_id_cliente;
    
    RETURN total_envios;
END//

DELIMITER ;

-- Calcular valor total de un envío --

DELIMITER //

CREATE FUNCTION fn_valor_total_envio(p_id_envio INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE valor_total DECIMAL(10,2);
    
    SELECT SUM(de.cantidad * de.precio_unitario) INTO valor_total
    FROM Detalle_Envio de
    WHERE de.id_envio = p_id_envio;
    
    RETURN IFNULL(valor_total, 0);
END//

DELIMITER ;

-- ********************************************************* --
-- STORED PROCEDURES --

-- Insertar un nuevo cliente --
DELIMITER //

CREATE PROCEDURE sp_insertar_cliente(
    IN p_nombre VARCHAR(100),
    IN p_direccion VARCHAR(200),
    IN p_telefono VARCHAR(20),
    IN p_email VARCHAR(100)
)
BEGIN
    INSERT INTO Cliente (nombre, direccion, telefono, email)
    VALUES (p_nombre, p_direccion, p_telefono, p_email);
    
    SELECT 'Cliente insertado correctamente' AS mensaje;
END//

DELIMITER ;

-- Actualizar ubicación de envío --
DELIMITER //

CREATE PROCEDURE sp_actualizar_ubicacion_envio(
    IN p_id_envio INT,
    IN p_nueva_ubicacion VARCHAR(200)
)
BEGIN
    UPDATE Envio
    SET ubicacion = p_nueva_ubicacion
    WHERE id_envio = p_id_envio;
    
    SELECT 'Ubicación actualizada correctamente' AS mensaje;
END//

DELIMITER ;

-- ********************************************************* --
-- TRIGGERS --

-- Registrar automáticamente la fecha de registro cuando se inserta un cliente --

DELIMITER //

CREATE TRIGGER tr_fecha_registro_cliente
BEFORE INSERT ON Cliente
FOR EACH ROW
BEGIN
    SET NEW.fecha_registro = CURDATE();
END//

DELIMITER ;

-- Actualizar stock automáticamente cuando se agrega un detalle de envío -- 
DELIMITER //

CREATE TRIGGER tr_actualizar_stock_envio
AFTER INSERT ON Detalle_Envio
FOR EACH ROW
BEGIN
    DECLARE stock_actual INT;
    
    SELECT stock INTO stock_actual FROM Producto WHERE id_producto = NEW.id_producto;
    
    IF stock_actual < NEW.cantidad THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stock insuficiente para el producto';
    ELSE
        UPDATE Producto 
        SET stock = stock - NEW.cantidad 
        WHERE id_producto = NEW.id_producto;
    END IF;
END//

DELIMITER ;

-- Restaurar stock cuando se elimina un detalle de envío 
DELIMITER //

CREATE TRIGGER tr_restaurar_stock_envio
AFTER DELETE ON Detalle_Envio
FOR EACH ROW
BEGIN
    UPDATE Producto
    SET stock = stock + OLD.cantidad
    WHERE id_producto = OLD.id_producto;
END//

DELIMITER ;

-- Ajustar stock cuando se actualiza un detalle de envío
DELIMITER //

CREATE TRIGGER tr_modificar_stock_envio
AFTER UPDATE ON Detalle_Envio
FOR EACH ROW
BEGIN
    DECLARE diferencia INT;
    DECLARE stock_actual INT;
    SET diferencia = NEW.cantidad - OLD.cantidad;
    
    IF diferencia > 0 THEN
         SELECT stock INTO stock_actual FROM Producto WHERE id_producto = NEW.id_producto;
         
         IF stock_actual < diferencia THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stock insuficiente para la actualización';
         END IF;
    END IF;

    UPDATE Producto
    SET stock = stock - diferencia
    WHERE id_producto = NEW.id_producto;
END//

DELIMITER ;

-- ********************************************************* --
-- TRIGGERS DE AUDITORÍA --

-- Auditar cuando se inserta un nuevo producto 
DELIMITER //

CREATE TRIGGER tr_auditoria_stock_insert
AFTER INSERT ON Producto
FOR EACH ROW
BEGIN
    INSERT INTO Auditoria_Stock (
        id_producto,
        nombre_producto,
        operacion,
        stock_anterior,
        stock_nuevo,
        diferencia,
        usuario,
        fecha_hora,
        motivo
    ) VALUES (
        NEW.id_producto,
        NEW.nombre,
        'INSERT',
        0,
        NEW.stock,
        NEW.stock,
        USER(),
        NOW(),
        'Producto creado'
    );
END//

DELIMITER ;

-- Auditar cuando se actualiza el stock de un producto 
DELIMITER //

CREATE TRIGGER tr_auditoria_stock_update
AFTER UPDATE ON Producto
FOR EACH ROW
BEGIN
    IF OLD.stock != NEW.stock THEN
        INSERT INTO Auditoria_Stock (
            id_producto,
            nombre_producto,
            operacion,
            stock_anterior,
            stock_nuevo,
            diferencia,
            usuario,
            fecha_hora,
            motivo
        ) VALUES (
            NEW.id_producto,
            NEW.nombre,
            'UPDATE',
            OLD.stock,
            NEW.stock,
            NEW.stock - OLD.stock,
            USER(),
            NOW(),
            CASE 
                WHEN NEW.stock > OLD.stock THEN 'Incremento de stock'
                WHEN NEW.stock < OLD.stock THEN 'Reducción de stock'
                ELSE 'Ajuste de stock'
            END
        );
    END IF;
END//

DELIMITER ;

-- Auditar cuando se elimina un producto
DELIMITER //

CREATE TRIGGER tr_auditoria_stock_delete
BEFORE DELETE ON Producto
FOR EACH ROW
BEGIN
    INSERT INTO Auditoria_Stock (
        id_producto,
        nombre_producto,
        operacion,
        stock_anterior,
        stock_nuevo,
        diferencia,
        usuario,
        fecha_hora,
        motivo
    ) VALUES (
        OLD.id_producto,
        OLD.nombre,
        'DELETE',
        OLD.stock,
        0,
        -OLD.stock,
        USER(),
        NOW(),
        'Producto eliminado'
    );
END//

DELIMITER ;




-- *** CREACIÓN DE LA BASE DE DATOS *** ---
CREATE DATABASE IF NOT EXISTS alke_wallet;
USE alke_wallet;


-- *** CREACIÓN DE LAS TABLAS usuarios, transacciones y monedas *** ---
CREATE TABLE usuarios(
	user_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(200) NOT NULL,
    correo_electronico VARCHAR(200) NOT NULL,
    contraseña VARCHAR(200) NOT NULL,
    saldo INT DEFAULT 0
);

CREATE TABLE transacciones(
	transaction_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    sender_user_id INT UNSIGNED,
    receiver_user_id INT UNSIGNED,
    importe INT NOT NULL,
    transaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_sender_user_id FOREIGN KEY (sender_user_id) REFERENCES usuarios(user_id),
    CONSTRAINT fk_receiver_user_id FOREIGN KEY (receiver_user_id) REFERENCES usuarios(user_id)
);

CREATE TABLE monedas(
	currency_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    currency_name VARCHAR(50) NOT NULL,
	currency_symbol VARCHAR(10) NOT NULL
);

-- *** INSERTANDO VALORES EN LAS TABLAS usuarios, transacciones y monedas *** ---
INSERT INTO  
	usuarios(nombre, correo_electronico, contraseña,saldo)
VALUES
	('Iván', 'ivan.1988@hotmail.com', '1988iv45', 463000),
    ('Lucia', 'luci20@gmail.com', 'luciromero999', 721000),
    ('Ana', 'anitacr@hotmail.com', 'ert566', 230000),
    ('Jose', 'jtorres@gmail.com', '12345jt', 314000),
    ('Ricardo', 'ricardo_mc@outlook.com', '2024rmcY', 732000);
    
INSERT INTO 
	transacciones(sender_user_id, receiver_user_id, importe, transaction_date)
VALUES
	(1, 2, 45000, '2024-02-29 12:30:45'),
    (1, 3, 15000, '2024-02-25 11:04:15'),
    (3, 2, 85000, '2024-02-20 09:10:05'),
    (5, 1, 155000, '2024-02-10 19:11:44'),
    (4, 5, 23000, '2024-02-02 15:34:27'),
    (3, 1, 230000, '2024-01-29 09:32:33'),
    (2, 4, 54000, '2024-01-20 17:15:55');
    
INSERT INTO 
	monedas(currency_name, currency_symbol) 
VALUES
	('Peso chileno', 'CLP $'),
    ('Dólar americano', 'USD $'),
    ('Euro', '€');


-- *** QUERIES DE LA EVALUACIÓN INTEGRADORA *** ---

-- Consulta para obtener el nombre de la moneda elegida por un usuario específico
SELECT currency_name FROM monedas WHERE currency_id = '1';

-- Consulta para obtener todas las transacciones registradas
SELECT * FROM transacciones;

-- Consulta para obtener todas las transacciones realizadas por un usuario específico
SELECT * FROM transacciones WHERE sender_user_id = '2';

-- Sentencia DML para modificar el campo correo electrónico de un usuario específico
UPDATE usuarios 
SET correo_electronico = 'nuevo_email@correo.com'
WHERE user_id = '1';

-- Sentencia para eliminar los datos de una transacción (eliminado de la fila completa)
DELETE FROM transacciones WHERE transaction_id = '6';


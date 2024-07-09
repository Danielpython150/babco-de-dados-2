CREATE DATABASE MeuBancoDeDados;

USE MeuBancoDeDados;

CREATE TABLE Clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE Pedidos (
    id INT PRIMARY KEY,
    cliente_id INT,
    valor DECIMAL(10, 2)
);

DELIMITER //
CREATE TRIGGER MeuTrigger
AFTER INSERT ON Pedidos
FOR EACH ROW
BEGIN
    -- Seu código aqui (por exemplo, enviar um e-mail quando um novo pedido for inserido)
END;
//
DELIMITER ;


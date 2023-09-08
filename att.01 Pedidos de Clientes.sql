-- criando base de dados
CREATE DATABASE gerenciamento;

-- acessando bd
USE gerenciamento;

-- criando tabela clientes (1)
CREATE TABLE clientes(
	clienteID INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (225) NOT NULL,
    email VARCHAR (225) NOT NULL UNIQUE,
    telefone VARCHAR (30) NOT NULL
);

-- criando tabela pedido (N)
CREATE TABLE pedido(
	pedidoID INT AUTO_INCREMENT PRIMARY KEY,
    dataPedido VARCHAR (15),
    valorTotal VARCHAR (30),
    clienteID INT,
    FOREIGN KEY (clienteID) REFERENCES clientes(clienteID)
);

-- Inserindo 5 registro em cada tabela
INSERT INTO clientes (nome, email, telefone) VALUES 
('Manuella', 'manuella@gmail.com', '(71) 97777-8888'),
('Flavia', 'flavia@gmail.com', '(71) 9111-2222'),
('Joao', 'joao@gmail.com', '(71) 94444-3333'),
('Tiago', 'tiago@gmail.com', '(71) 99999-7548'),
('Joana', 'joana@gmail.com', '(71) 98754-3652');

INSERT INTO pedido (dataPedido, valorTotal) VALUES 
('18/09/2023', 'R$ 498.89'),
('22/06/2023', 'R$ 785.66'),
('07/08/2023', 'R$ 845.41'),
('30/03/2023', 'R$ 365.26'),
('21/04/2023', 'R$ 526.15');

SELECT * FROM clientes;

SELECT * FROM pedido;

-- criando base de dados 
CREATE DATABASE RH;

-- acessando o bd
USE RH;

-- criando tabela departamento 
CREATE TABLE departamentos(
	departamentoID INT AUTO_INCREMENT PRIMARY KEY,
    nomeDepar VARCHAR (255) NOT NULL
    );

-- criando tabela funcionarios 
CREATE TABLE funcionarios(
	funcionarioID INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR (225) NOT NULL,
    cargo TEXT NOT NULL,
    salario INT NOT NULL,
    departamentoID INT,
	FOREIGN KEY (departamentoID) REFERENCES departamentos(departamentoID)
);

-- Inserindo 5 registro em cada tabela
INSERT INTO departamentos (nomeDepar) VALUES 
('Recursos Humanos'),
('Juridico'),
('Tecnologia'),
('Logistica'),
('Operacoes');

INSERT INTO funcionarios (nome, cargo, salario) VALUES 
('isac', 'Tecnologia', '15.000'),
('Giovani', 'Operacao', '3.000'),
('Joao', 'RH', '5.000'),
('Mayara', 'Logistica', '8.000'),
('Carolina', 'Tecnologia', '20.000');

SELECT * FROM departamentos;

SELECT * FROM funcionarios;
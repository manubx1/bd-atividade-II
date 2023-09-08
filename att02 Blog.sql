-- criando base de dados 
CREATE DATABASE blog;

-- acessando o bd
USE blog;

-- criando tabela artigo (1)
CREATE TABLE artigo(
	artigoID INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR (255) NOT NULL,
    conteudo TEXT NOT NULL,
    dataPublic DATE
    );

-- criando tabela comentarios (n)
CREATE TABLE comentarios(
	comentarioID INT AUTO_INCREMENT PRIMARY KEY,
	autor VARCHAR (225) NOT NULL,
    texto TEXT NOT NULL,
    dataComent DATE,
    artigoID INT,
	FOREIGN KEY (artigoID) REFERENCES artigo(artigoID)
);

-- Inserindo 5 registro em cada tabela
INSERT INTO artigo (titulo, conteudo) VALUES 
('Travis Scott ou timothée Chalamet', 'Qual dos dois é o melhor namorado para Kylie Jenner?'),
('Voce tem sindrome do Kanye West?', 'Entenda o jeitinho doce dessa celebridade'),
('Taylor Swift ou Lana Del Rey', 'Entenda motivos para escolher a iconica da Taylor'),
('Capitu traiu ou não traiu Bentinho?', 'veja a polemica que se alastra a anos'),
('2 reais ou um presente misterioso?','Entenda o sonho de ser parada pelo Brazilian NPC');

INSERT INTO comentarios (autor, texto) VALUES
('mae Kardashian', 'definitivamente, melhor genro foi o Tim'),
('hakaka', 'Todos nos temos um pouco do Kanye'),
('1dforever', 'harry styles'),
('usuario02', 'sem comentarios'),
('lINDINHA01', 'so se o presente misterioso fosse meu ex');

SELECT * FROM artigo;

SELECT * FROM comentarios;

CREATE DATABASE Livraria;
SHOW DATABASES;

USE Livraria;
CREATE TABLE livro (
Id INT AUTO_INCREMENT,
Livro VARCHAR(300),
Autor VARCHAR (100),
Sexo ENUM ('Masculino', 'Feminino'),
Paginas INT,
Editora VARCHAR (11),
Valor_Capa DECIMAL(7,2),
Valor_kindle DECIMAL (7,2),
Ano_Publicacao INT, 
PRIMARY KEY (Id)
);

INSERT INTO Livraria.Livro (Livro, Autor, Sexo, Paginas, Editora, Valor_Capa, Valor_Kindle, Ano_Publicacao) VALUES
('Pai Rico, Pai Pobre', 'Robert T. Kiyosaki', 'Masculino', 336, 'Alta Books', 61.53, 58.45, 2018),
('Mindset', 'Carol S. Dweck', 'Feminino', 312, 'Objetiva',  38.99, 14.95, 2017),
('Como fazer amigos e influenciar pessoas', 'Dale Carnegie','Masculino', 256, 'Sextante', 38.99, 33.24, 2019),
('A Cabana', 'William P.Young','Masculino', 240, 'Arqueiro', 35.99, 17.90, 2008),
('O Poder do Hábito','Charles Duhigg','Masculino', 408, 'Objetiva', 42.99, 29.90, 2012),
('Código Limpo','Robert C. Martin','Masculino', 425, 'Alta Books', 91.99, 87.90, 2009),
('Esencialismo', 'Greg McKeown','Masculino', 272, 'Sextante', 53.58, 33.24, 2015),
('Me Poupe!','Nathalia Arcuri','Feminino', 176, 'Sextante', 32.86, 17.09, 2018),
('Comece pelo Porquê','Simon Sinek', 'Masculino', 256, 'Sextante', 50.58, 24.90, 2018),
('O Alquimista','Paulo Coelho','Masculino', 206, 'Paralela', 24.70, 14.70, 2017);

SELECT * FROM livraria.livro;

-- 1- Trazer o nome do livro, autor e valor Kindle somente de livros com valores menores que R$ 40,00;
SELECT Livro, Autor, Valor_Kindle FROM Livraria.Livro WHERE Valor_Kindle < 40.00;
-- 2 - Trazer o nome do livro e autor onde o ano de publicação seja maior que 2017, a editora seja Sextante e o sexo do autor seja feminino;
SELECT Livro, Autor, Ano_Publicacao, Editora, Sexo FROM Livraria.Livro WHERE Ano_Publicacao > 2017 AND Editora = 'Sextante' AND Sexo = 'Feminino';
-- 3 - Trazer o nome do livro e editora de livros com mais de 200 páginas;
SELECT Livro, Editora, Paginas FROM Livraria.Livro WHERE Paginas > 200; 
-- 4 - Trazer o nome do livro, número de páginas do livro e autores que começam com a letra "C";
SELECT Livro, Paginas, Autor FROM Livraria.Livro WHERE Autor Like 'c%'; 
-- 5 - Trazer o nome do autor, editora e ano de publicação dos livros que tenham autores do sexo masculino e tenham sido publicados pela editora Alta Books;
SELECT Autor, Editora, Ano_Publicacao, Sexo FROM Livraria.Livro WHERE Sexo = 'Masculino' AND Editora = 'Alta Books';
-- 6 - Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum com valores acima de R$ 50,00;
SELECT Livro, Autor, Paginas, Editora, Ano_Publicacao, Valor_Capa FROM Livraria.Livro WHERE Valor_Capa > 50.00; 
-- 7 - Trazer o nome do livro, editora e valor capa comum onde o nome do autor comece com Nathalia;
SELECT livro, Editora, Valor_Capa, Autor FROM Livraria.Livro WHERE Autor LIKE 'Nathalia%'; 
-- 8 - Trazer o nome do livro, autor, número de páginas dos livros publicados até 2017;
SELECT Livro, Autor, Paginas, Ano_Publicacao FROM Livraria.Livro WHERE Ano_Publicacao <= 2017;
-- 9 - Trazer o nome dos autores com livros publicados pela editora Sextante com mais de 200 páginas;
SELECT Autor, Editora, Paginas FROM Livraria.Livro WHERE Editora = 'Sextante' AND Paginas > 200; 
-- 10 - Trazer o nome do livro, autores, valor com capa comum com valor maior que R$ 30,00 na editora Sextante;
SELECT Livro, Autor, Valor_Capa, Editora FROM Livraria.Livro WHERE Valor_Capa > 30.00 AND Editora = 'Sextante'; 
CREATE SCHEMA Biblioteca;
USE Biblioteca;

CREATE TABLE autores (
id_autor INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
nacionalidade VARCHAR(50)
);

CREATE TABLE generos (
id_genero INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE livros (
id_livro INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(150) NOT NULL,
isbn VARCHAR(20) NOT NULL UNIQUE,
ano_publicacao INT,
quantidade INT NOT NULL CHECK (quantidade >= 0),
id_genero INT,
id_autor INT NOT NULL,
FOREIGN KEY (id_genero) REFERENCES generos(id_genero),
FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

CREATE TABLE usuarios (
id_usuario INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
telefone VARCHAR(20)
);

CREATE TABLE emprestimos (
id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
data_emprestimo DATE NOT NULL,
data_devolucao DATE,
status VARCHAR(20) NOT NULL CHECK (status IN ('EMPRESTADO', 'DEVOLVIDO')),
id_usuario INT NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

CREATE TABLE itens_emprestimo (
id_emprestimo INT,
id_livro INT,
quantidade INT NOT NULL DEFAULT 1 CHECK (quantidade > 0),
PRIMARY KEY (id_emprestimo, id_livro),
FOREIGN KEY (id_emprestimo) REFERENCES emprestimos(id_emprestimo),
FOREIGN KEY (id_livro) REFERENCES livros(id_livro)
);

CREATE VIEW vw_emprestimos AS
SELECT
e.id_emprestimo,
u.nome AS usuario,
l.titulo AS livro,
ie.quantidade,
e.data_emprestimo,
e.data_devolucao,
e.status
FROM emprestimos e
JOIN usuarios u ON e.id_usuario = u.id_usuario
JOIN itens_emprestimo ie ON e.id_emprestimo = ie.id_emprestimo
JOIN livros l ON ie.id_livro = l.id_livro;

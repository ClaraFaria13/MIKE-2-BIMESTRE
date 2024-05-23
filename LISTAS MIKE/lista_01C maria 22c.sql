use avaliacao_22c;

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES("As Crônicas de Nárnia", "C.S. Lewis", 1950, TRUE, "Fantasia", "978-0064471190", "HarperCollins", 768, "Inglês");

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES("Cem Anos de Solidão", "Gabriel Garcia Marquez", 1967, TRUE, "Ficção", "978-0241968581", "Penguin Books", 422, "Espanhol"),
("Harry Potter e a Pedra Filosofal", "J.K. Rowling", 1997, TRUE, "Fantasia", "978-0439708180", "Bloomsbury", 309, "Inglês"),
("O Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, TRUE, "Fantasia", "978-0618640157", "HarperCollins", 423, "Inglês");

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES("História da Humanidade", "Desconhecido", 2007, FALSE, "História", "978-0341968586", "Bloomsbury", 457, "Francês");

UPDATE Livros
SET disponivel = FALSE
WHERE ano_publicacao < 2000;

UPDATE Livros
SET editora = "Plume Books"
WHERE ano_publicacao = 1984;

UPDATE Livros
SET idioma = "Inglês"
WHERE editora = "Penguin Books";

UPDATE Livros
SET titulo = "Harry Potter e a Pedra Filosofal (Edição Especial)"
WHERE isbn = "978-0439708180";

DELETE FROM Livros
WHERE categoria = "Terror";

DELETE FROM Livros
WHERE idioma = "Francês" AND ano_publicacao < 1970;

DELETE FROM Livros
WHERE titulo = "As Crônicas de Nárnia";

DELETE FROM Livros
WHERE editora = "Penguin Books";

SELECT *
FROM Livros
WHERE quantidade_paginas > 500;

SELECT categoria, COUNT(*)
FROM Livros
GROUP BY categoria;

SELECT *
FROM Livros
ORDER BY titulo ASC
LIMIT 5;

SELECT SUM(quantidade_paginas) AS paginas_totais, COUNT(*) AS numero_livros, AVG(quantidade_paginas) AS media_total
FROM Livros
WHERE categoria = "Drama";

SELECT AVG(ano_publicacao) AS media_ano
FROM Livros
WHERE disponivel = TRUE;

SELECT titulo, ano_publicacao
FROM Livros
ORDER BY ano_publicacao DESC
LIMIT 1;

SELECT titulo, ano_publicacao
FROM Livros
ORDER BY ano_publicacao ASC 
LIMIT 1;

SELECT *
FROM Livros
ORDER BY ano_publicacao DESC;

SELECT titulo
FROM Livros
WHERE idioma = "Inglês"

UNION

SELECT titulo 
FROM Livros
WHERE idioma = "Português";

SELECT *
FROM Livros 
WHERE autor = "George Orwell";
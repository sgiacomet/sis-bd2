
USE db_app_db2;

CREATE TABLE livros( id_livro		INT PRIMARY KEY auto_increment 
 				   , titulo       	VARCHAR(100) 
                   , autor          VARCHAR(100)
                   , genero			VARCHAR(50)	
                   , editora		VARCHAR(30) 
                   , classificacao	INT
                   );

INSERT INTO livros VALUES( 1, 'O livro das virtudes para crianças', 'William Bennett','Literatura e Ficção', 'Nova Fronteira', 5);
INSERT INTO livros VALUES( 2, 'Vade Mecum 2022 Saraiva',' ','Direito Profissional e Técnico', 'Saraiva', 5);
INSERT INTO livros VALUES( 3, 'O homem mais rico da Babilônia', 'George S Clason ','Arte para Adolescentes', 'HarperCollins', 5);
INSERT INTO livros VALUES( 4, 'É Assim que Acaba', 'Colleen Hoover','Livros de Romance para Jovens', 'Galera', 5);

select * from livros

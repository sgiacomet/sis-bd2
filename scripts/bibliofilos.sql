CREATE SCHEMA new_db_app_db2;

USE new_db_app_db2;

CREATE TABLE autor ( autor_id 	INT AUTO_INCREMENT PRIMARY KEY
				   , nome		VARCHAR(50) NOT NULL
				   , pais_nasc	VARCHAR(20) NOT NULL
                   , ano_nasc	INT NOT NULL
                   );

INSERT INTO	autor (nome, pais_nasc,ano_nasc) VALUES ('Autor Desconhecido','Brasil',0000 );
INSERT INTO	autor (nome, pais_nasc,ano_nasc) VALUES ('Byung-Chul Han ','Coreia do Sul',1959);
INSERT INTO	autor (nome, pais_nasc,ano_nasc) VALUES ('Paulo Vieira ','Brasil',1968);
INSERT INTO	autor (nome, pais_nasc,ano_nasc) VALUES ('Benjamin Graham ','Inglaterra',1894);
INSERT INTO	autor (nome, pais_nasc,ano_nasc) VALUES ('Kiera Cass ','Estados Unidos',1981);
INSERT INTO	autor (nome, pais_nasc,ano_nasc) VALUES ('J.K. Rowling ','Inglaterra',1965);
INSERT INTO	autor (nome, pais_nasc,ano_nasc) VALUES ('Alex Michaelides ','Chipre',1977);
INSERT INTO	autor (nome, pais_nasc,ano_nasc) VALUES ('William Bennett','Estados Unidos',1943);
INSERT INTO	autor (nome, pais_nasc,ano_nasc) VALUES ('George S Clason','Estados Unidos',1874);
INSERT INTO	autor (nome, pais_nasc,ano_nasc) VALUES ('Colleen Hoover','Estados Unidos',1979);
INSERT INTO	autor (nome, pais_nasc,ano_nasc) VALUES ('Paula Pimenta','Brasil',1975);		
INSERT INTO	autor (nome, pais_nasc,ano_nasc) VALUES ('Thiago Nigro','Brasil',1990);	
INSERT INTO	autor (nome, pais_nasc,ano_nasc) VALUES ('Augusto Cury','Brasil',1958);	
				   			   
                                 
CREATE TABLE livro ( livro_id		INT AUTO_INCREMENT PRIMARY KEY 
 				   , titulo       	VARCHAR(100) NOT NULL
                   , autor_id       INT NOT NULL
                   , genero			VARCHAR(50)	NOT NULL
                   , editora		VARCHAR(30) NOT NULL
                   , classificacao	INT  NOT NULL
                   , formato 		VARCHAR(15) NOT NULL
                   ,CONSTRAINT livro_autor_fk FOREIGN KEY (autor_id) REFERENCES autor (autor_id)
                   ,CONSTRAINT classificacao_chk CHECK ( classificacao >= 0 AND classificacao <=5)
                   );

INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('A paciente silenciosa',7,'Suspense e Mistério','Record',4,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('A paciente silenciosa',7,'Suspense e Mistério','Record',4,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('O investidor inteligente',4,'Finanças e Investimentos ','HarperCollins ',5,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('O investidor inteligente',4,'Finanças e Investimentos ','HarperCollins ',5,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Sociedade do cansaço',2,'Filosofia Política ','Editora Vozes ',5,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Sociedade do cansaço',2,'Filosofia Política ','Editora Vozes ',5,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Novembro_9',10,'Romance para Jovens ','Galera',4,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('É Assim que Acaba',10,'Livros de Romance para Jovens','Galera',5,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('É Assim que Acaba',10,'Livros de Romance para Jovens','Galera',5,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Novembro_9',10,'Romance para Jovens ','Galera',4,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('O homem mais rico da Babilônia',9,'Arte para Adolescentes','HarperCollins',5,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('O homem mais rico da Babilônia',9,'Arte para Adolescentes','HarperCollins',5,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Harry Potter e a Câmara Secreta',6,'Fantasia de Ação e Aventura ','Rocco',5,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Harry Potter e a pedra filosofal',6,'Fantasia de Ação e Aventura ','Rocco',5,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Harry Potter e o prisioneiro de Azkaban',6,'Fantasia de Ação e Aventura ','Rocco',5,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Harry Potter e o cálice de fogo',6,'Fantasia de Ação e Aventura ','Rocco',5,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Harry Potter e a ordem da fênix',6,'Fantasia de Ação e Aventura ','Rocco',5,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Harry Potter e o enigma do príncipe',6,'Fantasia de Ação e Aventura ','Rocco',5,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Harry Potter e as relíquias da morte',6,'Fantasia de Ação e Aventura ','Rocco',5,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Harry Potter e a Câmara Secreta',6,'Fantasia de Ação e Aventura ','Rocco',5,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Harry Potter e a pedra filosofal',6,'Fantasia de Ação e Aventura ','Rocco',5,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Harry Potter e o prisioneiro de Azkaban',6,'Fantasia de Ação e Aventura ','Rocco',5,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Harry Potter e o cálice de fogo',6,'Fantasia de Ação e Aventura ','Rocco',5,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Harry Potter e a ordem da fênix',6,'Fantasia de Ação e Aventura ','Rocco',5,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Harry Potter e o enigma do príncipe',6,'Fantasia de Ação e Aventura ','Rocco',5,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Harry Potter e as relíquias da morte',6,'Fantasia de Ação e Aventura ','Rocco',5,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('A Seleção',5,'Literatura e Ficção ','Seguinte ',5,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('A Seleção',5,'Literatura e Ficção ','Seguinte ',5,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Minha vida fora de série - 1ª temporada',11,'Literatura e Ficção','Gutenberg ',5,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Minha vida fora de série – 2ª temporada',11,'Literatura e Ficção','Gutenberg ',5,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Minha vida fora de série – 3ª temporada',11,'Literatura e Ficção','Gutenberg ',5,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Minha vida fora de série – 4ª temporada',11,'Literatura e Ficção','Gutenberg ',5,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Princesa das águas',11,'Literatura e Ficção','Galera',4,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Cinderela pop',11,'Literatura e Ficção','Galera',4,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Minha vida fora de série - 1ª temporada',11,'Literatura e Ficção','Gutenberg ',5,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Minha vida fora de série – 2ª temporada',11,'Literatura e Ficção','Gutenberg ',5,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Minha vida fora de série – 3ª temporada',11,'Literatura e Ficção','Gutenberg ',5,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Minha vida fora de série – 4ª temporada',11,'Literatura e Ficção','Gutenberg ',5,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Princesa das águas',11,'Literatura e Ficção','Galera',4,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Cinderela pop',11,'Literatura e Ficção','Galera',4,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('O poder da autorresponsabilidade',3,'Motivacional','Gente ',4,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('O poder da autorresponsabilidade',3,'Motivacional','Gente ',4,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('O livro das virtudes para crianças',8,'Literatura e Ficção','Nova Fronteira',5,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('O livro das virtudes para crianças',8,'Literatura e Ficção','Nova Fronteira',5,'digital');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Vade Mecum 2022 Saraiva',1,'Direito Profissional e Técnico','Saraiva',5,'físico');
INSERT INTO	livro (titulo, autor_id, genero, editora, classificacao, formato) VALUES ('Vade Mecum 2022 Saraiva',1,'Direito Profissional e Técnico','Saraiva',5,'digital');


CREATE TABLE leitor ( leitor_id		INT AUTO_INCREMENT PRIMARY KEY 
					, nome       	VARCHAR(100) NOT NULL
					, username      VARCHAR(20) NOT NULL
					);     

INSERT INTO leitor (nome,username) VALUES ('Sandro Giacomet','sgiacomet');
INSERT INTO leitor (nome,username) VALUES ('Eduane Giacomet','eduane.gg');
INSERT INTO leitor (nome,username) VALUES ('Melissa mello','mel_mello');
INSERT INTO leitor (nome,username) VALUES ('Jessica Biondo','jeh1998');
INSERT INTO leitor (nome,username) VALUES ('Fabicio Lacerda','frlacerda');                                     


CREATE TABLE leituras ( leituras_id	INT AUTO_INCREMENT PRIMARY KEY 
 				     , leitor_id   INT NOT NULL
                     , livro_id    INT NOT NULL
                     , CONSTRAINT leituras_leitor_fk FOREIGN KEY(leitor_id) REFERENCES leitor(leitor_id)
                     , CONSTRAINT leitura_livro_fk FOREIGN KEY(livro_id) REFERENCES livro(livro_id)
                     );
                     
INSERT INTO leituras (leitor_id, livro_id) VALUES (5,45);
INSERT INTO leituras (leitor_id, livro_id) VALUES (5,12);
INSERT INTO leituras (leitor_id, livro_id) VALUES (5,41);
INSERT INTO leituras (leitor_id, livro_id) VALUES (1,46);
INSERT INTO leituras (leitor_id, livro_id) VALUES (1,11);
INSERT INTO leituras (leitor_id, livro_id) VALUES (1,41);
INSERT INTO leituras (leitor_id, livro_id) VALUES (2,29);
INSERT INTO leituras (leitor_id, livro_id) VALUES (2,30);
INSERT INTO leituras (leitor_id, livro_id) VALUES (2,31);
INSERT INTO leituras (leitor_id, livro_id) VALUES (2,32);
INSERT INTO leituras (leitor_id, livro_id) VALUES (2,39);
INSERT INTO leituras (leitor_id, livro_id) VALUES (2,40);
INSERT INTO leituras (leitor_id, livro_id) VALUES (3,1);
INSERT INTO leituras (leitor_id, livro_id) VALUES (3,4);
INSERT INTO leituras (leitor_id, livro_id) VALUES (3,41);					 
INSERT INTO leituras (leitor_id, livro_id) VALUES (3,6);

																		
  CREATE TABLE amizades ( leitor1   INT NOT NULL
						, leitor2   INT NOT NULL
						, CONSTRAINT leitor_amizades_leitor1_fk FOREIGN KEY(leitor1) REFERENCES leitor(leitor_id)
						, CONSTRAINT leitor_amizades_leitor2_fk FOREIGN KEY(leitor2) REFERENCES leitor(leitor_id)
                        );
                        
INSERT INTO amizades (leitor1,leitor2) VALUES (1,2);
INSERT INTO amizades (leitor1,leitor2) VALUES (1,3);
INSERT INTO amizades (leitor1,leitor2) VALUES (1,5);
INSERT INTO amizades (leitor1,leitor2) VALUES (5,1);
INSERT INTO amizades (leitor1,leitor2) VALUES (2,1);
INSERT INTO amizades (leitor1,leitor2) VALUES (2,3);
INSERT INTO amizades (leitor1,leitor2) VALUES (2,4);
INSERT INTO amizades (leitor1,leitor2) VALUES (3,1);
INSERT INTO amizades (leitor1,leitor2) VALUES (3,2);
INSERT INTO amizades (leitor1,leitor2) VALUES (4,2);

CREATE TABLE acervo ( nome VARCHAR(40) NOT NULL 
					, leitor_id   INT NOT NULL
                    , livro_id    INT NOT NULL
                    , CONSTRAINT acervo_leitor_fk FOREIGN KEY(leitor_id) REFERENCES leitor(leitor_id)
                    , CONSTRAINT acervo_livro_fk FOREIGN KEY(livro_id) REFERENCES livro(livro_id)
                    );
                                                 
INSERT INTO acervo (nome,leitor_id,livro_id) VALUES ('Coleção Harry Potter', 4,13);
INSERT INTO acervo (nome,leitor_id,livro_id) VALUES ('Coleção Harry Potter', 4,14);
INSERT INTO acervo (nome,leitor_id,livro_id) VALUES ('Coleção Harry Potter', 4,15);
INSERT INTO acervo (nome,leitor_id,livro_id) VALUES ('Coleção Harry Potter', 4,16);
INSERT INTO acervo (nome,leitor_id,livro_id) VALUES ('Coleção Harry Potter', 4,17);
INSERT INTO acervo (nome,leitor_id,livro_id) VALUES ('Coleção Harry Potter', 4,18);
INSERT INTO acervo (nome,leitor_id,livro_id) VALUES ('Coleção Harry Potter', 4,19);                      
INSERT INTO acervo (nome,leitor_id,livro_id) VALUES ('Variados', 1,3); 
INSERT INTO acervo (nome,leitor_id,livro_id) VALUES ('Variados', 1,5); 
INSERT INTO acervo (nome,leitor_id,livro_id) VALUES ('Variados', 1,41); 
INSERT INTO acervo (nome,leitor_id,livro_id) VALUES ('Livros da Duda', 2,29); 
INSERT INTO acervo (nome,leitor_id,livro_id) VALUES ('Livros da Duda', 2,30); 
INSERT INTO acervo (nome,leitor_id,livro_id) VALUES ('Livros da Duda', 2,31); 
INSERT INTO acervo (nome,leitor_id,livro_id) VALUES ('Livros da Duda', 2,32); 
INSERT INTO acervo (nome,leitor_id,livro_id) VALUES ('Livros da Duda', 2,33); 
INSERT INTO acervo (nome,leitor_id,livro_id) VALUES ('Livros da Duda', 2,34);                         
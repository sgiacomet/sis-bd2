
USE db_app_db2;

CREATE TABLE livros( id_livro		INT AUTO_INCREMENT PRIMARY KEY 
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

select * from livros;

ALTER TABLE livros RENAME COLUMN id_livro TO livro_id;


CREATE TABLE leitores ( leitor_id		INT AUTO_INCREMENT PRIMARY KEY 
 				   , nome       	VARCHAR(100) 
                   , username       VARCHAR(20)
                   );               
                                      
INSERT INTO leitores (nome, username) VALUES ('Sandro Giacomet','sgiacomet');
INSERT INTO leitores (nome, username) VALUES ('Eduane Giacomet','eduane.gg');
INSERT INTO leitores (nome,username) VALUES ('Melissa mello','mel_mello');
INSERT INTO leitores (nome,username) VALUES ('Jessica Biondo','jeh1998');
INSERT INTO leitores (nome,username) VALUES ('Fabicio Lacerda','frlacerda');
  
select * from leitores;  
  
CREATE TABLE leituras ( leitura_id	INT AUTO_INCREMENT PRIMARY KEY 
 				     , leitor   INT
                     , livro    INT
                     , CONSTRAINT leitor_fk FOREIGN KEY(leitor) REFERENCES leitores(leitor_id)
                     , CONSTRAINT livro_fk FOREIGN KEY(livro) REFERENCES livros(livro_id)
                     );               
                                      
INSERT INTO leituras (leitor, livro) VALUES (5,2);
INSERT INTO leituras (leitor, livro) VALUES (1,2);
INSERT INTO leituras (leitor, livro) VALUES (2,1);
INSERT INTO leituras (leitor, livro) VALUES (2,3);
INSERT INTO leituras (leitor, livro) VALUES (2,4);
INSERT INTO leituras (leitor, livro) VALUES (3,1);


SELECT nome,titulo 
  FROM leituras
  JOIN leitores AS lt on lt.leitor_id = leituras.leitor
  JOIN livros as li on leituras.livro = li.livro_id;
  
  CREATE TABLE amizades ( leitor1   INT
						, leitor2   INT
						, CONSTRAINT leitor1_fk FOREIGN KEY(leitor1) REFERENCES leitores(leitor_id)
						, CONSTRAINT leitor2_fk FOREIGN KEY(leitor2) REFERENCES leitores(leitor_id)
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



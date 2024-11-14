CREATE TABLE tbquestao (
  idtbquestao INT NOT NULL,
  usuario_mail INTEGER NOT NULL,
  tbquestionario_npagina INTEGER NOT NULL,
  PRIMARY KEY(idtbquestao)
  
);

CREATE TABLE tbquestionario (
  npagina INTEGER NOT NULL,
  questao1 VARCHAR(300) NOT NULL,
  questao2 VARCHAR(300) NOT NULL,
  questao3 VARCHAR(300) NOT NULL,
  respostas BOOL NULL,
  PRIMARY KEY(npagina)
);

CREATE TABLE usuario (
  mail INTEGER NOT NULL,
  nome VARCHAR(45) NULL,
  sobre VARCHAR(45) NULL,
  senha VARCHAR(10) NULL,
  PRIMARY KEY(mail)
);

INSERT INTO tbquestionario (npagina, questao1,questao2, questao3, respostas)
VALUES
(1, 'O Scrum é um framework ágil que pode ser utilizado apenas no desenvolvimento de software','Os sprints no Scrum têm uma duração que varia de uma a quatro semanas.','O principal objetivo do Scrum é seguir estritamente um plano inicial.', false);

--! 

CREATE TABLE tbquestao (
  usuario_mail INTEGER NOT NULL,
  tbquestionario_idquestionario INTEGER NOT NULL,
  PRIMARY KEY(usuario_mail, tbquestionario_idquestionario)
  
);

CREATE TABLE tbquestionario (
  idquestionario INTEGER NOT NULL,
  npagina INTEGER NULL,
  questoes VARCHAR(300) NOT NULL,
  respostas BOOL NULL,
  PRIMARY KEY(idquestionario)
);

CREATE TABLE usuario (
  mail INTEGER NOT NULL,
  nome VARCHAR(45) NULL,
  sobre VARCHAR(45) NULL,
  senha VARCHAR(10) NULL,
  PRIMARY KEY(mail)
);


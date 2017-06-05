-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE PROFESSOR (
siape VARCHAR(10),
horario_prof VARCHAR(10),
cod_pessoa VARCHAR(10)
)

CREATE TABLE PESSOA (
nome VARCHAR(10),
senha VARCHAR(10),
email VARCHAR(10),
cod_pessoa VARCHAR(10) PRIMARY KEY
)

CREATE TABLE PAUTA (
cod_pauta VARCHAR(10) PRIMARY KEY,
situacao VARCHAR(10),
data VARCHAR(10),
cod_turma VARCHAR(10)
)

CREATE TABLE TURMA (
descricao VARCHAR(10),
cod_turma VARCHAR(10) PRIMARY KEY
)

CREATE TABLE DISCIPLINA (
nome VARCHAR(10),
cod_discip VARCHAR(10) PRIMARY KEY,
total_de_aula VARCHAR(10)
)

CREATE TABLE ATIVIDADE (
data VARCHAR(10),
nome VARCHAR(10),
cod_atvd VARCHAR(10) PRIMARY KEY,
cod_discip VARCHAR(10),
FOREIGN KEY(cod_discip) REFERENCES DISCIPLINA (cod_discip)
)

CREATE TABLE ALUNO (
horario_aluno VARCHAR(10),
matricula VARCHAR(10),
cod_pessoa VARCHAR(10),
FOREIGN KEY(cod_pessoa) REFERENCES PESSOA (cod_pessoa)
)

CREATE TABLE AVALIA (
cod_turma VARCHAR(10),
FOREIGN KEY(cod_turma) REFERENCES TURMA (cod_turma)
)

CREATE TABLE disciplina_professor (
cod_discip_prof VARCHAR(10),
cod_discip VARCHAR(10),
cod_pauta VARCHAR(10),
PRIMARY KEY(cod_discip_prof,cod_discip,cod_pauta)
)

CREATE TABLE CONTÉM (
NOTA VARCHAR(10),
cod_atvd VARCHAR(10),
FOREIGN KEY(cod_atvd) REFERENCES ATIVIDADE (cod_atvd)
)

ALTER TABLE PROFESSOR ADD FOREIGN KEY(cod_pessoa) REFERENCES PESSOA (cod_pessoa)
ALTER TABLE PAUTA ADD FOREIGN KEY(cod_turma) REFERENCES TURMA (cod_turma)

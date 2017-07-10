-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE PAUTA (
data VARCHAR(10),
cod_pauta VARCHAR(10) PRIMARY KEY,
situacao VARCHAR(10),
cod_pessoa VARCHAR(10),
cod_turma VARCHAR(10)
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

CREATE TABLE PESSOA_ALUNO_PROFESSOR (
nome VARCHAR(10),
senha VARCHAR(10),
email VARCHAR(10),
cod_pessoa VARCHAR(10) PRIMARY KEY,
matricula VARCHAR(10),
horario_do_aluno VARCHAR(10),
siape VARCHAR(10),
horario_do_professor VARCHAR(10)
)

CREATE TABLE TURMA (
cod_turma VARCHAR(10) PRIMARY KEY,
descricao VARCHAR(10)
)

CREATE TABLE HORARIO (
horario_de_inicio VARCHAR(10),
horario_de_fim VARCHAR(10),
dia_da_semana VARCHAR(10),
data VARCHAR(10),
local VARCHAR(10),
codigo_horario VARCHAR(10) PRIMARY KEY,
cod_discip VARCHAR(10),
cod_pessoa VARCHAR(10),
FOREIGN KEY(cod_discip) REFERENCES DISCIPLINA (cod_discip),
FOREIGN KEY(cod_pessoa) REFERENCES PESSOA_ALUNO_PROFESSOR (cod_pessoa)
)

CREATE TABLE TEM (
NOTA VARCHAR(10),
cod_atvd VARCHAR(10),
cod_pessoa VARCHAR(10),
FOREIGN KEY(cod_atvd) REFERENCES ATIVIDADE (cod_atvd),
FOREIGN KEY(cod_pessoa) REFERENCES PESSOA_ALUNO_PROFESSOR (cod_pessoa)
)

CREATE TABLE AVALIA (
nota VARCHAR(10),
cod_turma VARCHAR(10),
cod_pessoa VARCHAR(10),
FOREIGN KEY(cod_turma) REFERENCES TURMA (cod_turma),
FOREIGN KEY(cod_pessoa) REFERENCES PESSOA_ALUNO_PROFESSOR (cod_pessoa)
)

CREATE TABLE disciplina_professor (
cod_discip_prof VARCHAR(10),
cod_pessoa VARCHAR(10),
cod_discip VARCHAR(10),
cod_pauta VARCHAR(10),
PRIMARY KEY(cod_discip_prof,cod_pessoa,cod_discip,cod_pauta)
)

CREATE TABLE TEM (
codigo_horario VARCHAR(10),
cod_pauta VARCHAR(10),
FOREIGN KEY(codigo_horario) REFERENCES HORARIO (codigo_horario),
FOREIGN KEY(cod_pauta) REFERENCES PAUTA (cod_pauta)
)

ALTER TABLE PAUTA ADD FOREIGN KEY(cod_pessoa) REFERENCES PESSOA_ALUNO_PROFESSOR (cod_pessoa)
ALTER TABLE PAUTA ADD FOREIGN KEY(cod_turma) REFERENCES TURMA (cod_turma)

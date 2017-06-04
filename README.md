# SISTEMA DE AVALIAÇÃO ESCOLAR
Trabalho desenvolvido durante a disciplina de BD

# Sumário

### 1.COMPONENTES<br>
Thainara Amaral<br>
Júlio Cezar <br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>

Este documento contém a especificação do projeto do banco de dados Sistema de Avaliação Escolar e motivação da escolha realizada. <br>

### 3.MINI-MUNDO<br>
Em todo o Brasil é possível observar o ensinamento insatisfatório em salas do ensino médio. Aulas sem didáticas, que dificultam o entendimento do aluno, turmas muito cheias e, até mesmo, alunos indisciplinados prejudicam o rendimento de uma classe inteira. <br>
Com intuito de melhorar as aulas dessas escolas, um sistema de avaliação escolar será desenvolvido. Nesse projeto, os alunos poderão avaliar as aulas e os professores, além de, ter acesso as suas notas e frequência. Os professores também poderão realizar as avaliações dos alunos, porém, essas serão classificadas por séries e turmas.<br>
Além da mobilidade e facilidade de acesso a aplicação também contará com interface de pauta e atividades com notas, onde os docentes poderão se manter melhores organizados sem necessitar realizar trabalhos manuais.<br>
Para o primeiro acesso será necessário o cadastro do usuário, que deverá informar dados básicos como nome, matrícula, que será cedido pela escola em que se encontra matriculado, ou o siape do professor, e-mail, telefone, senha e o tipo de usuário.<br>
O sistema tem como principal função avaliar turmas, disciplinas e professores. Para isso será gerado relatórios que terão como base as avaliações feitas. Com isso, a escola poderá se reunir com o corpo docente e tomar novas medidas de ensino.
<br>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

https://github.com/thainaraamaral/Trabalho01/blob/master/Sistema%2BEscolar.pdf <br>

### 5.MODELO CONCEITUAL<br>
![Alt text](ModeloConceitual.jpg) <br>
    
    b) NOTACAO UML (Caso esteja fazendo a disciplina de analise)

#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
Disciplina_professor : A relação disciplina_professor possui um atributo identificador (cod_discip_prof) para relacionar o professor e a disciplina, ligando os dois diretamente a pauta
<br>
Pauta: A pauta é um relacionamento entre relações que vira uma entidade associativa e foi utilizada pois necessitava interligar relações que geraria uma nova tabela. Na mesma conterá informações relativa a pauta, turma e disciplinas.

#### 5.3 DESCRIÇÃO DOS DADOS <br>

DISCIPLINA: Tabela para o armazenamento de informações sobre a disciplina.<br>
Nome: Campo que armazena o nome para cada disciplina.<br>
Total de Aulas: Campo que armazena o número total de aulas das disciplinas.<br>
Código da Disciplina: Campo que armazena o código referente a disciplina.<br>

ATIVIDADE: Tabela para o armazenamento de informações relativas as atividades.<br>
Data: Campo que armazena a data para as atividades.<br>
Nome: Campo que armazena o nome para cada atividade.<br>
Código da Atividade: Campo que armazena o código referente a atividade.<br>

TURMA: Tabela para o armazenamento de informações relativas as turmas.<br>
Descrição: Campo que armazena a descrição e o detalhamento da turma.<br>
Código da turma: Campo que armazena o código referente a turma.<br>

PESSOA: Tabela para o armazenamento de informações relativas as pessoas que compõem o sistema.<br>
E-mail: Campo que armazena os e-mails das pessoas do sistema.<br>
Nome: Campo que armazena os nomes das pessoas do sistema.<br>
Senha: Campo que armazena as senhas das pessoas do sistema.<br>
Código da Pessoa: Campo que armazena o código para diferenciação de pessoa, o código referente as pessoas.<br>

ALUNO: Tabela para o armazenamento de informações relativas aos alunos que compõem o sistema e diferenciação entre alunos e professores.<br>
Matricula: Campo que armazena as matriculas dos alunos.<br>
Horário: Campo que armazena os horários referentes aos alunos.<br>
PROFESSOR: Tabela para o armazenamento de informações relativas aos professores que compõem o sistema e diferenciação entre alunos e professores.<br>
Siape: Campo que armazena o Siape referente a cada professor.<br>
Horário: Campo que armazena os horários referentes aos professores.<br>

PAUTA: Tabela para o armazenamento de informações relativas a listagem de elementos.<br>
Código da Pauta: Campo que armazena o código referente a pauta e identifica a pauta de cada turma.<br>
Situação: Campo que armazena a frequência dos alunos.<br>
Data: Campo que armazena as datas das pautas.<br>


### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/thainaraamaral/Trabalho01/blob/master/Modelo%20L%C3%B3gico.jpg "Modelo Lógico")

### 7	MODELO FÍSICO<br>

CREATE TABLE PAUTA (
situacao VARCHAR(10),
data VARCHAR(10),
cod_pauta VARCHAR(10) PRIMARY KEY,
cod_pessoa VARCHAR(10),
cod_turma VARCHAR(10)
)

CREATE TABLE AVALIA (
cod_turma VARCHAR(10),
cod_pessoa VARCHAR(10)
)

CREATE TABLE PESSOA_ALUNO_PROFESSOR (
nome VARCHAR(10),
senha VARCHAR(10),
email VARCHAR(10),
cod_pessoa VARCHAR(10) PRIMARY KEY,
horario VARCHAR(10),
matricula VARCHAR(10),
siape VARCHAR(10),
-- Erro: nome do campo duplicado nesta tabela!
horario VARCHAR(10)
)

CREATE TABLE TURMA (
cod_turma VARCHAR(10) PRIMARY KEY,
descricao VARCHAR(10)
)

CREATE TABLE disciplina_professor (
cod_discip_prof VARCHAR(10),
cod_pessoa VARCHAR(10),
cod_discip VARCHAR(10),
cod_pauta VARCHAR(10),
PRIMARY KEY(cod_discip_prof,cod_pessoa,cod_discip,cod_pauta)
)

CREATE TABLE DISCIPLINA (
nome VARCHAR(10),
cod_discip VARCHAR(10) PRIMARY KEY,
total_de_aula VARCHAR(10)
)

CREATE TABLE REALIZA (
NOTA VARCHAR(10),
cod_atvd VARCHAR(10),
cod_pessoa VARCHAR(10),
FOREIGN KEY(cod_pessoa) REFERENCES PESSOA_ALUNO_PROFESSOR (cod_pessoa)
)

CREATE TABLE ATIVIDADE (
data VARCHAR(10),
nome VARCHAR(10),
cod_atvd VARCHAR(10) PRIMARY KEY,
cod_discip VARCHAR(10),
FOREIGN KEY(cod_discip) REFERENCES DISCIPLINA (cod_discip)
)

ALTER TABLE PAUTA ADD FOREIGN KEY(cod_pessoa) REFERENCES PESSOA_ALUNO_PROFESSOR (cod_pessoa)
ALTER TABLE PAUTA ADD FOREIGN KEY(cod_turma) REFERENCES TURMA (cod_turma)
ALTER TABLE AVALIA ADD FOREIGN KEY(cod_turma) REFERENCES TURMA (cod_turma)
ALTER TABLE AVALIA ADD FOREIGN KEY(cod_pessoa) REFERENCES PESSOA_ALUNO_PROFESSOR (cod_pessoa)
ALTER TABLE REALIZA ADD FOREIGN KEY(cod_atvd) REFERENCES ATIVIDADE (cod_atvd)

        Entrega até este ponto em (data a ser definida)
        
 
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        c) inclusão das instruções para execução de outros procedimentos necessários


        Entrega até este ponto em (data a ser definida)
        
### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
select * from empregado<br><br>
![Alt text](https://github.com/thainaraamaral/Trabalho01/blob/master/tabela_empregado.png?raw=true "Title")

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
        Entrega até este ponto em (data a ser definida)
        
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
#### 9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>
#### 9.10	SUBCONSULTAS (Mínimo 3) <br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

        Entrega até este ponto em (data a ser definida)
        
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

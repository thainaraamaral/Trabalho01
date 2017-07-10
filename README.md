# SISTEMA DE AVALIAÇÃO ESCOLAR
Trabalho desenvolvido durante a disciplina de Banco de Dados.

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
![Alt text](Modelo_Conceitual_01.jpg) <br>
    
    b) NOTACAO UML (Caso esteja fazendo a disciplina de analise)

#### 5.1 Validação do Modelo Conceitual
  Grupo 1: Milena Gomes e Luiza Alves <br>
  Grupo 2: Gabriel Novaes e Sabrina Leal <br>

#### 5.2 DECISÕES DE PROJETO
Disciplina_professor : A relação disciplina_professor possui um atributo identificador (cod_discip_prof) para relacionar o professor e a disciplina, ligando os dois diretamente a pauta.
<br>
Pauta: A pauta é um relacionamento entre relações que vira uma entidade associativa e foi utilizada pois necessitava interligar relações que geraria uma nova tabela. Na mesma conterá informações relativa a pauta, turma e disciplinas.

#### 5.3 DESCRIÇÃO DOS DADOS <br>

DISCIPLINA: Tabela para o armazenamento de informações sobre a disciplina.<br>
<BR>
Nome: Campo que armazena o nome para cada disciplina.<br>
<BR>
Total de Aulas: Campo que armazena o número total de aulas das disciplinas.<br>
<BR>
Código da Disciplina: Campo que armazena o código referente a disciplina.<br>
<BR>
ATIVIDADE: Tabela para o armazenamento de informações relativas as atividades.<br>
<BR>
Data: Campo que armazena a data para as atividades.<br>
<BR>
Nome: Campo que armazena o nome para cada atividade.<br>
<BR>
Código da Atividade: Campo que armazena o código referente a atividade.<br>
<BR>
TURMA: Tabela para o armazenamento de informações relativas as turmas.<br>
<BR>
Descrição: Campo que armazena a descrição e o detalhamento da turma.<br>
<BR>
Código da turma: Campo que armazena o código referente a turma.<br>
<BR>
PESSOA: Tabela para o armazenamento de informações relativas as pessoas que compõem o sistema.<br>
<BR>
E-mail: Campo que armazena os e-mails das pessoas do sistema.<br>
<BR>
Nome: Campo que armazena os nomes das pessoas do sistema.<br>
<BR>
Senha: Campo que armazena as senhas das pessoas do sistema.<br>
<BR>
Código da Pessoa: Campo que armazena o código para diferenciação de pessoa, o código referente as pessoas.<br>
<BR>
ALUNO: Tabela para o armazenamento de informações relativas aos alunos que compõem o sistema.<br>
<BR>
Matricula: Campo que armazena as matriculas dos alunos.<br>
<BR>
Horário: Campo que armazena os horários referentes aos alunos.<br>
<BR>
PROFESSOR: Tabela para o armazenamento de informações relativas aos professores que compõem o sistema.<br>
<BR>
Siape: Campo que armazena o Siape referente a cada professor.<br>
<BR>
Horário: Campo que armazena os horários referentes aos professores.<br>
<BR>
PAUTA: Tabela para o armazenamento de informações relativas a listagem de elementos.<br>
<BR>
Código da Pauta: Campo que armazena o código referente a pauta e identifica a pauta de cada turma.<br>
<BR>
Situação: Campo que armazena a frequência dos alunos.<br>
<BR>
Data: Campo que armazena as datas das pautas.<br>
<BR>
HORÁRIO: Tabela para o armazenamento de informações relativas aos horários e datas.<br>
<BR>
Horário de Início: Campo que armazena os horários iniciais das aulas.<br>
<BR>
Horário de Fim: Campo que armazena os horários ide finalização das aulas.<br>
<BR>
Dia da Semana: Campo que armazena os dias da semana.<br>
<BR>
Local: Campo que armazena o local das aulas.<br>
<BR>
Data: Campo que armazena as datas para as aulas.<br>
<BR>
Código Horário: Campo que armazena o código referente ao horário.<br>


### 6	MODELO LÓGICO<br>
![Alt text](Modelo_Lógico_02.jpg)

### 7	MODELO FÍSICO<br>

https://github.com/thainaraamaral/Trabalho01/blob/master/MODELO%20F%C3%8DSICO.sql 
<br>    
 
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo par
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS

CRIAÇÃO DE TABELA :
<BR>
CREATE TABLE PESSOA(
COD_PESSOA INT NOT NULL,
NOME VARCHAR(45),
SENHA VARCHAR(10),
EMAIL VARCHAR (45),
PRIMARY KEY (COD_PESSOA));
<BR> <BR>
INSERÇÃO DE DADOS NA TABELA:
<BR>
INSERT INTO PESSOA (COD_PESSOA,NOME,SENHA,EMAIL)
VALUES (001,'ANA','IFES2017','ANA.BD@GMAIL.COM'),
(002,'BIA','IFES2017','BIA.BD@GMAIL.COM');
 <BR><BR>
 
### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

SELECT*FROM PESSOAS; <BR> <BR>
![Alt text](https://github.com/thainaraamaral/Trabalho01/blob/master/SELECT%20FROM%20PESSOA.png)

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

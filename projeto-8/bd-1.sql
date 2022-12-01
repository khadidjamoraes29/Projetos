create database projeto6;
show databases;
use projeto6;

CREATE TABLE SESSAO(
Cod_Sessao integer not null,
Descricao varchar(50) not null,
Localizacao varchar(50) not null,
primary key(Cod_Sessao)
);

CREATE TABLE EMPRESTIMO(
Cod_Emprestimo integer not null,
Data_hora datetime not null,
Matric_Aluno integer not null,
Data_Devolucao date not null,
primary key(Cod_Emprestimo)
);

CREATE TABLE LIVRO(
Titulo varchar(50) not null,
Cod_Livro integer not null,
Cod_Sessao integer not null,
Nome_Autor varchar(50) not null,
primary key(Cod_Livro),
constraint fk_livro_sessao foreign key (Cod_Sessao) references SESSAO(Cod_Sessao)
);

CREATE TABLE ALUNO(
ID integer not null,
Nome_Aluno varchar(50) not null,
Matric_Aluno integer not null,
Email varchar(50) not null,
Endereco varchar(50) not null,
Telefone integer not null,
primary key(ID)
);	

CREATE TABLE LIVRO_EMPRESTIMO(
Cod_Livro integer not null,
Cod_Emprestimo integer not null,
primary key(Cod_Livro, Cod_Emprestimo),
constraint fk_livro_livro_emprestimo foreign key (Cod_Livro) references LIVRO(Cod_Livro),
constraint fk_livro_emprestimo_emprestimo foreign key (Cod_Emprestimo) references EMPRESTIMO(Cod_Emprestimo)
);

ALTER TABLE ALUNO ADD Data_Nascimento varchar(10) not null;
ALTER TABLE ALUNO CHANGE Telefone Contato varchar(15) not null;
ALTER TABLE LIVRO ADD ISBN integer not null;
ALTER TABLE LIVRO DROP COLUMN ISBN;




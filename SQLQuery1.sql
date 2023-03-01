CREATE DATABASE bdUniversidade
GO bdUniversidade

USE bdUnivesidade

CREATE  TABLE  tbProfessor (
	idProfessor INT IDENTIDADE  DA CHAVE PRIMÁRIA ( 1 , 1 )
	,nomeProfessor VARCHAR ( 30 ) NOT NULL
	,dtNascProfessor DATE  NOT NULL
	,rgProfessor VARCHAR ( 15 ) NÃO NULO
)

CRIAR  TABELA  tbDisciplina (
	idDisciplina INT  PRIMARY KEY IDENTITY( 1 , 1 )
	,nomeDisciplina VARCHAR ( 50 ) NOT NULL
	,cargaHorariaDisciplina TEMPO  NÃO NULO
)

	CRIAR  TABELA  tbCampus (
	idCampus INT IDENTIDADE  DA CHAVE PRIMÁRIA ( 1 , 1 )
	,nomeCampus VARCHAR ( 30 ) NÃO NULO
)

CREATE  TABLE  tbCurso (
	idCurso INT IDENTIDADE  DA CHAVE PRIMÁRIA ( 1 , 1 )
	,nomeCurso VARCHAR ( 35 ) NOT NULL
	,cargaHorariaCurso TEMPO  NÃO NULO
)

CRIAR  TABELA  tbAluno (
	idAluno INT IDENTIDADE  DA CHAVE PRIMÁRIA ( 1 , 1 )
	,nomeAluno VARCHAR ( 30 ) NOT NULL
	,dtNascAluno DATE  NOT NULL
	,cpfAluno CHAR ( 14 ) NÃO NULO
)

CRIAR  TABELA  tbTurma (
	idTurma INT IDENTIDADE  DA CHAVE PRIMÁRIA ( 1 , 1 )
	,descricaoTurma VARCHAR ( 100 ) NOT NULL
	,numAlunos INT  NOT NULL
	,semestre CHAR ( 2 ) NÃO NULO
	,anoFormacao DATE  NOT NULL
	,numSala VARCHAR ( 2 ) NOT NULL
	,idCurso INT  REFERÊNCIAS DE CHAVES ESTRANGEIRAS  tbCurso(idCurso)
	,idCampus INT  REFERÊNCIAS DE CHAVES ESTRANGEIRAS  tbCampus(idCampus)
)

CREATE  TABLE  tbMatricula (
	idMatricula INT IDENTIDADE  DA CHAVE PRIMÁRIA ( 1 , 1 )
	,dtMatricula DATE  NOT NULL
	,idAluno INT  REFERÊNCIAS DE CHAVES ESTRANGEIRAS  tbAluno(idAluno)
	,idTurma INT  REFERÊNCIAS DE CHAVES ESTRANGEIRAS  tbTurma(idTurma)
)

CREATE  TABLE  tbAtribuição (
	idAtribuicao INT  PRIMARY KEY IDENTITY( 1 , 1 )
	,dataAtribuição DATE  NOT NULL
	,idProfessor INT  FOREIGN KEY  REFERENCES tbProfessor(idProfessor)
	,idTurma INT  REFERÊNCIAS DE CHAVES ESTRANGEIRAS  tbTurma(idTurma)
	,idDisciplina INT  FOREIGN KEY  REFERENCES tbDisciplina(idDisciplina)
)
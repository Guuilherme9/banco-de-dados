CREATE DATABASE bdUniversidade
GO bdUniversidade

USE bdUnivesidade

CREATE  TABLE  tbProfessor (
	idProfessor INT IDENTIDADE  DA CHAVE PRIM�RIA ( 1 , 1 )
	,nomeProfessor VARCHAR ( 30 ) NOT NULL
	,dtNascProfessor DATE  NOT NULL
	,rgProfessor VARCHAR ( 15 ) N�O NULO
)

CRIAR  TABELA  tbDisciplina (
	idDisciplina INT  PRIMARY KEY IDENTITY( 1 , 1 )
	,nomeDisciplina VARCHAR ( 50 ) NOT NULL
	,cargaHorariaDisciplina TEMPO  N�O NULO
)

	CRIAR  TABELA  tbCampus (
	idCampus INT IDENTIDADE  DA CHAVE PRIM�RIA ( 1 , 1 )
	,nomeCampus VARCHAR ( 30 ) N�O NULO
)

CREATE  TABLE  tbCurso (
	idCurso INT IDENTIDADE  DA CHAVE PRIM�RIA ( 1 , 1 )
	,nomeCurso VARCHAR ( 35 ) NOT NULL
	,cargaHorariaCurso TEMPO  N�O NULO
)

CRIAR  TABELA  tbAluno (
	idAluno INT IDENTIDADE  DA CHAVE PRIM�RIA ( 1 , 1 )
	,nomeAluno VARCHAR ( 30 ) NOT NULL
	,dtNascAluno DATE  NOT NULL
	,cpfAluno CHAR ( 14 ) N�O NULO
)

CRIAR  TABELA  tbTurma (
	idTurma INT IDENTIDADE  DA CHAVE PRIM�RIA ( 1 , 1 )
	,descricaoTurma VARCHAR ( 100 ) NOT NULL
	,numAlunos INT  NOT NULL
	,semestre CHAR ( 2 ) N�O NULO
	,anoFormacao DATE  NOT NULL
	,numSala VARCHAR ( 2 ) NOT NULL
	,idCurso INT  REFER�NCIAS DE CHAVES ESTRANGEIRAS  tbCurso(idCurso)
	,idCampus INT  REFER�NCIAS DE CHAVES ESTRANGEIRAS  tbCampus(idCampus)
)

CREATE  TABLE  tbMatricula (
	idMatricula INT IDENTIDADE  DA CHAVE PRIM�RIA ( 1 , 1 )
	,dtMatricula DATE  NOT NULL
	,idAluno INT  REFER�NCIAS DE CHAVES ESTRANGEIRAS  tbAluno(idAluno)
	,idTurma INT  REFER�NCIAS DE CHAVES ESTRANGEIRAS  tbTurma(idTurma)
)

CREATE  TABLE  tbAtribui��o (
	idAtribuicao INT  PRIMARY KEY IDENTITY( 1 , 1 )
	,dataAtribui��o DATE  NOT NULL
	,idProfessor INT  FOREIGN KEY  REFERENCES tbProfessor(idProfessor)
	,idTurma INT  REFER�NCIAS DE CHAVES ESTRANGEIRAS  tbTurma(idTurma)
	,idDisciplina INT  FOREIGN KEY  REFERENCES tbDisciplina(idDisciplina)
)
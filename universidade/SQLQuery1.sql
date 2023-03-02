CREATE DATABASE bdUniversidade


USE bdUniversidade
CREATE  TABLE  tbProfessor (
	idProfessor INT PRIMARY KEY IDENTITY(1,1)
	,nomeProfessor VARCHAR ( 30 ) NOT NULL
	,dtNascProfessor SMALLDATETIME  NOT NULL
	,rgProfessor VARCHAR ( 15 ) NOT NULL
	,cpfProfessor CHAR (11) NOT NULL
)
CREATE TABLE tbDisciplina (
	idDisciplina INT PRIMARY KEY IDENTITY(1,1)
	,nomeDisciplina VARCHAR ( 50 ) NOT NULL
	,cargaHorariaDisciplina SMALLDATETIME NOT NULL
)
CREATE TABLE tbCampus (
	idCampus INT PRIMARY KEY IDENTITY ( 1,1 )
	,nomeCampus VARCHAR ( 30 ) NOT NULL
)
CREATE TABLE  tbCurso (
	idCurso INT PRIMARY KEY IDENTITY(1,1)
	,nomeCurso VARCHAR ( 35 ) NOT NULL
	,cargaHorariaCurso SMALLDATETIME NOT NULL
)

CREATE TABLE  tbAluno (
	idAluno INT PRIMARY KEY IDENTITY(1,1)
	,nomeAluno VARCHAR ( 30 ) NOT NULL
	,dtNascAluno SMALLDATETIME  NOT NULL
	,cpfAluno CHAR ( 14 ) NOT NULL
	,rgAluno VARCHAR (15) NOT NULL
	,logAluno VARCHAR (100) NOT NULL
	,sexoAluno VARCHAR (20) NOT NULL
)
CREATE TABLE tbFone (
	idFone INT PRIMARY KEY IDENTITY (1,1)
	,foneAluno CHAR (20) NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
	
)
CREATE TABLE tbTurma (
	idTurma INT PRIMARY KEY IDENTITY(1,1)
	,descricaoTurma VARCHAR ( 100 ) NOT NULL
	,numAlunos VARCHAR (10)  NOT NULL
	,semestre CHAR ( 2 ) NOT NULL
	,anoFormacao SMALLDATETIME  NOT NULL
	,numSala VARCHAR ( 2 ) NOT NULL
	,idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
	,idCampus INT FOREIGN KEY REFERENCES tbCampus(idCampus)
)

CREATE TABLE  tbMatricula (
	idMatricula INT PRIMARY KEY IDENTITY(1,1)
	,dtMatricula SMALLDATETIME  NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma)
)

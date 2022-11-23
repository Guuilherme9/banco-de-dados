
CREATE DATABASE bdEstoque
GO

USE bdEstoque

CREATE TABLE tbCliente(
	codCliente INT PRIMARY KEY IDENTITY (1,1) NOT NULL
	,nomeCliente VARCHAR (50) NOT NULL 
	,cpfCliente CHAR(14) NOT NULL
	,emailCliente VARCHAR (50) NOT NULL
	,sexoCliente VARCHAR (10) NOT NULL 
	,dataNascimento SMALLDATETIME NOT NULL 
)
CREATE TABLE tbFabricante(
	codFabricante INT PRIMARY KEY IDENTITY (1,1) NOT NULL 
	,nomeFabricante VARCHAR (30) NOT NULL
)
CREATE TABLE tbFornecedor(
	codFornecedor INT PRIMARY KEY IDENTITY (1,1)
	,nomeFornecedor VARCHAR (50)
	,contatoFornecedor VARCHAR (50)
)
CREATE TABLE tbProduto(
	codProduto INT PRIMARY KEY IDENTITY (1,1)
	,descricaoProduto VARCHAR (50)
	,valorProduto SMALLMONEY NOT NULL
	,quantidadeProduto INT NOT NULL
	,codFabricante INT FOREIGN KEY REFERENCES tbFabricante(codFabricante)
	,codFornecedor INT FOREIGN KEY REFERENCES tbFornecedor(codFornecedor)
)
CREATE TABLE tbVenda(
	codVenda INT PRIMARY KEY IDENTITY(1,1)
	,dataVenda SMALLDATETIME NOT NULL
	,valorTotalVenda SMALLMONEY NOT NULL
	,codCliente INT FOREIGN KEY REFERENCES tbCliente(codCliente)
)

CREATE TABLE tbItensVenda(
	codItensVenda INT PRIMARY KEY IDENTITY (1,1)
	,codVenda INT FOREIGN KEY REFERENCES tbVenda(codVenda)
	,codProduto INT FOREIGN KEY REFERENCES tbProduto(codProduto)
	,quantidadeItensVenda INT NOT NULL
	,subTotalItensVenda SMALLMONEY NOT NULL
)


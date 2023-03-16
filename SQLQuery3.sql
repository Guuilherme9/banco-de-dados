USE bdEstoque

-- Listar as descri��es dos produtos ao lado do nome dos fabricantes;

SELECT codProduto, descricaoProduto, valorProduto, nomeFabricante
	FROM tbProduto
		INNER JOIN tbFabricante
			ON tbProduto. codFabricante =tbFabricante.codFabricante



--Listar as descri��es dos produtos ao lado do nome dos fornecedores;

SELECT codProduto, descricaoProduto, valorProduto, nomeFornecedor
	FROM tbProduto
		INNER JOIN tbFornecedor
			ON tbProduto. codFornecedor =tbFornecedor.codFornecedor
	



--Listar a soma das quantidades dos produtos agrupadas pelo nome do fabricante;

--Listar o total das vendas ao lado do nome do cliente;

--Listar a m�dia dos pre�os dos produtos agrupados pelo nome do fornecedor;

--Listar todas a soma das vendas agrupadas pelo nome do cliente em ordem alfab�tica;

--Listar a soma dos pre�os dos produtos agrupados pelo nome do fabricante;

--Listar a m�dia dos pre�os dos produtos agrupados pelo nome do fornecedor

--Listar a soma das vendas agrupadas pelo nome do produto

--Listar a soma das vendas pelo nome do cliente somente das vendas realizadas em fevereiro de 2014
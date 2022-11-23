USE bdEstoque

--11
SELECT SUM(valorTotalVenda) 'Somatoria dos preços' FROM tbVenda
WHERE YEAR(dataVenda)= 2014 AND MONTH(dataVenda) BETWEEN 2 and 3

--12
SELECT SUM(valorProduto) 'Somatoria' FROM tbProduto
WHERE descricaoProduto LIKE 'Amaciante%'

--13
SELECT MAX(valorProduto) 'Max' FROM tbProduto

--14
SELECT AVG(valorProduto) 'Preço Médio' FROM tbProduto
WHERE codFabricante = 1

--15
SELECT AVG(valorProduto) 'Amaciante' FROM tbProduto
WHERE descricaoProduto LIKE 'Amaciante%'	

--17
SELECT COUNT(codProduto) FROM tbProduto
WHERE codFabricante <>1

--18.
SELECT AVG(valorProduto) FROM tbProduto
WHERE quantidadeProduto>1000 AND codFabricante = 1

--19
SELECT AVG(valorProduto) FROM tbProduto
WHERE quantidadeProduto<800 AND codFabricante = 1

--20
SELECT AVG(valorTotalVenda) 'Preço Médio' FROM tbVenda
WHERE YEAR (dataVenda)= 2014


-- VALIDAÇÃO DE FK
INSERT INTO pedido (data, id_cliente) VALUES ('2025-05-18', 999); -- ERRO: FOREIGN KEY

-- VERIFICAR A QTD DE REGISTRO POR TABELA
SELECT 'cliente', COUNT(*) FROM cliente;
SELECT 'fornecedor', COUNT(*) FROM fornecedor;
SELECT 'remedio', COUNT(*) FROM remedio;
SELECT 'produtos_fornecedor', COUNT(*) FROM produtos_fornecedor;
SELECT 'pedido', COUNT(*) FROM pedido;
SELECT 'lista_compra', COUNT(*) FROM lista_compra;

-- VERIFICANDO O TAMANHO DO CPF
SELECT * FROM cliente WHERE LENGTH(cpf) != 11;

-- VERIFICANDO O CNPJ
SELECT * FROM fornecedor WHERE LENGTH(cnpj) != 14;

-- VERIFICAR SE OS PRODUTOS FORNECEDOR REFERENCIA OS REMEDIOS E FORNECEDORES CORRETOS
SELECT * FROM produtos_fornecedor pf
LEFT JOIN remedio r ON pf.id_remedio = r.id_remedio
WHERE r.id_remedio IS NULL;

SELECT * FROM produtos_fornecedor pf
LEFT JOIN fornecedor f ON pf.id_fornecedor = f.id_fornecedor
WHERE f.id_fornecedor IS NULL;

-- Verificar se todos os pedidos têm clientes válidos
SELECT * FROM pedido p
LEFT JOIN cliente c ON p.id_cliente = c.id_cliente
WHERE c.id_cliente IS NULL;

-- Verificar se todos os itens de lista_compra têm pedidos e remédios válidos
SELECT * FROM lista_compra l
LEFT JOIN pedido p ON l.id_pedido = p.id_pedido
WHERE p.id_pedido IS NULL;

SELECT * FROM lista_compra l
LEFT JOIN remedio r ON l.id_remedio = r.id_remedio
WHERE r.id_remedio IS NULL;

-- LISTAR TODOS OS CLIENTES QUE JA FIZERAM ALGUM PEDIDO
SELECT cliente.nome, cliente.cpf, COUNT(pedido.id_pedido) AS total_pedidos
FROM cliente
JOIN pedido ON cliente.id_cliente = pedido.id_cliente
GROUP BY cliente.nome, cliente.cpf;

-- LISTAR FORNECEDORES QUE FORNECEM MAIS DE UMA MEDICACAO
SELECT f.nome, COUNT(DISTINCT pf.id_remedio) AS total_remedios
FROM fornecedor f
JOIN produtos_fornecedor pf ON f.id_fornecedor = pf.id_fornecedor
GROUP BY f.id_fornecedor
HAVING total_remedios > 1;

-- QTD REMEDIOS QUE NECESSITAM DE RECEITA
SELECT SUM(qtd) AS total_com_receita
FROM lista_compra
WHERE possui_receita = 1;

-- REMEDIO MAIS VENDIDO
SELECT r.nome, SUM(lc.qtd) AS total_vendido
FROM lista_compra lc
JOIN remedio r ON lc.id_remedio = r.id_remedio
GROUP BY r.id_remedio
ORDER BY total_vendido DESC
LIMIT 1;
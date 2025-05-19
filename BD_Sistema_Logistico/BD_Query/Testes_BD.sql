-- Mostrar todos os lotes com nome do fabricante, fornecedor e produto
SELECT lote.numero, lote.quantidade, fabricante.nome, fornecedor.nome
FROM lote
JOIN fabricante ON lote.id_fabricante = fabricante.id_fabricante
JOIN fornecedor on lote.id_fornecedor = fornecedor.id_fornecedor;

-- Listar produtos que possuem lotes com quantidade maior que 150
SELECT produto.nome
FROM lote
JOIN produto ON lote.id_produto = produto.id_produto
WHERE lote.quantidade > 150;

-- Inserir um novo lote com dados válidos
INSERT INTO lote (numero, quantidade, id_fabricante, id_fornecedor, id_produto)
VALUES ('L006', 120, 1, 2, 3);

-- Atualizar a quantidade do lote 'L003' para 180
UPDATE lote SET quantidade = 180 WHERE numero = 'L003';

-- Mostrar todos os lotes com o nome do produto, fabricante e fornecedor
SELECT lote.numero, produto.nome AS todos_os_produtos, fabricante.nome AS fabricante,
fornecedor.nome AS fornecedor, lote.quantidade
FROM lote
JOIN produto ON lote.id_produto = produto.id_produto
JOIN fabricante ON lote.id_fabricante = fabricante.id_fabricante
JOIN fornecedor ON lote.id_fornecedor = fornecedor.id_fornecedor;

-- Listar produtos que têm lotes fornecidos pelo fornecedor 'Fornecedor B'
SELECT DISTINCT fornecedor.nome, produto.nome, lote.quantidade
FROM lote
JOIN produto ON lote.id_produto = produto.id_produto
JOIN fornecedor ON lote.id_fornecedor = fornecedor.id_fornecedor
WHERE fornecedor.nome = 'Fornecedor B';
-- Mostrar todos os pedidos com nome do cliente e valor total
SELECT cliente.nome, pedido.valor_total, pedido.data, pedido.hora
FROM pedido
JOIN cliente ON pedido.id_cliente = cliente.id_cliente;

-- Exibir catálogo com nome da pizza, tamanho e valor
SELECT tamanho.tipo, catalogo.valor, pizza.nome
FROM catalogo
JOIN tamanho ON catalogo.id_tamanho = tamanho.id_tamanho
join pizza ON catalogo.id_pizza = pizza.id_pizza;

-- Relatório de pedidos por cliente (quantidade e total gasto)
SELECT 
cliente.nome AS nome_cliente,
COUNT(pedido.id_pedido) AS total_de_pedidos,
SUM(pedido.valor_total) AS total_gasto
FROM cliente
LEFT JOIN pedido ON cliente.id_cliente = pedido.id_cliente
GROUP BY cliente.nome
ORDER BY total_gasto DESC;


-- Relatório de vendas por data (total e número de pedidos)
SELECT 
  pedido.data,
  COUNT(pedido.id_pedido) AS total_de_pedidos,
  SUM(pedido.valor_total) AS valor_total_vendido
FROM pedido
GROUP BY pedido.data
ORDER BY pedido.data;

-- Relatório de faturamento por tamanho de pizza
SELECT 
  tamanho.tipo AS tipo_tamanho,
  SUM(transacao.qtd * catalogo.valor) AS faturamento_total
FROM transacao
JOIN catalogo ON transacao.id_tamanho = catalogo.id_tamanho
JOIN tamanho ON catalogo.id_tamanho = tamanho.id_tamanho
GROUP BY tamanho.tipo
ORDER BY faturamento_total DESC;

-- Visualiza todas as tabelas
SELECT * FROM conserto;
SELECT * FROM peca_conserto;
SELECT * FROM peca;
SELECT * FROM funcionario;
SELECT * FROM automovel;

-- Lista a descrição da peça e a quantidade usada no pedido
SELECT pedido.id_pedido, peca.descricao, transacao.qtd
FROM transacao
JOIN peca ON transacao.id_peca = peca.id_peca
JOIN pedido ON transacao.id_pedido = pedido.id_pedido;

-- Lista o nome do cliente e os dados do automóvel
SELECT cliente.nome, automovel.id_cor, automovel.id_modelo, automovel.placa
FROM cliente
JOIN automovel ON cliente.id_cliente = automovel.id_cliente;

-- Mostra o nome do funcionário e a data/hora do conserto que ele realizou
SELECT conserto.data_hora, funcionario.nome
FROM conserto
JOIN funcionario ON conserto.id_funcionario = funcionario.id_funcionario;

-- Lista a placa e o tipo da categoria do automóvel
SELECT automovel.placa, categoria.tipo
FROM automovel
JOIN categoria ON automovel.id_categoria = categoria.id_categoria;

-- Mostra o ID do pedido, o valor total, o nome do cliente e o tipo de pagamento
SELECT pedido.id_pedido, pedido.valor_total, cliente.nome, tipo_pagamento.tipo
FROM pedido
JOIN cliente ON pedido.id_cliente = cliente.id_cliente
JOIN tipo_pagamento ON pedido.id_tipo_pagamento = tipo_pagamento.id_tipo_pagamento;

-- Lista o nome do cliente e a placa do automóvel cadastrado
SELECT cliente.nome, automovel.placa
FROM automovel
JOIN cliente ON automovel.id_cliente = cliente.id_cliente;

-- Mostra o nome do funcionário, a placa do automóvel e a data do conserto
SELECT conserto.data_hora, automovel.placa, funcionario.nome
FROM conserto
JOIN automovel ON conserto.id_automovel = automovel.id_automovel
JOIN funcionario ON conserto.id_funcionario = funcionario.id_funcionario;

-- Liste o nome de todos os clientes que possuem automóveis da categoria "Esportivo".
SELECT DISTINCT cliente.nome
FROM cliente
JOIN automovel ON cliente.id_cliente = automovel.id_cliente
JOIN categoria ON automovel.id_categoria = categoria.id_categoria; 

-- Liste a quantidade total de peças usadas em cada conserto.
SELECT conserto.id_conserto, SUM(peca_conserto.qtd) AS total_pecas_usadas
FROM conserto
JOIN peca_conserto ON conserto.id_conserto = peca_conserto.id_conserto GROUP BY conserto.id_conserto;

-- Liste a quantidade total de peças usadas em cada conserto.
SELECT cliente.nome, automovel.placa, categoria.tipo
FROM cliente
JOIN automovel ON cliente.id_cliente = automovel.id_cliente
JOIN categoria ON automovel.id_categoria = categoria.id_categoria;


SELECT conserto.data_hora, automovel.placa, funcionario.nome
FROM conserto
JOIN automovel ON conserto.id_automoveis = automovel.id_automovel
JOIN funcionario ON conserto.id_funcionarios = funcionario.id_funcionario;

-- Liste o nome dos funcionários que participaram de consertos realizados no dia 2024-05-01.
SELECT funcionario.nome
FROM funcionario
JOIN conserto ON funcionario.id_funcionario = conserto.id_funcionario
WHERE DATE(conserto.data_hora) = '2025-05-17';

-- Mostre a placa e a cor dos automóveis cadastrados.
SELECT automovel.placa, cor.tipo
FROM automovel
JOIN cor ON automovel.id_cor = cor.id_cor;

-- Liste todas as peças que possuem estoque maior que 10 unidades.
SELECT peca.descricao, peca.qtd_estoque
FROM peca
WHERE qtd_estoque > 10;

-- Exiba o nome dos clientes que já fizeram pedidos com valor total maior que 200.
SELECT DISTINCT cliente.nome, pedido.valor_total
FROM cliente
JOIN pedido ON cliente.id_cliente = pedido.id_cliente
WHERE pedido.valor_total > 200;

-- Mostre a quantidade de peças usadas em cada conserto.
SELECT id_conserto, SUM(qtd) AS total_pecas
FROM peca_conserto
GROUP BY id_conserto;

-- Liste o tipo de pagamento usado em cada pedido.
SELECT pedido.id_pedido, tipo_pagamento.tipo
FROM pedido
JOIN tipo_pagamento ON pedido.id_tipo_pagamento = tipo_pagamento.id_tipo_pagamento;

-- Mostre o nome dos funcionários que não realizaram nenhum conserto.
SELECT nome
FROM funcionario
WHERE id_funcionario NOT IN (
    SELECT DISTINCT id_funcionario FROM conserto
);

-- Exiba a soma total do valor dos pedidos feitos por cada cliente.
SELECT cliente.nome, SUM(pedido.valor_total) AS total_gasto
FROM cliente
JOIN pedido ON cliente.id_cliente = pedido.id_cliente
GROUP BY cliente.nome;


-- ESSE BANCO DE DADOS NÃO FAZ O MENOR SENTIDO!!!!!!

-- TESTANDO O TRIGGER
INSERT INTO plano (nome, valor, ips, qtd_telas, id_pagamento_historico)
VALUES ('Plano Básico', 29.90, '192.168.0.1', 2, NULL);

INSERT INTO cliente (nome, email, senha_hash, ativo, id_plano)
VALUES ('João Silva', 'joao@email.com', 'hash_exemplo', 1, 1);

INSERT INTO forma_pagamento (tipo) VALUES ('Cartão de Crédito');

INSERT INTO pagamento (pago, cartao, cvv, id_tipo_chave_pix, id_cliente, id_forma_pagamento)
VALUES (1, 1234567890, 123, NULL, 1, 1);

INSERT INTO fatura (data_vencimento, valor, id_cliente, id_pagamento, id_plano)
VALUES (DATE_ADD(CURDATE(), INTERVAL 30 DAY), 29.90, 1, 1, 1);

-- Soma dos valores das faturas pagas por plano, junto com o número de clientes por plano
SELECT id_plano, nome, id_pagamento_historico FROM plano WHERE id_plano = 1;
SELECT * FROM plano;

-- Soma dos valores das faturas pagas por plano, junto com o número de clientes por plano
SELECT plano.id_plano, plano.nome, COUNT(cliente.id_cliente) AS total_clientes, SUM(fatura.valor) AS soma_faturas
FROM plano
JOIN cliente ON cliente.id_plano = plano.id_plano
JOIN fatura ON fatura.id_plano = plano.id_plano
GROUP BY plano.id_plano, plano.nome;

-- PLANO QUE TEM MAIS FATURAS VENCIDAS
SELECT
plano.nome AS nome_do_plano, COUNT(fatura.id_fatura) AS total_faturas_vencidas
FROM fatura, plano
WHERE fatura.id_plano = plano.id_plano AND fatura.data_vencimento < CURDATE()
GROUP BY plano.nome
ORDER BY total_faturas_vencidas DESC;


-- Clientes ativos que não pagaram
SELECT cliente.nome AS nome_do_cliente, cliente.email, cliente.ativo, cliente.id_plano
FROM cliente, fatura
WHERE cliente.id_cliente = fatura.id_cliente AND cliente.ativo = 1 AND fatura.id_pagamento IS NULL;

-- INSERINDO DADO PARA VERIFICAR A QUERY ACIMA
-- Inserir formas de pagamento
INSERT INTO forma_pagamento (tipo) VALUES
('Cartão'),
('PIX');

-- Inserir tipos chave pix
INSERT INTO tipo_chave_pix (tipo) VALUES
('Email'),
('CPF');

-- Inserir planos
INSERT INTO plano (nome, valor, ips, qtd_telas, id_pagamento_historico) VALUES
('Plano Básico', 29.90, '192.168.0.1', 1, NULL),
('Plano Premium', 59.90, '192.168.0.2', 4, NULL);

-- Inserir clientes
INSERT INTO cliente (nome, email, senha_hash, ativo, id_plano) VALUES
('João Silva', 'Koao@email.com', 'hash1', 1, 1),  -- ativo, plano básico
('Maria Oliveira', 'maria@email.com', 'hash2', 1, 2), -- ativo, plano premium
('Carlos Pereira', 'carlos@email.com', 'hash3', 0, 1); -- inativo, plano básico

-- Inserir pagamentos
INSERT INTO pagamento (pago, cartao, cvv, id_tipo_chave_pix, id_cliente, id_forma_pagamento) VALUES
(1, 12341234, 123, NULL, 1, 1),   -- João pagou
(0, 23467817, 456, NULL, 2, 1);   -- Maria não pagou

-- Inserir faturas
INSERT INTO fatura (data_vencimento, valor, id_cliente, id_pagamento, id_plano) VALUES
('2025-05-01', 29.90, 1, 1, 1),  -- Fatura paga do João, vencida
('2025-05-01', 59.90, 2, 2, 2),  -- Fatura não paga da Maria, vencida
('2025-06-01', 29.90, 3, NULL, 1); -- Fatura de Carlos, não paga, futura
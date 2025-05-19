INSERT INTO forma_pagamento (tipo) VALUES
('Cartão de Crédito'),
('Boleto'),
('PIX');

INSERT INTO tipo_chave_pix (tipo) VALUES
('CPF'),
('E-mail'),
('Telefone'),
('Chave Aleatória');

INSERT INTO plano (nome, valor, ips, qtd_telas, id_pagamento_historico) VALUES
('Básico', 29.90, '192.168.1.10', 1, NULL),
('Intermediário', 49.90, '192.168.1.11', 2, NULL),
('Premium', 79.90, '192.168.1.12', 4, NULL);

INSERT INTO cliente (nome, email, senha_hash, ativo, id_plano) VALUES
('João Silva', 'joao@example.com', '$2y$10$hashfakesenha1...', 1, 1),
('Maria Oliveira', 'maria@example.com', '$2y$10$hashfakesenha2...', 1, 2), -- SIMULANDO SENAS HASH
('Carlos Souza', 'carlos@example.com', '$2y$10$hashfakesenha3...', 0, 3);

INSERT INTO pagamento (pago, cartao, cvv, id_tipo_chave_pix, id_cliente, id_forma_pagamento) VALUES
(1, 1234567890, 123, NULL, 1, 1), -- Cartão
(1, 0, 0, 2, 2, 3), -- PIX via email
(0, 0, 0, NULL, 3, 2); -- Boleto (não pago ainda)

INSERT INTO fatura (data_vencimento, valor, id_cliente, id_pagamento, id_plano) VALUES
('2025-06-10', 29.90, 1, 1, 1),
('2025-06-12', 49.90, 2, 2, 2),
('2025-06-15', 79.90, 3, 3, 3);

INSERT INTO tela (nome, icone, id_cliente) VALUES
('Home', '/imagens/icones/home.png', 1),
('Perfil', '/imagens/icones/perfil.png', 1),
('Configurações', '/imagens/icones/config.png', 2),
('Favoritos', '/imagens/icones/favoritos.png', 2),
('Busca', '/imagens/icones/busca.png', 3);



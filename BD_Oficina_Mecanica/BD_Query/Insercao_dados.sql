-- CLIENTES
INSERT INTO cliente (cpf, nome) VALUES
('11111111111', 'João Silva'),
('22222222222', 'Maria Oliveira'),
('33333333333', 'Pedro Santos'),
('44444444444', 'Ana Costa'),
('55555555555', 'Lucas Almeida');

-- CORES
INSERT INTO cor (tipo) VALUES
('Preto'),
('Prata'),
('Vermelho'),
('Branco'),
('Azul');

-- MODELOS
INSERT INTO modelo (tipo) VALUES
('Toyota'),
('Chevrolet'),
('Nissan'),
('Honda'),
('Yamaha');

-- CATEGORIAS
INSERT INTO categoria (tipo) VALUES
('Passeio'),
('Utilitário'),
('Esportivo'),
('Luxo'),
('Econômico');

-- TIPOS DE PAGAMENTO
INSERT INTO tipo_pagamento (tipo) VALUES
('Dinheiro'),
('Cartão de Crédito'),
('Cartão de Débito'),
('PIX'),
('Boleto');

-- PEÇAS
INSERT INTO peca (valor, qtd_estoque, descricao) VALUES
(150.00, 10, 'Pastilha de freio'),
(80.00, 20, 'Filtro de óleo'),
(300.00, 5, 'Amortecedor'),
(45.00, 30, 'Velas de ignição'),
(200.00, 15, 'Disco de freio');

-- FUNCIONÁRIOS
INSERT INTO funcionario (cpf, nome) VALUES
('66666666666', 'Carlos Souza'),
('77777777777', 'Ana Paula'),
('88888888888', 'Ricardo Lima'),
('99999999999', 'Beatriz Martins'),
('00000000000', 'Fernando Rocha');

-- AUTOMÓVEIS (ID válidos)
INSERT INTO automovel (placa, id_cor, id_modelo, id_categoria, id_cliente) VALUES
('ABC1234', 1, 1, 1, 1),
('DEF5678', 2, 2, 2, 2),
('GHI9012', 3, 3, 3, 3),
('JKL3456', 4, 4, 4, 4),
('MNO7890', 5, 5, 5, 5);

-- PEDIDOS
INSERT INTO pedido (valor_total, id_tipo_pagamento, id_cliente) VALUES
(230.00, 1, 1),
(80.00, 2, 2),
(300.00, 3, 3),
(125.50, 4, 4),
(400.00, 5, 5);

-- TRANSAÇÕES
INSERT INTO transacao (qtd, id_pedido, id_peca) VALUES
(1, 1, 1),
(2, 2, 2),
(1, 3, 3),
(4, 4, 4),
(2, 5, 5);

-- CONSERTOS
INSERT INTO conserto (id_automovel, id_funcionario) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- PEÇAS USADAS NOS CONSERTOS
INSERT INTO peca_conserto (qtd, id_conserto, id_peca) VALUES
(2, 1, 1),
(1, 2, 2),
(3, 3, 3),
(1, 4, 4),
(2, 5, 5);

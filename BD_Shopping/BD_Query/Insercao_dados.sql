-- Proprietários
INSERT INTO proprietario (nome, cpf) VALUES
('Carlos Almeida', '12345678901'),
('Fernanda Souza', '23456789012'),
('João Pereira', '34567890123'),
('Mariana Lima', '45678901234');

-- Horários
INSERT INTO horario (horario_abertura, horario_fechamento) VALUES
('08:00:00', '18:00:00'),
('09:00:00', '20:00:00'),
('10:00:00', '22:00:00'),
('07:00:00', '17:00:00');

-- Semanas
INSERT INTO semana (descricao) VALUES
('Semana 1'),
('Semana 2'),
('Semana 3'),
('Semana 4');

-- Categorias
INSERT INTO categoria (tipo) VALUES
('Loja de Roupas'),
('Restaurante'),
('Serviços'),
('Entretenimento');

-- Status Fatura
INSERT INTO status_fatura (tipo) VALUES
('Pago'),
('Pendente'),
('Atrasado'),
('Cancelado');

-- Unidades
INSERT INTO unidade (nr_andar, valor_aluguel, metros_quadrados, id_categoria, id_proprietario) VALUES
(1, 2500.00, 50.5, 1, 1),
(2, 4500.00, 80.0, 2, 2),
(3, 3200.00, 65.0, 3, 3),
(4, 5000.00, 100.0, 4, 4);

-- Faturas
INSERT INTO fatura (data_pagamento, data_vencimento, valor_aluguel, id_status_fatura, id_unidade) VALUES
('2025-05-01', '2025-05-10', 2500.00, 1, 1),
('2025-05-03', '2025-05-15', 4500.00, 2, 2),
('2025-05-05', '2025-05-20', 3200.00, 3, 3),
('2025-05-07', '2025-05-25', 5000.00, 4, 4);

-- Catálogo
INSERT INTO catalogo (id_unidade, id_semana, id_horario) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4);

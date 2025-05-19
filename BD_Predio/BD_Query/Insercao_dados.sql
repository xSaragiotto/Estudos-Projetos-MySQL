-- Clientes
INSERT INTO cliente (cpf, nome) VALUES
('12345678901', 'Ana Silva'),
('23456789012', 'Bruno Lima'),
('34567890123', 'Carlos Souza'),
('45678901234', 'Daniela Costa'),
('56789012345', 'Eduardo Melo');

-- Prédios
INSERT INTO predio (numeracao, nome) VALUES
(101, 'Torre Norte'),
(102, 'Torre Sul');

-- Salas
INSERT INTO sala (andar, numero, valor, descricao, id_predio) VALUES
(1, 101, 1500.00, 'Sala com ar-condicionado', 1),
(2, 202, 1800.00, 'Sala ampla com janelas', 1),
(3, 303, 2000.00, 'Sala com vista para o parque', 2);

-- Reservas
INSERT INTO reserva (data_inicio, data_final, valor_total, id_sala, id_cliente) VALUES
('2025-06-01', '2025-06-10', 1500.00, 1, 1),
('2025-06-05', '2025-06-15', 1800.00, 2, 2),
('2025-07-01', '2025-07-10', 2000.00, 3, 3);

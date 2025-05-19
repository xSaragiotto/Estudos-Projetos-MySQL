-- Clientes
INSERT INTO cliente (nome, telefone, endereco) VALUES
('Ana Silva', '11999998888', 'Rua A, 123'),
('Bruno Lima', '11988887777', 'Av. B, 456'),
('Carla Souza', '11977776666', 'Rua C, 789'),
('Diego Costa', '11966665555', 'Av. D, 101'),
('Eva Martins', '11955554444', 'Rua E, 202');

-- Pizzas
INSERT INTO pizza (nome, descricao) VALUES
('Margherita', 'Molho de tomate, mussarela, manjericão'),
('Pepperoni', 'Molho de tomate, mussarela, pepperoni'),
('Portuguesa', 'Presunto, ovos, cebola, azeitona'),
('Quatro Queijos', 'Mussarela, parmesão, gorgonzola, provolone'),
('Calabresa', 'Molho de tomate, mussarela, calabresa');

-- Tamanhos
INSERT INTO tamanho (tipo) VALUES
('Pequena'),
('Média'),
('Grande'),
('Família'),
('Gigante');

-- Pedidos
INSERT INTO pedido (data, hora, valor_total, id_cliente) VALUES
('2025-05-17', '18:30:00', 45.00, 1),
('2025-05-17', '19:00:00', 60.00, 2),
('2025-05-18', '20:15:00', 75.50, 3),
('2025-05-18', '21:00:00', 30.00, 4),
('2025-05-19', '18:45:00', 50.00, 5);

-- Catálogo
INSERT INTO catalogo (valor, id_tamanho, id_pizza) VALUES
(25.00, 1, 1),
(35.00, 2, 2),
(45.00, 3, 3),
(55.00, 4, 4),
(65.00, 5, 5);

-- Transações
INSERT INTO transacao (qtd, id_pedido, id_tamanho) VALUES
(2, 1, 1),
(1, 2, 2),
(3, 3, 3),
(1, 4, 1),
(2, 5, 4);

-- Liste todas as salas que pertencem ao prédio com nome = 'Torre Norte'
SELECT sala.*
FROM sala
JOIN predio ON sala.id_predio = predio.id_predio
WHERE predio.nome = 'Torre Norte';

-- Mostre o nome do cliente e os dados da sala que ele reservou
SELECT cliente.nome, sala.*
FROM reserva
JOIN cliente ON reserva.id_cliente = cliente.id_cliente
JOIN sala ON reserva.id_sala = sala.id_sala;

-- Insira um novo cliente e faça ele reservar uma sala existente
INSERT INTO cliente (cpf, nome) VALUES ('48301367833', 'Fernanda Alves');
INSERT INTO reserva (data_inicio, data_final, valor_total, id_sala, id_cliente)
VALUES ('2025-08-01', '2025-08-10', 1800.00, 2, 6);

-- Atualize o valor da sala 303 para 2100.00
SET SQL_SAFE_UPDATES = 0;
UPDATE sala SET valor = 2000.42 WHERE numero = 303;
SELECT * FROM sala;

-- Delete o cliente com cpf = '12345678901' e todas as reservas dele
DELETE FROM reserva WHERE id_cliente = 1;
DELETE FROM cliente WHERE id_cliente = 1;

SELECT * FROM reserva
JOIN cliente ON reserva.id_cliente = cliente.id_cliente
JOIN sala ON reserva.id_sala = sala.id_sala;
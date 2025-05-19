-- Médicos
INSERT INTO medico (crm, nome) VALUES
('12345SP', 'Dra. Ana Lima'),
('67890SP', 'Dr. Carlos Souza');

-- Responsáveis
INSERT INTO responsavel (cpf, nome) VALUES
('11122233344', 'João Silva'),
('55566677788', 'Maria Santos');

-- Pacientes
INSERT INTO paciente (cpf, nome, data_nascimento, id_responsavel) VALUES
('12345678900', 'Pedro Silva', '2010-05-10', 1),
('98765432100', 'Luana Santos', '2008-08-20', 2);

-- Remédios
INSERT INTO remedio (nome, valor) VALUES
('Paracetamol', 10.00),
('Amoxicilina', 25.50);

-- Quartos
INSERT INTO quarto (numeracao, nro_andar) VALUES
(101, 1),
(202, 2);

-- Camas
INSERT INTO cama (numero, id_quarto) VALUES
(1, 1),
(2, 2);

-- Consultas
INSERT INTO consulta (data, anotacao, id_medico, id_paciente) VALUES
('2024-05-01', 'Febre e dor de cabeça', 1, 1),
('2024-05-03', 'Infecção leve', 2, 2);

-- Histórico de medicamentos
INSERT INTO historico_medicamento (data_inicio, data_fim, id_remedio, id_consulta) VALUES
('2024-05-01', '2024-05-05', 1, 1),
('2024-05-03', '2024-05-07', 2, 2);

-- Histórico domiciliar
INSERT INTO historico_domiciliar (data_inicio, data_fim, id_cama, id_paciente) VALUES
('2024-04-30', '2024-05-06', 1, 1),
('2024-05-02', '2024-05-08', 2, 2);

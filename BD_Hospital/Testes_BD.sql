-- Mostrar todas as consultas com nome do médico e paciente
SELECT consulta.data, medico.nome, paciente.nome
FROM consulta
JOIN medico ON consulta.id_medico = medico.id_medico
JOIN paciente ON consulta.id_paciente = paciente.id_paciente;

-- Mostrar todos os remédios administrados por paciente
SELECT paciente.nome, remedio.nome, historico_medicamento.data_inicio, historico_medicamento.data_fim, medico.nome, medico.crm
FROM historico_medicamento
JOIN consulta ON historico_medicamento.id_consulta = consulta.id_consulta
JOIN paciente ON consulta.id_paciente = paciente.id_paciente
JOIN remedio ON historico_medicamento.id_remedio = remedio.id_remedio
JOIN medico ON consulta.id_medico = medico.id_medico;

-- Mostrar pacientes e seus responsáveis
SELECT responsavel.nome, responsavel.cpf, paciente.nome, paciente.cpf, cama.numero, quarto.numeracao, quarto.nro_andar
FROM historico_domiciliar
JOIN paciente ON historico_domiciliar.id_paciente = paciente.id_paciente
JOIN responsavel ON paciente.id_responsavel = responsavel.id_responsavel
JOIN cama ON historico_domiciliar.id_cama = cama.id_cama
JOIN quarto ON cama.id_quarto = quarto.id_quarto;

-- RENAME TABLE historico_domociliar TO historico_domiciliar;

-- Remédios utilizados por cada médico
SELECT medico.nome, medico.crm, remedio.nome, consulta.data
FROM historico_medicamento
JOIN consulta ON historico_medicamento.id_consulta = consulta.id_consulta
JOIN remedio ON historico_medicamento.id_remedio = remedio.id_remedio
JOIN medico ON consulta.id_medico = medico.id_medico;

-- Quantos pacientes cada responsável tem
SELECT COUNT(paciente.id_paciente), responsavel.nome
FROM paciente
JOIN responsavel ON paciente.id_responsavel = responsavel.id_responsavel
GROUP BY (responsavel.nome);

-- Exiba o nome do paciente e a soma do valor dos remédios que ele usou (considere os períodos no historico_medicamento).
SELECT paciente.nome, COUNT(historico_medicamento.id_consulta) AS QTD, SUM(remedio.valor) AS valor_total
FROM historico_medicamento
JOIN consulta ON historico_medicamento.id_consulta = consulta.id_consulta
JOIN paciente ON consulta.id_paciente = paciente.id_paciente
JOIN remedio ON historico_medicamento.id_remedio = remedio.id_remedio
GROUP by paciente.nome;


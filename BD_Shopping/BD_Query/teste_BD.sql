-- Liste o nome dos proprietários e seus respectivos CPFs.
SELECT nome, cpf
FROM proprietario;

-- Mostre o horário de abertura e fechamento para cada horário cadastrado. 
SELECT horario_abertura, horario_fechamento
FROM horario;

-- Liste a descrição de todas as semanas cadastradas.
SELECT descricao FROM semana;

-- Liste as unidades com seus andares, valores de aluguel e metragem.
SELECT * FROM unidade;

-- Mostre o nome do proprietário e o andar de sua unidade.
SELECT proprietario.nome, unidade.nr_andar
FROM unidade
JOIN proprietario ON unidade.id_proprietario = unidade.id_proprietario;

-- Liste as faturas mostrando o valor do aluguel e o status da fatura.
SELECT fatura.valor_aluguel, status_fatura.tipo AS situacao
FROM fatura
JOIN status_fatura ON fatura.id_status_fatura = status_fatura.id_status_fatura
ORDER by status_fatura.tipo;

-- Liste os catálogos mostrando o número da unidade, a semana e o horário de abertura.
SELECT c.id_catalogo, u.nr_andar, s.descricao, h.horario_abertura
FROM catalogo c
JOIN unidade u ON c.id_unidade = u.id_unidade
JOIN semana s ON c.id_semana = s.id_semana
JOIN horario h ON c.id_horario = h.id_horario;

-- Mostre os proprietários que possuem unidades com aluguel maior que R$3000,00.
SELECT proprietario.nome
FROM proprietario
JOIN unidade ON proprietario.id_proprietario = unidade.id_proprietario;

-- Liste o nome dos proprietários e o número total de unidades que cada um possui.
SELECT p.nome, COUNT(u.id_unidade) AS total_unidades
FROM proprietario p
JOIN unidade u ON p.id_proprietario = u.id_proprietario
GROUP BY p.nome;
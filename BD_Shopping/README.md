# 🏢 Projeto BD_Shopping

Este projeto simula a estrutura de um shopping center utilizando MySQL. Ele representa unidades comerciais, horários de funcionamento, faturamentos e seus proprietários. O objetivo é aplicar conceitos de modelagem de banco de dados relacional com foco em gestão de espaços comerciais.

---

## 📐 Etapas do Projeto

### 1. Modelagem Conceitual

- Entidades principais:
  - Proprietário
  - Unidade
  - Categoria
  - Horário
  - Semana
  - Fatura
  - Status da Fatura
  - Catálogo

- Relacionamentos:
  - Unidade está associada a um proprietário e a uma categoria.
  - Cada unidade pode ter uma fatura mensal.
  - Catálogo representa o funcionamento de uma unidade em determinada semana e horário.
  - Faturas possuem status (Pago, Pendente, etc.).

### 2. Modelagem Física

- Criação de tabelas com chave primária (PK) e estrangeiras (FK).
- Uso de tipos como:
  - VARCHAR para nomes e descrições
  - DECIMAL para valores
  - DATE para datas de faturas
  - TIME para horários
- FKs com integridade referencial
- Preenchimento inicial com dados de exemplo

---

## 🔧 Problemas e Soluções

| Desafio                                 | Solução/Observação                                    |
|-----------------------------------------|-------------------------------------------------------|
| Ligação entre unidades e horários       | Catálogo conecta unidade à semana e ao horário        |
| Possibilidade de dados vazios           | Uso de NOT NULL nas colunas obrigatórias              |
| Garantir unicidade de CPF               | CPF com UNIQUE em `proprietario`                      |
| Visualizar unidades com faturas         | JOINs entre `unidade`, `fatura` e `status_fatura`     |
| Relacionar horários e funcionamento     | `catalogo` permite múltiplas combinações semana/horário |

---

## 📂 Estrutura das Tabelas

| Tabela            | Finalidade                                                             |
|-------------------|------------------------------------------------------------------------|
| proprietario      | Cadastro de donos das unidades                                         |
| unidade           | Registro de andares, valor de aluguel, categoria e proprietário        |
| categoria         | Tipo de negócio: Loja, Restaurante, etc.                               |
| horario           | Horário de funcionamento da unidade                                    |
| semana            | Representa semanas do mês                                              |
| status_fatura     | Status de pagamento: Pago, Pendente, Atrasado, etc.                    |
| fatura            | Dados financeiros por unidade e status                                 |
| catalogo          | Registro de funcionamento da unidade por semana e horário              |

---

## 🔍 Funcionalidades Testadas

- Inserção de dados simulando ambiente real
- Consultas com JOIN para:
  - Ver unidades por proprietário
  - Ver status de faturas
  - Relacionar horários e semanas de funcionamento
- Agrupamentos com COUNT (ex: número de unidades por proprietário)
- ORDER BY para organização por status ou horários

---

## 🧪 Scripts de Teste

- Inserção de 4 proprietários com CPFs únicos
- 4 horários distintos de funcionamento
- 4 semanas cadastradas
- 4 unidades com aluguel e metragem variadas
- 4 faturas com status diferentes
- Vínculo de unidades ao catálogo com semana e horário

---

## 🧠 Aprendizados

- Estruturação de relacionamentos M:N via tabelas auxiliares (ex: catálogo)
- Aplicação de boas práticas em criação de FKs e constraints
- Como representar agendas de funcionamento com granularidade semanal
- Uso eficiente de JOINs para responder perguntas do negócio

---

## 🚀 Possibilidades de Expansão

- Tabela de contratos com datas de início e fim
- Histórico de pagamentos por unidade
- Relatório de inadimplência por período
- Integração com sistema de reservas de espaço
- Auditoria de modificações nas faturas

---

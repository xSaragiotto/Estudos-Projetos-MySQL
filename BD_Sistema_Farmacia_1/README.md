# 💊 Projeto SISTEMA DE FARMÁCIA 1.0

Este projeto representa a modelagem, validação e implementação de um banco de dados relacional para um sistema de farmácia. O sistema contempla o cadastro de clientes, funcionários, fornecedores, produtos, medicamentos, controle de estoque, vendas, pedidos, pagamentos, histórico de compras e estatísticas operacionais.

📌 Projeto em constante evolução, com possibilidade de expansão para funcionalidades administrativas e integração com APIs externas. Ideal para fins acadêmicos e profissionais.

---

## 📐 Etapas do Projeto

### Planejamento Conceitual

- Entidades principais: cliente, funcionário, fornecedor, produto, medicamento, pedido, pagamento, venda, compra, categoria, receita, estoque.
- Relacionamentos: muitos-para-muitos entre produtos e pedidos; entre fornecedores e produtos.
- Normalização: aplicação de 1FN, 2FN e 3FN para garantir consistência e integridade.
- Ferramenta de modelagem: BRModelo.

### Modelagem Física

- Implementação das tabelas no MySQL Workbench.
- Definição de chaves primárias e estrangeiras.
- Criação de restrições (UNIQUE, NOT NULL, CHECK).
- Triggers para controle automático de estoque e verificação de validade.

---

## 🗂️ Estrutura das Tabelas

| Tabela                | Finalidade                                                                |
|-----------------------|---------------------------------------------------------------------------|
| cliente               | Armazena dados dos clientes da farmácia.                                  |
| funcionario           | Cadastro de funcionários (atendentes, farmacêuticos, etc).                |
| fornecedor            | Dados das empresas fornecedoras de produtos.                              |
| produto               | Registro dos produtos (geral).                                            |
| medicamento           | Subtipo de produto com controle especial (prescrição, validade).          |
| categoria             | Classificação dos produtos (higiene, remédio, perfumaria, etc).           |
| estoque               | Controle de quantidades disponíveis de cada produto.                      |
| pedido                | Registra os pedidos realizados por clientes.                              |
| item_pedido           | Associação entre pedidos e produtos (muitos-para-muitos).                 |
| pagamento             | Informações sobre os pagamentos efetuados.                                |
| venda                 | Histórico de vendas finalizadas.                                          |
| forma_pagamento       | Métodos aceitos (dinheiro, cartão, PIX, etc).                             |
| compra                | Registro de compras feitas junto aos fornecedores.                        |
| item_compra           | Detalhes dos produtos adquiridos de fornecedores.                         |
| receita               | Armazena prescrições associadas aos medicamentos vendidos.                |
| validade_produto      | Controle de datas de validade por lote.                                   |
| ajuste_estoque        | Registros de ajustes manuais no estoque.                                  |
| historico_cliente     | Histórico de compras por cliente.                                         |
| log_alteracoes        | Auditoria de alterações em registros sensíveis.                           |
| estatisticas_vendas   | Dados analíticos sobre vendas e desempenho de produtos.                   |

---

## ⚙️ Funcionalidades e Consultas

- Listagem de produtos por categoria, fornecedor e status de estoque.
- Controle de estoque automático com triggers.
- Histórico de vendas por cliente e por período.
- Consultas de produtos próximos do vencimento.
- Relatórios de faturamento diário/mensal.
- Listagem de medicamentos vendidos com e sem receita.
- Cálculo do ticket médio por cliente.
- Análise de produtos mais vendidos por período.

---

## 🧪 Testes Realizados

- Inserção de dados fictícios para simular funcionamento real.
- Testes de integridade referencial entre tabelas.
- Simulações de vendas e controle de estoque.
- Validação de constraints e funcionamento das triggers.
- Consultas SQL com múltiplos JOINs e subqueries.
- Verificações de consistência com dados históricos.

---

## 📚 Aprendizados

- Modelagem relacional com foco em negócios reais.
- Aplicação de normalização e boas práticas de design.
- Criação de triggers e procedures para automação.
- Otimização de consultas SQL.
- Uso do MySQL Workbench e BRModelo para documentação.
- Organização e documentação para fins de portfólio.

---

## 🚀 Possibilidades de Expansão

- Implementação de controle de acesso com níveis de usuário.
- Integração com sistemas de gestão ERP ou APIs de farmácias.
- Painel administrativo para visualização de métricas em tempo real.
- Envio de notificações sobre estoque baixo ou validade próxima.
- Módulo de recomendação de produtos com base no histórico de clientes.


# Projeto de Banco de Dados: Oficina de Consertos Automotivos

## Visão Geral

Este projeto tem como objetivo modelar, testar e implementar um banco de dados relacional para uma oficina de consertos automotivos. O sistema gerencia clientes, automóveis, funcionários, peças, pedidos e consertos.

## Etapas do Projeto

### 1. Modelagem Conceitual (BRModelo)
- Criado diagrama Entidade-Relacionamento (EER) usando BRModelo.
- Entidades: Cliente, Automóvel, Peça, Pedido, Funcionário, Conserto, entre outras.
- Relacionamentos: Transações de peças, peças usadas em consertos, automóveis por cliente, etc.

### 2. Testes em Planilha (Excel)
- Simulação de dados inseridos nas tabelas foi realizada em Excel.
- O objetivo foi verificar a integridade das relações antes da implementação real.
- Os testes permitiram validar o funcionamento das chaves estrangeiras, cardinalidades e o cruzamento de dados.

### 3. Modelagem Física (MySQL Workbench)
- O modelo EER foi desenvolvido e convertido para modelo físico no MySQL Workbench.
- Foram definidos os tipos de dados, restrições (NOT NULL, UNIQUE, FOREIGN KEY), e a normalização foi respeitada.

### 4. Criação e População (SQL)
- Banco de dados `oficina_modelagem` criado.
- Tabelas definidas e populadas com dados de teste.
- Execução de consultas SQL para validação da integridade e funcionalidade do banco.

## Funcionalidades Validadas com SQL

Consultas implementadas para:
- Listar peças utilizadas por pedido.
- Consultar nome de cliente e detalhes de automóveis.
- Listar funcionários e seus respectivos consertos.
- Exibir pedidos com valores totais e formas de pagamento.
- Verificar clientes com automóveis de categorias específicas (e.g., Esportivo).
- Obter estatísticas como total de peças por conserto e gasto por cliente.
- Verificar quais funcionários não participaram de consertos.

## Conclusão

O banco foi totalmente funcional com todas as validações de integridade e testes aplicados.
A modelagem e consultas fornecem uma base sólida para gestão eficiente de uma oficina.
O projeto pode ser expandido futuramente com controle de agendamentos, notas fiscais e mais relatórios.

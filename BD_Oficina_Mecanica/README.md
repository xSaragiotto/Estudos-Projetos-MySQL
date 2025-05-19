# 🏎️ Projeto de Banco de Dados – Modelagem de Oficina Mecânica  
  Este projeto consiste na modelagem, validação e implementação de um sistema de banco de dados relacional para gerenciamento de clientes, automóveis, peças, funcionários, consertos, pedidos e transações de uma     oficina mecânica.

## 📐 Etapas do Projeto  

### 1. 📊 Planejamento Conceitual  
  O modelo conceitual foi inicialmente desenvolvido no BRModelo para identificar:
  
  - Entidades e atributos principais (cliente, automóvel, pedido, funcionário, peça, conserto etc.).
  - Relacionamentos entre clientes e automóveis, pedidos e peças, funcionários e consertos.
  - Cardinalidades e integridade referencial.
  - Normalização dos dados para evitar redundâncias.
  
  🎨 O modelo EER foi validado visualmente no BRModelo antes da implementação física.

### 2. 📎 Validação em Excel  
  As estruturas das tabelas e seus relacionamentos foram testadas previamente no Excel para:
  
  - Simular inserções e relacionamentos entre entidades.
  - Verificar integridade dos dados.
  - Antecipar inconsistências e problemas de estrutura.

3. ⚙️ Modelagem Física no MySQL Workbench (EER)  
  Foi realizado o modelo físico no MySQL Workbench com:
  
  - Representação gráfica do modelo EER.
  - Definição de chaves primárias e estrangeiras.
  - Organização de entidades com o recurso de “Layer” para agrupamento lógico.

4. 🧱 Implementação SQL  
  Com o modelo validado, a implementação SQL foi feita diretamente no SGBD:

  - Criação do banco: oficina_modelagem  
  - Tabelas implementadas:

## 🗂️ Estrutura das Tabelas  

  | Tabela            | Finalidade                                                  |
  |-------------------|-------------------------------------------------------------|
  | cliente           | Cadastro de clientes com nome e CPF.                        |
  | funcionario       | Registro de funcionários com dados de contato.              |
  | automovel         | Armazena automóveis e vínculo com clientes.                 |
  | modelo            | Detalhes do modelo de automóvel.                            |
  | cor               | Cores disponíveis para automóveis.                          |
  | categoria         | Categoria do automóvel (ex: SUV, Sedan, Hatch).             |
  | tipo_pagamento    | Meios de pagamento (cartão, pix, boleto etc.).              |
  | peca              | Cadastro de peças e valores.                                |
  | pedido            | Relaciona cliente, peça, forma de pagamento e valor.        |
  | transacao         | Detalha pagamentos de pedidos.                              |
  | conserto          | Dados dos consertos realizados por funcionários.            |
  | peca_conserto     | Ligação entre peças utilizadas e o conserto realizado.      |

## 💻 Funcionalidades e Consultas  

  | Descrição                                                                 |
  |---------------------------------------------------------------------------|
  | Listagem de automóveis e seus donos                                       |
  | Consultas com JOIN entre pedidos e peças                                  |
  | Relatório de peças utilizadas em consertos                                |
  | Total de pedidos por cliente                                              |
  | Consertos feitos por funcionário                                          |
  | Consulta com soma de valores por pedido ou por peça                       |
  | Total de peças utilizadas por tipo de conserto ou por modelo de carro     |

## 🧪 Testes Realizados  

  - Inserção de dados simulando cenários reais de oficina.
  - Consultas JOIN com múltiplas tabelas.
  - Agrupamentos com funções de agregação como SUM e COUNT.
  - Testes de integridade com foreign keys e valores nulos.
  - Atualizações e exclusões controladas com WHERE e JOINs.

## 📚 Aprendizados  

  ✅ Prática de modelagem relacional com múltiplas entidades  
  ✅ Utilização de BRModelo e MySQL Workbench na criação do projeto  
  ✅ Criação de relacionamentos complexos com integridade referencial  
  ✅ Testes SQL com consultas realistas e operacionais  

## 🚀 Possibilidades de Expansão do Projeto  

  - 📱 Módulo de agendamento online de serviços.  
  - 📈 Relatórios financeiros com análise mensal de faturamento.  
  - 📦 Controle de estoque de peças com alertas de baixa quantidade.  
  - 📧 Envio automático de e-mails para clientes sobre status de consertos.  
  - 🧰 Módulo de garantia de serviços e controle de revisões.  
  - 🔧 Integração com API de fabricantes para atualizações de peças e modelos.  

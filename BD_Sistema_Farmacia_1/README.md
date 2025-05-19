🖥️ Projeto SISTEMA_DE_FARMACIA_1.0
Este projeto representa a modelagem, validação e implementação de um banco de dados relacional para um sistema de farmácia. Contempla cadastro de clientes, pedidos, produtos, fornecedores, controle de estoque, vendas, receitas médicas, convênios e gerenciamento de funcionários.

📐 Etapas do Projeto
Planejamento Conceitual
Entidades principais: cliente, pedido, lista_compra, remedio, produtos_fornecedor, fornecedor, estoque, venda, receita_medica, medico, convenio, funcionario.
Relacionamentos: muitos-para-muitos entre pedidos e produtos, fornecedores e produtos, receitas e remédios.
Normalização para evitar redundâncias.
Validação visual do modelo no BRModelo.

Modelagem Física
Implementação das tabelas no MySQL Workbench com definição de chaves primárias, estrangeiras e restrições.
Uso de triggers para atualização automática de dados em tabelas relacionadas.

🗂️ Estrutura das Tabelas
Tabela	                Finalidade
cliente	                Cadastro dos clientes da farmácia.
pedido	                Registro dos pedidos realizados pelos clientes.
lista_compra	        Associação dos itens comprados em um pedido.
remedio	                Dados sobre os medicamentos disponíveis.
produtos_fornecedor	    Associação entre os produtos e seus fornecedores.
fornecedor	            Cadastro de fornecedores de produtos e medicamentos.
estoque	                Controle de quantidade de produtos disponíveis.
venda	                Registro das vendas realizadas.
receita_medica	        Armazenamento de informações sobre receitas.
medico	                Cadastro de médicos que emitem receitas.
convenio	            Registro de convênios aceitos.
funcionario	            Cadastro de funcionários da farmácia.
cargo	                Cargos dos funcionários (ex: atendente, farmacêutico).
pagamento	            Registro dos pagamentos efetuados.
forma_pagamento	        Métodos de pagamento aceitos.
caixa	                Controle de entradas e saídas do caixa.
nota_fiscal	            Emissão de notas fiscais das vendas.
fornecimento	        Histórico de fornecimento de produtos.
validade_produto	    Controle de validade dos produtos em estoque.

⚙️ Funcionalidades e Consultas
Consulta para verificar vendas por período, cliente e produto.
Relatórios de estoque baixo e validade próxima.
Consulta de histórico de compras por cliente.
Relatório de fornecimento por fornecedor.
Registro e acompanhamento de receitas médicas.
Histórico de atendimento por funcionário.
Relatórios de faturamento e formas de pagamento utilizadas.

🧪 Testes Realizados
Inserção de dados simulando clientes, pedidos e medicamentos.
Consultas com múltiplos JOINs para cruzamento de informações.
Testes de integridade referencial com foreign keys.
Verificação do funcionamento das triggers para estoque e caixa.

📚 Aprendizados
Modelagem de sistemas com múltiplas entidades e relacionamentos.
Uso de triggers para manter dados sincronizados.
Aplicação prática do BRModelo e MySQL Workbench.
Desenvolvimento de consultas SQL complexas para relatórios.

🚀 Possibilidades de Expansão
Integração com API de pagamento e receita digital.
Módulo de controle de lotes e rastreabilidade.
Controle de ponto e folha de pagamento dos funcionários.
Implementação de sistema de notificações por SMS ou app.
Dashboard administrativo com gráficos de vendas, estoque e finanças.

🍕 Projeto de Banco de Dados – Modelagem Pizzaria  
Este projeto consiste na modelagem, teste e implementação de um sistema de banco de dados relacional para gerenciamento de pedidos de pizza, clientes, cardápio, tamanhos e controle de vendas.

---

📐 Etapas do Projeto

1. 📊 Planejamento Conceitual  
O modelo conceitual foi idealizado com foco nos seguintes pontos:

- Entidades principais: cliente, pizza, tamanho, pedido, catálogo e transação.  
- Relacionamentos: cliente faz pedidos, pedido contém pizzas de tamanhos variados.  
- Normalização dos dados para manter consistência.

2. 📎 Validação Inicial  
A estrutura lógica foi inicialmente esboçada para:

- Simular inserções e cruzamentos de dados.  
- Validar integridade e possíveis falhas.  
- Confirmar os relacionamentos esperados antes da implementação no banco.

3. ⚙️ Modelagem Física no MySQL Workbench  
A modelagem física e implementação foi feita via SQL com os seguintes objetivos:

- Criação do banco `modelo_pizzaria`.  
- Estrutura clara de chaves primárias e estrangeiras.  
- Organização das tabelas com base nas regras de negócio de uma pizzaria.

4. 🧱 Implementação SQL  
Criação do banco de dados e inserção de dados iniciais:

- Tabelas: cliente, pizza, tamanho, pedido, catálogo, transação.  
- Relacionamentos definidos com chaves estrangeiras.  
- População com dados de teste realistas.

---

🗂️ Estrutura das Tabelas

| Tabela     | Finalidade                                                               |
|------------|--------------------------------------------------------------------------|
| cliente    | Armazena dados dos clientes (nome, telefone, endereço)                   |
| pizza      | Informações sobre os sabores de pizza                                    |
| tamanho    | Tamanhos disponíveis (Pequena, Média, Grande...)                         |
| pedido     | Registro de compras feitas pelos clientes                                |
| catalogo   | Combinações de pizza + tamanho + valor                                   |
| transacao  | Quantidade de pizzas por tamanho em cada pedido                          |

---

💻 Funcionalidades e Consultas

- Listagem de pedidos com nome do cliente, valor e horário  
- Visualização do catálogo de pizzas com tamanho e preço  
- Relatório de pedidos por cliente (quantidade e total gasto)  
- Vendas por data (número de pedidos e faturamento)  
- Faturamento por tamanho de pizza

---

🧪 Testes Realizados

- Inserção de dados realistas para clientes e pedidos  
- JOINs entre tabelas para validação das relações  
- Relatórios agregados com GROUP BY, COUNT e SUM  
- Verificação de integridade referencial

---

📚 Aprendizados

✅ Implementação prática de um banco relacional funcional  
✅ Manipulação de dados com JOINs e funções agregadas  
✅ Entendimento da relação entre catálogo, pedidos e tamanhos  
✅ Organização eficiente de uma aplicação de pizzaria

---

🚀 Possibilidades de Expansão

- Adição de tabela de funcionários para gestão de entregadores  
- Inclusão de status do pedido (em preparo, entregue, cancelado)  
- Registro de formas de pagamento e histórico de transações  
- Controle de ingredientes e estoque  
- Integração com sistema de delivery


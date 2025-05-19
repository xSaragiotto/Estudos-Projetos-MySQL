# 🏢 Projeto BD_Predio

Este projeto apresenta a modelagem, implementação e validação de um sistema de banco de dados relacional para gerenciamento de prédios comerciais e suas respectivas salas, clientes e reservas.

---

## 📐 Etapas do Projeto

### Planejamento Conceitual  
- Entidades principais: cliente, prédio, sala, reserva.  
- Relacionamentos entre sala e prédio (1:N), cliente e reserva (1:N), sala e reserva (1:N).  
- Normalização para garantir integridade e evitar redundância.  
- Modelo validado com diagrama EER no MySQL Workbench.

### Modelagem Física  
- Criação das tabelas com uso de chaves primárias e estrangeiras.  
- Ajustes na estrutura (como tamanho do CPF).  
- Scripts de inserção, consulta, atualização e exclusão.

---

## 🗂️ Estrutura das Tabelas

| Tabela     | Finalidade                                                       |
|------------|------------------------------------------------------------------|
| cliente    | Cadastro de clientes com nome e CPF.                             |
| predio     | Registro de prédios comerciais com numeração e nome.             |
| sala       | Cadastro de salas vinculadas aos prédios.                        |
| reserva    | Registro de reservas de salas por clientes com datas e valores.  |

---

## ⚙️ Funcionalidades e Consultas

- Listar todas as salas de um prédio específico.  
- Exibir nome do cliente e dados da sala reservada.  
- Inserir cliente e criar uma nova reserva.  
- Atualizar valor de uma sala.  
- Excluir cliente e suas respectivas reservas.  
- Consulta geral de reservas com dados relacionados.

---

## 🧪 Testes Realizados

- Inserção de dados simulando clientes, prédios e reservas reais.  
- JOINs entre tabelas para cruzar informações relevantes.  
- Testes de atualização (UPDATE) e exclusão (DELETE) com integridade referencial.  
- Verificação da consistência após manipulação de dados.

---

## 📚 Aprendizados

- Aplicação de relacionamentos 1:N em contextos comerciais.  
- Manipulação de dados com SQL puro em ambiente MySQL.  
- Criação de consultas relacionais para relatórios simples.  
- Estruturação de banco com chaves estrangeiras e constraints.

---

## 🚀 Possibilidades de Expansão

- Controle de disponibilidade das salas em tempo real.  
- Módulo de faturamento mensal por sala e cliente.  
- Sistema de notificações por e-mail para início e fim de reservas.  
- Relatórios gráficos de ocupação por prédio e período.  
- Histórico de reservas por cliente.

---

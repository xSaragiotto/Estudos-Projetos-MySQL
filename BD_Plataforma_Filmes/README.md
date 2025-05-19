# 🖥️ Projeto BD_Plataforma_Filmes

Este projeto representa a modelagem, validação e implementação de um banco de dados relacional para uma plataforma de streaming de filmes, contemplando cadastro de clientes, planos, pagamentos, catálogo de filmes, atores, gêneros, avaliações e histórico de visualizações.

### OBS: O Projeto por algum motivo ficou meio quebrado, então não faz muito sentido, mas funciona. O ideal é ser remodelado.
---

## 📐 Etapas do Projeto

### Planejamento Conceitual  
- Entidades principais: cliente, plano, pagamento, filme, ator, gênero, avaliação, assinatura, tela.  
- Relacionamentos: muitos-para-muitos entre filmes e atores, filmes e gêneros.  
- Normalização para evitar redundâncias.  
- Validação visual do modelo no BRModelo.

### Modelagem Física  
- Implementação das tabelas no MySQL Workbench com definição de chaves primárias, estrangeiras e restrições.  
- Uso de triggers para atualização automática de dados em tabelas relacionadas.

---

## 🗂️ Estrutura das Tabelas

| Tabela                | Finalidade                                                     |
|-----------------------|----------------------------------------------------------------|
| cliente               | Cadastro dos usuários da plataforma.                           |
| plano                 | Definição dos planos de assinatura (Básico, Premium etc.).     |
| forma_pagamento       | Métodos de pagamento aceitos (cartão, pix, boleto etc.).       |
| pagamento             | Registro das transações de pagamento realizadas.               |
| fatura                | Controle das faturas geradas para assinaturas.                 |
| assinatura            | Histórico das assinaturas dos clientes.                        |
| tela                  | Telas acessíveis na plataforma (Home, Perfil, etc.).           |
| acesso_tela           | Registro dos acessos dos clientes às telas.                    |
| filme                 | Dados dos filmes disponíveis na plataforma.                    |
| genero                | Tipos de gêneros cinematográficos.                             |
| filme_genero          | Associação muitos-para-muitos entre filmes e gêneros.          |
| ator                  | Dados dos atores envolvidos nos filmes.                        |
| filme_ator            | Associação muitos-para-muitos entre filmes e atores.           |
| avaliacao_filme       | Avaliações feitas pelos clientes (nota e comentário).          |
| historico_assistido   | Histórico e progresso de filmes assistidos pelos clientes.     |
| recomendacao          | Recomendações personalizadas para clientes.                    |
| preferencia_cliente   | Preferências de idioma, qualidade e legendas do cliente.       |
| estatisticas_visualizacao | Dados estatísticos sobre visualização dos filmes.           |

---

## ⚙️ Funcionalidades e Consultas

- Consulta para verificar faturamento por plano e cliente.  
- Relatórios de faturas vencidas e pagamentos pendentes.  
- Histórico detalhado de visualizações e progresso dos clientes.  
- Listagem de filmes por gênero, ator e avaliação média.  
- Recomendações baseadas em histórico e preferências.  

---

## 🧪 Testes Realizados

- Inserção de dados simulando usuários, filmes e assinaturas.  
- Consultas com múltiplos JOINs para cruzamento de informações.  
- Testes de integridade referencial com foreign keys.  
- Verificação do funcionamento das triggers para atualização automática.

---

## 📚 Aprendizados

- Modelagem de sistemas com relacionamento muitos-para-muitos.  
- Uso de triggers para manter dados sincronizados.  
- Aplicação prática do BRModelo e MySQL Workbench.  
- Desenvolvimento de consultas SQL complexas para relatórios.

---

## 🚀 Possibilidades de Expansão

- Integração com API de pagamento para confirmação automática.  
- Módulo de recomendação avançada usando machine learning.  
- Controle de múltiplos dispositivos por usuário.  
- Implementação de sistema de notificações via email ou app.  
- Dashboard administrativo para análise de uso e faturamento.

# 🛒 Projeto BD_Logistica  
  Este projeto representa a modelagem, validação e implementação de um banco de dados relacional para controle logístico de produtos, fabricantes, fornecedores e lotes, visando rastreabilidade e gestão de estoque.

$ 📐 Etapas do Projeto  
  Planejamento Conceitual  
  - Entidades principais: fornecedor, fabricante, produto, lote.  
  - Relacionamentos: muitos-para-um entre lote e fabricante, lote e fornecedor, lote e produto.  
  - Normalização aplicada para integridade dos dados.  
  - Validação visual do modelo no BRModelo.  

## Modelagem Física  
  - Implementação das tabelas no MySQL Workbench com definição de chaves primárias e estrangeiras.  
  - População das tabelas com dados reais simulados para testes.  
  - Consultas SQL desenvolvidas para extração de relatórios e controle de estoque.  

## 🗂️ Estrutura das Tabelas  
  | Tabela     | Finalidade                                                  |  
  |------------|-------------------------------------------------------------|  
  | fornecedor | Cadastro de fornecedores dos produtos.                      |  
  | fabricante | Cadastro dos fabricantes dos produtos.                      |  
  | produto    | Registro dos produtos disponíveis no sistema.               |  
  | lote       | Controle dos lotes produzidos, associando produto, fornecedor e fabricante. |  

## ⚙️ Funcionalidades e Consultas  
  - Consulta de todos os lotes com nome do fabricante, fornecedor e produto.  
  - Listagem de produtos com lotes acima de determinada quantidade.  
  - Inserção de novos lotes com dados relacionais corretos.  
  - Atualização de quantidade de um lote específico.  
  - Consulta de produtos fornecidos por um fornecedor específico.  

## 🧪 Testes Realizados  
  - Inserção de dados simulando fabricantes, fornecedores, produtos e lotes.  
  - Execução de consultas JOIN para verificar relacionamento entre tabelas.  
  - Testes de integridade referencial entre tabelas relacionadas.  
  - Atualizações diretas em colunas de controle de estoque.  

## 📚 Aprendizados  
  - Aplicação de modelo relacional em ambiente logístico.  
  - Compreensão e uso de relacionamentos entre entidades reais (fabricante/fornecedor/produto).  
  - Desenvolvimento de SQL com múltiplos JOINs e condições específicas.  
  - Uso de MySQL Workbench e BRModelo para modelagem visual e física.  

## 🚀 Possibilidades de Expansão  
  - Inclusão de controle de validade dos lotes.  
  - Implementação de sistema de alertas para estoque mínimo.  
  - Integração com API de rastreio logístico.  
  - Dashboard gerencial para visualização de fluxos e relatórios.  

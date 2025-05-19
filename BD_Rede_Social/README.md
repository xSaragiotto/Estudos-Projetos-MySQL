# 🌐 Projeto BD_Rede_Social

Este projeto simula a estrutura de uma rede social usando MySQL. Ele implementa usuários, postagens, curtidas, comentários, marcações e tipos de conteúdo. O objetivo principal é representar funcionalidades reais de redes sociais dentro de um modelo relacional robusto, com várias validações e refinamentos durante o processo de desenvolvimento.

---

## 📐 Etapas do Projeto

### 1. Modelagem Conceitual

- Entidades: Usuário, Postagem, Curtida, Tipo de Curtida, Tipo de Postagem, Comentário, Marcação.
- Relacionamentos:
  - Usuário posta, comenta, marca e curte.
  - Curtidas possuem um tipo (Curtir, Amei, etc.).
  - Postagens têm tipos (Texto, Imagem, Vídeo).
- Regras de integridade como validação de texto e prevenção de inserções vazias.

### 2. Modelagem Física

- Criação de tabelas e constraints.
- Utilização de CHECKs para impedir entradas inválidas.
- Relações com chaves estrangeiras.
- Tentativas de aplicar ON DELETE CASCADE onde aplicável.
- Tratamento de colunas críticas (ex: texto obrigatório ou imagem obrigatória em postagens).

---

## 🔧 Problemas e Soluções

| Desafio | Solução / Observações |
|---------|-----------------------|
| Postagens vazias (sem texto ou imagem) | Uso de CHECK (texto IS NOT NULL OR imagem IS NOT NULL) |
| Texto vazio ou apenas espaços | CHECK (LENGTH(TRIM(texto)) > 0) |
| Curtidas duplicadas por usuário | Tentativa com UNIQUE (id_usuario, id_postagem); dificuldade na implementação correta |
| Exclusão em cascata | Implementação manual com DROP/ADD de FKs com ON DELETE CASCADE |
| Comentários sem conteúdo | CHECK de texto semelhante ao da postagem |
| Index manual em curtida | INDEX criado para melhorar desempenho e identificar conflitos |

---

## 📂 Estrutura das Tabelas

| Tabela         | Finalidade                                                            |
|----------------|-----------------------------------------------------------------------|
| usuario        | Cadastro de usuários com email único e senha (hash).                  |
| postagem       | Publicações com texto, imagem e localização (com validações).         |
| tipo_postagem  | Classificação da postagem: Texto, Imagem, Vídeo, etc.                 |
| tipo_curtida   | Emojis ou reações como Curtir, Amei, Grr, etc.                        |
| curtida        | Registro de reações dos usuários às postagens.                        |
| comentario     | Comentários validados por usuários em postagens específicas.          |
| marcacao       | Indica usuários marcados em postagens.                                |

---

## 🔍 Funcionalidades Testadas

- Inserção de diferentes tipos de postagens.
- Criação e teste de curtidas com tipos variados.
- Restrições aplicadas a comentários e curtidas inválidas.
- Validação de JOINs entre usuário, curtida e tipo de curtida.
- Atualização de tipos de curtida.
- Exclusão de usuário com exclusão em cascata em postagens e comentários.

---

## 🧪 Scripts de Teste

- Inserção e validação de usuários.
- Teste de postagens com e sem conteúdo válido.
- Verificação de curtidas duplicadas.
- Comentários válidos/inválidos.
- Verificação de exclusão automática de conteúdo ao excluir um usuário.
- Inserção e JOINs com marcações.

---

## 🧠 Aprendizados

- Aplicação real de constraints CHECK para validar conteúdo.
- Diferença prática entre UNIQUE e índices manuais.
- Importância do uso correto de ON DELETE CASCADE em redes sociais.
- Como estruturar FKs para permitir integridade e flexibilidade.
- Dificuldades e alternativas práticas no uso de restrições compostas em curtidas.

---

## 🚀 Possibilidades de Expansão

- Tabela separada para localização geográfica.  
- Sistema de seguidores entre usuários.  
- Histórico de edição de postagens.  
- Sistema de denúncias e moderação de conteúdo.  
- Notificações para marcações, curtidas e comentários.  
- Permitir curtidas e reações em comentários.

---

## 💡 Dicas Técnicas

- Cuidado com UNIQUE em campos compostos com FKs.  
- Sempre valide o conteúdo de entrada (evite textos vazios).  
- Teste com dados reais para identificar falhas de modelagem.  
- Prefira TRIM em CHECKs ao invés de regex complexas.

---


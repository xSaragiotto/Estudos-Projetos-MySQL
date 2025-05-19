
# 🏥 Projeto de Banco de Dados – Modelagem Hospitalar

Este projeto consiste na modelagem, teste e implementação de um sistema de banco de dados relacional para gerenciamento de pacientes, consultas médicas, medicamentos, internações e seus respectivos vínculos com responsáveis, médicos, quartos e camas.

## 📐 Etapas do Projeto

### 1. 📊 Planejamento Conceitual
O modelo conceitual foi inicialmente idealizado no BRModelo para identificar:
- Entidades e atributos relevantes.
- Relacionamentos e cardinalidades.
- Normalização para evitar redundâncias.

🎨 O modelo E-R foi validado visualmente no BRModelo antes da implementação prática.

### 2. 📎 Validação em Excel
A estrutura das tabelas e os relacionamentos foram testados previamente no Excel para:
- Simular inserções de dados.
- Verificar integridade e consistência dos vínculos entre tabelas.
- Observar possíveis erros de relacionamento antes da criação no banco.

### 3. ⚙️ Modelagem Física no MySQL Workbench (EER)
A modelagem EER (Enhanced Entity Relationship) foi realizada no MySQL Workbench:
- Representação visual clara dos relacionamentos e integridade referencial.
- Definição de chaves primárias e estrangeiras.
- Utilização do recurso "Place a New Layer" para organização das entidades.

### 4. 🧱 Implementação SQL
Após a validação conceitual e estrutural, o banco foi criado com SQL no MySQL:

- Criação do banco: modelagem_hospital
- Tabelas: médico, paciente, responsável, consulta, remédio, quarto, cama, histórico de medicamentos e de internação.

## 🗂️ Estrutura das Tabelas

| Tabela                | Finalidade                                                                 |
|-----------------------|---------------------------------------------------------------------------|
| medico                | Armazena dados dos médicos (CRM e nome).                                  |
| responsavel           | Guarda os responsáveis legais pelos pacientes.                            |
| paciente              | Informações de pacientes e vínculo com responsáveis.                      |
| consulta              | Detalhes das consultas médicas.                                           |
| remedio               | Registro de medicamentos com valores.                                     |
| historico_medicamento | Liga consultas aos remédios prescritos.                                   |
| quarto                | Informações sobre a infraestrutura física do hospital.                    |
| cama                  | Cadastra camas dentro dos quartos.                                        |
| historico_domiciliar  | Registro da ocupação de pacientes em camas.                               |

## 💻 Funcionalidades e Consultas

| Consulta | Descrição |
|---------|-----------|
| Listagem de consultas com nome do médico e paciente |
| Medicamentos administrados por paciente e médico responsável |
| Histórico domiciliar com informações do quarto, cama e responsável |
| Total de remédios utilizados por cada médico |
| Quantidade de pacientes sob responsabilidade de cada responsável |
| Custo total dos remédios por paciente |

Exemplo de consulta SQL:

```sql
SELECT paciente.nome, SUM(remedio.valor) AS total_remedios
FROM historico_medicamento
JOIN consulta ON historico_medicamento.id_consulta = consulta.id_consulta
JOIN paciente ON consulta.id_paciente = paciente.id_paciente
JOIN remedio ON historico_medicamento.id_remedio = remedio.id_remedio
GROUP BY paciente.nome;
```

## 🧪 Testes Realizados

Após a criação das tabelas, os seguintes testes foram executados:

- Inserções de dados simulando cenários reais.
- Consultas JOIN para cruzar informações entre tabelas.
- Teste de integridade referencial (foreign keys).
- Atualizações e análises agregadas.

## 📁 Organização de Arquivos

```
modelagem_hospital/
├── modelagem_hospital.sql      # Script completo do banco (DDL + DML + SELECTs)
├── brmodelo.png                # Imagem do modelo ER feito no BRModelo
├── estrutura_excel.xlsx        # Planilha usada para simulação de dados
├── README.md                   # Este arquivo
```

## 📚 Aprendizados

✅ Criação e teste de um sistema relacional realista  
✅ Uso de ferramentas visuais (BRModelo, MySQL Workbench EER)  
✅ Aplicação de boas práticas de modelagem relacional  
✅ Testes de integridade e performance com dados simulados  

## 👨‍⚕️ Autor

Desenvolvido por [Seu Nome]  
Contato: [email/LinkedIn se quiser]

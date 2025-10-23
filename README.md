# Data Warehouse – E-commerce 

Este projeto apresenta a modelagem dimensional e a implementação física do Data Warehouse da empresa fictícia **Melhores Compras**, desenvolvida em Oracle SQL Developer Data Modeler.  
O objetivo é criar uma base analítica voltada ao controle de estoque, desempenho de fornecedores e otimização logística, além de avaliar o custo de hospedagem da solução em nuvem (AWS e Azure).

---

## Estrutura do Projeto

| Arquivo | Descrição |
|----------|------------|
| `modelo-dimensional-fisico.pdf` | Modelo dimensional físico do Data Warehouse, representando as tabelas fato e dimensões. |
| `dicionario.pdf` | Dicionário de dados completo, com todos os campos, tipos, chaves e restrições do modelo. |
| `SCRIPT_DDL_MC.SQL` | Script DDL completo para criação das tabelas e relacionamentos no Oracle Database. |
| `cria.SQL` e `apaga.SQL` | Scripts auxiliares para criação e exclusão controlada das tabelas do modelo. |
| `orcamentos.pdf` | Documento de comparação de custos entre AWS e Azure para hospedagem da infraestrutura. |
| `calculo.xlsx` | Planilha de apoio para estimativas e cálculos de custo em nuvem. |

---

## Estrutura Dimensional

O modelo segue o padrão **estrela (Star Schema)**, tendo como fato principal o estoque e cinco dimensões relacionadas.  
As tabelas foram normalizadas e otimizadas para consultas analíticas.

### Fato e Dimensões Principais
- **Fato**: `MC_FATO_ESTOQUE`  
  - Métricas: quantidade em estoque, entradas, saídas, custo total, faturamento bruto e líquido, taxa de rotatividade e impacto promocional.  
- **Dimensões**:  
  - `MC_DIM_PRODUTO`: atributos de produto e SKU  
  - `MC_DIM_CATEGORIA_PRODUTO`: categoria, subcategoria e segmento  
  - `MC_DIM_FORNECEDOR`: localização, tempo médio de entrega e confiabilidade  
  - `MC_DIM_CENTRO_DISTRIBUICAO`: localização e capacidade de armazenamento  
  - `MC_DIM_TEMPO`: granularidade temporal (dia, mês, trimestre, semestre, feriado)

:contentReference[oaicite:0]{index=0}:contentReference[oaicite:1]{index=1}

---

## Principais Características do Script DDL

O arquivo `SCRIPT_DDL_MC.SQL` cria as tabelas e restrições do modelo físico no Oracle, incluindo:

- 6 tabelas criadas (5 dimensões + 1 fato)  
- 19 constraints (PK, FK, UNIQUE e CHECK)  
- 1 índice auxiliar em campo de feriado  
- Comentários documentados em todas as colunas  
- Nenhum erro ou advertência na compilação do modelo  
:contentReference[oaicite:2]{index=2}

---

## Dicionário de Dados

O dicionário (`dicionario.pdf`) detalha:

- Nome completo e abreviação de cada tabela  
- Lista de chaves primárias, estrangeiras e índices únicos  
- Tipos de dados e restrições aplicadas  
- Hierarquia e dependências entre tabelas  
:contentReference[oaicite:3]{index=3}:contentReference[oaicite:4]{index=4}

---

## Análise de Custos em Nuvem

O documento `orcamentos.pdf` apresenta uma comparação entre os provedores **AWS e Azure** para hospedar o ambiente do Data Warehouse, considerando:

- 6 servidores (2 Windows + 4 Linux)  
- 9,1 TB de armazenamento (7,28 TB “hot” + 1,82 TB “cold”)  
- Transferência média de 2 TB/mês  

**Resumo dos custos mensais estimados:**
- **AWS:** ~US$ 1.856/mês  
- **Azure:** ~US$ 2.435/mês  

A análise indica que a **AWS oferece redução de aproximadamente 30% no custo total**, mantendo os mesmos requisitos de hardware e desempenho.  
:contentReference[oaicite:5]{index=5}

---

## Tecnologias Utilizadas

- Oracle SQL Developer Data Modeler 24.3  
- Oracle Database 11g  
- Excel / Power BI (apoio a cálculos e métricas)  
- Cloud Cost Estimator (AWS / Azure)  

---

## Conceitos Aplicados

- Modelagem dimensional (Star Schema)  
- Definição de chaves primárias e estrangeiras  
- Documentação via dicionário de dados  
- Criação de constraints e índices  
- Planejamento de infraestrutura em nuvem  
- Comparação de custos e viabilidade técnica  

---

## Autora

Dayanne Simão 

Projeto desenvolvido de Modelagem Dimensional e Cloud Computing

---

## Licença
 
Uso livre para fins de estudo e referência.

-- Gerado por Oracle SQL Developer Data Modeler 24.3.1.351.0831
--   em:        2025-02-25 15:26:03 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g





-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE MC_DIM_CATEGORIA_PRODUTO 
    ( 
     cd_cat_prod              NUMBER (15)  NOT NULL , 
     nm_subcategoria          VARCHAR2 (100) , 
     nm_cat                   VARCHAR2 (100)  NOT NULL , 
     segmento_cat             VARCHAR2 (50)  NOT NULL , 
     descricao_cat            VARCHAR2 (255) , 
     prioridade_abastecimento VARCHAR2 (10) 
    ) 
;

COMMENT ON COLUMN MC_DIM_CATEGORIA_PRODUTO.cd_cat_prod IS 'Código da categoria do produto' 
;

COMMENT ON COLUMN MC_DIM_CATEGORIA_PRODUTO.nm_subcategoria IS 'Nome da subcategoria do produto' 
;

COMMENT ON COLUMN MC_DIM_CATEGORIA_PRODUTO.segmento_cat IS 'Segmento (eletrônicos, moda, saúde, etc.)' 
;

COMMENT ON COLUMN MC_DIM_CATEGORIA_PRODUTO.descricao_cat IS 'Descrição da categoria' 
;

COMMENT ON COLUMN MC_DIM_CATEGORIA_PRODUTO.prioridade_abastecimento IS 'Prioridade de abastecimento (Alta, Média, Baixa)' 
;

ALTER TABLE MC_DIM_CATEGORIA_PRODUTO 
    ADD CONSTRAINT PK_CATEGORIA_PRODUTO PRIMARY KEY ( cd_cat_prod ) ;

ALTER TABLE MC_DIM_CATEGORIA_PRODUTO 
    ADD CONSTRAINT UN_COD_CAT_PROD_ UNIQUE ( cd_cat_prod ) ;

ALTER TABLE MC_DIM_CATEGORIA_PRODUTO 
    ADD CONSTRAINT UN_NM_SUBCAT_PROD_ UNIQUE ( nm_subcategoria ) ;

CREATE TABLE MC_DIM_CENTRO_DISTRIBUICAO 
    ( 
     cd_loja                  NUMBER (5)  NOT NULL , 
     nm_distri                VARCHAR2 (100)  NOT NULL , 
     estado_distri            VARCHAR2 (30)  NOT NULL , 
     cidade_distri            VARCHAR2 (50)  NOT NULL , 
     bairro_distri            VARCHAR2 (50) , 
     capacidade_armazenamento NUMBER (5) 
    ) 
;

COMMENT ON COLUMN MC_DIM_CENTRO_DISTRIBUICAO.cd_loja IS 'Código do centro de distribuição' 
;

COMMENT ON COLUMN MC_DIM_CENTRO_DISTRIBUICAO.nm_distri IS 'Nome do centro de distribuição' 
;

COMMENT ON COLUMN MC_DIM_CENTRO_DISTRIBUICAO.estado_distri IS 'Estado do Centro de distribuição' 
;

COMMENT ON COLUMN MC_DIM_CENTRO_DISTRIBUICAO.cidade_distri IS 'Cidade do Centro de distribuição' 
;

COMMENT ON COLUMN MC_DIM_CENTRO_DISTRIBUICAO.bairro_distri IS 'Bairro do Centro de distribuição' 
;

COMMENT ON COLUMN MC_DIM_CENTRO_DISTRIBUICAO.capacidade_armazenamento IS 'Capaciadade de armazenamento do centro de distribuição' 
;

ALTER TABLE MC_DIM_CENTRO_DISTRIBUICAO 
    ADD CONSTRAINT PK_CENTRO_DISTRIBUICAO PRIMARY KEY ( cd_loja ) ;

ALTER TABLE MC_DIM_CENTRO_DISTRIBUICAO 
    ADD CONSTRAINT UN_CEN_DISTRI_CD UNIQUE ( cd_loja ) ;

ALTER TABLE MC_DIM_CENTRO_DISTRIBUICAO 
    ADD CONSTRAINT UN_CEN_DISTRI_NOME UNIQUE ( nm_distri ) ;

CREATE TABLE MC_DIM_FORNECEDOR 
    ( 
     cd_fornc             NUMBER (10)  NOT NULL , 
     nm_fornc             VARCHAR2 (100)  NOT NULL , 
     tempo_medio_entrega  NUMBER (5,2)  NOT NULL , 
     estado_fornc         VARCHAR2 (30) , 
     cidade_fornc         VARCHAR2 (50) , 
     bairro_fornc         VARCHAR2 (50) , 
     confiabilidade_fornc NUMBER (2) 
    ) 
;

COMMENT ON COLUMN MC_DIM_FORNECEDOR.cd_fornc IS 'Código do fornecedor, mandatório' 
;

COMMENT ON COLUMN MC_DIM_FORNECEDOR.nm_fornc IS 'Nome do fornecedor' 
;

COMMENT ON COLUMN MC_DIM_FORNECEDOR.tempo_medio_entrega IS 'Tempo médio de entrega em dias' 
;

COMMENT ON COLUMN MC_DIM_FORNECEDOR.estado_fornc IS 'Estado do fornecedor' 
;

COMMENT ON COLUMN MC_DIM_FORNECEDOR.cidade_fornc IS 'Cidade do fornecedor' 
;

COMMENT ON COLUMN MC_DIM_FORNECEDOR.bairro_fornc IS 'Bairro do fornecedor' 
;

COMMENT ON COLUMN MC_DIM_FORNECEDOR.confiabilidade_fornc IS 'Confiabilidade do fornecedor (1 a 10)' 
;

ALTER TABLE MC_DIM_FORNECEDOR 
    ADD CONSTRAINT PK_FORNECEDOR PRIMARY KEY ( cd_fornc ) ;

ALTER TABLE MC_DIM_FORNECEDOR 
    ADD CONSTRAINT UN_CD_FORNECEDOR_ UNIQUE ( cd_fornc ) ;

ALTER TABLE MC_DIM_FORNECEDOR 
    ADD CONSTRAINT UN_NM_FORNECEDOR UNIQUE ( nm_fornc ) ;

CREATE TABLE MC_DIM_PRODUTO 
    ( 
     cd_prod                NUMBER (10)  NOT NULL , 
     sku_prod               VARCHAR2 (30)  NOT NULL , 
     nm_prod                VARCHAR2 (80)  NOT NULL , 
     marca_prod             VARCHAR2 (50) , 
     cor_prod               VARCHAR2 (30) , 
     dimensões_fisicas_prod NUMBER (3,3) 
    ) 
;

COMMENT ON COLUMN MC_DIM_PRODUTO.cd_prod IS 'Código original do produto' 
;

COMMENT ON COLUMN MC_DIM_PRODUTO.sku_prod IS 'Código único de identificação (SKU)' 
;

COMMENT ON COLUMN MC_DIM_PRODUTO.nm_prod IS 'Nome do produto' 
;

COMMENT ON COLUMN MC_DIM_PRODUTO.marca_prod IS 'Marca do produto' 
;

COMMENT ON COLUMN MC_DIM_PRODUTO.cor_prod IS 'Cor do produto' 
;

COMMENT ON COLUMN MC_DIM_PRODUTO.dimensões_fisicas_prod IS 'Dimensões físicas do produto' 
;

ALTER TABLE MC_DIM_PRODUTO 
    ADD CONSTRAINT PK_PRODUTO PRIMARY KEY ( cd_prod ) ;

ALTER TABLE MC_DIM_PRODUTO 
    ADD CONSTRAINT UN_COD_PROD UNIQUE ( cd_prod ) ;

ALTER TABLE MC_DIM_PRODUTO 
    ADD CONSTRAINT UN_PROD_SKU UNIQUE ( sku_prod ) ;

CREATE TABLE MC_DIM_TEMPO 
    ( 
     id_tempo         NUMBER (10)  NOT NULL , 
     ano_tempo        NUMBER (4)  NOT NULL , 
     mes_tempo        NUMBER (2)  NOT NULL , 
     trimestre_tempo  NUMBER (1)  NOT NULL , 
     semestre_tempo   NUMBER (1)  NOT NULL , 
     dia_semana_tempo VARCHAR2 (9)  NOT NULL , 
     dia_tempo        NUMBER (2)  NOT NULL , 
     feriado_tempo    CHAR (1) 
    ) 
;

COMMENT ON COLUMN MC_DIM_TEMPO.id_tempo IS 'Identificador único da Dimensão' 
;

COMMENT ON COLUMN MC_DIM_TEMPO.ano_tempo IS 'Ano do registro' 
;

COMMENT ON COLUMN MC_DIM_TEMPO.mes_tempo IS 'Mês do registro' 
;

COMMENT ON COLUMN MC_DIM_TEMPO.trimestre_tempo IS ' Indica o trimestre do ano' 
;

COMMENT ON COLUMN MC_DIM_TEMPO.semestre_tempo IS 'Indica o semestre do ano' 
;

COMMENT ON COLUMN MC_DIM_TEMPO.dia_semana_tempo IS 'Nome do dia da semana' 
;

COMMENT ON COLUMN MC_DIM_TEMPO.dia_tempo IS 'Dia do registro' 
;

COMMENT ON COLUMN MC_DIM_TEMPO.feriado_tempo IS 'Indica se é feriado (S/N)' 
;
CREATE INDEX CHK_FERIADO_TEMPO ON MC_DIM_TEMPO 
    ( 
     feriado_tempo ASC 
    ) 
;

ALTER TABLE MC_DIM_TEMPO 
    ADD CONSTRAINT PK_TEMPO PRIMARY KEY ( id_tempo ) ;

CREATE TABLE MC_FATO_ESTOQUE 
    ( 
     id_tempo               NUMBER (10)  NOT NULL , 
     cd_fornc               NUMBER (10)  NOT NULL , 
     cd_cat_prod            NUMBER (15)  NOT NULL , 
     cd_loja                NUMBER (5)  NOT NULL , 
     cd_prod                NUMBER (10)  NOT NULL , 
     qt_estoq_atual         NUMBER (10,2)  NOT NULL , 
     qt_estoq_minimo        NUMBER (10,2)  NOT NULL , 
     qt_entrada_estoq       NUMBER (10,2)  NOT NULL , 
     qt_saida_estoq         NUMBER (10,2)  NOT NULL , 
     vl_custo_prod          NUMBER (10,2)  NOT NULL , 
     vl_estoq_total         NUMBER (15,2)  NOT NULL , 
     tempo_medio_reposicao  NUMBER (5,2) , 
     qt_pedidos             NUMBER (10) , 
     qt_prod_vendido        NUMBER (10) , 
     vl_faturamento_bruto   NUMBER (15,2) , 
     vl_faturamento_liquido NUMBER (15,2) , 
     taxa_rotatividade      NUMBER (5,2) , 
     impacto_promocional    NUMBER (5,2) 
    ) 
;

COMMENT ON COLUMN MC_FATO_ESTOQUE.qt_estoq_atual IS 'Quantidade mínima recomendada em estoque' 
;

COMMENT ON COLUMN MC_FATO_ESTOQUE.qt_estoq_minimo IS 'Quantidade mínima recomendada em estoque' 
;

COMMENT ON COLUMN MC_FATO_ESTOQUE.qt_entrada_estoq IS 'Quantidade de produtos adicionados ao estoque' 
;

COMMENT ON COLUMN MC_FATO_ESTOQUE.qt_saida_estoq IS 'Quantidade de produtos retirados do estoque (vendas, perdas, devoluções)' 
;

COMMENT ON COLUMN MC_FATO_ESTOQUE.vl_custo_prod IS 'Custo unitário médio do produto em estoque' 
;

COMMENT ON COLUMN MC_FATO_ESTOQUE.vl_estoq_total IS 'Valor total do estoque (qt_estoque_atual * vl_custo_produto)' 
;

COMMENT ON COLUMN MC_FATO_ESTOQUE.tempo_medio_reposicao IS 'Tempo médio em dias para reposição do estoque' 
;

COMMENT ON COLUMN MC_FATO_ESTOQUE.qt_pedidos IS 'Quantidade de pedidos realizados envolvendo o produto' 
;

COMMENT ON COLUMN MC_FATO_ESTOQUE.qt_prod_vendido IS 'Quantidade total de produtos vendidos' 
;

COMMENT ON COLUMN MC_FATO_ESTOQUE.vl_faturamento_bruto IS 'Faturamento total do produto vendido' 
;

COMMENT ON COLUMN MC_FATO_ESTOQUE.vl_faturamento_liquido IS 'Faturamento líquido (considerando devoluções e descontos)' 
;

COMMENT ON COLUMN MC_FATO_ESTOQUE.taxa_rotatividade IS '(qt_produto_vendido / qt_estoque_atual) * 100 → Percentual de giro do estoque' 
;

COMMENT ON COLUMN MC_FATO_ESTOQUE.impacto_promocional IS 'Indicador para avaliar o impacto de promoções no estoque' 
;

ALTER TABLE MC_FATO_ESTOQUE 
    ADD CONSTRAINT PK_FATO_ESTOQUE PRIMARY KEY ( id_tempo ) ;

ALTER TABLE MC_FATO_ESTOQUE 
    ADD CONSTRAINT FK_CATEG_PROD FOREIGN KEY 
    ( 
     cd_cat_prod
    ) 
    REFERENCES MC_DIM_CATEGORIA_PRODUTO 
    ( 
     cd_cat_prod
    ) 
;

ALTER TABLE MC_FATO_ESTOQUE 
    ADD CONSTRAINT FK_CENT_DISTRI FOREIGN KEY 
    ( 
     cd_loja
    ) 
    REFERENCES MC_DIM_CENTRO_DISTRIBUICAO 
    ( 
     cd_loja
    ) 
;

ALTER TABLE MC_FATO_ESTOQUE 
    ADD CONSTRAINT FK_FORNC FOREIGN KEY 
    ( 
     cd_fornc
    ) 
    REFERENCES MC_DIM_FORNECEDOR 
    ( 
     cd_fornc
    ) 
;

ALTER TABLE MC_FATO_ESTOQUE 
    ADD CONSTRAINT FK_PROD FOREIGN KEY 
    ( 
     cd_prod
    ) 
    REFERENCES MC_DIM_PRODUTO 
    ( 
     cd_prod
    ) 
;

ALTER TABLE MC_FATO_ESTOQUE 
    ADD CONSTRAINT FK_TEMPO FOREIGN KEY 
    ( 
     id_tempo
    ) 
    REFERENCES MC_DIM_TEMPO 
    ( 
     id_tempo
    ) 
;



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             1
-- ALTER TABLE                             19
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0

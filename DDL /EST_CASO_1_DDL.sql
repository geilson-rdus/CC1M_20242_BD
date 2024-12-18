#FASE 1: CRIAR O BANCO DE DADOS (SCHEMA OU DATABASE):
#MEU PRIMEIRO BANQUINHO
CREATE SCHEMA EC1_CC1M;

#FASE 2: SELECIONAR O NOVO SCHEMA OU DATABASE PARA USO:
#USANDO MEU BANQUINHO
USE EC1_CC1M;


# FASE 3: CRIANDO AS TABELAS SEM CHAVES ESTRANGEIRAS

#CRIANDO A TABELINHA FORNECEDORES
CREATE TABLE IF NOT EXISTS FORNECEDORES(
#NOMEDOATRIBUTO - TIPO - RESTRIÇÃO DE INTEGRIDADE(OPCIONAL)
FORNEC_COD INT PRIMARY KEY,
FORNEC_NOME VARCHAR(45) NOT NULL,
FORNEC_RUA VARCHAR(45) NOT NULL,
FORNEC_NUMRUA INT,
FORNEC_BAIRRO VARCHAR(45) NOT NULL,
FORNEC_CIDADE VARCHAR(45) NOT NULL,
FORNEC_ESTADO VARCHAR(45) NOT NULL,
FORNEC_PAIS VARCHAR(30) NOT NULL,
FORNEC_CODPOSTAL VARCHAR(10) NOT NULL,
FORNEC_TELEFONE VARCHAR(15) NOT NULL,
FORNEC_CONTATO TEXT NOT NULL
);

#DANDO COMANDOS DE ALTER NA TABELA FORNECEDORES

ALTER TABLE FORNECEDORES ADD COLUMN FORNEC_DESC TEXT;
ALTER TABLE FORNECEDORES MODIFY COLUMN FORNEC_DESC VARCHAR(100);
ALTER TABLE FORNECEDORES CHANGE COLUMN FORNEC_DESC FORNEC_DESCR VARCHAR(100);
ALTER TABLE FORNECEDORES DROP COLUMN FORNEC_DESCR;

#CRIANDO A TABELINHA FILIAIS
CREATE TABLE IF NOT EXISTS FILIAIS(
FILIAL_COD INT PRIMARY KEY,
FILIAL_NOME VARCHAR(45) NOT NULL,
FILIAL_RUA VARCHAR(100) NOT NULL,
FILIAL_NUMRUA INT,
FILIAL_BAIRRO VARCHAR(50) NOT NULL,
FILIAL_CIDADE VARCHAR(50) NOT NULL,
FILIAL_ESTADO VARCHAR(50) NOT NULL,
FILIAL_PAIS VARCHAR(50) NOT NULL,
FILIAL_CODPOSTAL VARCHAR(10) NOT NULL,
FILIAL_CAPACIDADE TEXT NOT NULL);

#DANDO COMANDOS DE ALTER NA TABELA FILIAIS

ALTER TABLE FILIAIS ADD COLUMN FILIAL_DESC TEXT;
ALTER TABLE FILIAIS MODIFY COLUMN FILIAL_DESC VARCHAR(100);
ALTER TABLE FILIAIS CHANGE COLUMN FILIAL_DESC FILIAL_DESCR VARCHAR(100);
ALTER TABLE FILIAIS DROP COLUMN FILIAL_DESCR;

#CRIANDO A TABELINHA PRODUTOS
CREATE TABLE IF NOT EXISTS PRODUTOS(
PROD_COD INT PRIMARY KEY,
PROD_NOME VARCHAR(50) NOT NULL,
PROD_DESCRICAO TEXT NOT NULL,
PROD_ESPECTEC TEXT NOT NULL,
PROD_QUANT DECIMAL(10,3) NOT NULL,
PROD_PRECOUNIT DECIMAL(10,2) NOT NULL,
PROD_UNIDMEDIDA VARCHAR(10) NOT NULL,
PROD_ESTOQ_MIN DECIMAL(10,3) NOT NULL
);

#DANDO COMANDOS DE ALTER NA TABELA PRODUTOS

ALTER TABLE PRODUTOS ADD COLUMN PROD_DESC TEXT;
ALTER TABLE PRODUTOS MODIFY COLUMN PROD_DESC VARCHAR(100);
ALTER TABLE PRODUTOS CHANGE COLUMN PROD_DESC PROD_DESCR VARCHAR(100);
ALTER TABLE PRODUTOS DROP COLUMN PROD_DESCR;

#FASE 4: CRIAR AS TABELAS COM DEPENDÊNCIA DE CHAVE ESTRANGEIRA

#CRIANDO A TABELA PEDIDOS
CREATE TABLE IF NOT EXISTS PEDIDOS(
PED_CODIGO INT PRIMARY KEY,
PED_DATA DATE NOT NULL,
PED_HORA TIME NOT NULL,
PED_PREVISAO DATE NOT NULL,
PED_STATUS ENUM('PENDENTE','CONCLUÍDO','EM ESPERA'),
PED_FORNECEDOR INT NOT NULL, #NOSSA CHAVE ESTRANGEIRA DE FORNECEDOR
#CRIANDO A REFERENCIA PARA A CHAVE ESTRANGEIRA
#RESTRIÇÃO APELIDO CH.ESTRANGEIRA(CAMPO CRIADO) REFERENCIA TABELA(CH.PRIMÁRIA)
CONSTRAINT FK_FORNECEDOR FOREIGN KEY (PED_FORNECEDOR) #DAR NOME A RESTRIÇÃO(CONSTRAINT) É UMA BOA PRÁTICA
REFERENCES FORNECEDORES(FORNEC_COD) #REFERENCIA A CHAVE PRIMÁRIA DE FORNECEDORES
);

#DANDO COMANDOS DE ALTER NA TABELA PEDIDOS

ALTER TABLE PEDIDOS ADD COLUMN PED_DESC TEXT;
ALTER TABLE PEDIDOS MODIFY COLUMN PED_DESC VARCHAR(100);
ALTER TABLE PEDIDOS CHANGE COLUMN PED_DESC PED_DESCR VARCHAR(100);
ALTER TABLE PEDIDOS DROP COLUMN PED_DESCR;

#CRIANDO A TABELA RECEBIMENTOS (VEIO DEPOIS POIS TEM DEPENDÊNCIA DE PEDIDOS)
CREATE TABLE IF NOT EXISTS RECEBIMENTOS(
RECEB_DATA DATE NOT NULL,
RECEB_HORA TIME NOT NULL,
RECEB_QUANT_PROD DECIMAL(10,3),
RECEB_CONDICAO TEXT NOT NULL,
RECEB_PEDIDOS INT PRIMARY KEY,
CONSTRAINT FK_PEDIDOS FOREIGN KEY(RECEB_PEDIDOS) REFERENCES PEDIDOS(PED_CODIGO));

#DANDO COMANDOS DE ALTER NA TABELA RECEBIMENTOS

ALTER TABLE RECEBIMENTOS ADD COLUMN RECEB_DESC TEXT;
ALTER TABLE RECEBIMENTOS MODIFY COLUMN RECEB_DESC VARCHAR(100);
ALTER TABLE RECEBIMENTOS CHANGE COLUMN RECEB_DESC RECEB_DESCR VARCHAR(100);
ALTER TABLE RECEBIMENTOS DROP COLUMN RECEB_DESCR;

#FASE 5: CRIANDO AS TABELAS ASSOCIATIVAS (ENTIDADES ASSOCIATIVAS)

#CRIANDO A TABELA PEDIDOS_PRODUTOS
CREATE TABLE IF NOT EXISTS PEDIDOS_PRODUTOS(
PDPR_PEDIDOS INT,
PDPR_PRODUTOS INT,
PRIMARY KEY(PDPR_PEDIDOS,PDPR_PRODUTOS),
PDPR_QUANT DECIMAL(10,3) NOT NULL,
CONSTRAINT PDPR_FK_PEDIDOS FOREIGN KEY(PDPR_PEDIDOS) REFERENCES PEDIDOS(PED_CODIGO),
CONSTRAINT PDPR_FK_PRODUTOS FOREIGN KEY(PDPR_PRODUTOS) REFERENCES PRODUTOS(PROD_COD)
);

#DANDO COMANDOS DE ALTER NA TABELA PEDIDOS_PRODUTOS

ALTER TABLE PEDIDOS_PRODUTOS ADD COLUMN PDPR_DESC TEXT;
ALTER TABLE PEDIDOS_PRODUTOS MODIFY COLUMN PDPR_DESC VARCHAR(100);
ALTER TABLE PEDIDOS_PRODUTOS CHANGE COLUMN PDPR_DESC PDPR_DESCR VARCHAR(100);
ALTER TABLE PEDIDOS_PRODUTOS DROP COLUMN PDPR_DESCR;

#CRIANDO A TABELA FILIAIS_PRODUTOS
CREATE TABLE IF NOT EXISTS FILIAIS_PRODUTOS(
FLPR_FILIAL INT,
FLPR_PRODUTOS INT,
PRIMARY KEY(FLPR_FILIAL,FLPR_PRODUTOS),
FLPR_QUANT DECIMAL(10,3) NOT NULL,
CONSTRAINT FLPR_FK_FILIAIS FOREIGN KEY(FLPR_FILIAL) REFERENCES FILIAIS(FILIAL_COD),
CONSTRAINT FLPR_FK_PRODUTOS FOREIGN KEY(FLPR_PRODUTOS) REFERENCES PRODUTOS(PROD_COD));

#DANDO COMANDOS DE ALTER NA TABELA FILIAIS_PRODUTOS

ALTER TABLE FILIAIS_PRODUTOS ADD COLUMN FLPR_DESC TEXT;
ALTER TABLE FILIAIS_PRODUTOS MODIFY COLUMN FLPR_DESC VARCHAR(100);
ALTER TABLE FILIAIS_PRODUTOS CHANGE COLUMN FLPR_DESC FLPR_DESCR VARCHAR(100);
ALTER TABLE FILIAIS_PRODUTOS DROP COLUMN FLPR_DESCR;

#CRIAR A TABELA FORNECEDORES_PRODUTOS
CREATE TABLE IF NOT EXISTS FORNECEDORES_PRODUTOS(
FRPR_FORNECEDOR INT,
FRPR_PRODUTOS INT,
PRIMARY KEY(FRPR_FORNECEDOR,FRPR_PRODUTOS),
CONSTRAINT FRPR_FK_FORNECEDORES FOREIGN KEY(FRPR_FORNECEDOR)
REFERENCES FORNECEDORES(FORNEC_COD),
CONSTRAINT FRPR_FK_PRODUTOS FOREIGN KEY(FRPR_PRODUTOS) 
REFERENCES PRODUTOS(PROD_COD));

#DANDO COMANDOS DE ALTER NA TABELA FORNECEDORES_PRODUTOS

ALTER TABLE FORNECEDORES_PRODUTOS ADD COLUMN FRPR_DESC TEXT;
ALTER TABLE FORNECEDORES_PRODUTOS MODIFY COLUMN FRPR_DESC VARCHAR(100);
ALTER TABLE FORNECEDORES_PRODUTOS CHANGE COLUMN FRPR_DESC FRPR_DESCR VARCHAR(100);
ALTER TABLE FORNECEDORES_PRODUTOS DROP COLUMN FRPR_DESCR;

#CRIAR TABELA AUXILIAR QUE RECEBERÁ UM COMANDO DE DROP

CREATE TABLE IF NOT EXISTS AUX(
AUX_ID INT PRIMARY KEY
);

ALTER TABLE AUX ADD COLUMN AUX_DESC TEXT;
ALTER TABLE AUX MODIFY COLUMN AUX_DESC VARCHAR(100);
ALTER TABLE AUX CHANGE COLUMN AUX_DESC AUX_DESCR VARCHAR(100);
ALTER TABLE AUX DROP COLUMN AUX_DESCR;
  
DROP TABLE AUX;

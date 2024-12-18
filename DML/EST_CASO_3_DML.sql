use ec3;

# 6 INSERTS NA TABELA CLIENTES
INSERT INTO CLIENTES(COD_CLIENT, CNPJ_CLIENT, RAZ_SOC_CLIENT, RAM_ATV_CLIENT, DATA_CAD_CLIENT) VALUES
(1, '12.345.678/0001-01','Cliente 1','Indústria','2024-11-12'),
(2, '23.456.789/0001-02','Cliente 2','Comércio','2024-11-12'),
(3, '34.567.890/0001-03','Cliente 3','Serviços','2024-11-12'),
(4, '45.678.901/0001-04','Cliente 4','Serviços','2024-11-14'),
(5, '56.789.012/0001-05','Cliente 5','Comércio','2024-11-14'),
(6, '67.890.123/0001-06','Cliente 6','Indústria','2024-11-12');

# 2 UPDATES NA TABELA CLIENTES
UPDATE CLIENTES 
SET RAZ_SOC_CLIENT = 'Cliente 7'
WHERE COD_CLIENT = 6;

UPDATE CLIENTES 
SET DATA_CAD_CLIENT = '2024-11-13'
WHERE COD_CLIENT = 6;

# 1 DELETE NA TABELA CLIENTES
DELETE FROM CLIENTES
WHERE COD_CLIENT = 6;

# 6 INSERTS NA TABELA FORNECEDORES
INSERT INTO FORNECEDORES(COD_FORN, CNPJ_FORN, RAZ_SOC_FORN) VALUES
(1, '12.345.678/0001-01','Fornecedor 1'),
(2, '23.456.789/0001-02','Fornecedor 2'),
(3, '34.567.890/0001-03','Fornecedor 3'),
(4, '45.678.901/0001-04','Fornecedor 4'),
(5, '56.789.012/0001-05','Fornecedor 5'),
(6, '67.890.123/0001-06','Fornecedor 6');

# 2 UPDATES NA TABELA FORNECEDORES
UPDATE FORNECEDORES 
SET RAZ_SOC_FORN = 'Fornecedor 7'
WHERE COD_FORN = 6;

UPDATE FORNECEDORES
SET RAZ_SOC_FORN = 'Fornecedor 8'
WHERE COD_FORN = 6;

# 1 DELETE NA TABELA FORNECEDORES
DELETE FROM FORNECEDORES
WHERE COD_FORN = 6;

# 5 INSERTS NA TABELA TIPOS_ENDERECOS
INSERT INTO TIPOS_ENDERECOS(COD_TIPO_END, NOME_TIPO_END) VALUES
(1,'Comercial 1'),
(2,'Residencial 1'),
(3,'Endereço 3'),
(4,'Endereço 4'),
(5,'Endereço 5');

# 2 UPDATES NA TABELA TIPOS_ENDERECOS
UPDATE TIPOS_ENDERECOS
SET NOME_TIPO_END = 'Comercial'
WHERE COD_TIPO_END = 1;

UPDATE TIPOS_ENDERECOS
SET NOME_TIPO_END = 'Residencial'
WHERE COD_TIPO_END = 2;

# 1 DELETE NA TABELA TIPOS_ENDERECOS
DELETE FROM TIPOS_ENDERECOS
WHERE COD_TIPO_END = 5;

# 6 INSERTS NA TABELA QUALIFICACOES
INSERT INTO QUALIFICACOES(COD_QLF, NOME_QLF) VALUES
(1,'Ensino Médio'),
(2,'Curso Oracle'),
(3,'Curso Microsoft'),
(4,'Curso Ubuntu'),
(5,'Curso Linux'),
(6,'Seila');

# 2 UPDATES NA TABELA QUALIFICACOES
UPDATE QUALIFICACOES
SET NOME_QLF = 'Curso HP'
WHERE COD_QLF = 1;

UPDATE QUALIFICACOES
SET NOME_QLF = 'Doutorado'
WHERE COD_QLF = 5;

# 1 DELETE NA TABELA QUALIFICACOES
DELETE FROM QUALIFICACOES
WHERE COD_QLF = 6;

# 6 INSERTS NA TABELA PESSOAS_CONTATO
INSERT INTO PESSOAS_CONTATO(COD_PES_CONT, NOME_PES_CONT, CPF_PES_CONT) VALUES
(1,'João Silva', '123.456.789-00'),
(2,'Maria Oliveira', '234.567.890-11'),
(3,'Carlos Santos', '345.678.901-22'),
(4,'Ana Souza', '456.789.012-33'),
(5,'Pedro Costa', '567.890.123-44'),
(6,'Luciana Pereira', '678.901.234-55');

# 2 INSERTS NA TABELA PESSOAS_CONTATO
UPDATE PESSOAS_CONTATO
SET NOME_PES_CONT = 'Jonas Marçal'
WHERE COD_PES_CONT = 1;

UPDATE PESSOAS_CONTATO
SET NOME_PES_CONT = 'Gustavo Rocha'
WHERE COD_PES_CONT = 2;

# 1 DELETE NA TABELA PESSOAS_CONTATO
DELETE FROM PESSOAS_CONTATO
WHERE COD_PES_CONT = 6;

# 5 INSERTS NA TABELA CARGOS
INSERT INTO CARGOS(COD_CARGO, NOME_CARGO, DESC_FUNC_CARGO) VALUES
(1,'Gerente de Projetos','Gerenciar projetos'),
(2,'Analista de Sistemas','Analisar sistemas'),
(3,'Consultor Marketing','Especialista em marketing'),
(4,'Engenheiro Produção','Gerenciar produção'),
(5,'Especialista em RH','Liderar o departamento de recursos humanos');

# 2 UPDATES NA TABELA CARGOS
UPDATE CARGOS
SET NOME_CARGO = 'Engenheiro Ele.'
WHERE COD_CARGO = 1;

UPDATE CARGOS
SET DESC_FUNC_CARGO = 'Gerenciar sistemas elétricos'
WHERE COD_CARGO = 1;

# 1 DELETE NA TABELA CARGOS
DELETE FROM CARGOS
WHERE COD_CARGO = 5;

# 6 INSERTS NA TABELA PRODUTOS
INSERT INTO PRODUTOS (COD_PROD, NOME_PROD, COR_PROD, DIM_PROD, PESO_PROD, PRECO_PROD, TEMP_FAB_PROD, DESENHO_PROD, HRS_MOBRA_PROD) VALUES
(1, 'Cadeira', 'Azul', '50x50x90 cm', 5.500, 199.99, '2024-11-01', 0000, '15'),
(2, 'Mesa', 'Preta', '120x60x75 cm', 12.000, 299.99, '2024-10-15', 0000, '30'),
(3, 'Sofá', 'Cinza', '200x90x90 cm', 25.500, 799.99, '2024-09-10', 0000, '60'),
(4, 'Estante', 'Branca', '80x30x200 cm', 15.750, 450.50, '2024-08-20', 0000, '40'),
(5, 'Armário', 'Marrom', '100x50x150 cm', 30.000, 600.00, '2024-07-25', 0000, '50'),
(6, 'Cama', 'Branca', '190x80x50 cm', 20.000, 350.00, '2024-06-18', 0000, '25');

# 2 UPDATES NA TABELA PRODUTOS
UPDATE PRODUTOS
SET PRECO_PROD = 220.00
WHERE COD_PROD = 1;

UPDATE PRODUTOS
SET PESO_PROD = 26.000
WHERE COD_PROD = 3;

# 1 DELETE NA TABELA PRODUTOS
DELETE FROM PRODUTOS
WHERE COD_PROD = 6;

# 5 INSERTS NA TABELA TIPOS_COMPONENTES
INSERT INTO TIPOS_COMPONENTES(COD_TIP_COMP, NOME_TIP_COMP) VALUES
(1,'Parafuso'),
(2,'Roldana'), 
(3,'Polia'), 
(4,'Prego'), 
(5,'Sapato');

# 2 UPDATES NA TABELA TIPOS_COMPONENTES
UPDATE TIPOS_COMPONENTES
SET NOME_TIP_COMP = 'Borracha'
WHERE COD_TIP_COMP = 5;

UPDATE TIPOS_COMPONENTES
SET NOME_TIP_COMP = 'Borracha 2'
WHERE COD_TIP_COMP = 5;

# 1 DELETE NA TAEBELA TIPOS_COMPONENTES
DELETE FROM TIPOS_COMPONENTES
WHERE COD_TIP_COMP = 5; 

# 6 INSERTS NA TABELA MAQUINAS
INSERT INTO MAQUINAS(COD_MAQ, TEMP_VID_MAQ, DATA_CMP_MAQ, DATA_FIM_GART_MAQ) VALUES
(1,'1 ano','2024-10-10','2024-11-10'),
(2,'3 anos','2024-10-10','2025-02-10'),
(3,'3 anos','2024-10-10','2025-02-10'),
(4,'2 anos','2024-10-10','2025-03-10'),
(5,'2 anos','2024-10-10','2025-01-10'),
(6,'2 anos','2024-10-10','2025-01-10');

# 2 UPDATES NA TABELA MAQUINAS
UPDATE MAQUINAS
SET TEMP_VID_MAQ = '6 meses'
WHERE COD_MAQ = 1;

UPDATE MAQUINAS
SET TEMP_VID_MAQ = '1 ano'
WHERE COD_MAQ = 5;

# 1 DELETE NA TABELA MAQUINAS
DELETE FROM MAQUINAS
WHERE COD_MAQ = 6;

# 6 INSERTS NA TABELA EMPREGADOS
INSERT INTO EMPREGADOS (MATR_EMPREG, NOME_EMPREG, CPF_EMPREG, SAL_EMPREG, DATA_ADM_EMPREG, CARGO_EMPREG) VALUES
(1001,'Bukayo Saka','123.456.789-00','10000.00','2024-09-19',1),
(1002,'Martin Odegaard','133.456.789-00','10000.00','2024-09-19',1),
(1003,'Gabriel Martinelli','143.456.789-00','10000.00','2024-09-19',1),
(1004,'Kai Havertz','153.456.789-00','10000.00','2024-09-19',1),
(1005,'Gabriel Jesus','163.456.789-00','10000.00','2024-09-19',1),
(1006,'Granit Xhaka','173.456.789-00','10000.00','2024-09-19',1);

# 2 UPDATES NA TABELA EMPREGADOS
UPDATE EMPREGADOS
SET DATA_ADM_EMPREG = '2016-10-10'
WHERE MATR_EMPREG = 1006;

UPDATE EMPREGADOS
SET NOME_EMPREG = 'Lee Dixon'
WHERE MATR_EMPREG = 1006;

# 1 DELETE NA TABELA EMPREGADOS
DELETE FROM EMPREGADOS
WHERE MATR_EMPREG = 1006;

# 5 INSERTS NA TABELA ENDEREÇOS
INSERT INTO ENDERECOS (COD_ENDRC, CEP_ENDRC, RUA_ENDRC, NUM_ENDRC, COMP_ENDRC, LOG_ENDRC, BAIRRO_ENDRC, CID_ENDRC, ESTADO_ENDRC, TIPO_END_ENDRC, FORN_ENDRC, CLIENT_ENDRC, EMPREG_ENDRC) VALUES
(1, '12345-678', 'Rua A', NULL, 'Apartamento 12', 'Residencial', 'Centro', 'São Paulo', 'SP', 2, NULL, NULL, 1001),
(2, '23456-789', 'Rua B', NULL, 'Casa 3', 'Comercial', 'Vila Nova', 'Campinas', 'SP', 1, 2, NULL, NULL),
(3, '34567-890', 'Rua C', NULL, 'Cobertura', 'Residencial', 'Bela Vista', 'Rio de Janeiro', 'RJ', 2, NULL, NULL, 1003),
(4, '45678-901', 'Rua D', NULL, 'Loja 1', 'Comercial', 'Jardim das Flores', 'Belo Horizonte', 'MG', 1, 4, NULL, NULL),
(5, '56789-012', 'Rua E', NULL, 'Sala 10', 'Comercial', 'São Judas', 'Curitiba', 'PR', 1, 5, NULL, NULL);

# 2 UPDATES NA TABELA ENDEREÇOS
UPDATE ENDERECOS
SET NUM_ENDRC = 101
WHERE COD_ENDRC = 1;

UPDATE ENDERECOS
SET NUM_ENDRC = 2001
WHERE COD_ENDRC = 2;

# 1 DELETE NA TABELA ENDEREÇOS
DELETE FROM ENDERECOS
WHERE COD_ENDRC = 5;

# 5 INSERTS NA TABELA TELEFONES
INSERT INTO TELEFONES (DDD_TEL, NUM_TEL, FORN_TEL, CLIENT_TEL, EMPREG_TEL, PES_CONT_TEL) VALUES
('11', '987654321', 1, NULL, NULL, 1),
('21', '998877665', 2, NULL, NULL, 2),
('31', '987123456', 3, NULL, NULL, 3),
('41', '993456789', 4, NULL, NULL, 4),
('51', '998877334', 5, NULL, NULL, 5);

# 2 UPDATES NA TABELA TELEFONES
UPDATE TELEFONES
SET CLIENT_TEL = 3
WHERE DDD_TEL = '41' AND NUM_TEL = '993456789';

UPDATE TELEFONES
SET CLIENT_TEL = 3
WHERE DDD_TEL = '51' AND NUM_TEL = '998877334';

# 1 DELETE NA TABELA TELEFONES
DELETE FROM TELEFONES
WHERE DDD_TEL = '51' AND NUM_TEL = '998877334';

# 6 INSERTS NA TABELA ENCOMENDAS
INSERT INTO ENCOMENDAS (COD_ENCOM, DATA_INCL_ENCOM, VALOR_TOTAL_ENCOM, VALOR_DESC_ENCOM, QTD_PARC_ENCOM, ID_FORM_PAG_ENCOM, CLIENT_ENCOM)VALUES
(1, '2024-10-01', 1500.00, 100.00, 5, 1, 1),
(2, '2024-10-02', 2500.50, 150.00, 3, 2, 2),
(3, '2024-10-03', 3000.00, 200.00, 6, 1, 3),
(4, '2024-10-04', 4500.75, 250.00, 4, 3, 4),
(5, '2024-10-05', 1200.00, 50.00, 2, 2, 5),
(6, '2024-10-06', 1400.00, 0.00, 1, 1, 5);

# 2 UPDATES NA TABELA ENCOMENDAS
UPDATE ENCOMENDAS
SET VALOR_TOTAL_ENCOM = 590.00
WHERE COD_ENCOM = 3;

UPDATE ENCOMENDAS
SET VALOR_DESC_ENCOM = 59.00
WHERE COD_ENCOM = 3;

# 1 DELETE NA TABELA ENCOMENDAS
DELETE FROM ENCOMENDAS
WHERE COD_ENCOM = 6;

# 6 INSERTS NA TABELA COMPONENTES
INSERT INTO COMPONENTES (COD_COMP, NOME_COMP, QTD_EST_COMP, PRC_UNIT_COMP, UNIDADE_COMP, TIP_COMP_COMP) VALUES
(1, 'Parafuso', 100, 1.50, 'Unidade', 1),
(2, 'Roldana', 200, 5.25, 'Unidade', 2),
(3, 'Polia', 50, 15.00, 'Unidade', 3),
(4, 'Prego', 300, 0.50, 'Unidade', 4),
(5, 'Prego Circular', 150, 0.50, 'Par', 4),
(6, 'Prego Retangular', 150, 0.50, 'Par',4);

# 2 UPDATA NA TABELA COMPONENTES
UPDATE COMPONENTES
SET NOME_COMP = 'Prego Cúbico'
WHERE COD_COMP = 6;

UPDATE COMPONENTES
SET NOME_COMP = 'Prego Cúbico'
WHERE COD_COMP = 5;

# 1 DELETE NA TABELA COMPONENTES
DELETE FROM COMPONENTES
WHERE COD_COMP = 6;

# 5 INSERTS NA TABELA REGISTROS_MANUTENCAO
INSERT INTO REGISTROS_MANUTENCAO (COD_RM, DATA_RM, DESC_RM, MAQ_RM) VALUES
(1, '2024-12-01', 'Funcionou', 1),
(2, '2024-12-02', 'Deu ruim', 2),
(3, '2024-12-03', 'Já era', 3),
(4, '2024-12-04', 'Acabou', 4),
(5, '2024-12-05', 'Acabou', 5);

# 2 UPDATA NA TABELA REGISTROS_MANUTENCAO
UPDATE REGISTROS_MANUTENCAO
SET DATA_RM = '2024-12-09'
WHERE COD_RM = 4;

UPDATE REGISTROS_MANUTENCAO
SET DATA_RM = '2024-12-07'
WHERE COD_RM = 3;

# 1 DELETE NA TABELA REGISTROS_MANUTENCAO
DELETE FROM REGISTROS_MANUTENCAO
WHERE COD_RM = 5;

# 5 INSERTS NA TABELA REGISTROS_ESPECIFICOS
INSERT INTO REGISTROS_ESPECIFICOS (COD_RE, QTD_NEC_RE, UNID_RE, TEMP_USO_RE, HRS_MOBRA_RE, MAQ_RE, COMP_RE, EMPREG_RE, PROD_RE) VALUES
(1, 50, 'Unidade', '12h', '8h', 1, 1, 1001, 1),
(2, 100, 'Unidade', '24h', '10h', 2, 2, 1002, 2),
(3, 75, 'Par', '8h', '6h', 3, 3, 1003, 3),
(4, 200, 'Unidade', '48h', '12h', 4, 4, 1004, 4),
(5, 150, 'Unidade', '36h', '9h', 5, 5, 1005, 5);

# 2 UPDATES NA TABELA REGISTROS_ESPECIFICOS
UPDATE REGISTROS_ESPECIFICOS
SET QTD_NEC_RE = 65
WHERE COD_RE = 1;

UPDATE REGISTROS_ESPECIFICOS
SET HRS_MOBRA_RE = '12h'
WHERE COD_RE = 3;

# 1 DELETE NA TABELA REGISTROS_ESPECIFICOS
DELETE FROM REGISTROS_ESPECIFICOS
WHERE COD_RE = 5;

# 5 INSERTS NA TABELA REGISTROS_SUPRIMENTO
INSERT INTO REGISTROS_SUPRIMENTO(RGSP_PROD, RGSP_COMP, RGSP_QTD, RGSP_DATA_NEC) VALUES
(1,1,10,'2024-10-11'),
(2,2,15,'2024-10-13'),
(3,3,11,'2024-10-17'),
(4,4,14,'2024-10-17'),
(5,5,14,'2024-10-19');

# 2 UPDATES NA TABELA REGISTROS_SUPRIMENTO
UPDATE REGISTROS_SUPRIMENTO
SET RGSP_DATA_NEC = '2025-01-09'
WHERE RGSP_PROD = 1;

UPDATE REGISTROS_SUPRIMENTO
SET RGSP_QTD = 29
WHERE RGSP_PROD = 1;

# 1 DELETE NA TABELA REGISTROS_SUPRIMENTO
DELETE FROM REGISTROS_SUPRIMENTO
WHERE RGSP_PROD = 5;

# 5 INSERTS NA TABELA PRODUTOS_ENCOMENDAS
INSERT INTO PRODUTOS_ENCOMENDAS(PREN_PROD, PREN_ENCOM) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

# 2 UPDATES NA TABELA PRODUTOS_ENCOMENDAS
UPDATE PRODUTOS_ENCOMENDAS
SET PREN_ENCOM = 4
WHERE PREN_PROD = 5;

UPDATE PRODUTOS_ENCOMENDAS
SET PREN_ENCOM = 4
WHERE PREN_PROD = 3;

# 1 DELETE NA TABELA PRODUTOS_ENCOMENDAS
DELETE FROM PRODUTOS_ENCOMENDAS
WHERE PREN_PROD = 5;

# 5 INSERTS NA TABELA EMPREGADOS_QUALIFICACOES
INSERT INTO EMPREGADOS_QUALIFICACOES(EMQL_EMPREG, EMQL_QLF) VALUES
(1001,1),
(1002,2),
(1003,3),
(1004,4),
(1005,5);

# 2 UPDATES NA TABELA EMPREGADOS_QUALIFICACOES
UPDATE EMPREGADOS_QUALIFICACOES
SET EMQL_QLF = 4
WHERE EMQL_EMPREG = 1005;

UPDATE EMPREGADOS_QUALIFICACOES
SET EMQL_QLF = 4
WHERE EMQL_EMPREG = 1003;

# 1 DELETE NA TABELA EMPREGADOS_QUALIFICACOES
DELETE FROM EMPREGADOS_QUALIFICACOES
WHERE EMQL_EMPREG = 1005;

# 5 INSERTS NA TABELA COMPONENTES_FORNECEDORES
INSERT INTO COMPONENTES_FORNECEDORES(CMFR_COMP, CMFR_FORN) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

# 2 UPDATES NA TABELA COMPONENTES_FORNECEDORES
UPDATE COMPONENTES_FORNECEDORES
SET CMFR_COMP = 4
WHERE CMFR_FORN = 5;

UPDATE COMPONENTES_FORNECEDORES
SET CMFR_COMP = 4
WHERE CMFR_FORN = 2;

# 1 DELETE NA TABELA COMPONENTES_FORNECEDORES
DELETE FROM COMPONENTES_FORNECEDORES
WHERE CMFR_FORN = 5;

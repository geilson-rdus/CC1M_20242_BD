use EST_CASO_II;

INSERT INTO PASSAGEIROS (PASS_CPF, PASS_NOME, PASS_DATANASC, PASS_TEL, PASS_EMAIL, PASS_CEP, PASS_RUA, PASS_RES_NUM, PASS_BAIRRO, PASS_CIDADE, PASS_UF, PASS_PAIS) VALUES
('123.456.789-00', 'Ana Clara Silva', '1985-04-15', '(27) 99999-1111', 'ana.silva@gmail.com','29101-000', 'Rua das Flores', NULL, 'Centro', 'Vila Velha', 'ES', 'Brasil'),
('987.654.321-11', 'João Pedro Oliveira', '1990-11-30', '(27) 98888-2222', 'joao.oliveira@hotmail.com', '29060-200', 'Avenida Vitória', NULL, 'Santa Lúcia', 'Vitória', 'ES', 'Brasil'),
('456.789.123-22', 'Beatriz Santos', '1978-07-22', '(21) 97777-3333', 'bia.santos@yahoo.com', '22041-001', 'Rua Barata Ribeiro', NULL, 'Copacabana', 'Rio de Janeiro', 'RJ', 'Brasil'),
('321.654.987-33', 'Carlos Alberto Costa', '2001-09-12', '(11) 96666-4444', 'carlos.costa@outlook.com', '01311-000', 'Avenida Paulista', NULL, 'Bela Vista', 'São Paulo', 'SP', 'Brasil'),
('654.321.987-44', 'Mariana Souza', '1995-02-05', '(31) 95555-5555', 'mariana.souza@gmail.com', '30140-100', 'Rua da Bahia', NULL, 'Lourdes', 'Belo Horizonte', 'MG', 'Brasil');

UPDATE PASSAGEIROS
SET PASS_RES_NUM = 208
WHERE PASS_CPF = '123.456.789-00';

UPDATE PASSAGEIROS
SET PASS_RES_NUM = 302
WHERE PASS_CPF = '987.654.321-11';

DELETE FROM PASSAGEIROS
WHERE PASS_CPF = '654.321.987-44';

INSERT INTO AERONAVES (AERON_PREFIX, AERON_MODEL, AERON_ANOFABR, AERON_AUTON, AERON_CAPAC, AERON_FABR) VALUES 
('PR-ABC', 'Boeing 737', 2015, '6 horas', 180, 'Boeing'),
('PT-DEF', 'Airbus A320', 2018, '5 horas', 150, 'Airbus'),
('PP-GHI', 'Embraer E190', 2020, '4 horas', 114, 'Embraer'),
('PS-JKL', 'Cessna 172', 2010, '3 horas', 4, 'Cessna'),
('PH-MNO', 'Gulfstream G550', 2019, '12 horas', 16, 'Gulfstream');

UPDATE AERONAVES
SET AERON_ANOFABR = 2023
WHERE AERON_PREFIX = 'PR-ABC';

UPDATE AERONAVES
SET AERON_ANOFABR = 2021
WHERE AERON_PREFIX = 'PT-DEF';

DELETE FROM AERONAVES
WHERE AERON_PREFIX = 'PH-MNO';

INSERT INTO AEROPORTOS (AEROP_COD, AEROP_NOME, AEROP_CIDADE, AEROP_PAIS, AEROP_LATITUDE, AEROP_LONGITUDE) VALUES 
(101, 'Aeroporto Internacional de São Paulo-Guarulhos', 'São Paulo', 'Brasil', 3.43, 6.47),
(102, 'Aeroporto Internacional Tom Jobim', 'Rio de Janeiro', 'Brasil', 2.81, 3.25),
(103, 'Aeroporto de Lisboa', 'Lisboa', 'Portugal', 8.77, 9.13),
(104, 'Aeroporto Internacional John F. Kennedy', 'Nova York', 'Estados Unidos', 4.64, 7.78),
(105, 'Aeroporto de Heathrow', 'Londres', 'Reino Unido', 5.47, 0.45);
    
UPDATE AEROPORTOS 
SET AEROP_NOME = 'Aeroporto Humberto Delgado'
WHERE AEROP_COD = 103;

UPDATE AEROPORTOS 
SET AEROP_NOME = 'Galeão'
WHERE AEROP_COD = 102;

DELETE FROM AEROPORTOS 
WHERE AEROP_COD = 105;


INSERT INTO FUNCIONARIOS (FUNC_ID, FUNC_NOME, FUNC_DATANASC, FUNC_TEL, FUNC_EMAIL, FUNC_CEP, FUNC_RUA, FUNC_RES_NUM, FUNC_BAIRRO, FUNC_CIDADE, FUNC_UF, FUNC_PAIS, FUNC_FUNCAO) VALUES 
(1, 'Pedro Almeida', '1988-03-12', '(11) 91234-5678', 'pedro.almeida@gmail.com', '01001-000', 'Rua São Bento', 50, 'Centro', 'São Paulo', 'SP', 'Brasil', 'Piloto'),
(2, 'Larissa Costa', '1995-07-22', '(21) 99876-5432', 'larissa.costa@yahoo.com', '20230-100', 'Avenida Atlântica', 300, 'Copacabana', 'Rio de Janeiro', 'RJ', 'Brasil', 'Piloto'),
(3, 'Miguel Ferreira', '1980-11-15', '(31) 93322-1111', 'miguel.ferreira@outlook.com', '30140-100', 'Rua da Bahia', 150, 'Lourdes', 'Belo Horizonte', 'MG', 'Brasil', 'Comissário de Bordo'),
(4, 'Patrícia Moreira', '1992-04-05', '(41) 98765-4321', 'patricia.moreira@hotmail.com', '80050-150', 'Rua XV de Novembro', 250, 'Centro', 'Curitiba', 'PR', 'Brasil', 'Comissário de Bordo'),
(5, 'Carlos Eduardo', '1985-09-08', '(27) 95555-5555', 'carlos.eduardo@gmail.com', '29101-020', 'Rua das Flores', 120, 'Centro', 'Vila Velha', 'ES', 'Brasil', 'Piloto');
    
UPDATE FUNCIONARIOS 
SET FUNC_FUNCAO = 'Copiloto'
WHERE FUNC_ID = 1;

UPDATE FUNCIONARIOS 
SET FUNC_EMAIL = 'larissa.costa@empresa.com'
WHERE FUNC_ID = 2;

DELETE FROM FUNCIONARIOS 
WHERE FUNC_ID = 5;

INSERT INTO VOOS (VOO_ID, VOO_DATA, VOO_HORA, VOO_AERON) VALUES 
(511, '2024-12-01', '08:30:00', 'PR-ABC'),
(512, '2024-12-01', '12:45:00', 'PT-DEF'),
(513, '2024-12-02', '16:15:00', 'PP-GHI'),
(514, '2024-12-03', '10:00:00', 'PS-JKL'),
(515, '2024-12-04', '14:30:00', 'PP-GHI');

UPDATE VOOS 
SET VOO_HORA = '09:00:00'
WHERE VOO_ID = 511;

UPDATE VOOS 
SET VOO_DATA = '2024-12-05'
WHERE VOO_ID = 512;

DELETE FROM VOOS 
WHERE VOO_ID = 205;

INSERT INTO RESERVAS (RESERV_COD, RESERV_PASS, RESERV_VOO) VALUES 
(3021, '123.456.789-00', 511),
(3022, '987.654.321-11', 512),
(3023, '456.789.123-22', 513),
(3024, '321.654.987-33', 514),
(3025, '123.456.789-00', 514);

UPDATE RESERVAS 
SET RESERV_VOO = 512
WHERE RESERV_COD = 3021;

UPDATE RESERVAS 
SET RESERV_PASS = '456.789.123-22'
WHERE RESERV_COD = 3022;

DELETE FROM RESERVAS
WHERE RESERV_COD = 3025;

INSERT INTO VOOS_FUNCIONARIOS(VF_VOO, VF_FUNC) VALUES
(511,1),
(511,2),
(511,3),
(511,4),
(514,1);

UPDATE VOOS_FUNCIONARIOS
SET VF_VOO = 512
WHERE VF_FUNC = 2;

UPDATE VOOS_FUNCIONARIOS
SET VF_VOO = 512
WHERE VF_FUNC = 3;

DELETE FROM VOOS_FUNCIONARIOS
WHERE VF_FUNC = 1;

INSERT INTO VOOS_AEROPORTOS (VA_VOO, VA_AEROP, VA_STATUS) VALUES 
(511, 101, 'SAIDA'),  
(511, 102, 'CHEGADA'), 
(513, 103, 'SAIDA'),  
(514, 104, 'CHEGADA'), 
(514, 101, 'SAIDA');

UPDATE VOOS_AEROPORTOS 
SET VA_STATUS = 'CHEGADA'
WHERE VA_VOO = 511 AND VA_AEROP = 101;

UPDATE VOOS_AEROPORTOS 
SET VA_STATUS = 'SAIDA'
WHERE VA_VOO = 511 AND VA_AEROP = 102; 

DELETE FROM VOOS_AEROPORTOS
WHERE VA_VOO = 513; 

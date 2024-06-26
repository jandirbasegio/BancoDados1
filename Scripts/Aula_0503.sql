-- Criar novo BD
CREATE DATABASE GREENHOUSE;

-- UTILIZANDO O BD

USE GREENHOUSE;

-- CRIANDO UMA TABELA

CREATE TABLE `GREENHOUSE`.`PLANTS`(
	`PLANT_NAME` CHAR (30) NOT NULL,
    `SENSOR_VALUE`  FLOAT DEFAULT NULL,
    `SENSOR_EVENT` TIMESTAMP NOT NULL
		DEFAULT CURRENT_TIMESTAMP ON
        UPDATE CURRENT_TIMESTAMP,
    `SENSOR_LEVEL` CHAR (5) DEFAULT NULL,
    PRIMARY KEY `PK_PLANT_NAME` (`PLANT_NAME`)
);        
  
  -- COMANDOS DML DE INSERÇÃO DE DADOS
 
 INSERT INTO `GREENHOUSE`.`PLANTS`
 (`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
 VALUES ('Orquidea','10','HIGH');
 
 INSERT INTO `GREENHOUSE`.`PLANTS`
 (`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
 VALUES ('Palmeira','15','HIGH');
  
INSERT INTO `GREENHOUSE`.`PLANTS`
 (`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
 VALUES ('Pinheiro','20','HIGH');
 
 INSERT INTO `GREENHOUSE`.`PLANTS`
 (`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
 VALUES ('Babosa','25','HIGH');
 
INSERT INTO `GREENHOUSE`.`PLANTS`
 (`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
 VALUES ('rosa','10','HIGH'); 

INSERT INTO `GREENHOUSE`.`PLANTS`
 (`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
 VALUES ('Girassol','32','HIGH');  
 
INSERT INTO `GREENHOUSE`.`PLANTS`
 (`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
 VALUES ('Coqueiro','27','HIGH'); 
 
INSERT INTO `GREENHOUSE`.`PLANTS`
 (`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
 VALUES ('Samanbaia','22','HIGH'); 
 
INSERT INTO `GREENHOUSE`.`PLANTS`
 (`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
 VALUES ('Violeta','50','HIGH'); 
 
INSERT INTO `GREENHOUSE`.`PLANTS`
 (`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
 VALUES ('Lirios','100','MID'); 
 
 INSERT INTO `GREENHOUSE`.`PLANTS`
 (`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
 VALUES ('Copo de leite','250','LOW'); 
 
 INSERT INTO `GREENHOUSE`.`PLANTS`
 (`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
 VALUES ('Eucalipto','500','MID'); 
 
 INSERT INTO `GREENHOUSE`.`PLANTS`
 (`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
 VALUES ('Beteraba','350','LOW'); 
 
 
-- executando comandos DQL - SELECT 
-- Consultando tudo na tabela

SELECT * FROM `GREENHOUSE`.`PLANTS`;

-- Especificando apenas colunas desejadas

SELECT PLANT_NAME, SENSOR_EVENT
FROM  PLANTS;


-- Aplicar filtros nos registros de dados 

SELECT * FROM PLANTS
WHERE SENSOR_LEVEL = 'HIGH'
AND SENSOR_VALUE >= 10 AND SENSOR_VALUE <= 20;

SELECT * 
FROM PLANTS
WHERE
SENSOR_LEVEL IN ('HIGH', 'LOW');

-- CLAUSULA DE ORDENAÇÃO 
SELECT * 
FROM  PLANTS
WHERE SENSOR_VALUE < 420
ORDER BY SENSOR_VALUE DESC;

-- FUNÇÕES DE AGRUPAMENTO

SELECT COUNT(*), SENSOR_LEVEL
FROM PLANTS
GROUP BY SENSOR_LEVEL



-- Função de agrupamento SELECT TOP

SELECT * FROM PLANTS
LIMIT 30; 

-- FUNÇÃO DE AGRUPAMENTO MIN, MAX

SELECT MAX(SENSOR_VALUE)
FROM PLANTS;

SELECT MIN(SENSOR_VALUE)
FROM PLANTS;







-- COMANDO UPDATE PARA ATUALIZAR REGISTRO DE DADOS

SELECT * FROM PLANTS;

UPDATE PLANTS
SET SENSOR_VALUE = 90, SENSOR_LEVEL = 'MID'
WHERE PLANT_NAME = 'Babosa';

-- APAGANDO REGISTROS DA TABELA DO BANCO DE DADOS
DELETE FROM PLANTS
WHERE PLANT_NAME = 'Coqueiro';


--  1.4 Um comerciante comprou um produto e quer vendê-lo com um lucro de 45% se o valor da compra for menor que R$20. Caso contrário, ele deseja lucro de 30%. Faça um programa que, dado o valor do produto, calcula o valor de venda.
-- CASE
DO $$
DECLARE
    valor_compra INT := valor_aleatorio_entre(1,100);
    valor_venda FLOAT ;
    acrescimo_venda FLOAT ;
BEGIN
    CASE
        WHEN valor_compra <20 THEN
        acrescimo_venda := valor_compra * 0.45;
        valor_venda := acrescimo_venda + valor_compra;
        ELSE
        acrescimo_venda := valor_compra * 0.30;
        valor_venda := acrescimo_venda + valor_compra;
    RAISE NOTICE 
    'o valor de compra foi: %, e com o acréscimo de: %, o valor de venda será de: %',
     valor_compra, acrescimo_venda, valor_venda;
    END CASE;
END;
$$


-- -- IF 
-- DO $$
-- DECLARE
--     valor_compra INT := valor_aleatorio_entre(1,100);
--     valor_venda FLOAT ;
--     acrescimo_venda FLOAT ;
-- BEGIN
--     IF valor_compra < 20 THEN
--         acrescimo_venda := valor_compra * 0.45;
-- 		valor_venda := acrescimo_venda + valor_compra;
--     ELSE
--     	acrescimo_venda := valor_compra *0.30;
-- 		valor_venda := acrescimo_venda + valor_compra;
--     END IF;

-- 	RAISE NOTICE 
--     'o valor de compra foi: %, e com o acréscimo de: %, o valor de venda será de: %',
--      valor_compra, acrescimo_venda, valor_venda;
-- END;
-- $$
--1.3 Faça um programa que opera de acordo com o seguinte menu.
-- -- CASE
-- DO
-- $$
-- DECLARE
--     op1 INT := valor_aleatorio_entre(1,100);
--     op2 INT := valor_aleatorio_entre(1,100);
--     op INT := 1;
--     rest INT;
-- BEGIN
--     RAISE NOTICE '
--     Qual operaçõe deseja executar?
--     Opções:
--      1 - Soma
--      2 - Subtração
--      3 - Multiplicação
--      4 - Divisão';
--     CASE 
-- 	WHEN op = 1 THEN 
--        		rest = op1 + op2;
--         	RAISE NOTICE'% + % = %',op1,op2,rest;
--     	WHEN op = 2 THEN 
--         	rest = op1 - op2;
--         	RAISE NOTICE'% - % = %',op1,op2,rest;
--     	WHEN op = 3 THEN 
--         	rest = op1 * op2;
--         	RAISE NOTICE'% * % = %',op1,op2,rest;
--     	WHEN op = 4 THEN 
--         	rest = op1 / op2;
--         	RAISE NOTICE'% / % = %',op1,op2,rest;
--     	ELSE
--         	RAISE NOTICE'Opção inválida';
--     END CASE;
-- END 
-- $$

-- IF
-- DO
-- $$
-- DECLARE
--     op1 INT := valor_aleatorio_entre(1,100);
--     op2 INT := valor_aleatorio_entre(1,100);
--     op INT := 4;
--     rest INT;
-- BEGIN
--     RAISE NOTICE '
--     Qual operaçõe deseja executar?
--     Opções:
--      1 - Soma
--      2 - Subtração
--      3 - Multiplicação
--      4 - Divisão';
--     IF op = 1 THEN 
--         rest = op1 + op2;
--         RAISE NOTICE'% + % = %',op1,op2,rest;
--     ELSEIF op = 2 THEN 
--         rest = op1 - op2;
--         RAISE NOTICE'% - % = %',op1,op2,rest;
--     ELSEIF op = 3 THEN 
--         rest = op1 * op2;
--         RAISE NOTICE'% * % = %',op1,op2,rest;
--     ELSEIF op = 4 THEN 
--         rest = op1 / op2;
--         RAISE NOTICE'% / % = %',op1,op2,rest;
--     ELSE
--         RAISE NOTICE'Opção inválida';
--     END IF;
-- END 
-- $$

-- 1.2 Faça um programa que exibe se um número inteiro é múltiplo de 3 ou de 5.
-- CASE

-- DO
-- $$
-- DECLARE 
--     numero INT := valor_aleatorio_entre(1,100);
-- BEGIN
--     CASE 
--         WHEN numero % 3 = 0 and numero % 5 = 0 THEN 
--             RAISE NOTICE '% é um número múltiplo de 3 e de 5', numero;
--         WHEN numero % 3 = 0 THEN 
--             RAISE NOTICE '% é um número múltiplo de 3', numero;
--         WHEN numero % 5 = 0 THEN 
--             RAISE NOTICE '% é um número múltiplo de 5', numero;
--         ELSE
--             RAISE NOTICE '%  não é um número múltiplo de 3 e nem de 5', numero;
--     END CASE; 
-- END 
-- $$

-- IF 
-- DO
-- $$
-- DECLARE 
--     numero INT := valor_aleatorio_entre(1,100);
-- BEGIN
--     IF numero % 3 = 0 and numero % 5 = 0 THEN 
--         RAISE NOTICE '% é um número múltiplo de 3 e de 5', numero;
--     ELSEIF numero % 3 = 0 THEN 
--         RAISE NOTICE '% é um número múltiplo de 3', numero;
--     ELSEIF numero % 5 = 0 THEN 
--         RAISE NOTICE '% é um número múltiplo de 5', numero;
--     ELSE
--         RAISE NOTICE '%  não é um número múltiplo de 3 e nem de 5', numero;
--     END IF; 
-- END 
-- $$

-- 1.1 Faça um programa que exibe se um número inteiro é múltiplo de 3
-- CASE 
-- DO
-- $$
-- DECLARE 
--     numero INT := valor_aleatorio_entre(1,100);
-- BEGIN
--     CASE
--         WHEN numero % 3 = 0 THEN 
--             RAISE NOTICE '% é um número múltiplo de 3', numero;
--         ELSE
--             RAISE NOTICE '%  não é um número múltiplo de 3', numero;
--     END CASE; 
-- END 
-- $$

-- IF 
-- DO
-- $$
-- DECLARE 
--     numero INT := valor_aleatorio_entre(1,100);
-- BEGIN
--     IF numero % 3 = 0 THEN 
--         RAISE NOTICE '% é um número múltiplo de 3', numero;
--     ELSE
--         RAISE NOTICE '%  não é um número múltiplo de 3', numero;
--     END IF; 
-- END 
-- $$

-- CREATE OR REPLACE FUNCTION valor_aleatorio_entre (lim_inferior INT, lim_superior
-- INT) RETURNS INT AS
-- $$
-- BEGIN
-- RETURN FLOOR(RANDOM() * (lim_superior - lim_inferior + 1) + lim_inferior)::INT;
-- END;
-- $$ LANGUAGE plpgsql;


SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;
-- resultado da consulta Tijuca, Jardins, Copacabana, Santo Amaro

SELECT * FROM tabela_de_clientes WHERE BAIRRO IN ('Tijuca', 'Jardins', 'Copacabana', 'Santo Amaro');
-- Pegou o resultado do select em cima e realizou a consulta.

SELECT * FROM tabela_de_clientes WHERE BAIRRO IN (SELECT DISTINCT BAIRRO FROM tabela_de_vendedores);
-- mesmo resultado que em cima, porem usando o subSelect direto nele mesmo.

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) FROM tabela_de_produtos
GROUP BY EMBALAGEM;
-- Garrafa	13.312 | Lata	4.56 | PET	38.012

-- Agora pegar o resultado de cima e fazer outro select para pegar os que são acima de 10.

SELECT X.EMBALAGEM, X.MAX_PRECO FROM (SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) MAX_PRECO FROM tabela_de_produtos
GROUP BY EMBALAGEM) X
WHERE X.MAX_PRECO >= 10;

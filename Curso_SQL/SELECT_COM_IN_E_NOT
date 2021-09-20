select * from tabela_de_produtos where PRECO_DE_LISTA BETWEEN 19.50 and 19.52;


/* somente cliente que NÃO moram no Rio de Janeiro */
SELECT * FROM tabela_de_clientes WHERE NOT CIDADE = 'Rio de Janeiro';

/* Clientes que moram em São Paulo OU Rio de Janeiro com a idade entre 20 e 25 anos. */
SELECT * FROM tabela_de_clientes WHERE CIDADE IN ('São Paulo', 'Rio de Janeiro')
and (IDADE >= 20 AND IDADE <= 25);
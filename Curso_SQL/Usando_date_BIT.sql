CREATE table tbvendedor
( Matricula VARCHAR (10),
Nome VARCHAR (150),
Comissao FLOAT,
Data_de_admissao date, /* TIPO DATE */
Esta_de_ferias bit ); /* TIPO BIT, recebe somente 0 ou 1, e tem o sentido de que 0 é falso e um é verdadeiro */

INSERT INTO tbvendedor
(MATRICULA, NOME, Data_de_admissao, Comissao, Esta_de_ferias)
VALUES
('00235','Márcio Almeida Silva','2014-08-15',0.08,0); /* VEJA QUE AQUI O DATA ESTA ANO-MES-DIA / BIT 0 NÃO ESTA DE FERIAS */

INSERT INTO tbvendedor
(MATRICULA, NOME, Data_de_admissao, Comissao, Esta_de_ferias)
VALUES
('00236','Cláudia Morais','2013-09-17',0.08,1); /* TIPO BIT 1 - ESTÁ DE FÉRIAS */

SELECT * FROM tbvendedor;
/* RESULTADO
00235	Márcio Almeida Silva	0.08	2014-08-15	0
00236	Cláudia Morais	0.08	2013-09-17	1 */
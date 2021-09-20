CREATE DATABASE SUCO; /*criando um banco de dados com nome suco.*/

DROP DATABASE SUCO; /*removendo um banco de dados com nome suco se tiver.*/


USE SUCO; /*Usando o banco de dados para proximos comandos.*/


/*criando uma tabela com nome tbVendedor*/
CREATE TABLE tbVendedor 
( Matricula VARCHAR (45),
NOME VARCHAR (150),
COMISSAO FLOAT);

/*inserindo dados na tabela tbVendedor*/
INSERT INTO tbVendedor (Matricula, Nome, Comissao)
VALUES ('00235', 'Márcio Almeida Silva', 0.08);
INSERT INTO tbVendedor (Matricula, Nome, Comissao)
VALUES ('00236', 'Cláudia Morais', 0.08);

/*Selecionando todos os registros da tabela tbVendedor */
select * from tbvendedor;

/* Deletando vendedor com a matricula 00233 */
DELETE FROM tbvendedor WHERE Matricula = '00233';
/* Alterando a Tabela e adicionando Matricula como Chave Primaria */
ALTER TABLE tbvendedor ADD PRIMARY KEY (Matricula);
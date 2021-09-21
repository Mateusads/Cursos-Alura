# Cursos extra da Alura

## Debug

Breakpoint - Técnicas para debugar uma aplicação Java, desde o início, quando podemos navegar nela, parando em um determinado ponto.

Breakpoints condicionais - Que param apenas em determinadas condições previamente especificadas. E também sobre breakpoints condicionais com exceção. Quando lançamos uma determinada exceção, colocamos a que queremos em modo debug para verificação. 

        -Step Into - Entra em uma função para verificar o cod. que é chamado.

        -Step Over - Vai para proxima linha de cod.

        -Step Return - Volta da função que entrou.

        Watch - Para visualizar a variável somente no expect. 
        
        Show - Útil em mostrar informações quando passamos o mouse em cima do código
        
        Inspect - Executa um determinado método cujo resultado queremos obter sem que precisemos entrar nele e debugar.
 
Debug deploy - Para fazer um debug em um server deve subir o apache Tomcat com o comando "catalina jspa start", você passando esse comando o Tomcat vai subir e liberar uma porta para o Java fazer o debug, a padrão é 8000 mais pode ser alterada.

Depois da configuração no eclipse sobre a url e tendo o cod. fonte da aplição, ao rodar o servidor e colocar o breakpoint ja pode ir rodando para fazer seu debug.

## SQL

Começando em introdução do sql, no curso vamos usar o Mysql, porem tirando algumas funções especificas, são bem parecida com as SQL de outros por usar esse padrão feito por E. F. Codd conhecido como Padrão ANSI (Instituto Nacional Americano de Padrões") 

                CREATE DATABASE SUCO;
                DROP DATABASE SUCO;

Create - Criando o banco com o nome suco.
DROP - Apagando o banco inteiro com o comando drop.

Apesar de termos um monte de tipo de dados que podem ser armazenados, temos os mais comuns que vamos usar como Varchar() - como se fosse uma String em java, Int() para numeros grandes, smallint ou bigint conforme precisar, e para ponto flutuante usamos float(), mas temos outros tipos como double.

Query - Seria uma consulta, porém usamos essa nomeclatura para uma sintaxe do SQL como select, create, drop entre outros, ou seja ela é o comando que será execultado, logo mais terá alguns exemplos de como usar cada um.

                CREATE TABLE tbVendedor ( Matricula VARCHAR (45), NOME VARCHAR (150), COMISSAO FLOAT);

                INSERT INTO tbVendedor (Matricula, Nome, Comissao) VALUES ('00235', 'Márcio Almeida Silva', 0.08);

                UPDATE tbVendedor SET Nome = 'Márcio Almeida Silva JR' WHERE Matricula = '00235';

CREATE TABLE - Foi criado uma tabela dentro do banco de dados com nome da table (tbVendedor) e os campos da tabela.

INSERT INTO  - Comando para inserir dados na tabela, com a sintaxe assim, primeiro os campos, após os dados na mesma ordem que os campos foram descritos. 

UPDATE - Atualizar algum dado dentro da tabela usando uma condição WHERE, nesse caso quando a matrícula for igual a '00235'.

                DELETE FROM tbvendedor WHERE Matricula = '00233';
                ALTER TABLE tbvendedor ADD PRIMARY KEY (Matricula);
DELETE - Diferente do Drop onde apaga elementos do Banco, DELETE apaga dados incluidos, como um vendedor, um produto, (ATENÇÃO) caso não for colocado o WHERE e a condição, ele apaga todos os registros.

ALTER TABLE - Esse altera os componentes, no caso foi especificado que a Matricula é uma Primary Key, essa especificação poderia ser colocado já na criação da tabela, para fins didáticos foi inserido com Alter Table. 

Para incluir o campo data em MYSQL tem uma forma universal usando ANO-MES-DIA dessa forma '1993-09-14'.

                INSERT INTO tbcliente (CPF, NOME, DATA_NASCIMENTO) VALUES ('00388934505','João da Silva', '1989-10-05');

Usando Select para filtrar dados, podendo usar lógica como And e Or, ou simples, tabem possui algumas palavras chaves como Beetwen.

                SELECT * FROM tbproduto WHERE PRECO_LISTA BETWEEN 16.007 AND 16.009; 
                /* Usando com operadores lógicos */
                SELECT * FROM tbcliente WHERE (IDADE >= 18 AND IDADE <= 22 AND SEXO = 'M') OR (cidade = 'Rio de Janeiro' OR BAIRRO = 'Jardins');

Operadores lógicos possui um contexto de verdadeiro ou falso, e o MYSQL só retorna quando a query é verdadeira, mas caso queira inverter a lógica possui um operador NOT.

                SELECT * FROM tabela_de_clientes WHERE NOT CIDADE = 'Rio de Janeiro';

Com exemplo desta consulta usando NOT CIDADE só será retornado Cliente que (NÃO) moram no Rio de Janeiro.

IN - podemos usar o in para simplificar mais o resultado seria o mesmo que o OR nesse exemplo.

                SELECT * FROM tabela_de_clientes WHERE CIDADE IN ('São Paulo', 'Rio de Janeiro')
                AND (IDADE >= 20 AND IDADE <= 25);

* * Retorna clientes que moram em São Paulo "OU" Rio de Janeiro com a idade entre 20 e 25 anos.

LIKE - Com operador LIKE podemos buscar por algum pedaço do nome, e usando o % podemos definiar se pode ser em qualquer parte do texto '%text%', começa com ele 'texto%', ou termina '%texto', então depende onde o % for o resultado será diferente. 

* Exemplo.

                SELECT * FROM tabela_de_clientes WHERE NOME LIKE 'A%'

* * Retorna os cliente que começam com a leta A por isso o % vai no final.

DISTINCT - Na exibição não mostra sequencias repitidas, ou seja nesse exemplo abaixo o retorno será onde a junção de embalagens e tamanho não se repita, não vai exibir dois PET 2L por exemplo.

                SELECT DISTINCT EMBALAGEM, TAMANHO FROM tabela_de_produtos;
                
* * Retorna os tipo de embalagem e os tamanhos sem repetir, pode ser visto no doc. [Select usando like e Distinct](https://github.com/Mateusads/Cursos-Alura/blob/main/Curso_SQL/SELECT_USANDO_LIKE_E_DISTINCT.sql).

LIMIT - Usando sempre por ultimo em uma Query, serve para limitar a quantidade de resultados, ou seja usando LIMIT 5 traz os 5 primeiros resultados, porém podemos usar LIMIT 3,5 -> O 3 DIZ QUE APARTIR DO 3º elemento lembrando que começa a contagem do 0, e após o 3 conta mais 4 abaixo para fexar 5 elementos.

                SELECT * FROM tabela_de_clientes LIMIT 4,2;

* *  Retorna apartir do 4º elemento da tabela, e mais um abaixo somando 2 registros.

CASE - Parecido com IF case é para verificar alguma condição, temos um exemplo que damos uma nomeclatura para dependendo do preço, se é caro ou barato.

                        SELECT NOME_DO_PRODUTO, PRECO_DE_LISTA, 
                        CASE
                                WHEN PRECO_DE_LISTA >= 20 THEN 'PRODUTO MUITO CARO'
                                WHEN PRECO_DE_LISTA >= 12 AND PRECO_DE_LISTA < 20 THEN 'PRODUTO CARO'
                                WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO NA MEDIA'
                                ELSE 'PRODUTO BARATO' END AS STATUS_PRECO
                        FROM tabela_de_produtos;

                Sabor da Montanha - 700 ml - Uva	6.309	PRODUTO BARATO
                Linha Citros - 1 Litro - Lima/Limão	7.004	PRODUTO NA MEDIA
                Videira do Campo - 1,5 Litros - Melância	19.51	PRODUTO CARO
                Videira do Campo - 2 Litros - Cereja/Maça	24.01	PRODUTO MUITO CARO


* * Retorno é o Nome, o preço e informando se caiu na condição Muito caro, caro, na media ou se nenhuma é Barato.

JOIN - Feito para juntar dados de duas ou mais tabelas temos vários tipos como Inner, Left, Right, Full Join.

* INNER - Junta tudo em comum conforme a condição, onde não tem associação não exibe.

                        SELECT A.NOME, B.NUMERO FROM 
                        tabela_de_vendedores A INNER JOIN notas_fiscais B
                        ON A.MATRICULA = B.MATRICULA;

* * Retorna o nome dos vendedores e os numeros das notas fiscais onde Vendedor tem a Matricula igual em nota fiscal, como a explicação, o INNER só tráz os resultados onde há matriculas nas duas tabelas como um WHERE.

* LEFT e RIGHT - Como o nome já diz, esquerta e direita, mas de onde? Certo o Join sempre vem no meio da ligação das duas tabelas, então a tabela descrita antes é a da Esquerda e a depois do Join é da direita. O Left retorna todos os registros que estão na esquerda e somente os com associação na direita, e ao contrario vale para o Right.

                        SELECT ESQUERDA.NOME, ESQUERDA.CPF, DIREITA.CPF FROM 
                        tabela_de_clientes ESQUERDA LEFT JOIN notas_fiscais DIREITA
                        ON ESQUERDA.CPF = DIREITA.CPF

* * Retorna todos os registros de tabela cliente no caso o nome, e da tabela de notas fiscais (direita) retorna somente os CPF que tiver associação de tabelas clientes. Certo mas se tiver cliente sem nota fiscal?? -> Ele retorna o Cliente como informado vai retornar tudo, porem na aba que aparece a nota fical fica null, segue um exemplo de um cliente que possui uma nota, e outro que não possui.

                        Érica Carvalho	1471156710	1471156710
                        Fábio Carvalho	95939180787	NULL

* * Exemplo da explicação acima onde o Cliente não possui nota fical o retorno será Null;

* FULL JOIN - Ele retorna tudo, tanto todos da direita como da esqueda, onde não possui associoção fica NULL, porem mesmo sendo padrão ANSI o MYSQL não da suporte para FULL, o jeito caso precisar é fazer UNION com Left e Right juntos.

UNION - Tem a finalidade de juntar dois Selects que possuiem os mesmos campos.

SUBSELECT - Usando o resultado de um select para aproveitar em outro select, ou seja, é feito uma consulta, e você quer usar esse resultado para fazer outra consulta, assim você faz um Subselect como exemplo abaixo.

                        SELECT * FROM tabela_de_clientes 
                        WHERE BAIRRO IN (SELECT DISTINCT BAIRRO FROM tabela_de_vendedores);

* * Vemos que temos dois select dentro da tabela, o que está dentro dos parenteses retorna os bairros da tabela vendedores sem repetir, e o outro select usa isso para pesquisar cliente entre esses bairros. O exemplos desses Subselect pode ser visto no doc. [SUBSELECT.sql](https://github.com/Mateusads/Cursos-Alura/blob/main/Curso_SQL/SUBSELECT.sql)

VIEW - Como se fosse armazenar um Select para usar depois, podendo usar ele dentro de outro select usando Join como usa em outra tabela, porém é uma consulta no banco já salva em forma de view.

FUNCTIONS - Cada banco possui suas proprias functions apesar de parecidas com suas peculiariedades, então bom sempre consultar o DOC. oficial da linguagem, ou sites mais didaticos como [WWW3.SCHOOL](https://www.w3schools.com/mysql/mysql_ref_functions.asp) para verificar as funções.
* * OBS: Caso use uma linguagem antes de salvar no banco como java, python ou outras, sempre tentar fazer as funções com a propria linguagem e salvar sem usar functions, pelo motivo que se precisar mudar de banco não terá problema com elas, sendo que se você usar muitas functions SQL ao migrar o banco terá que verificar cara uma delas para trocar para nova linguagem.

RELATÓRIOS - Podemos criar relatórios com os dados do Banco, para isso requer consulta estruturadas com vários SELECTS fizemos um exemplo no arquivo [CriandoRelatorio.sql](https://github.com/Mateusads/Cursos-Alura/blob/main/Curso_SQL\CriandoRelatorio.sql).



# Experiência com a plataforma de cursos.
 
A experiência com a Alura é muito boa: a equipe consegue estar sempre atualizada sobre as novas tecnologias,
agregar conhecimentos, aperfeiçoando para melhorar e se capacitar para o mercado de trabalho das tecnologias de hoje.
 
#
# Meus dados do portifólio Git.
<div align="center">
<img height="160" src="https://github-readme-stats.vercel.app/api?username=mateusads&show_icons=true&theme=tokyonight">
 
<img height="160" src="https://github-readme-stats.vercel.app/api/top-langs/?username=mateusads&layout=compact)](https://github.com/mateusads/github-readme-stats">
</div>
 
## Contato
 
[<img href="https://www.linkedin.com/in/mateus-medeiros-1a82411b1" height="50" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linkedin/linkedin-original.svg">](https://www.linkedin.com/in/mateus-medeiros-1a82411b1)
 
## Linguagens
 
<div>
<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/java/java-original-wordmark.svg" align="center" heigth="50" width="60">
 
<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/javascript/javascript-original.svg" align="center" heigth="50" width="60" >
 
<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original-wordmark.svg" align="center" heigth="50" width="60" >
 
<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original-wordmark.svg" align="center" heigth="50" width="60" >
</div>
 
#
# [Meu Certificado Alura](https://cursos.alura.com.br/user/mateus-medeiros2/fullCertificate/426499523006e2d52fc5554ca0855d22)
 
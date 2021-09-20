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

Começando em introdução do sql, no curso vamos usar o Mysql, porem tirando algumas funções especificas, são bem parecida com as SQL de outros por usar esse padrão feito por E. F. Codd.

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

* * Retorna os tipo de embalagem e os tamanhos sem repetir, pode ser visto no doc. [Select usando like e Distinct]().

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
 
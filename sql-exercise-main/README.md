# SQL Tarefa de Casa - Banco de dados de funcionários

![sql.png](sql.png)

## Background

É um lindo dia de primavera e já se passaram duas semanas desde que você foi contratado como novo engenheiro de dados na Costa Ferreira. Sua primeira grande tarefa é um projeto de pesquisa sobre os funcionários da corporação das décadas de 1980 e 1990. Do banco de dados de funcionários daquele período, restam apenas seis arquivos CSV.

Nesta tarefa, você projetará as tabelas para manter os dados nos CSVs, importará os CSVs para um banco de dados SQL e responderá a perguntas sobre os dados. Em outras palavras, você executará:

1. Data Modeling

2. Data Engineering

3. Data Analysis

### Antes de Você Começar

1. Crie um novo repositório para este projeto chamado `sql-exercise`. **Não adicione este dever de casa a um repositório existente**.

2. Clone o novo repositório em seu computador.

3. Dentro de seu repositório git local, crie um diretório para o desafio SQL. Use um nome de pasta correspondente ao desafio: **main**.

4. Adicione seus arquivos a esta pasta.

5. Envie as alterações acima para o GitHub.

## Instruções

#### Data Modeling

Inspecione os CSVs e esboce um ERD das tabelas. Sinta-se livre para usar uma ferramenta como [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).

#### Data Engineering

* Use as informações que você tem para criar um esquema de tabela para cada um dos seis arquivos CSV. Lembre-se de especificar tipos de dados, chaves primárias, chaves estrangeiras e outras restrições.

* Importe cada arquivo CSV para a tabela SQL correspondente.

#### Data Analysis

Depois de ter um banco de dados completo, faça o seguinte:

1. Liste os seguintes detalhes de cada funcionário: número do funcionário, sobrenome, nome, gênero e salário.

2. Liste os funcionários que foram contratados em 1986.

3. Liste o gerente de cada departamento com as seguintes informações: número do departamento, nome do departamento, número do funcionário do gerente, sobrenome, nome e datas de início e término do emprego.

4. Liste o departamento de cada funcionário com as seguintes informações: número do funcionário, sobrenome, nome e nome do departamento.

5. Liste todos os funcionários cujo primeiro nome é "Hercules" e os sobrenomes começam com "B".

6. Liste todos os funcionários do departamento de vendas, incluindo número de funcionário, sobrenome, nome e nome do departamento.

7. Liste todos os funcionários dos departamentos de Vendas e Desenvolvimento, incluindo número de funcionário, sobrenome, nome e nome do departamento.

8. Em ordem decrescente, liste a contagem de frequência dos sobrenomes dos funcionários, ou seja, quantos funcionários compartilham cada sobrenome.

## Bônus (Opcional)

Ao examinar os dados, você é tomado por uma suspeita crescente de que o conjunto de dados é falso. Você supõe que seu chefe lhe forneceu dados espúrios para testar as habilidades de engenharia de dados de um novo funcionário. Para confirmar seu palpite, você decide seguir os seguintes passos para gerar uma visualização dos dados, com a qual confrontará seu chefe:

1. Importe o banco de dados SQL para o Pandas. (Sim, você pode ler os CSVs diretamente no Pandas, mas, afinal, está tentando provar seu valor técnico.) Esta etapa pode exigir alguma pesquisa. Sinta-se à vontade para usar o código abaixo para começar. Certifique-se de fazer as modificações necessárias para seu nome de usuário, senha, host, porta e nome do banco de dados:

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```

* Consulte [SQLAlchemy documentation](https://docs.sqlalchemy.org/en/latest/core/engines.html#postgresql) for more information.

* Se estiver usando uma senha, não carregue sua senha em seu repositório GitHub. Consulte [https://www.youtube.com/watch?v=2uaTPmNvH0I](https://www.youtube.com/watch?v=2uaTPmNvH0I) and [https://martin-thoma.com/configuration-files-in-python/](https://martin-thoma.com/configuration-files-in-python/) para obter mais informações.

2. Crie um histograma para visualizar as faixas salariais mais comuns para os funcionários.

3. Crie um gráfico de barras do salário médio por cargo.

## Epílogo

Com as provas em mãos, você marcha até o escritório de seu chefe e apresenta a visualização. Com um sorriso malicioso, seu chefe agradece pelo seu trabalho. Ao sair do escritório, você ouve as palavras: "Pesquise seu número de identificação". Você olha para o seu crachá e vê que seu número de identificação de funcionário é 499942.

## Submissão

* Crie um arquivo de imagem do seu ERD.

* Crie um arquivo `.sql` de seus esquemas de tabela.

* Crie um arquivo `.sql` de suas consultas.

* (Opcional) Crie um Jupyter Notebook da análise de bônus.

* Crie e carregue um repositório com os arquivos acima no GitHub e envie o link.

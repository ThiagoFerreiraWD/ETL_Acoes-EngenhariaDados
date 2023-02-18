# <p align=center> ETL API com Recursos Azure (Data Factory e Azure SQL) </p>

Este documento demonstra o desenvolvimento técnico do projeto de ETL de dados financeiros e visualização em um dashboard.

## API - Alphavantage.co

 * Google
 https://www.alphavantage.co/query?function=TIME_SERIES_WEEKLY_ADJUSTED&symbol=GOGL&apikey={key}&datatype=csv

 * Amazon
 https://www.alphavantage.co/query?function=TIME_SERIES_WEEKLY_ADJUSTED&symbol=AMZN&apikey={key}&datatype=csv 
 
 * Microsoft
 https://www.alphavantage.co/query?function=TIME_SERIES_WEEKLY_ADJUSTED&symbol=MSFT&apikey={key}&datatype=csv

*Lembrando que é necessário a criação da chave na [plataforma](https://www.alphavantage.co) e a substituição nos links acima, conforme descrito na [documentação](https://www.alphavantage.co/documentation/) da API.*

## Arquitetura

![image](https://user-images.githubusercontent.com/54869201/219869935-bf0815e2-a31b-4b60-8f71-5ca66f2d372d.png)


## Dicionário de Dados

* STAGE Tables

|   **variável**  | **tipo** |    **descrição**   |
|:---------------:|:--------:|:------------------:|
|    timestamp    |   VARCHAR | Data do Fechamento |
|       open      |   VARCHAR |  Preço de Abertura |
|       high      |   VARCHAR |     Preço Máximo      |
|       low       |   VARCHAR |      Preço Mínimo     |
|      close      |   VARCHAR |     Preço Final    |
|  adjusted close |   VARCHAR |     Preço Final Ajustado    |
|      volume     |   VARCHAR | Volume de Transações                    |
| dividend amount |   VARCHAR | Quantidade de Dividendo                    |

* FINAL Table

|   **variável**  | **tipo** |    **descrição**   |
|:---------------:|:--------:|:------------------:|
|    timestamp    |   DATETIME   | Data do Fechamento |
|       open      |   FLOAT  |  Preço de Abertura |
|       high      |   FLOAT  |     Preço Máximo      |
|       low       |   FLOAT  |      Preço Mínimo     |
|      close      |   FLOAT  |     Preço Final    |
|      ticker     |  VARCHAR |         Empresa           |


## Processo de Desenvolvimento

1. Criação das tabelas no banco de dados (Azure SQL), conforme arquivo <a href="https://github.com/ThiagoFerreiraWD/ETL_Acoes-EngenhariaDados/blob/main/tables_create.sql" target="_blank" rel="noopener"><span>tables_create.sql</span></a>.

2. Criação da stored procedure, para efetuar o cast e o union das tabelas stage, conforme arquivo <a href="https://github.com/ThiagoFerreiraWD/ETL_Acoes-EngenhariaDados/blob/main/sp_cast_union_data.sql" target="_blank" rel="noopener"><span>sp_cast_union_data.sql</span></a>.

3. Criação do pipeline de dados no Data Factory, conforme arquivo <a href="https://github.com/ThiagoFerreiraWD/ETL_Acoes-EngenhariaDados/blob/main/pipelineDF.json" target="_blank" rel="noopener"><span>pipelineDF.json</span></a>.

![image](https://user-images.githubusercontent.com/54869201/219870726-d14e3247-452d-40f0-89f1-2e4bf9a18a36.png)

4. Execução do pipeline. De acordo com a imagem abaixo podemos observar que o pipeline executou sem erros.

![image](https://user-images.githubusercontent.com/54869201/219870912-0e405749-dc8a-4d86-a2c7-520dcaed42e0.png)

5. Demonstração da tabela STAGE Microsoft:

![image](https://user-images.githubusercontent.com/54869201/219871043-d383e3a6-6bc3-400d-a55f-89d33766f041.png)

6. Demonstração da tabela FINAL com os dados consolidados:

![image](https://user-images.githubusercontent.com/54869201/219871100-7fd9cdaf-f9ef-48af-9b0a-b2b20285d2c0.png)

7. Após conexão do Power BI com o banco de dados Azure SQL, abaixo a imagem do dashboard com o resumo das informações:

![image](https://user-images.githubusercontent.com/54869201/219871420-633ffce9-3180-4d1e-9c33-60e55d363713.png)

## Ferramentas Utilizadas:

* [Data Factory](https://azure.microsoft.com/pt-br/products/data-factory/): Ferramenta de ETL Microsoft Azure.
* [Azure SQL](https://azure.microsoft.com/pt-br/products/azure-sql/database): Banco de dados SQL do Azure.
* [Power Bi](https://powerbi.microsoft.com/pt-br/): Ferramenta de Visualização de Dados.
* [API](https://www.alphavantage.com/): API para extração das informações financeiras.

## Contatos:
<div>   
  <a href="https://www.linkedin.com/in/tferreirasilva/">
    <img width=40 src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linkedin/linkedin-original.svg" />
  </a> 
  <a href = "mailto:thiago.ferreirawd@gmail.com">
      <img width=40 src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/google/google-original.svg" />
  </a>  
  <a href = "https://github.com/ThiagoFerreiraWD">
    <img width=40 src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" />
  </a>     
</div>

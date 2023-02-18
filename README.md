# <p align=center> ETL API com Recursos Azure (Data Factory e Azure SQL) </p>

Este documento demonstra o desenvolvimento técnico do projeto de ETL de dados financeiros e visualização em um dashboard.

## API - Alphavantage.co

 * Google (Alphabet)
 https://www.alphavantage.co/query?function=TIME_SERIES_WEEKLY_ADJUSTED&symbol=GOGL&apikey={chave_api}&datatype=csv

 * Amazon
 https://www.alphavantage.co/query?function=TIME_SERIES_WEEKLY_ADJUSTED&symbol=AMZN&apikey={chave_api}&datatype=csv 
 
 * Microsoft
 https://www.alphavantage.co/query?function=TIME_SERIES_WEEKLY_ADJUSTED&symbol=MSFT&apikey={chave_api}&datatype=csv

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

![image](https://user-images.githubusercontent.com/54869201/219870726-d14e3247-452d-40f0-89f1-2e4bf9a18a36.png)



## Ferramentas Utilizadas


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

--- Criação das tabelas STAGE, recebendo todos os dados como STRING.

CREATE TABLE [DW_thiago_neves].[API_AWS]
	(		
		"timestamp" VARCHAR(30),
		"open" VARCHAR(30),
		"high" VARCHAR(30),
		"low" VARCHAR(30),
		"close" VARCHAR(30)
	)

CREATE TABLE [DW_thiago_neves].[API_Google]
	(		
		"timestamp" VARCHAR(30),
		"open" VARCHAR(30),
		"high" VARCHAR(30),
		"low" VARCHAR(30),
		"close" VARCHAR(30)
	)

CREATE TABLE [DW_thiago_neves].[API_Microsoft]
	(		
		"timestamp" VARCHAR(30),
		"open" VARCHAR(30),
		"high" VARCHAR(30),
		"low" VARCHAR(30),
		"close" VARCHAR(30)
	)

--- Criação da tabela FINAL, com os dados sendo inseridos via Stored Procedure, executada no pipeline do Data Factory.

CREATE TABLE [DW_thiago_neves].[API_Final]
	(
		id INT IDENTITY,
		"timestamp" DATETIME,
		"open" FLOAT,
		"high" FLOAT,
		"low" FLOAT,
		"close" FLOAT,
		"ticker" VARCHAR(10)
	)
--- SP responsável pela transformação dos dados e união das tabelas, com a criação de uma coluna de tickerr identificando a empresa responsável pela ação.

CREATE OR ALTER PROCEDURE [DW_thiago_neves].[SP_ETL_API]
AS
BEGIN

	TRUNCATE TABLE [DW_thiago_neves].[API_Final]

	INSERT INTO [DW_thiago_neves].[API_Final] 

		SELECT 
			CAST("timestamp" AS DATETIME), 
            CAST("open" AS FLOAT), 
            CAST("high" AS FLOAT), 
            CAST("low" AS FLOAT), 
            CAST("close" AS FLOAT), 'Microsoft' AS "ticker" 
		FROM [DW_thiago_neves].[API_Microsoft]
		UNION ALL
		SELECT 
			CAST("timestamp" AS DATETIME), 
            CAST("open" AS FLOAT), 
            CAST("high" AS FLOAT), 
            CAST("low" AS FLOAT), 
            CAST("close" AS FLOAT), 'Amazon' AS "ticker" 
		FROM [DW_thiago_neves].[API_AWS]
		UNION ALL
		SELECT 
			CAST("timestamp" AS DATETIME), 
            CAST("open" AS FLOAT), 
            CAST("high" AS FLOAT), 
            CAST("low" AS FLOAT), 
            CAST("close" AS FLOAT), 'Google' AS "ticker" 
		FROM [DW_thiago_neves].[API_Google]													
END
-- Define a DBT model to calculate gene expression statistics
WITH GeneExpressionStats AS (
  SELECT
    COUNT(*) AS Total_Samples,
    AVG(Mutation_Position) AS Average_Mutation_Position,
    MAX(Mutation_Position) AS Max_Mutation_Position,
    MIN(Mutation_Position) AS Min_Mutation_Position
  FROM
    genomic_data
  GROUP BY
    Gene_Name
)

-- Select the calculated gene expression statistics
SELECT
  Total_Samples,
  Average_Mutation_Position,
  Max_Mutation_Position,
  Min_Mutation_Position
FROM
  GeneExpressionStats

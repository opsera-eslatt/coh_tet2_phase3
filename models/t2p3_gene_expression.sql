-- Define a DBT model to calculate gene expression statistics
WITH GeneExpressionStats AS (
  SELECT
    Gene_Name,
    COUNT(*) AS Total_Samples,
    AVG(Mutation_Position) AS Average_Mutation_Position,
    MAX(Mutation_Position) AS Max_Mutation_Position_c,
    MIN(Mutation_Position) AS Min_Mutation_Position
  FROM
    genomic_data
  GROUP BY
    Gene_Name
)

-- Select the calculated gene expression statistics
SELECT
  Gene_Name,
  Total_Samples,
  Average_Mutation_Position,
  Max_Mutation_Position_c,
  Min_Mutation_Position
FROM
  GeneExpressionStats

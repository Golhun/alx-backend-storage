-- Create a temporary table to store the aggregated fan counts per country
CREATE TEMPORARY TABLE temp_country_fans AS
SELECT Country AS origin, SUM(NumberOfFans) AS nb_fans
FROM metal_bands
GROUP BY Country;

-- Rank the country origins based on the number of fans
SELECT origin, nb_fans,
       DENSE_RANK() OVER (ORDER BY nb_fans DESC) AS country_rank
FROM temp_country_fans
ORDER BY country_rank;
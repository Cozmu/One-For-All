-- Active: 1674757442069@@127.0.0.1@3307@SpotifyClone
SELECT 
    MIN(plan_value) AS faturamento_minimo,
    MAX(plan_value) AS faturamento_maximo,
    ROUND(AVG(plan_value), 2) AS faturamento_medio,
    SUM(plan_value) AS faturamento_total
FROM `SpotifyClone`.users AS `use`
INNER JOIN `SpotifyClone`.`plans` AS `pla`
ON `use`.plans_id = pla.id;

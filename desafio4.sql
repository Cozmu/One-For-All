-- Active: 1674757442069@@127.0.0.1@3307@SpotifyClone
SELECT 
`names` AS usuario, 
IF(
    YEAR(MAX(play.reproduction_date)) >= 2021, 'Usuário ativo', 'Usuário inativo'
) AS status_usuario
FROM `SpotifyClone`.users AS `use`
INNER JOIN `SpotifyClone`.playback_history AS play
ON `use`.`id` = play.user_id
GROUP BY play.user_id
ORDER BY `use`.`names`;
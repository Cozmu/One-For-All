-- Active: 1674757442069@@127.0.0.1@3307@SpotifyClone
SELECT 
    son.songs_name AS nome,
    COUNT(`use`.plans_id) AS reproducoes
FROM `SpotifyClone`.songs AS son
INNER JOIN `SpotifyClone`.playback_history AS play
ON son.id = play.name_songs_played_id
INNER JOIN `SpotifyClone`.users AS `use`
ON `use`.`id` = play.user_id
WHERE `use`.plans_id = 1 OR `use`.plans_id = 4
GROUP BY nome
ORDER BY nome;
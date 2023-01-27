-- Active: 1674757442069@@127.0.0.1@3307@SpotifyClone
SELECT 
`names` AS usuario, 
COUNT(play.user_id) AS qt_de_musicas_ouvidas, 
ROUND(SUM(son.duration) / 60, 2) AS total_minutos
FROM `SpotifyClone`.users AS `use`
INNER JOIN `SpotifyClone`.playback_history AS play
ON `use`.`id` = play.user_id
INNER JOIN `SpotifyClone`.songs AS son
ON play.name_songs_played_id = son.id
GROUP BY `use`.`names`
ORDER BY `use`.`names`;


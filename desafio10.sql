-- Active: 1674757442069@@127.0.0.1@3307@SpotifyClone
SELECT 
    son.songs_name AS nome,
    COUNT(*) AS reproducoes
FROM `SpotifyClone`.playback_history AS play 
INNER JOIN `SpotifyClone`.songs AS son
ON play.name_songs_played_id = son.id 
INNER JOIN `SpotifyClone`.users AS `use`
ON play.user_id = `use`.`id` 
WHERE `use`.plans_id = 1 OR `use`.plans_id = 3
GROUP BY son.songs_name
ORDER BY son.songs_name;


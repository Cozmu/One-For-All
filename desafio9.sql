-- Active: 1674757442069@@127.0.0.1@3307@SpotifyClone
SELECT 
    COUNT(play.user_id) AS quantidade_musicas_no_historico
FROM `SpotifyClone`.playback_history AS play
INNER JOIN `SpotifyClone`.users AS `use`
ON play.user_id = `use`.`id`
WHERE `use`.`names` =  'Barbara Liskov';


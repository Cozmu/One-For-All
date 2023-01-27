-- Active: 1674757442069@@127.0.0.1@3307@SpotifyClone
SELECT  son.songs_name AS cancao, COUNT(play.name_songs_played_id) AS reproducoes
FROM `SpotifyClone`.playback_history AS play
INNER JOIN `SpotifyClone`.songs AS son
ON play.name_songs_played_id = son.id
GROUP BY play.name_songs_played_id
ORDER BY reproducoes DESC, cancao 
LIMIT 2;

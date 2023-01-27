-- Active: 1674757442069@@127.0.0.1@3307@SpotifyClone
SELECT COUNT(son.songs_name) AS 'cancoes', COUNT(DISTINCT art.artists_name) AS 'artistas', COUNT(DISTINCT alb.albums_name) AS 'albuns'
FROM `SpotifyClone`.songs AS son
INNER JOIN `SpotifyClone`.albums AS alb
ON son.album_id = alb.id
INNER JOIN `SpotifyClone`.artists AS art
ON alb.artist_id = art.id;
-- Active: 1674757442069@@127.0.0.1@3307@SpotifyClone
SELECT 
    art.artists_name AS artista,
    alb.albums_name AS album,
    COUNT(fol.user_id) AS seguidores
FROM `SpotifyClone`.`following` AS fol
INNER JOIN `SpotifyClone`.artists AS art
ON fol.artist_id = art.id
INNER JOIN `SpotifyClone`.albums AS alb
ON art.id = alb.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
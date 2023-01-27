-- Active: 1674757442069@@127.0.0.1@3307@SpotifyClone
SELECT 
    art.artists_name AS artista,
    alb.albums_name AS album
FROM `SpotifyClone`.artists AS art
INNER JOIN `SpotifyClone`.albums AS alb
ON art.id = alb.artist_id
WHERE art.artists_name = 'Elis Regina';
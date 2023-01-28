-- Active: 1674757442069@@127.0.0.1@3307@SpotifyClone
SELECT 
    songs_name AS nome_musica,
    CASE
         WHEN songs_name LIKE '%Bard%' THEN
        REPLACE(songs_name, 'Bard', 'QA')
         WHEN songs_name LIKE '%Amar%' THEN
        REPLACE(songs_name, 'Amar', 'Code Review')
         WHEN songs_name LIKE '%Pais%' THEN
        REPLACE(songs_name, 'Pais', 'Pull Requests')
         WHEN songs_name LIKE '%SOUL%' THEN
        REPLACE(songs_name, 'SOUL', 'CODE')
         WHEN songs_name LIKE '%SUPERSTAR%' THEN
        REPLACE(songs_name, 'SUPERSTAR', 'SUPERDEV')
        ELSE songs_name
    END AS novo_nome
FROM `SpotifyClone`.songs
WHERE
       songs_name LIKE '%Bard%'
    OR songs_name LIKE '%Amar%'
    OR songs_name LIKE '%Pais%'
    OR songs_name LIKE '%SOUL%'
    OR songs_name LIKE '%SUPERSTAR%'
ORDER BY nome_musica DESC, novo_nome DESC;
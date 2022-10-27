-- Active: 1666720144667@@127.0.0.1@3307@SpotifyClone
SELECT
  albums.name AS 'album',
  COUNT(following.user) AS 'seguidores'
FROM SpotifyClone.albums AS albums
INNER JOIN SpotifyClone.following_artists AS following
ON albums.artist = following.artist
GROUP BY album;

SELECT
  artists.name AS 'artista',
  DISTINCT albums.name AS 'album',
  COUNT(following.user) AS 'seguidores'
FROM `SpotifyClone`.artists AS artists
INNER JOIN `SpotifyClone`.albums AS albums
ON artists.artist_id = albums.artist
INNER JOIN SpotifyClone.following_artists AS following
ON artists.artist_id = following.artist
GROUP BY album;


SELECT
  name
FROM `SpotifyClone`.artists AS artists
INNER JOIN SpotifyClone.following_artists AS following
ON artists.artist_id = following.artist;


SELECT
  artists.name AS 'artista',
  albums.name AS 'album',
  follows.artist AS 'seguidores'
FROM SpotifyClone.artists AS artists
INNER JOIN SpotifyClone.albums AS albums
ON artists.artist_id = albums.artist
LEFT JOIN SpotifyClone.following_artists AS follows
ON artists.artist_id = follows.artist;
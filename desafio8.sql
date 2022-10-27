SELECT
  artists.name AS 'artista',
  albums.name AS 'album'
FROM SpotifyClone.artists AS artists
INNER JOIN SpotifyClone.albums AS albums
ON artists.artist_id = albums.artist
WHERE artists.artist_id = 3
ORDER BY album;
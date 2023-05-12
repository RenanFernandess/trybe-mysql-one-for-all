
SELECT
	artists.name AS 'artista',
	albums.name AS 'album',
  COUNT(follows.artist) AS 'seguidores'
FROM SpotifyClone.albums AS albums
INNER JOIN SpotifyClone.artists AS artists
ON albums.artist = artists.artist_id
INNER JOIN SpotifyClone.following_artists AS follows
ON albums.artist = follows.artist
GROUP BY albums.album_id
ORDER BY seguidores DESC, artista, album;

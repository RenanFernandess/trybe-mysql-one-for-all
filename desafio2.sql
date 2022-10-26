SELECT 
  COUNT(DISTINCT songs.name) AS 'cancoes',
  COUNT(DISTINCT artists.name) AS 'artistas',
  COUNT(DISTINCT albums.name) AS 'albuns'
FROM SpotifyClone.songs AS songs
INNER JOIN SpotifyClone.albums AS albums
ON songs.album = albums.album_id
INNER JOIN SpotifyClone.artists AS artists
ON albums.artist = artists.artist_id;

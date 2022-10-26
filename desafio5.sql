SELECT
  songs.name AS 'cancao',
  COUNT(history.song) AS 'reproducoes'
FROM SpotifyClone.songs AS songs
INNER JOIN SpotifyClone.reproduction_history AS history
ON songs.song_id = history.song
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
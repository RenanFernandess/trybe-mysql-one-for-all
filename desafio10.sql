SELECT
  songs.name AS 'nome',
  COUNT(DISTINCT history.user) AS 'reproducoes'
FROM SpotifyClone.songs AS songs
INNER JOIN SpotifyClone.reproduction_history AS history
ON songs.song_id = history.song
INNER JOIN SpotifyClone.users AS users
ON history.user = users.user_id
WHERE users.plan IN (1, 3)
GROUP BY nome
ORDER BY nome ASC;
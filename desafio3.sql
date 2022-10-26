SELECT
  DISTINCT users.name AS 'usuario',
  COUNT(history.song) AS 'qt_de_musicas_ouvidas',
  ROUND(SUM(songs.duration) / 60, 2) AS 'total_minutos'
FROM SpotifyClone.users AS users
INNER JOIN SpotifyClone.reproduction_history AS history
on users.user_id = history.user
INNER JOIN SpotifyClone.songs AS songs
ON history.song = songs.song_id
GROUP BY usuario
ORDER BY usuario ASC;
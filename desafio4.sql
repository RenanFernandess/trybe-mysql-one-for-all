SELECT
  users.name AS 'usuario',
  IF (MAX(YEAR(history.play_date)) >= '2021', 'Usuário ativo', 'Usuário inativo') AS 'status_usuario'
FROM SpotifyClone.reproduction_history AS history
INNER JOIN SpotifyClone.users AS users
ON history.user = users.user_id
GROUP BY usuario
ORDER BY usuario;

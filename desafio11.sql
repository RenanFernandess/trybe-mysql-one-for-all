SELECT
  songs.name AS nome_musica,
  CASE
    WHEN name LIKE '%Bard%' THEN REPLACE(name, 'Bard', 'QA')
    WHEN name LIKE '%Amar%' THEN REPLACE(name, 'Amar', 'Code Review')
    WHEN name LIKE '%Pais' THEN REPLACE(name, 'Pais', 'Pull Requests')
    WHEN name LIKE '%SOUL' THEN REPLACE(name, 'SOUL', 'CODE')
    WHEN name LIKE '%SUPERSTAR' THEN REPLACE(name, 'SUPERSTAR', 'SUPERDEV')
  END AS novo_nome
FROM
  SpotifyClone.songs AS songs
HAVING novo_nome IS NOT NULL
ORDER BY
  novo_nome DESC;

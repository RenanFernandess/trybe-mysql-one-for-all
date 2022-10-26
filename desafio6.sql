SELECT
  MIN(price) AS 'faturamento_minimo',
  MAX(price) AS 'faturamento_maximo',
  ROUND(AVG(price), 2) AS 'faturamento_medio',
  SUM(price) AS 'faturamento_total'
FROM SpotifyClone.plans AS plans
INNER JOIN SpotifyClone.users AS users
ON plans.plan_id = users.plan;
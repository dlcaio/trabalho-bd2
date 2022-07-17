CREATE VIEW partida_atuacao AS
SELECT
  Partida.id_arbitro as id_arbitro,
  Atuacao.id as id_atuacao,
  Atuacao.mandante as mandante,
  Partida.id as id_partida
FROM
  Partida
  join Atuacao on Partida.id = Atuacao.id_partida;
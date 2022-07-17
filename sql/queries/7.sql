-- Placar da primeira partida
select
  count(*) as mandante
from
  Gol
  join partida_atuacao on Gol.id_atuacao = partida_atuacao.id_atuacao
where
  partida_atuacao.id_partida = 1
  and partida_atuacao.mandante = TRUE
union
all
select
  count(*) as visitante
from
  Gol
  join partida_atuacao on Gol.id_atuacao = partida_atuacao.id_atuacao
where
  partida_atuacao.id_partida = 1
  and partida_atuacao.mandante = FALSE
-- Placar da primeira partida
select
  count(*) as mandante
from
  Gol
  join Atuacao on Atuacao.id = Gol.id_atuacao
  join Partida on Partida.id = Atuacao.id_partida
where
  Partida.id = 1
  and Atuacao.mandante = TRUE
union
all
select
  count(*) as visitante
from
  Gol
  join Atuacao on Atuacao.id = Gol.id_atuacao
  join Partida on Partida.id = Atuacao.id_partida
where
  Partida.id = 1
  and Atuacao.mandante = FALSE;
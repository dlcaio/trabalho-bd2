-- Árbitro que mais aplicou cartão
select
  Arbitro.nome
from
  Arbitro
  join Partida on Arbitro.id = Partida.id_arbitro
  join Atuacao on Atuacao.id_partida = Partida.id
  join Cartao on Atuacao.id = Cartao.id_atuacao
group by
  Arbitro.nome
order by
  count(*) desc
limit
  1;
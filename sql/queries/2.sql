-- Árbitro que mais aplicou cartão
select
  Arbitro.nome
from
  Arbitro
  /*
  join Partida on Arbitro.id = Partida.id_arbitro
  join Atuacao on Atuacao.id_partida = Partida.id*/
  join partida_atuacao on Arbitro.id = partida_atuacao.id_arbitro
  join Cartao on partida_atuacao.id_atuacao = Cartao.id_atuacao
group by
  Arbitro.nome
order by
  count(*) desc
limit
  1;
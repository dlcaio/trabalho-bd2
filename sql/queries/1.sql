-- Jogadores na terceira partida do campeonato
select
  Jogador.nome
from
  Jogador
  join Atuacao on Atuacao.id_jogador = Jogador.id
where
  Atuacao.id_partida = 3;
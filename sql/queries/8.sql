-- Jogadores com mais de 2 gols
select
  Jogador.nome
from
  Jogador
  join Atuacao on Atuacao.id_jogador = Jogador.id
  join Gol on Atuacao.id = Gol.id_atuacao
group by
  Jogador.nome
having
  count(Gol.*) > 2;
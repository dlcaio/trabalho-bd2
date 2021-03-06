-- Selecionar goleiro menos vazado
select
  Jogador.nome
from
  Jogador
  join Atuacao gk on gk.id_jogador = Jogador.id
  join Partida on Partida.id = gk.id_partida
  join Atuacao ata on ata.id_partida = Partida.id
  join Gol on Gol.id_atuacao = ata.id
  join id_jogador_nome_posicao on id_jogador_nome_posicao.id = Jogador.id
where
  id_jogador_nome_posicao.nome = 'Goleiro'
  and (
    (
      ata.mandante = FALSE
      and gk.mandante = TRUE
    )
    or (
      ata.mandante = TRUE
      and gk.mandante = FALSE
    )
  )
group by
  Jogador.nome
order by
  count(*) desc
limit
  1;
-- Jogador que mais sofreu faltas
select
  Jogador.nome
from
  Jogador
  join Falta on Falta.id_jogador_faltado = Jogador.id
group by
  Jogador.nome
order by
  count(*) desc
limit
  1;
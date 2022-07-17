-- Média de publico do Corinthians
select
  avg(Partida.publico) as media
from
  Partida
  join ClubeCampeonato on ClubeCampeonato.id_clube = Partida.clube_campeonato_mandante
  join Clube on Clube.id = ClubeCampeonato.id_clube
where
  Clube.nome = 'Corinthians';
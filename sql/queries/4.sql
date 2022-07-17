-- Selecionar todos os meio campistas
select
  distinct Jogador.nome
from
  Jogador
  join JogadorPosicao on JogadorPosicao.id_jogador = Jogador.id
  join Posicao on Posicao.id = JogadorPosicao.id_posicao
where
  Posicao.setor = 'Meio Campo';
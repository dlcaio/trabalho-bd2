-- select artilheiro('Brasileirão');
-- select artilheiro_time('Corinthians');
--select Atuacao.*, Jogador.nome from Atuacao
--join Jogador on Atuacao.id_jogador = Jogador.id
--where Jogador.nome = 'Roger Guedes';
-- inner join Jogador on Atuacao.id_jogador = Jogador.id;
-- select * from Atuacao where id = 1;
/*
 explain select
 distinct Jogador.nome
 from
 Jogador
 join JogadorPosicao on JogadorPosicao.id_jogador = Jogador.id
 join Posicao on Posicao.id = JogadorPosicao.id_posicao
 where
 Posicao.setor = 'Meio Campo';
*/

-- select * from Jogador;
/*
insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (6, FALSE, 1, NULL);
*/

-- select * from Atuacao where id_jogador = 6;

-- delete from Atuacao  where Atuacao.id = 51;
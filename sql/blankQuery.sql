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

select avg(Partida.publico) as media from Partida
join ClubeCampeonato on ClubeCampeonato.id_clube = Partida.clube_campeonato_mandante
join Clube on Clube.id = ClubeCampeonato.id_clube
where Clube.nome = 'Corinthians';
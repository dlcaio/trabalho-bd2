-- Jogadores na terceira partida do campeonato
/*
 select
 Jogador.nome
 from
 Jogador
 join Atuacao on Atuacao.id_jogador = Jogador.id
 where
 Atuacao.id_partida = 3;
 */
-- Clubes centenários
-- Arbitros que mais deram cartão
/*
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
 */

-- Média de publico do Corinthians

/*
select avg(Partida.publico) as media from Partida
join ClubeCampeonato on ClubeCampeonato.id_clube = Partida.clube_campeonato_mandante
join Clube on Clube.id = ClubeCampeonato.id_clube
where Clube.nome = 'Corinthians';
*/
-- Selecionar todos os meio campistas
/*
 select
 distinct Jogador.nome
 from
 Jogador
 join JogadorPosicao on JogadorPosicao.id_jogador = Jogador.id
 join Posicao on Posicao.id = JogadorPosicao.id_posicao
 where
 Posicao.setor = 'Meio Campo';
 */
-- Selecionar goleiros menos vazados
/*
 select Jogador.nome from Jogador
 join Atuacao gk on gk.id_jogador = Jogador.id
 join Partida on Partida.id = gk.id_partida
 join Atuacao ata on ata.id_partida = Partida.id
 join Gol on Gol.id_atuacao = ata.id
 join JogadorPosicao on JogadorPosicao.id_jogador = Jogador.id
 join Posicao on Posicao.id = JogadorPosicao.id_posicao
 where Posicao.nome = 'Goleiro' and ((ata.mandante = FALSE and gk.mandante = TRUE) or (ata.mandante = TRUE and gk.mandante = FALSE)) 
 group by Jogador.nome
 order by count(*) desc
 limit 1;
 */
-- Jogador que mais sofreu faltas
/*
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
 */
-- Placar da primeira partida
/*
 select
 count(*) as mandante
 from
 Gol
 join Atuacao on Atuacao.id = Gol.id_atuacao
 join Partida on Partida.id = Atuacao.id_partida
 where
 Partida.id = 1
 and Atuacao.mandante = TRUE
 union
 all
 select
 count(*) as visitante
 from
 Gol
 join Atuacao on Atuacao.id = Gol.id_atuacao
 join Partida on Partida.id = Atuacao.id_partida
 where
 Partida.id = 1
 and Atuacao.mandante = FALSE;
 */


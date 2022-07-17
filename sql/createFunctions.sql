CREATE OR REPLACE FUNCTION artilheiro(varchar) RETURNS integer AS $$
DECLARE
   parametro_campeonato ALIAS FOR $1;
   artilheiro int;
BEGIN
  select Jogador.id into artilheiro
from
  Jogador
  join Atuacao on Jogador.id = Atuacao.id_jogador
  join Gol on Gol.id_atuacao = Atuacao.id
  join Partida on Atuacao.id_partida = Partida.id
  join ClubeCampeonato on Partida.clube_campeonato_mandante = ClubeCampeonato.id
  join Campeonato on Campeonato.id = ClubeCampeonato.id_campeonato
where
  Campeonato.nome = parametro_campeonato
group by Jogador.id
order by count(*) desc
limit 1;
return artilheiro;
END;

$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION artilheiro_time(varchar) RETURNS integer AS $$
DECLARE
   parametro_time ALIAS FOR $1;
   artilheiro int;
BEGIN

  select Jogador.id into artilheiro
from
  Jogador
  join Atuacao on Jogador.id = Atuacao.id_jogador
  join Gol on Gol.id_atuacao = Atuacao.id
  join Partida on Atuacao.id_partida = Partida.id
  join ClubeCampeonato on Partida.clube_campeonato_mandante = ClubeCampeonato.id
  join Clube on Clube.id = ClubeCampeonato.id_clube
where
  Clube.nome = parametro_time
group by Jogador.id
order by count(*) desc
limit 1;
return artilheiro;
END;

$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION lider_assistencias(varchar) RETURNS integer AS $$
DECLARE
   parametro_campeonato ALIAS FOR $1;
   lider_assistencias int;
BEGIN
  select Jogador.id into lider_assistencias
from
  Jogador
  join Atuacao on Jogador.id = Atuacao.id_jogador
  join Assistencia on Assistencia.id_atuacao = Atuacao.id
  join Partida on Atuacao.id_partida = Partida.id
  join ClubeCampeonato on Partida.clube_campeonato_mandante = ClubeCampeonato.id
  join Campeonato on Campeonato.id = ClubeCampeonato.id_campeonato
where
  Campeonato.nome = parametro_campeonato
group by Jogador.id
order by count(*) desc
limit 1;
return lider_assistencias;
END;

$$ LANGUAGE plpgsql;
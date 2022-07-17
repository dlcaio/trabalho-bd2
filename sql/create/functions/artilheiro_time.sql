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
drop function artilheiro_time;
CREATE OR REPLACE FUNCTION artilheiro_time(varchar) RETURNS varchar AS $$
DECLARE
   parametro_time ALIAS FOR $1;
   artilheiro varchar;
BEGIN

  select Jogador.nome into artilheiro
from
  Jogador
  join Atuacao on Jogador.id = Atuacao.id_jogador
  join Gol on Gol.id_atuacao = Atuacao.id
  join Partida on Atuacao.id_partida = Partida.id
  join ClubeCampeonato on Partida.clube_campeonato_mandante = ClubeCampeonato.id
  join Clube on Clube.id = ClubeCampeonato.id_clube
where
  Clube.nome = parametro_time
group by Jogador.nome
order by count(*) desc
limit 1;
return artilheiro;
END;

$$ LANGUAGE plpgsql;
drop function lider_assistencias;

CREATE OR REPLACE FUNCTION lider_assistencias(varchar) RETURNS varchar AS $$
DECLARE
   parametro_campeonato ALIAS FOR $1;
   lider_assistencias varchar;
BEGIN
  select Jogador.nome into lider_assistencias
from
  Jogador
  join Atuacao on Jogador.id = Atuacao.id_jogador
  join Gol on Gol.id_assistente = Jogador.id
  join Partida on Atuacao.id_partida = Partida.id
  join ClubeCampeonato on Partida.clube_campeonato_mandante = ClubeCampeonato.id
  join Campeonato on Campeonato.id = ClubeCampeonato.id_campeonato
where
  Campeonato.nome = parametro_campeonato
group by Jogador.nome
order by count(*) desc
limit 1;
return lider_assistencias;
END;

$$ LANGUAGE plpgsql;
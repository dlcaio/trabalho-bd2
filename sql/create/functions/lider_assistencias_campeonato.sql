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
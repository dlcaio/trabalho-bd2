CREATE OR REPLACE FUNCTION artilheiro_campeonato(varchar) RETURNS varchar AS $$
DECLARE
   parametro_campeonato ALIAS FOR $1;
   artilheiro varchar;
BEGIN
  select Jogador.nome into artilheiro
from
  Jogador
  join Atuacao on Jogador.id = Atuacao.id_jogador
  join Gol on Gol.id_atuacao = Atuacao.id
  join Partida on Atuacao.id_partida = Partida.id
  join ClubeCampeonato on Partida.clube_campeonato_mandante = ClubeCampeonato.id
  join Campeonato on Campeonato.id = ClubeCampeonato.id_campeonato
where
  Campeonato.nome = parametro_campeonato
group by Jogador.nome
order by count(*) desc
limit 1;
return artilheiro;
END;

$$ LANGUAGE plpgsql;
create
or replace function AdicionaPontuacao() RETURNS void AS $ BEGIN
UPDATE
  ClubeCampeonato
SET
  pontuacao = pontuacao + 3
where
  (
    select
      count(*)
    from
      Gol
      join Atuacao on Gol.id_atuacao = Atuacao.id
      join Partida on Partida.id = Atuacao.id_partida;

)
END;

$ LANGUAGE 'plpgsql';
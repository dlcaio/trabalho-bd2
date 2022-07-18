CREATE FUNCTION ImpedeAtuacaoSuspenso() RETURNS trigger AS $insere_atuacao$
    BEGIN
        IF ((select Jogador.suspenso from Jogador where Jogador.id = NEW.id_jogador) = TRUE) THEN
            RAISE EXCEPTION 'Não é possível um jogador suspenso atuar numa partida';
        END IF;
        RETURN null;
    END;
$insere_atuacao$ LANGUAGE plpgsql;

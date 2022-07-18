CREATE FUNCTION AdicionaSuspensao() RETURNS trigger AS $suspensao$
    BEGIN
        IF NEW.cor = 'Vermelho' THEN
            update Jogador
            set suspenso = TRUE
            where Jogador.id = (select distinct Atuacao.id_jogador from Atuacao where Atuacao.id = NEW.id_atuacao);
        END IF;
        RETURN null;
    END;
$suspensao$ LANGUAGE plpgsql;

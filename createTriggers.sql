/*CREATE TRIGGER verifica_assistente
 before
 INSERT
 ON Gol
 WHEN (Gol.id_atuacao ) EXECUTE PROCEDURE AdicionaPontuacao();
 */
/*
 CREATE TRIGGER verifica_minutagem
 before INSERT ON Gol for each row WHEN (NEW.minuto = 10) EXECUTE PROCEDURE AdicionaPontuacao();
 */

CREATE TRIGGER suspensao before
INSERT
  ON Gol for each row
  WHEN (NEW.minuto = (select * from Jogador)) EXECUTE PROCEDURE AdicionaPontuacao();
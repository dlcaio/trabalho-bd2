CREATE TRIGGER suspensao before
INSERT
  ON Gol for each row
  WHEN (NEW.minuto = (select * from Jogador)) EXECUTE PROCEDURE AdicionaPontuacao();
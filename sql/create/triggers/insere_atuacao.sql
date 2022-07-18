
CREATE TRIGGER insere_atuacao
BEFORE
INSERT
  ON Atuacao FOR EACH ROW EXECUTE FUNCTION ImpedeAtuacaoSuspenso();

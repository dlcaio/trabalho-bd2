drop index if exists nome_clube;
drop index if exists setor_posicao;

CREATE INDEX IF NOT EXISTS nome_clube 
ON Clube using hash (nome);

CREATE INDEX IF NOT EXISTS setor_posicao 
ON Posicao(setor);
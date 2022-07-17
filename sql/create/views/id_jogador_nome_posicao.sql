CREATE VIEW id_jogador_nome_posicao AS
SELECT
  JogadorPosicao.id_jogador as id,
  Posicao.nome
FROM
  JogadorPosicao
  join Posicao on JogadorPosicao.id_posicao = Posicao.id;
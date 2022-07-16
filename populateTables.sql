insert into
  Marca(nome, origem)
values
  ('Nike', 'US');

insert into
  Marca(nome, origem)
values
  ('Adidas', 'DE');

insert into
  Marca(nome, origem)
values
  ('Umbro', 'UK');

insert into
  Marca(nome, origem)
values
  ('Puma', 'DE');

insert into
  Marca(nome, origem)
values
  ('Kappa', 'IT');

insert into
  Entidade(nome, origem)
values
  ('CBF', 'BR');

insert into
  Entidade(nome, origem)
values
  ('AFA', 'AR');

insert into
  Treinador(nome, data_de_nascimento)
values
  ('Vitor Pereira', '1968-07-26');

insert into
  Treinador(nome, data_de_nascimento)
values
  ('Abel Ferreira', '1978-12-22');

insert into
  Treinador(nome, data_de_nascimento)
values
  ('Fernando Diniz', '1974-03-27');

insert into
  ComissaoTecnica(id_treinador)
values
  (1);

insert into
  ComissaoTecnica(id_treinador)
values
  (2);

insert into
  ComissaoTecnica(id_treinador)
values
  (3);

insert into
  AuxiliarTecnico(
    nome,
    funcao,
    data_de_nascimento,
    id_comissao_tecnica
  )
values
  ('Luís Miguel', 'Assistente', '1970-10-18', 1);

insert into
  AuxiliarTecnico(
    nome,
    funcao,
    data_de_nascimento,
    id_comissao_tecnica
  )
values
  ('Filipe Almeida', 'Assistente', '1980-08-29', 1);

insert into
  AuxiliarTecnico(
    nome,
    funcao,
    data_de_nascimento,
    id_comissao_tecnica
  )
values
  (
    'António Ascensão',
    'Preparador Físico',
    '1974-01-14',
    1
  );

insert into
  AuxiliarTecnico(
    nome,
    funcao,
    data_de_nascimento,
    id_comissao_tecnica
  )
values
  (
    'Vitor Castanheira',
    'Auxiliar Técnico',
    '1977-09-07',
    2
  );

insert into
  AuxiliarTecnico(
    nome,
    funcao,
    data_de_nascimento,
    id_comissao_tecnica
  )
values
  (
    'Rogério Godoy',
    'Analista de Dados Estatísticos',
    '1990-12-25',
    2
  );

insert into
  AuxiliarTecnico(
    nome,
    funcao,
    data_de_nascimento,
    id_comissao_tecnica
  )
values
  (
    'Eduardo Maciel de Barro',
    'Auxiliar Técnico',
    '1985-03-08',
    3
  );

insert into
  Clube(
    nome,
    data_de_fundacao,
    localizacao,
    id_marca
  )
values
  ('Corinthians', '1910-09-01', 'São Paulo', 1);

insert into
  Clube(
    nome,
    data_de_fundacao,
    localizacao,
    id_marca
  )
values
  ('Palmeiras', '1914-08-26', 'São Paulo', 4);

insert into
  Clube(
    nome,
    data_de_fundacao,
    localizacao,
    id_marca
  )
values
  ('Fluminense', '1902-07-21', 'Rio de Janeiro', 3);

insert into
  Clube(
    nome,
    data_de_fundacao,
    localizacao,
    id_marca
  )
values
  ('Vasco', '1898-08-21', 'Rio de Janeiro', 5);

insert into
  Clube(
    nome,
    data_de_fundacao,
    localizacao,
    id_marca
  )
values
  ('Cruzeiro', '1921-01-02', 'Belo Horizonte', 2);

insert into
  Campeonato(nome, edicao, id_entidade)
values
  ('Brasileirão', '2022', 1);

insert into
  Campeonato(nome, edicao, id_entidade)
values
  ('Série B', '2022', 1);

insert into
  ClubeCampeonato(id_campeonato, id_clube)
values
  (1, 1);

insert into
  ClubeCampeonato(id_campeonato, id_clube)
values
  (1, 2);

insert into
  ClubeCampeonato(id_campeonato, id_clube)
values
  (1, 3);

insert into
  ClubeCampeonato(id_campeonato, id_clube)
values
  (2, 4);

insert into
  ClubeCampeonato(id_campeonato, id_clube)
values
  (2, 5);

insert into
  Diretor(nome, diretoria, data_de_nascimento, id_clube)
values
  (
    'Duilio Monteiro Alves',
    'Presidência',
    '1975-03-15',
    1
  );

insert into
  Diretor(nome, diretoria, data_de_nascimento, id_clube)
values
  ('Roberto de Andrade', 'Futebol', '1958-04-29', 1);

insert into
  Diretor(nome, diretoria, data_de_nascimento, id_clube)
values
  ('Leila Pereira', 'Presidência', '1964-11-11', 2);

insert into
  Estadio(nome, capacidade, endereco, id_clube)
values
  (
    'Neo Química Arena',
    49205,
    'Av. Miguel Ignácio Curi, 111 - Artur Alvim, São Paulo - SP, 08295-005',
    1
  );

insert into
  Estadio(nome, capacidade, endereco, id_clube)
values
  (
    'Allianz Parque',
    45000,
    'Av. Francisco Matarazzo, 1705 - Água Branca, São Paulo - SP, 05001-200',
    2
  );

insert into
  Arbitro(nome, fifa, data_de_nascimento)
values
  (
    'Anderson Daronco',
    TRUE,
    '1981-01-05'
  );

insert into
  Arbitro(nome, fifa, data_de_nascimento)
values
  (
    'Raphael Claus',
    TRUE,
    '1979-09-06'
  );

insert into
  ArbitroAuxiliar(nome, data_de_nascimento)
values
  ('Bruno Boschilia', '1980-10-10');

insert into
  Partida(
    rodada,
    clube_campeonato_mandante,
    clube_campeonato_visitante,
    id_arbitro
  )
values
  (1, 1, 2, 1);

insert into
  Partida(
    rodada,
    clube_campeonato_mandante,
    clube_campeonato_visitante,
    id_arbitro
  )
values
  (2, 2, 3, 2);

insert into
  Partida(
    rodada,
    clube_campeonato_mandante,
    clube_campeonato_visitante,
    id_arbitro
  )
values
  (2, 2, 3, 2);

insert into
  PartidaArbitroAuxiliar(id_partida, id_arbitro_auxiliar)
values
  (1, 1);

insert into
  PartidaArbitroAuxiliar(id_partida, id_arbitro_auxiliar)
values
  (2, 1);

insert into
  Posicao(nome, setor)
values
  ('Centro-avante', 'Ataque');

insert into
  Posicao(nome, setor)
values
  ('Ponta-esquerda', 'Ataque');

insert into
  Posicao(nome, setor)
values
  ('Ponta-direita', 'Ataque');

insert into
  Posicao(nome, setor)
values
  ('Segundo Atacante', 'Ataque');

insert into
  Posicao(nome, setor)
values
  ('Volante', 'Meio Campo');

insert into
  Posicao(nome, setor)
values
  ('Meia-central', 'Meio Campo');

insert into
  Posicao(nome, setor)
values
  ('Meia-direita', 'Meio Campo');

insert into
  Posicao(nome, setor)
values
  ('Meia-esquerda', 'Meio Campo');

insert into
  Posicao(nome, setor)
values
  ('Meia-atacante', 'Meio Campo');

insert into
  Posicao(nome, setor)
values
  ('Zagueiro', 'Defesa');

insert into
  Posicao(nome, setor)
values
  ('Lateral-esquerdo', 'Defesa');

insert into
  Posicao(nome, setor)
values
  ('Lateral-direito', 'Defesa');

insert into
  Posicao(nome, setor)
values
  ('Goleiro', 'Defesa');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Cassio', '1987-06-06');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Rony', '1995-05-11');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Roger Guedes', '1996-10-02');

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (13, 1);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (1, TRUE, 1, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (3, TRUE, 1, NULL);

insert into
  Falta(minuto, id_atuacao_faltoso, id_jogador_faltado)
values
  (current_timestamp, 1, 2);

insert into
  Cartao(cor, minuto, id_atuacao)
values
  ('Vermelho', current_timestamp, 1);

insert into
  Gol(minuto, penalti, id_atuacao, id_assistencia)
values
  (current_timestamp, FALSE, 1, NULL);

insert into
  Gol(minuto, penalti, id_atuacao, id_assistencia)
values
  (current_timestamp, FALSE, 2, NULL);

insert into
  Gol(minuto, penalti, id_atuacao, id_assistencia)
values
  (current_timestamp, FALSE, 2, NULL);
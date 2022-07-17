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
  Marca(nome, origem)
values
  ('New Balance', 'US');

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
  Treinador(nome, data_de_nascimento)
values
  ('António Oliveira', '1982-09-10');

insert into
  Treinador(nome, data_de_nascimento)
values
  ('António Oliveira', '1982-09-10');

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
  ('Internacional', '1909-04-04', 'Porto Alegre', 2);

insert into
  Clube(
    nome,
    data_de_fundacao,
    localizacao,
    id_marca
  )
values
  (
    'RB Bragantino',
    '1928-01-08',
    'Bragança Paulista',
    6
  );

insert into
  Clube(
    nome,
    data_de_fundacao,
    localizacao,
    id_marca
  )
values
  ('Cuiabá', '2001-12-12', 'Cuiabá', 3);

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
  (1, 4);

insert into
  ClubeCampeonato(id_campeonato, id_clube)
values
  (1, 5);

insert into
  ClubeCampeonato(id_campeonato, id_clube)
values
  (1, 6);

insert into
  ClubeCampeonato(id_campeonato, id_clube)
values
  (2, 7);

insert into
  ClubeCampeonato(id_campeonato, id_clube)
values
  (2, 7);

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
  Estadio(nome, capacidade, endereco, id_clube)
values
  (
    'Maracanã',
    78838,
    'Av. Pres. Castelo Branco, Portão 3 - Maracanã, Rio de Janeiro - RJ, 20271-130',
    3
  );

insert into
  Estadio(nome, capacidade, endereco, id_clube)
values
  (
    'Beira Rio',
    50842,
    'Av. Padre Cacique, 891 - Praia de Belas, Porto Alegre - RS, 90810-240',
    4
  );

insert into
  Estadio(nome, capacidade, endereco, id_clube)
values
  (
    'Estádio Nabi Abi Chedid',
    15010,
    'R. Emílio Colela - Jardim Nova Braganca, Bragança Paulista - SP, 12914-410',
    5
  );

insert into
  Estadio(nome, capacidade, endereco, id_clube)
values
  (
    'Arena Pantanal',
    44097,
    'Av. Agrícola Paes de Barros, s/n - Verdão, Cuiabá - MT, 78030-210',
    6
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
    publico,
    clube_campeonato_mandante,
    clube_campeonato_visitante,
    id_arbitro
  )
values
  (1, 30000, 1, 2, 1);

insert into
  Partida(
    rodada,
    publico,
    clube_campeonato_mandante,
    clube_campeonato_visitante,
    id_arbitro
  )
values
  (1, 25000, 3, 4, 2);

insert into
  Partida(
    rodada,
    publico,
    clube_campeonato_mandante,
    clube_campeonato_visitante,
    id_arbitro
  )
values
  (1, 8000, 5, 6, 1);

insert into
  Partida(
    rodada,
    publico,
    clube_campeonato_mandante,
    clube_campeonato_visitante,
    id_arbitro
  )
values
  (2, 9000, 6, 1, 2);

insert into
  Partida(
    rodada,
    publico,
    clube_campeonato_mandante,
    clube_campeonato_visitante,
    id_arbitro
  )
values
  (2, 29000, 2, 3, 2);

insert into
  Partida(
    rodada,
    publico,
    clube_campeonato_mandante,
    clube_campeonato_visitante,
    id_arbitro
  )
values
  (2, 24000, 4, 5, 1);

insert into
  Partida(
    rodada,
    publico,
    clube_campeonato_mandante,
    clube_campeonato_visitante,
    id_arbitro
  )
values
  (3, 5000, 5, 2, 1);

insert into
  Partida(
    rodada,
    publico,
    clube_campeonato_mandante,
    clube_campeonato_visitante,
    id_arbitro
  )
values
  (3, 15000, 3, 1, 2);

insert into
  Partida(
    rodada,
    publico,
    clube_campeonato_mandante,
    clube_campeonato_visitante,
    id_arbitro
  )
values
  (3, 3900, 6, 4, 1);

insert into
  Partida(
    rodada,
    publico,
    clube_campeonato_mandante,
    clube_campeonato_visitante,
    id_arbitro
  )
values
  (4, 27000, 2, 6, 2);

insert into
  Partida(
    rodada,
    publico,
    clube_campeonato_mandante,
    clube_campeonato_visitante,
    id_arbitro
  )
values
  (4, 40000, 1, 4, 1);

insert into
  Partida(
    rodada,
    publico,
    clube_campeonato_mandante,
    clube_campeonato_visitante,
    id_arbitro
  )
values
  (4, 5000, 5, 3, 2);

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
  ('Goleiro', 'Defesa');

insert into
  Posicao(nome, setor)
values
  ('Lateral-direito', 'Defesa');

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
  ('Ponta-direita', 'Ataque');

insert into
  Posicao(nome, setor)
values
  ('Ponta-esquerda', 'Ataque');

insert into
  Posicao(nome, setor)
values
  ('Segundo Atacante', 'Ataque');

insert into
  Posicao(nome, setor)
values
  ('Centro-avante', 'Ataque');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Cassio', '1987-06-06');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Gil', '1987-06-06');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Renato Augusto', '1988-02-08');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Roger Guedes', '1996-10-02');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Weverton', '1987-06-06');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Gustavo Gomez', '1987-06-06');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Raphael Veiga', '1988-02-08');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Rony', '1996-10-02');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Fabio', '1987-06-06');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Nino', '1987-06-06');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Ganso', '1988-02-08');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Cano', '1996-10-02');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Daniel', '1987-06-06');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Victor Cuesta', '1987-06-06');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Edenilson', '1988-02-08');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Wanderson', '1996-10-02');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Cleiton', '1987-06-06');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Leo Ortiz', '1987-06-06');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Artur', '1988-02-08');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Ytalo', '1996-10-02');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Walter', '1987-06-06');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Marllon', '1987-06-06');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('Camilo', '1988-02-08');

insert into
  Jogador(nome, data_de_nascimento)
values
  ('André', '1996-10-02');

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (1, 1);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (3, 2);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (6, 3);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (7, 3);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (11, 4);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (13, 4);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (1, 5);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (3, 6);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (9, 7);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (11, 8);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (13, 8);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (1, 9);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (3, 10);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (9, 11);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (13, 12);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (1, 13);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (3, 14);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (5, 15);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (13, 16);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (1, 17);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (3, 18);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (10, 19);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (13, 20);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (1, 21);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (3, 22);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (6, 23);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (7, 23);

insert into
  JogadorPosicao(id_posicao, id_jogador)
values
  (13, 24);

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
  (2, TRUE, 1, NULL);

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
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (4, TRUE, 1, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (5, FALSE, 1, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (6, FALSE, 1, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (7, FALSE, 1, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (8, FALSE, 1, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (9, TRUE, 2, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (10, TRUE, 2, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (11, TRUE, 2, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (12, TRUE, 2, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (13, FALSE, 2, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (14, FALSE, 2, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (15, FALSE, 2, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (16, FALSE, 2, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (17, TRUE, 3, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (18, TRUE, 3, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (19, TRUE, 3, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (20, TRUE, 3, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (21, FALSE, 3, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (22, FALSE, 3, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (23, FALSE, 3, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (24, FALSE, 3, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (1, FALSE, 4, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (2, FALSE, 4, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (3, FALSE, 4, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (4, FALSE, 4, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (5, TRUE, 5, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (6, TRUE, 5, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (7, TRUE, 5, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (8, TRUE, 5, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (9, FALSE, 5, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (10, FALSE, 5, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (11, FALSE, 5, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (12, FALSE, 5, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (13, TRUE, 6, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (14, TRUE, 6, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (15, TRUE, 6, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (16, TRUE, 6, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (17, FALSE, 6, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (18, FALSE, 6, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (19, FALSE, 6, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (20, FALSE, 6, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (21, TRUE, 4, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (22, TRUE, 4, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (23, TRUE, 4, NULL);

insert into
  Atuacao(
    id_jogador,
    mandante,
    id_partida,
    id_atuacao_substitui
  )
values
  (24, TRUE, 4, NULL);

insert into
  Falta(minuto, id_atuacao_faltoso, id_jogador_faltado)
values
  (37, 2, 6);

insert into
  Falta(minuto, id_atuacao_faltoso, id_jogador_faltado)
values
  (37, 2, 8);

insert into
  Falta(minuto, id_atuacao_faltoso, id_jogador_faltado)
values
  (60, 2, 7);

insert into
  Falta(minuto, id_atuacao_faltoso, id_jogador_faltado)
values
  (80, 1, 7);


insert into
  Cartao(cor, minuto, id_atuacao)
values
  ('Amarelo', 13, 10);

insert into
  Cartao(cor, minuto, id_atuacao)
values
  ('Amarelo', 50, 12);

insert into
  Cartao(cor, minuto, id_atuacao)
values
  ('Vermelho', 70, 30);

insert into
  Cartao(cor, minuto, id_atuacao)
values
  ('Amarelo', 53, 10);

insert into
  Cartao(cor, minuto, id_atuacao)
values
  ('Amarelo', 33, 8);

insert into
  Cartao(cor, minuto, id_atuacao)
values
  ('Vermelho', 70, 24);

insert into
  Cartao(cor, minuto, id_atuacao)
values
  ('Amarelo', 88, 27);

insert into
  Cartao(cor, minuto, id_atuacao)
values
  ('Amarelo', 88, 42);

insert into
  Cartao(cor, minuto, id_atuacao)
values
  ('Amarelo', 18, 18);

insert into
  Gol(minuto, penalti, id_atuacao, id_assistente)
values
  (30, FALSE, 4, NULL);

insert into
  Gol(minuto, penalti, id_atuacao, id_assistente)
values
  (70, FALSE, 4, 3);

insert into
  Gol(minuto, penalti, id_atuacao, id_assistente)
values
  (72, TRUE, 4, NULL);

insert into
  Gol(minuto, penalti, id_atuacao, id_assistente)
values
  (78, FALSE, 2, NULL);

insert into
  Gol(minuto, penalti, id_atuacao, id_assistente)
values
  (3, FALSE, 28, 3);
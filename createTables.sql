create table if not exists Marca (
  id serial primary key,
  nome varchar(30) not null,
  origem varchar(30)
);

create table if not exists Entidade (
  id serial primary key,
  nome varchar(30) not null,
  origem varchar(30)
);

create table if not exists Treinador (
  id serial primary key,
  nome varchar(30) not null,
  data_de_nascimento date
);

create table if not exists ComissaoTecnica (
  id serial primary key,
  id_treinador int not null,
  foreign key (id_treinador) references Treinador(id)
);

create table if not exists AuxiliarTecnico (
  id serial primary key,
  nome varchar(30) not null,
  funcao varchar(30) not null,
  data_de_nascimento date,
  id_comissao_tecnica int,
  foreign key (id_comissao_tecnica) references ComissaoTecnica(id)
);

create table if not exists Clube (
  id serial primary key,
  nome varchar(50) not null,
  data_de_fundacao date,
  localizacao varchar(50),
  id_marca int not null,
  foreign key (id_marca) references Marca(id)
);

create table if not exists Campeonato (
  id serial primary key,
  nome varchar (50) not null,
  edicao varchar (4) not null,
  id_entidade int not null,
  foreign key (id_entidade) references Entidade(id)
);

create table if not exists ClubeCampeonato (
  id serial primary key,
  id_campeonato int not null,
  id_clube int not null,
  foreign key (id_campeonato) references Campeonato(id),
  foreign key (id_clube) references Clube(id)
);

create table if not exists Diretor (
  id serial primary key,
  nome varchar(50) not null,
  diretoria varchar(30) not null,
  data_de_nascimento date,
  id_clube int not null,
  foreign key (id_clube) references Clube(id)
);

create table if not exists Estadio (
  id serial primary key,
  nome varchar(50) not null,
  capacidade int not null,
  endereco varchar(100),
  id_clube int not null,
  foreign key (id_clube) references Clube(id)
);

create table if not exists Arbitro (
  id serial primary key,
  nome varchar(30) not null,
  fifa boolean not null,
  data_de_nascimento date not null
);

create table if not exists ArbitroAuxiliar (
  id serial primary key,
  nome varchar(30) not null,
  data_de_nascimento date not null
);

create table if not exists Partida (
  id serial primary key,
  rodada int not null,
  clube_campeonato_mandante int not null,
  clube_campeonato_visitante int not null,
  id_arbitro int not null,
  foreign key (id_arbitro) references Arbitro(id),
  foreign key (clube_campeonato_mandante) references ClubeCampeonato(id),
  foreign key (clube_campeonato_visitante) references ClubeCampeonato(id)
);

create table if not exists PartidaArbitroAuxiliar (
  id serial primary key,
  id_partida int not null,
  id_arbitro_auxiliar int not null,
  foreign key (id_partida) references Partida(id),
  foreign key (id_arbitro_auxiliar) references ArbitroAuxiliar(id)
);

create table if not exists Posicao (
  id serial primary key,
  nome varchar(30) not null,
  setor varchar(30) not null
);

create table if not exists Jogador (
  id serial primary key,
  nome varchar(50) not null,
  data_de_nascimento date not null
);

create table if not exists JogadorPosicao (
  id serial primary key,
  id_posicao int not null,
  id_jogador int not null,
  foreign key (id_posicao) references Posicao(id),
  foreign key (id_jogador) references Jogador(id)
);

create table if not exists Atuacao (
  id serial primary key,
  mandante boolean not null,
  id_jogador int not null,
  id_partida int not null,
  id_atuacao_substitui int,
  foreign key (id_jogador) references Jogador(id),
  foreign key (id_partida) references Partida(id),
  foreign key (id_atuacao_substitui) references Atuacao(id)
);

create table if not exists Falta (
  id serial primary key,
  minuto timestamp not null,
  id_atuacao_faltoso int not null,
  id_jogador_faltado int not null,
  foreign key (id_atuacao_faltoso) references Atuacao(id),
  foreign key (id_jogador_faltado) references Jogador(id)
);

create table if not exists Cartao (
  id serial primary key,
  cor varchar(30) not null,
  minuto timestamp not null,
  id_atuacao int not null,
  foreign key (id_atuacao) references Atuacao(id)
);

create table if not exists Assistencia (
  id serial primary key,
  minuto timestamp not null,
  id_atuacao int not null,
  foreign key (id_atuacao) references Atuacao(id)
);

create table if not exists Gol (
  id serial primary key,
  minuto timestamp not null,
  penalti boolean not null,
  id_atuacao int not null,
  id_assistencia int,
  foreign key (id_atuacao) references Atuacao(id),
  foreign key (id_assistencia) references Assistencia(id)
);
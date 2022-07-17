# Trabalho da Disciplina Projeto de Banco de Dados para Sistemas de Informação

Trabalho realizado pelo aluno Caio Della Libera utilizando Postgres

## Modelo Conceitual

## Esquema Relacional

Primeira Rodada:
- Corinthians (id = 1) x Palmeiras (id = 2)
- Fluminense (id = 3) x Internacional (id = 4)
- RB Bragantino (id = 5) x Cuiabá (id = 6)

Segunda Rodada:
- Cuiabá (id = 6) x Corinthians (id = 1)
- Palmeiras (id = 2) x Fluminense (id = 3)
- Internacional (id = 4) x RB Bragantino (id = 5)

Terceira Rodada:
- RB Bragantino (id = 5) x Palmeiras (id = 2)
- Fluminense (id = 3) x Corinthians (id = 1)
- Cuiabá (id = 6) x Internacional (id = 4)

Quarta Rodada:
- Palmeiras (id = 2) x Cuiabá (id = 6)
- Corinthians (id = 1) x Internacional (id = 4)
- RB Bragantino (id = 5) x Fluminense (id = 3)

## Funções/Stored Procedures

### 1. [Artilheiro do Campeonato](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/functions/artilheiro_campeonato.sql)

### 2. [Artilheiro do Time](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/functions/artilheiro_time.sql)

### 3. [Lider de Assistências do campeonato](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/functions/lider_assistencias_campeonato.sql)

## Triggers

## Visões

## Consultas

### 1. [Jogadores na terceira partida do campeonato](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/queries/1.sql)

#### Índice Criado

### 2. [Árbitro que mais aplicou cartão](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/queries/2.sql)

### 3. [Média de publico do Corinthians](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/queries/3.sql)

#### Índice Criado

- [Nome do Jogador](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/indexes/nome_clube.sql)

### 4. [Selecionar todos os meio campistas](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/queries/4.sql)

#### Índice Criado

- [Setor de Posições](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/indexes/setor_posicao.sql)

### 5. [Selecionar goleiros menos vazados](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/queries/5.sql)

### 6. [Jogador que mais sofreu faltas](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/queries/6.sql)

### 8. [Jogadores com mais de 2 gols](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/queries/8.sql)

### 9. [Estádios com capacidade maior que 50000 pessoas](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/queries/9.sql)

#### Índice Criado

- [Capacidade](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/indexes/capacidade.sql)
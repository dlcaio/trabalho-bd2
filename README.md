# Trabalho da Disciplina Projeto de Banco de Dados para Sistemas de Informação

Trabalho realizado pelo aluno Caio Della Libera utilizando Postgres.

O BD está hospedado em um servidor do Heroku.

A conexão é realizada com NodeJS através do cliente npm [pg](https://www.npmjs.com/package/pg).

Para executar queries `.sql`, basta instalar a dependência pg com `npm i` depois `node query.js --sqlfile <CAMINHO DO ARQUIVO .SQL>`.

A flag `--rows` pode ser passada no comando acima para comandos `SELECT`.

## Modelo Conceitual

A primeira versão do Modelo Conceitual - incompleta e com alguns erros - pode ser vista na figura abaixo:

![V1](https://github.com/dlcaio/trabalho-bd2/blob/main/images/ER-initial-bw.png)

A versão final do Modelo Conceitual, com adições e correções, pode ser vista abaixo:

![V2](https://github.com/dlcaio/trabalho-bd2/blob/main/images/ER.png)


## Esquema Relacional

- [Criação de Tabelas](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/tables.sql)

- [População de Tabelas](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/populateTables.sql)

<!--
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
-->
## Funções

### 1. [Artilheiro do Campeonato](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/functions/artilheiro_campeonato.sql)

### 2. [Artilheiro do Time](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/functions/artilheiro_time.sql)

### 3. [Lider de Assistências do campeonato](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/functions/lider_assistencias_campeonato.sql)

### 4. [Adiciona Suspensão (função do Trigger 1)](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/functions/adiciona_suspensao.sql)

### 5. [<<<< NÃO FUNCIONAL >>>> Impede Atuação de Jogador Suspenso (função de Trigger 2)](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/functions/impede_atuacao_suspenso.sql)


## Triggers

### 1. [Suspensão](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/triggers/suspensao.sql)

### 2. [<<<< NÃO FUNCIONAL >>>> Insere Atuação](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/triggers/insere_atuacao.sql)


## Visões

### 1. [Id de um jogador e suas posições](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/views/id_jogador_nome_posicao.sql)

- Essa visão foi utilizada na [Consulta 5](https://github.com/dlcaio/trabalho-bd2#5-selecionar-goleiro-menos-vazado)

### 2. [Id de uma atuação, Id de uma partida, Mandante ou não de uma partida e Id do árbitro da partida](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/views/partida_atuacao.sql)

- Essa visão foi utilizada nas [Consulta 2](https://github.com/dlcaio/trabalho-bd2#2-%C3%A1rbitro-que-mais-aplicou-cart%C3%A3o) e [Consulta 7](https://github.com/dlcaio/trabalho-bd2#7-placar-da-primeira-partida)

## Consultas

### 1. [Jogadores na terceira partida do campeonato](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/queries/1.sql)

### 2. [Árbitro que mais aplicou cartão](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/queries/2.sql)

### 3. [Média de publico do Corinthians](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/queries/3.sql)

#### Índice Criado

Foi criado um índice de Hash, já que a query é em cima de um valor exato

- [Nome do Jogador](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/indexes/nome_clube.sql)

### 4. [Selecionar todos os meio campistas](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/queries/4.sql)

#### Índice Criado

Foi criado um índice de Hash, já que a query é em cima de um valor exato

- [Setor de Posições](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/indexes/setor_posicao.sql)

### 5. [Selecionar goleiro menos vazado](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/queries/5.sql)

### 6. [Jogador que mais sofreu faltas](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/queries/6.sql)

### 7. [Placar da primeira partida](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/queries/7.sql)

### 8. [Jogadores com mais de 2 gols](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/queries/8.sql)

### 9. [Estádios com capacidade maior que 50000 pessoas](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/queries/9.sql)

#### Índice Criado

Foi criado um índice de árvore B, já que a query é em cima de um intervalo

- [Capacidade](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/indexes/capacidade.sql)

### 10. [Gols no Segundo Tempo](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/queries/10.sql)

#### Índice Criado

Foi criado um índice de árvore B, já que a query é em cima de um intervalo

- [Minuto do Gol](https://github.com/dlcaio/trabalho-bd2/blob/main/sql/create/indexes/minuto_gol.sql)


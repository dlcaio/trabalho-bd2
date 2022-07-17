-- Estádios com capacidade maior que 50000 pessoas
select
  Estadio.nome
from
  Estadio
  where Estadio.capacidade > 50000;
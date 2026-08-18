use universidade;

select * 
from alunos;

select nome, curso
from alunos;

select * 
from alunos 
where curso = "ads";

select * 
from alunos 
where idade between 21 and 23;

select * 
from alunos 
order by idade asc;

select * 
from alunos 
order by idade desc;

select * 
from alunos 
order by curso asc, nome asc;


insert into alunos(nome, curso, idade)
values
("Fernanda", "ADS", 22),
("Pedro", "Engenharia", 24),
("Juliana", "Ciencia de Dados", 22),
("Rafael", "ADS", 21),
("Camila", "Engenharia", 24),
("Bruno", "Ciencia de dados", 25),
("Larissa", "ADS", 20),
("Patricia", "ADS", 24),
("Daniel", "Engenharia", 26),
("Marcos", "Ciencia de Dados", 21);

select * 
from alunos 
order by id;


-- Update
set sql_safe_updates = 0;

update alunos 
set idade = 22 
where nome = 'ana';

select * 
from alunos 
where nome = 'ana';


update alunos 
set curso = 'Ciencia de Dados'
where nome = 'joao';

select *
from alunos 
where nome = 'joao';


update alunos 
set idade = idade + 1 
where curso = 'ads';

select * 
from alunos 
where curso = 'ads' 
order by idade asc;


-- Delete
select * 
from alunos 
where nome = 'rafael';

delete 
from alunos 
where nome = 'rafael';

select * 
from alunos 
where nome = 'rafael';


delete from alunos 
where idade < 21;

select * 
from alunos;

-- delete sem where apaga tudo da tabela

-- Count
select count(*) 
from alunos;

select count(*) as total_alunos 
from alunos;

-- Count com filtro
select count(*) as total_ads 
from alunos 
where curso = 'ads';

-- AVG: media das idades
select avg(idade) as media_idade 
from alunos;

-- Min: menor idade
select min(idade) as menor_idade 
from alunos;

-- Max: maior idade
select max(idade) as maior_idade 
from alunos;

-- Sum: soma das idades
select sum(idade) as soma_idades 
from alunos;

-- Varias funções juntas
select 
	count(*) as quantidade,
	avg(idade) as media_idade,
	min(idade) as menor_idade,
	max(idade) as maior_idade,
	sum(idade) as soma_idades
from alunos 
where curso = 'ads';

select * 
from alunos;

-- Quantidade de aluno por curso
select curso, count(*) as quantidade 
from alunos 
group by curso;

-- Quantidades de alunos por idade
select idade, count(*) as quantidade 
from alunos 
group by idade;

-- Media de idade por curso
select curso, round(avg(idade),2) as media_idade 
from alunos 
group by curso;

-- Menor idade por curso
select curso, min(idade) as menor_idade 
from alunos 
group by curso;

-- Maior idade por curso
select curso, max(idade) as maior_idade 
from alunos 
group by curso;

-- Soma idades por curso
select curso, sum(idade) as soma_idades 
from alunos 
group by curso;


-- Order by com Group By

-- Quantidade de alunos por curso, do maior por idade
select curso, count(*) as quantidade 
from alunos 
group by curso 
order by quantidade desc;

-- Media da idade por curso, do maior para menor
select curso, avg(idade) as media_idade 
from alunos
group by curso 
order by media_idade desc;

-- Ordenar curso por ordem alfabetica
select curso, count(*) as quantidade 
from alunos 
group by curso 
order by curso asc;



-- Having - filtrar grupos após agrupamento
 select curso, count(*) as quantidade 
 from alunos 
 group by curso 
 having quantidade>2;
 
 -- Mostrar idades com mais de um aluno
 select idade, count(*) as quantidade 
 from alunos 
 group by idade 
 having quantidade > 1;
 
 -- Mostrar cursos com media de idade maior que 22
 select idade, round(avg(idade),2) as media_idade 
 from alunos 
 group by idade 
 having media_idade > 22;
 
 -- Mostrar cursos cujo a soma da idade seja maior que 40
 select curso, sum(idade) as soma_idade 
 from alunos 
 group by curso 
 having soma_idade > 40;
 
 
 
 
 -- Where x Having
 -- Where filtra linhas antes do agrupamento
 -- Having filtra grupos depois do agrupamento
 
 -- Primeiro filtra depois agrupa
 select curso, count(*) as quantidade
 from alunos
 where idade > 22
 group by curso;
 
 -- Primerio agrupa depois filtra
 select curso, count(*) as quantidade
 from alunos
 group by curso
 having quantidade > 2;
 
 -- Exemplo Combinado Where e Having
 -- Filtra na quantidade, alunos com idade maior ou igual a 22 e depois agrupa e filtra apenas cursos q tem 2 ou mais alunos nessas condições 
 select curso, count(*) as quantidade
 from alunos
 where idade >= 22
 group by curso 
having quantidade >= 2;
 
 -- Exemplo com media
 select curso, avg(idade) as media_idade
 from alunos
 where idade >= 22
 group by curso
 having media_idade >= 23;
 
 
 
 
 -- Relatorios mais completos
 -- Misturando conteúdos da aula 1 e 2
 
 -- Cursos e quantidades de alunos
 select curso, count(*) as quantidade 
 from alunos 
 group by curso 
 order by quantidade desc;
 
 -- Quantidade de alunos por curso. considerando apenas idade maior que 21
 select curso, count(*) as quantidade
 from alunos
 where idade > 21
 group by curso
 order by quantidade desc;
 
 -- Mostrar apenas cursos com pelo menos dois alunos
 select curso, count(*) as quantidade 
 from alunos
 group by curso
 having quantidade > 2
 order by quantidade desc;
 
 -- Quantidade de alunos por idade
 select idade, count(*) as quantidade
 from alunos
 group by idade
 order by quantidade desc;
 
 -- Media de idade por curso
 select curso, round(avg(idade),2) as media_idade
 from alunos
 group by curso
 order by media_idade desc;
 
 -- Maior e menor idade por curso
 select 
	curso,
    max(idade) as maior_idade,
    min(idade) as menor_idade
 from alunos
 group by curso
 order by curso asc;
 
 -- Relatório completo por curso - quantidade, media, minimo, maximo, soma da idade
 select
	curso,
    count(*) as quantidade,
    round(avg(idade),2) as media_idade,
    min(idade) as minimo_idade,
    max(idade) as maximo_idade,
    sum(idade) as soma_idade
from alunos
group by curso
order by curso asc;
 

-- Criando banco de dados
create database escola;
-- Utilizando o banco de dados
use escola;

-- ============================================================================

-- Criando tabela de cursos
create table cursos(
	id_curso int auto_increment primary key,
    nome_curso varchar(100)
);

-- Inserindo valores na tabela
insert into cursos(nome_curso) values
	("ADS"),
    ("Engenharia"),
    ("Direito"),
    ("Medicina")
;

-- Visualizando a tabela
select * 
from cursos;

-- ============================================================================================

-- Criando tabela de alunos
create table alunos(
	id_aluno int auto_increment primary key,
    nome_aluno varchar(100),
    id_curso int,
    foreign key (id_curso) references cursos (id_curso) -- Adicionando chave estrangeira
);

-- Inserindo valores na tabela
insert into alunos(nome_aluno, id_curso) values
	("Ana", 1),
    ("João", 1),
    ("Maria", 2),
    ("Pedro", 3),
    ("Bianca", 2),
    ("Felipe", 4),
    ("Lucas", null);
    
-- Mostrando a tabela
select * 
from alunos;

-- ================================================================================================

-- Criando tabela de disciplina
create table disciplinas(
	id_disciplina int auto_increment primary key,
    nome_disciplina varchar(100) not null
);


-- Inserindo disciplinas
insert into disciplinas(nome_disciplina) values
	("SQL"),
    ("Python"),
    ("Power BI"),
    ("Estatistica"),
    ("Historia");

-- Mostrando tabela
select * from disciplinas;

-- ==========================================================================================

-- Criando tabela intermediaria (N:N)
create table aluno_disciplina(
	id_aluno int,
    id_disciplina int,
    primary key(id_aluno, id_disciplina), 			-- Chave composta
    foreign key (id_aluno) references alunos(id_aluno),
    foreign key (id_disciplina) references disciplinas(id_disciplina)
);

-- Inserindo valores
insert into aluno_disciplina(id_aluno, id_disciplina) values
	(1,1),
	(1,2),
	(2,1),
	(2,3), 
	(3,2),
	(3,4),
	(4,1),
	(5,3),
	(6,4)
;

-- Vendo tabela
select * from aluno_disciplina;

-- =============================================================

-- Inner join 
-- Só alunos com curso
select 
	a.id_aluno,
	a.nome_aluno as aluno,
	c.nome_curso as curso
from alunos a 				-- 'a' é um apelido para referenciar a tabela
inner join cursos c
on a.id_curso = c.id_curso;

-- RESULTADO:
-- Retorna apenas alunos que possuem curso associado
-- Lucas NÂO aparece, pois id_curso = NULL
-- INNER JOIN exige correspondencia nas duas tabelas


-- ==================================================================================

-- Left join
-- Todos alunos(inclusive sem curso)
 select
	a.nome_aluno as aluno,
    c.nome_curso as curso
from alunos a
left join cursos c
on a.id_curso = c.id_curso;

-- RESULTADO
-- Retorna todos os alunos
-- Lucas aparece mesmo sem curso
-- Para o lucas, o curso será NULL

-- ===================================================

-- Right join

select
	a.nome_aluno as aluno,
    c.nome_curso as curso
from alunos a
right join cursos c
on a.id_curso = c.id_curso;

-- RESULTADO:
-- Retorna todos os cursos
-- Mesmo cursos sem alunos aparecem
-- Se houver curso sem aluno -> aluno será NULL

-- =======================================================

-- Join N:N (ALUNO + DISCIPLINA)
-- Usando tabela intermediaria
select 
	a.nome_aluno as aluno,
    d.nome_disciplina as disciplina
from aluno_disciplina ad
inner join alunos a
	on a.id_aluno = ad.id_aluno
inner join disciplinas d
	on d.id_disciplina = ad.id_disciplina;
    
-- RESULTADO:
-- Cada linha representa uma combinação aluno + disciplina
-- Um aluno pode aparecer várias vezes (uma vez por disciplina)

-- =========================================================

-- Join completo (ALUNO + CURSO + DISCIPLINA)
select
	a.nome_aluno as aluno,
	c.nome_curso as curso,
    d.nome_disciplina as disciplina
from aluno_disciplina ad
inner join alunos a
	on a.id_aluno = ad.id_aluno
inner join cursos c
	on c.id_curso = a.id_curso
inner join disciplinas d
	on d.id_disciplina = ad.id_disciplina;
    
-- RESULTADO:
-- Juntamos tudo: aluno+curso+disciplina
-- Contiunua sendo N:N (varias linhas por aluno)

-- =====================================

-- Alunos sem disciplina
select
	a.nome_aluno as aluno,
    d.nome_disciplina as disciplina
from alunos a
left join aluno_disciplina ad
	on a.id_aluno = ad.id_aluno
left join disciplinas d
	on ad.id_disciplina = d.id_disciplina;

-- RESULTADO:
-- Todos os alunos aparecem
-- Alunos sem disciplina -> disciplina = NULL
-- Lucas aparece com NULL

-- ==============================================

-- Disciplinas sem alunos
select
	d.nome_disciplina as disciplina,
	a.nome_aluno as aluno
from disciplinas d
left join aluno_disciplina ad
	on d.id_disciplina = ad.id_disciplina
left join alunos a
	on ad.id_aluno = a.id_aluno
where nome_aluno is null;
	
-- Jeito da professora
select
	d.nome_disciplina as disciplina
from disciplinas d
left join aluno_disciplina ad
	on d.id_disciplina = ad.id_disciplina
where ad.id_aluno is null;

-- RESULTADO:
-- Retorna disciplinas que não tem alunos associados
-- 

drop table disciplina
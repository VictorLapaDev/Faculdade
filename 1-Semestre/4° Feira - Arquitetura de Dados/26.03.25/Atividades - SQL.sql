-- Atividade 1
create database Atividades;
use atividades;

-- 1) Criando tabela
create table funcionarios(
	id int auto_increment primary key,
    nome varchar(100),
    departamento varchar(100),
    idade int,
    salario decimal(10,2)
);

-- 2) Adicionando valores
insert into funcionarios(nome, departamento, idade, salario)
values
("Ana", "TI", 24, 5000.00),
("Bruno", "RH", 20, 3200.00),
("Carla", "Financeiro", 29, 4500.00),
("Daniel", "TI", 18, 5500.00),
("Eduarda", "Administrativo", 30, 2800.00),
("Felipe", "Financeiro", 35, 4700.00),
("Gabriela", "RH", 32, 3100.00),
("Henrique", "TI", 25, 6000.00);


-- 3) Mostrando tudo
select *
from funcionarios;


-- 4) Mostrando em ordem de salario
select * 
from funcionarios
order by salario desc;


-- 5) Atualizando salario de gabriela
update funcionarios
set salario = 3300
where nome = "Gabriela";
-- Visualizando
select * 
from funcionarios
where nome = "Gabriela";

-- 6) Mudando departamento de bruno
update funcionarios
set departamento = "TI"
where nome = "Bruno";
-- Visualizando
select * 
from funcionarios
where nome = "Bruno";


-- 7) Removendo funcionaria demitida
delete from funcionarios
where nome = "Eduarda";
-- Visualizando
select *
from funcionarios
where nome = "Eduarda";


-- 8) Contando funcionarios
select count(*) as total_funcionarios
from funcionarios;


-- 9) Quantidade de funcionarios por departamento
select departamento, count(*) as quantidade
from funcionarios
group by departamento;


-- 10) Media salarial por departamento
select departamento, round(avg(salario), 2) as media_salarial
from funcionarios
group by departamento;


-- 11) Salario total por departamento
select departamento, sum(salario) as total_salario
from funcionarios
group by departamento;



-- 12) Relatorio contendo, quantidade de funcionarios, media salarial, maior salario, menor salario, total pago
select departamento,
	count(*) as quantidade_funcionarios,
    round(avg(salario), 2) as media_salarial,
    max(salario) as maior_salario,
    min(salario) as menor_salario,
    sum(salario) as total_salario
from funcionarios
group by departamento;


-- 13) Apenas departamentos que possuem mias de 1 funcionario e tem media salarial maior que 3000
select departamento,
	count(*) as quantidade_funcionarios,
    round(avg(salario), 2) as media_salarial
from funcionarios
group by departamento
having quantidade_funcionarios > 1 and media_salarial > 3000;


-- 14) Ordenando relatorio por total pago
select departamento,
	count(*) as quantidade_funcionarios,
    round(avg(salario), 2) as media_salarial,
    max(salario) as maior_salario,
    min(salario) as menor_salario,	
    sum(salario) as total_salario
from funcionarios
group by departamento
order by total_salario desc;


-- 15) Qual departamento parece ser o mais caro para a empresa? Justifique sua resposta com base nos dados.
-- Acredito que o de ti, pois ele tem a maior media salarial.






-- Atividade 2
create table vendas(
	id int auto_increment primary key,
    produto varchar(100),
    categoria varchar(100),
    quantidade int,
    valor decimal(10,2)
);


-- 1) Inseridndo dados
insert into vendas(produto, categoria, quantidade, valor)
values
("Notebook", "Eletronicos", 2, 3500.00),
("Mouse", "Eletronicos", 5, 80.00),
("Mesa", "Moveis", 1, 900.00),
("Cadeira", "Moveis", 4, 450.00),
("Curso SQL", "Educacao", 10, 200.00),
("Livro Python", "Educacao", 6, 120.00),
("Monitor", "Eletronicos", 3, 1200.00),
("Estante", "Moveis", 2, 700.00);


-- 2) Mostando todas as vendas
select * 
from vendas;


-- 3) Mostrando ordenado pelo valor
select *
from vendas
order by valor desc;


-- 4) Aumentando o valor de livro de python em 25%
update vendas
set valor = valor + (0.25*valor)
where produto = "Livro Python";
-- Vizualizando
select * 
from vendas
where produto = "Livro Python";


-- 5) Remover mesa da tabela
delete from vendas
where produto = "mesa";
-- Visualizando
select * 
from vendas;


-- 6) Conte quantas vendas existem
select count(*) as quantidade_vendas
from vendas;


-- 7) Quantidade de vendas por categoria
select categoria, count(*) as quantidade_vendas
from vendas
group by categoria;


-- 8) Valor médio por categoria
select categoria, round(avg(valor), 2) as valor_medio
from vendas
group by categoria;


-- 9) Valor total vendido por categoria
select categoria, sum(valor) as valor_total
from vendas
group by categoria;


-- 10)  Relatorio contendo, quantidade de vendas, valor medio, maior valor, menor valor, total valor
select categoria, 
	count(*) as quantidade_vendas,
    round(avg(valor), 2) as valor_medio,
    max(valor) as maior_valor,
    min(valor) as menor_valor,
    sum(valor) as total_valor
from vendas
group by categoria;


-- 11) Categorias que possuem mais de 2 vendas
select categoria, count(*) as quantidade_vendas
from vendas
group by categoria
having quantidade_vendas > 2;


-- 12) Ordenando as categorias pelo valor total vendido
select categoria, sum(valor) as total_valor
from vendas
group by categoria
order by total_valor desc;






-- Atividade 3 - Impacto na Atividade 1
-- 1) Atualizar o salario de bruno para 4000
update funcionarios
set salario = 4000
where nome = "Bruno";

-- 2) Removendo a gabriela
delete from funcionarios
where nome = "Gabriela";

-- 3) Executando o relatorio
select departamento,
	count(*) as quantidade_funcionarios,
    round(avg(salario), 2) as media_salarial,
    max(salario) as maior_salario,
    min(salario) as menor_salario,
    sum(salario) as total_salario
from funcionarios
group by departamento;

-- 4) 
-- 1. Mudou nos resultados que não aparece mais um departamento por que não tem nenhum funcionario, como também afetou a média de salário do departamento de ti, uma vez que aumentamos o salário do Bruno.
-- 2. O delete, uma vez que ele apagou os dados de gabriela, apagando também o departamento já que ela era a última funcionária, enquanto o update apenas mudou um valor, afetando a média e o toal.




-- Atividade 4 - Conceitual: WHERE vs HAVING
-- 1) Where, filtra as linhas, ja que é uma forma simples de filtrar antes de agrupar, é utilizado o where.
-- 2) Having, como ele tem que agrupar por curso para calcular a quantidade de alunos por curso, e o filtro é utilizado depois de agrupar, é utilizado o having.
-- 3) Where, não precisa agrupar, apenas utilizando um filtro simples se consegue mostrar. Filtra a linha, logo se usa o where.
-- 4) Having, tem que agrupar por departamento para filtrar a media salarial por departamento, logo é utilizado o having.

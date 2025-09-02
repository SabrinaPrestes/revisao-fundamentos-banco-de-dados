/** Lista de Exercicios - Revisão **/
/*=================================*/

#============== Update =============#

/*1.Aumente o salário em 10% para todos 
os funcionários do departamento de "Vendas".*/

UPDATE funcionarios SET salario = salario * 1.10
WHERE id_departamento = 5;


/*2.Altere o descritivo do cargo "Desenvolvedor Web"
para "Desenvolvedor".*/

UPDATE cargos SET descritivo = "Desenvolvedor" WHERE descritivo = "Desenvolvedor Web";

ou

UPDATE cargos SET descritivo = "Desenvolvedor" WHERE id_cargo =2;

/*3.Altere o nome da funcionária "Fernanda Oliveira" 
para "Fernanda de Oliveira" e atualize seu endereço 
para "Rua das Flores, 123".*/

UPDATE funcionarios SET nome = "Fernanda de Oliveira", logradouro = "Rua das Flores, 123"
WHERE id_funcionario =6;


#============== Select =============#

/*1.Listar todos os funcionarios da empresa  
de acordo com o layout abaixo*/
Código   Nome  Sexo   Salário    

SELECT id_funcionario "Código",
	nome "Nome",
	sexo "Sexo",
	salario "Salário"
FROM funcionarios

/*2.Listar todos os funcionarios de acordo 
com o layout abaixo. Formatar o campo salario com
2 casas decimais e concatenar com R$.Formatar a 
data de nascimento aa/mm/aaaa*/
Código   Nome  Sexo   Salário    Data_Nasc  

SELECT id_funcionario "Código",
	nome "Nome",
	sexo "Sexo",
	CONCAT("R$", FORMAT (salario,2,"de_DE")) "Salário",
	DATE_FORMAT(data_nasc, "%d/%m/%Y") "Data_nasc"
FROM funcionarios

/*3.Listar todos os funcionários com salários acima de
R$ 7000.00 de acordo com o layout abaixo.Formatar o 
campo salario com 2 casa decimais e concatenar com R$.*/
Código  Nome  Salário 

SELECT id_funcionario "Código", 
	nome "Nome", 
       CONCAT("R$", FORMAT(salario,2,"de_DE")) "Salário"
FROM funcionarios
WHERE salario > 7000;

/*4.Listar todos os funcionários com salários entre 
R$ 5000.00 e R$ 7500.00 de acordo com o layout abaixo.
Formatar o campo salario com 2 casa decimais e concatenar 
com R$.Classificar a listagem em ordem alfabetica 
(ascendente) */
Código  Nome  Salário 

SELECT id_funcionario "Código",
	nome "Nome", 
       CONCAT("R$", FORMAT(salario, 2,"de_DE")) "Salário"
FROM funcionarios
WHERE salario BETWEEN 5000 AND 7500
ORDER BY nome DESC;


/*5.Listar todos os funcionários que possuem filhos de 
acordo com o layout abaixo.Formatar a data de nascimento 
aa/mm/aaaa */
Funcionário  Sexo  Dependente  Sexo Data_nasc_dependente 

SELECT  f.nome "Nome_Funcionário",
	f.sexo "Sexo",
	d.nome "Dependente",
	d.sexo "Sexo",
	DATE_FORMAT(d.data_nasc, '%d/%m/%Y') "Data_nasc_dependente"
FROM funcionarios f INNER JOIN dependentes d ON (f.id_funcionario=d.id_funcionario)

/*6.Listar todos os funcionários das unidades 1,3 e 6 de acordo 
com o layout abaixo*/
Unidade      Funcionário     Salário  

SELECT u.descritivo "Unidade", 
	f.nome "Funcionário", 
       CONCAT("R$", FORMAT(f.salario, 2)) "Salário"
FROM unidades u INNER JOIN funcionarios f ON (u.id_unidade = f.id_unidade)
WHERE f.id_unidade IN (1,3,6);
ORDER BY u.descritivo;

/*order by nesse caso foi opicional*/


/*7.Listar todos os funcionários de acordo com o layout abaixo.
Formatar a data aa/mm/aaaa . Clasificar pelo nome do funcionario.*/
Funcionário   Projeto   Data_Inicio    Bonus/hora


SELECT f.nome "Funcionário", 
	p.descritivo "Projeto", 
       pf.data_inicio "Data_Inicio", 
       p.bonus / pf.horastrab "Bonus/hora"
FROM projetos_funcionarios pf
INNER JOIN funcionarios f ON pf.id_funcionario = f.id_funcionario
INNER JOIN projetos p ON pf.id_projeto = p.id_projeto
ORDER BY f.nome;


/*8.Listar todos os funcionários de acordo com o layout abaixo.
Classificar a listagem por ordem decrescente de salário.*/
Nome   Salário   Cargo    Departamento    Unidade



SELECT f.nome "Nome", 
	CONCAT('R$', FORMAT(f.salario, 2)) "Salário", 
       c.descritivo "Cargo", 
       d.descritivo "Departamento", 
       u.descritivo "Unidade"
FROM funcionarios f
INNER JOIN cargos c ON f.id_cargo = c.id_cargo
INNER JOIN departamentos d ON f.id_departamento = d.id_departamento
INNER JOIN unidades u ON f.id_unidade = u.id_unidade
ORDER BY f.salario DESC;






 

